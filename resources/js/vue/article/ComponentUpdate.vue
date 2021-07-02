<template>
    <div class="modal" id="updateArticleModal" tabindex="-1"
         aria-labelledby="updateArticleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title poppins" id="updateArticleModalLabel">Update an Article</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid poppins">
                        <div class="row">
                            <div class="mb-3">
                                <label for="updateTitle" class="form-label poppins">Title</label>
                                <input type="text" name="title" class="form-control" id="updateTitle"
                                       v-model="title = $store.state.articles.passed.title"
                                       aria-describedby="emailHelp">
                                <div id="titleHelp" class="form-text fira-sans">
                                    <span v-if="errors.title != undefined" v-for="title in errors.title"
                                          style="color: #E14149">
                                        {{ title }}
                                    </span>
                                    This will be the title of the article. Try some catchy title.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="updateContent" class="form-label poppins editor">Body</label>
                                <textarea name="body" class="form-control content" id="updateContent" v-model="content"
                                          ref="content"
                                          aria-describedby="emailHelp"></textarea>

                                <div id="bodyHelp" class="form-text fira-sans">
                                    <span v-if="errors.body != undefined" v-for="body in errors.body"
                                          style="color: #E14149">
                                        {{ body }}
                                    </span>
                                    This will be the title of the body or content of your article. Note: Becareful
                                    on the information that you're posting it may have a great backlash.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" @click="close" class="btn btn-secondary rounded-pill poppins"
                            data-bs-dismiss="modal">
                        Close
                    </button>
                    <button type="button" @click="formSubmit" class="btn btn-primary rounded-pill poppins">Save button
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

import CKEditor from "@ckeditor/ckeditor5-build-classic"
import Swal from "sweetalert2"
import axios from "axios"

export default {
    data() {
        return {
            title: "",
            content: "",
            errors: []
        }
    },
    methods: {
        async formSubmit() {
            Swal.fire({
                title: 'Updating...',
                text: 'Please Wait',
                timerProgressBar: true,
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading()
                }
            })
            var errorMessage = []
            await axios.patch('/api/article/' + this.article.id, {
                title: this.title,
                body: this.content.getData()
            })
                .then(function (response) {
                    if (response.status == 200) {
                        Swal.fire({
                            title: response.data.title,
                            text: response.data.message,
                            icon: response.data.icon,
                            confirmButtonText: "Cool!"
                        })
                    }
                    if (response.status == 201) {

                        errorMessage = response.data.error
                        Swal.fire({
                            title: response.data.title,
                            html: response.data.message,
                            icon: response.data.icon,
                            confirmButtonText: "Cool!"
                        })
                    }
                })
                .catch(function (error) {
                    console.log(error)
                })

            if (errorMessage.length != 0) {
                this.$el.querySelector('#updateTitle').classList.add("is-invalid")
                this.errors = errorMessage
            }
            this.$store.dispatch("getArticles")
        },
        close() {
            this.$store.dispatch("getArticles")
        },
    },
    computed: {
        article: {
            get() {
                return this.$store.state.articles.passed
            }
        }
    },
    watch: {
        article(newCount, oldCount) {
            this.content.setData(newCount.body)
        }
    },
    mounted() {
        CKEditor
            .create(this.$refs.content)
            .then(editor => {
                this.content = editor
            })
            .catch(error => {
                console.error(error);
            })
    },
}
</script>

