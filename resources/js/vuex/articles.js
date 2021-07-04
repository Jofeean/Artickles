import axios from "axios";
import Swal from "sweetalert2";

const state = {
    data: {},
    passed: {}
}
const getters = {
    getData(state) {
        return state.data
    },
    getPassed(state) {
        return state.passed
    },
}
const actions = {
    addArticle({}, data) {
        Swal.fire({
            title: 'Posting...',
            text: 'Please Wait',
            timerProgressBar: true,
            allowOutsideClick: false,
            didOpen: () => {
                Swal.showLoading()
            }
        })
        return axios.post('/api/article', {
            title: data.title,
            body: data.body
        })
    },
    updateArticle({}, data) {
        Swal.fire({
            title: 'Updating...',
            text: 'Please Wait',
            timerProgressBar: true,
            allowOutsideClick: false,
            didOpen: () => {
                Swal.showLoading()
            }
        })
        return axios.patch('/api/article/' + data.id, {
            title: data.title,
            body: data.body
        })
    },
    deleteArticle({state}, data) {
        Swal.fire({
            title: "Delete Article",
            html: "Do you really want to delete this article titled <h3>" + data.title + "?</h3>",
            icon: "question",
            confirmButtonText: "Yes",
            showCancelButton: true,
            cancelButtonText: "No"
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                    title: 'Deleting...',
                    text: 'Please Wait',
                    timerProgressBar: true,
                    allowOutsideClick: false,
                    didOpen: () => {
                        Swal.showLoading()
                    }
                })
                axios.delete('/api/article/' + data.id).then((response) => {
                    Swal.fire(
                        'Deleted!',
                        'Article has been deleted.',
                        'success'
                    ).then(result => {
                        this.dispatch("getArticles")
                    })
                })
                    .catch(function (error) {
                        console.log(error)
                    })
            }
        })
    },
    getArticles({commit}) {
        axios.get('/api/article/list')
            .then(
                response => {
                    commit("setArticle", response.data)
                })
            .catch(error => {
                console.log(error)
            })
    },
}
const mutations = {
    setArticle(state, data) {
        state.data = data
    },
    setPassed(state, data) {
        state.passed = {...data}
    },
}

export default {
    namespace: true,
    state,
    getters,
    actions,
    mutations
}
