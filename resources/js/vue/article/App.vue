<template>
    <div>
        <div class="row">
            <List v-for="(article, index) in articles" :key="article.id" :article="article" :index="index"
                  v-on:delete-article="del($event)"/>
        </div>

        <a href="#" class="float d-flex justify-content-center align-items-center" data-bs-toggle="modal"
           data-bs-target="#postArticleModal">
            <span class="material-icons md-48">add</span>
        </a>

        <add-article/>
        <update-article/>
    </div>
</template>

<script>
import Swal from "sweetalert2";

import List from "./List";
import AddArticle from "./ComponentAdd";
import UpdateArticle from "./ComponentUpdate";

export default {
    computed: {
        articles: {
            get() {
                return this.$store.state.articles.data
            }
        }
    },
    components: {
        List, AddArticle, UpdateArticle
    },
    created() {
        this.$store.dispatch("getArticles")
    },
    methods: {
        del(data) {
            // console.log(data)
            Swal.fire({
                title: "Delete Article",
                text: "Do you really want to delete this article?",
                icon: "question",
                confirmButtonText: "Yes",
                showCancelButton: true,
                cancelButtonText: "No"
            }).then((result) => {
                if (result.isConfirmed) {
                    axios.delete('/api/article/' + data).then((response) => {
                        Swal.fire(
                            'Deleted!',
                            'Article has been deleted.',
                            'success'
                        ).then(result => {
                            this.$store.dispatch("getArticles")
                        })
                    })
                        .catch(function (error) {
                            console.log(error)
                        })
                }
            })
        }
    }
}
</script>
