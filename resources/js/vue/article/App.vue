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
import List from "./List";
import AddArticle from "./ComponentAdd";
import UpdateArticle from "./ComponentUpdate";
import {mapGetters, mapActions} from 'vuex'

export default {
    computed: {
        ...mapGetters({
            articles: "getData"
        })
    },
    components: {
        List, AddArticle, UpdateArticle
    },
    created() {
        this.$store.dispatch("getArticles")
    },
    methods: {
        ...mapActions(['deleteArticle']),
        del(data) {
            this.deleteArticle(data)
        }
    }
}
</script>
