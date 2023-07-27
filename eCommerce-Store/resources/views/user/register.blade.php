<!doctype html>
<html lang="en">

<head>
    <title>Register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="{{ asset('user-assets/css/style.css') }}">

</head>

<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">eCommerce Store Register</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-7 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">
                        <div class="icon d-flex align-items-center justify-content-center" style="background-color: #343a40; color:white;">
                            <span class="fa fa-user-o"></span>
                        </div>
                        <h3 class="text-center mb-4">Sign Up</h3>
                        @if(Session::has('error'))
                        <div class="alert alert-danger" role="alert">
                            {{ Session::get('error') }}
                        </div>
                        @endif

                        <form action="{{ route('user.register') }}" method="post" class="login-form">
                            @csrf
                            <div class="form-group">
                                <input type="text" name="name" id="name" placeholder="John Doe" type="text" class="form-control rounded-left" required>
                            </div>

                            <div class="form-group">
                                <input type="email" name="email" id="email" placeholder="name@example.com" type="text" class="form-control rounded-left" required>
                            </div>
                            <div class="form-group d-flex">
                                <input type="password" name="password" id="password" class="form-control rounded-left" placeholder="Password" required>
                            </div>
                            <div class="form-group">
                                <button type="submit" style="background-color: #343a40; color:white;" class="form-control btn  rounded submit px-3">Sign Up</button>
                            </div>
                            
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="{{ asset('user-assets/js/jquery.min.js') }} "></script>
    <script src="{{ asset('user-assets/js/popper.js') }} "></script>
    <script src="{{ asset('user-assets/js/bootstrap.min.js') }} "></script>
    <script src="{{ asset('user-assets/js/main.js') }} "></script>


</body>

</html>