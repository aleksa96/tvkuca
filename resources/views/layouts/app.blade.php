<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

        <title>{{config('app.name','TVQ2')}}</title>
</head>
<body>
    <header>
            @include('inc.navbar')
    </header>
    {{-- <div class="container"> --}}
        @include('inc.messages')
        @yield('content')
    {{-- </div> --}}
    

    <footer>
        <div id="footer" class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <h4>Kontaktirajte nas</h4>
                        <p><i class="fas fa-home" aria-hidden="true"></i>  Kralja Vladmira 33,Beograd</p>
                        <p><i class="fas fa-envelope" aria-hidden="true"></i>  q2tv@gmail.com</p>
                        <p><i class="fas fa-phone" aria-hidden="true"></i>  +381640035163</p>
                        <p><i class="fas fa-globe" aria-hidden="true"></i>  www.Q2tv.com</p>

                    </div>
                    <div class="col-lg-4 col-md-4">
                        <h4>Inforamcije</h4>
                        <p><i class="far fa-square" aria-hidden="true"></i>  O nama</p>
                        <p><i class="far fa-square" aria-hidden="true"></i>  Privacy</p>
                        <p><i class="far fa-square" aria-hidden="true"></i>  Term and condition</p>

                    </div>
                    <div class="col-lg-4 col-md-4">
                        <h4>Socijalne mreze</h4>
                        <i class="social fab fa-facebook-f" aria-hidden="true"></i>
                        <i class="social fab fa-twitter" aria-hidden="true"></i>
                        <i class="social fab fa-linkedin-in" aria-hidden="true"></i>
                        <i class="social fab fa-youtube" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
    <script src="{{asset('js/app.js')}}"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    {{-- <script type="text/javascript">
        $('.wall').jaliswall({
            item: '.wall-item',
            columnClass: '.wall-column'
        });
    </script> --}}

    <script>
        CKEDITOR.replace('article-ckeditor');

    </script>

</body>

</html>
