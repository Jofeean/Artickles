@extends("master")

@section('title')
    Articles
@endsection

@section('css')
@endsection

@section('body')
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        <span class="poppins badge rounded-pill bg-danger">
                            Story
                        </span>
                    </h5>

                    <h1 class="card-title poppins article-title" style="font-weight: bold">
                        {{ $article->title }}
                    </h1>
                    <p class="card-text fira-sans">
                        <small class="text-muted">Last updated
                            {{ date('j F, Y', strtotime($article->date)) }}</small>
                    </p>

                    <img src="https://picsum.photos/400/200?random=1" class="img-fluid rounded-start"
                         style="width: 100%; margin-top: 20px; margin-bottom: 30px"
                         alt="https://picsum.photos/400/100?random=1">


                    <div class="card-text fira-sans" style="margin-left: 10px; margin-right: 10px">
                        <div id="msgContent">
                            {!!  $article->body !!}
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script src="https://cdn.ckeditor.com/ckeditor5/28.0.0/inline/ckeditor.js"></script>
    <script>
        InlineEditor.create(document.querySelector('#msgContent')).then(editor => {
            editor.isReadOnly = true
        })
    </script>
@endsection
