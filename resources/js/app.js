require('./bootstrap');

import Vue from 'vue'
import Vuex from 'vuex'
import AppArticle from './vue/article/App'
import articles from "./vuex/articles";

Vue.use(Vuex)
const store = new Vuex.Store({
    modules: {
        articles
    }
})
const app = new Vue({
    el: "#app",
    components: {AppArticle},
    store
})
