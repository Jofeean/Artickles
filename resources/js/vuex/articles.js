import axios from "axios";

const state = {
    data: {},
    passed: {}
}
const getter = {}
const actions = {
    getArticles({commit}) {
        axios.get('/api/article/list')
            .then(
                response => {
                    commit("setArticle", response.data)
                })
            .catch(error => {
                console.log(error)
            })
    }
}
const mutations = {
    setArticle(state, data) {
        state.data = data
    },
    setPassed(state, data) {
        state.passed = data
    }
}

export default {
    namespace: true,
    state,
    getter,
    actions,
    mutations
}
