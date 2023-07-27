@extends('user.layouts.app')

@section('content')

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="container-fluid">
        @include('admin.message')
        <div class="card">
            <form action="" method="get">
                <div class="card-header">
                    <div class="card-title">
                        <a href="{{route('products.index')}}" class="btn btn-primary">Reset</a>

                    </div>
                    <div class="card-tools">
                        <div class="input-group input-group" style="width: 250px;">
                            <input value="{{Request::get('keyword')}} " name="keyword" class="form-control float-right" placeholder="Search">

                            <div class="input-group-append">
                                <button type="submit" class="btn btn-default">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                </div>
            </form>






            @if($products->isNotEmpty())
            <?php $i = 1; ?>
            <div class="row">

                @foreach($products as $product)

                <div class="col-sm-3">
                    <div class="card">
                        <img class="card-img-top" style="text-align: center;" src="{{$product->image}}" style="width:50%" alt="Card image cap">

                        <div class="card-body" style="text-align: center;">
                            <h4 class="card-text">Name : {{$product->name}}</h4>
                            <h6 class="card-text">Category : {{$product->category}}</h6>
                            <p class="card-text">Price : {{$product->price}} $</p>

                            <p class="card-text">description : {{$product->description}}</p>


                            <form action="{{ route('cards.add') }}" method="post" class="login-form">
                                @csrf
                                <input type="text" name="user_name" value="{{ Auth::user()->name }}" class="form-control rounded-left" hidden>
                                <input type="text" name="user_email" value="{{ Auth::user()->email }}" class="form-control rounded-left" hidden>
                                <input type="text" name="user_id" value="{{ Auth::user()->id }}" class="form-control rounded-left" hidden>
                                <input type="text" name="product_id" value="{{$product->id}}" class="form-control rounded-left" hidden>
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3">Buy</button>
                            </form>


                        </div>
                    </div>
                </div>


                <?php $i = $i + 1; ?>
                @endforeach
            </div>

            @else
            <h5> Records Not Found</h5>
            @endif
        </div>
        <div class="card-footer clearfix">
            {{$products->links()}}

        </div>
    </div>
    </div>
    <!-- /.card -->
</section>
<!-- /.content -->
@endsection

@section('CustomJs')

@endsection