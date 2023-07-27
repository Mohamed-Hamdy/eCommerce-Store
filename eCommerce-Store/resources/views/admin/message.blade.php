<!DOCTYPE html>
<html lang="en">



<body>
    @if(Session::has('error'))
        <div class="alert alert-danger">
            <strong>Error!</strong> {{ Session::get('error')}}
        </div>
    @endif  
    @if(Session::has('success'))
        <div class="alert alert-success">
            <strong>Success!</strong> {{ Session::get('error')}}
        </div>
    @endif
</body>
</html>