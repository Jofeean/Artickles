<template>
    <div class="col-md-12">
        <div class="card mb-3">
            <div class="row g-0">
                <div class="col-lg-4 col-md-5">
                    <img src="https://picsum.photos/400?random=1" class="img-fluid rounded-start"
                         style="width: 100%"
                         alt="https://picsum.photos/200/300?random=1">
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="card-body">
                        <h5 class="card-title">
                                    <span class="poppins badge rounded-pill bg-danger">
                                        Top {{ index + 1 }} Trending Today
                                    </span>

                            <a href="#"
                               class="pull-right clickable d-flex justify-content-center align-items-center"
                               role="button"
                               id="dropdownMenuLink"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                <span class="material-icons">more_vert</span>
                            </a>

                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuLink">
                                <li><a class="dropdown-item" data-bs-toggle="modal"
                                       data-bs-target="#updateArticleModal" @click="update(article)">Edit</a></li>
                                <li><a class="dropdown-item" @click="$emit('delete-article', article)">Delete</a>
                                </li>
                            </ul>

                        </h5>
                        <h5 class="card-title poppins article-title" style="font-weight: bold">
                            {{ article.title }}
                        </h5>
                        <p class="card-text fira-sans"><small class="text-muted">Last updated
                            {{ dateDifference(article.created_at) }}</small>
                        </p>

                        <div class="card-text fira-sans article-content" v-html="article.body">
                        </div>

                        <h6>
                            <a :href="'/article/'+article.id" class="poppins btn btn-dark primary-bg rounded-pill ">
                                        <span class="d-flex align-items-center">Read More
                                        <span class="material-icons" style="margin-left: 10px">arrow_right_alt</span>
                                        </span>
                            </a>
                        </h6>

                    </div>
                </div>
            </div>
        </div>


    </div>
</template>

<script>
import {mapMutations} from 'vuex'

export default {
    methods: {
        ...mapMutations(["setPassed"]),
        update(data) {
            this.setPassed(data)
        },
        dateDifference(date) {
            const strDate = new Date(date)
            return strDate.getDate() + "-" + strDate.getMonth() + "-" + strDate.getFullYear()
        },
    },
    props: {
        article: [],
        index: Number
    },
}
</script>
