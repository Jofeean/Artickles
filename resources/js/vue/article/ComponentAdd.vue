<template>
    <div class="modal" id="postArticleModal" tabindex="-1"
         aria-labelledby="postArticleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title poppins" id="postArticleModalLabel">Post an Article</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid poppins">
                        <div class="row">
                            <div class="mb-3">
                                <label for="title" class="form-label poppins">Title</label>
                                <input type="text" name="title" class="form-control" id="title"
                                       v-model="title"
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
                                <label for="content" class="form-label poppins editor">Body</label>
                                <textarea name="body" class="form-control content" id="content" v-model="content"
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
                    <button type="button" class="btn btn-secondary rounded-pill poppins" data-bs-dismiss="modal">
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
                title: 'Posting...',
                text: 'Please Wait',
                timerProgressBar: true,
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading()
                }
            })
            var errorMessage = []
            await axios.post('/api/article', {
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
                this.$el.querySelector('#title').classList.add("is-invalid")
                this.errors = errorMessage
            } else {
                this.errors = []
                this.title = ''
                this.content.setData("")
            }
            this.$store.dispatch("getArticles")
        },


    },
    mounted() {
        CKEditor
            .create(this.$el.querySelector(".content"))
            .then(editor => {
                this.content = editor
            })
            .catch(error => {
                console.error(error);
            });
    },
}
</script>
