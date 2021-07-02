<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf" content="{{ csrf_token() }}">
    <script>
        window.Laravel = "{{ csrf_token() }}"
    </script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans&family=Ubuntu&family=Poppins&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <style>
        .material-icons {
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: 24px; /* Preferred icon size */
            display: inline-block;
            line-height: 1;
            text-transform: none;
            letter-spacing: normal;
            word-wrap: normal;
            white-space: nowrap;
            direction: ltr;

            /* Support for all WebKit browsers. */
            -webkit-font-smoothing: antialiased;
            /* Support for Safari and Chrome. */
            text-rendering: optimizeLegibility;

            /* Support for Firefox. */
            -moz-osx-font-smoothing: grayscale;

            /* Support for IE. */
            font-feature-settings: 'liga';
        }

        /* Rules for sizing the icon. */
        .material-icons.md-18 {
            font-size: 18px;
        }

        .material-icons.md-24 {
            font-size: 24px;
        }

        .material-icons.md-36 {
            font-size: 36px;
        }

        .material-icons.md-48 {
            font-size: 48px;
        }

        /* Rules for using icons as black on a light background. */
        .material-icons.md-dark {
            color: rgba(0, 0, 0, 0.54);
        }

        .material-icons.md-dark.md-inactive {
            color: rgba(0, 0, 0, 0.26);
        }

        /* Rules for using icons as white on a dark background. */
        .material-icons.md-light {
            color: rgba(255, 255, 255, 1);
        }

        .material-icons.md-light.md-inactive {
            color: rgba(255, 255, 255, 0.3);
        }

        .ubuntu {
            font-family: 'Ubuntu', sans-serif;
        }

        .fira-sans {
            font-family: 'Fira Sans', sans-serif;
        }

        .poppins {
            font-family: 'Poppins', sans-serif;
        }

        .primary-bg {
            background: #35212C !important;
        }

        .light-text {
            color: #FFE9D7 !important;
        }

        .card {
            border: 0px;
        }

        .article-title {
            margin-top: 20px;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
        }

        .article-content {
            margin-top: 20px;
            margin-bottom: 20px;
            overflow: hidden;
            text-overflow: ellipsis;
            height: 9em;
        }

        .clickable {
            color: #847585;
            height: 25px;
            width: 25px;
            transition: .2s ease-in-out;
        }

        .clickable:hover {
            color: black;
            border-radius: 50%;
            background: rgba(132, 117, 133, 0.09);
            transition: .2s ease-in-out;
        }

        .float {
            position: fixed;
            width: 60px;
            height: 60px;
            bottom: 40px;
            right: 40px;
            background-color: #847585;
            color: #FFF;
            border-radius: 50px;
            text-align: center;
            transition: .2s ease-in-out;
        }

        .float:hover {
            position: fixed;
            width: 60px;
            height: 60px;
            bottom: 40px;
            right: 40px;
            background-color: #E14149;
            color: #FFF;
            border-radius: 50px;
            text-align: center;
            box-shadow: 2px 2px 3px #999;
            transition: .2s ease-in-out;
        }

        a {
            text-decoration: unset;
        }

        .badge {
            display: inline-block;
            padding: .35em .65em;
            font-size: .75em;
            font-weight: 700;
            line-height: 1;
            color: #fff;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: .25rem;
        }

        .modal-fullscreen {
            height: unset;
            min-height: 50%;
            position: absolute;
            bottom: 0;
        }

        .ck-editor__editable {
            min-height: 25vh;
        }
    </style>

    @yield("css")


    <title>@yield("title")</title>
</head>
<body style="background: #fff8f3">
<div id="app">
    <nav class="navbar navbar-expand-lg navbar-dark primary-bg">
        <div class="container">
            <a class="navbar-brand light-text ubuntu" href="#">
                <h2>Artickles
                </h2>
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link poppins" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link poppins" href="{{ url('/') }}">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link poppins" href="{{ url('/') }}">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container" style="padding-top: 50px; padding-bottom: 50px">
        @yield("body")
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

@yield("js")
<script>
    $('.modal').on('show.bs.modal', function (e) {
        $('.modal .modal-dialog').attr('class', 'modal-fullscreen modal-dialog  animate__animated animate__fadeInUp animate__faster');
    })
    $('.modal').on('hide.bs.modal', function (e) {
        $('.modal .modal-dialog').attr('class', 'modal-fullscreen modal-dialog  animate__animated animate__fadeOutDown animate__faster');
    })
</script>

</body>
</html>
