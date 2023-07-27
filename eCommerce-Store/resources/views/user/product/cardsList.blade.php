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
                        <a href="{{route('cards.index')}}" class="btn btn-primary">Reset</a>

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

            <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                    <thead>
                        <tr>
                            <th width="60">#</th>
                            <th>User Email</th>
                            <th>User ID</th>
                            <th>UserName</th>
                            <th>Product ID</th>
                        </tr>
                    </thead>



                    <tbody>
                        <?php
                        use Illuminate\Support\Facades\Auth; 
                        if($cards->isNotEmpty()){
                            $i = 1;  
                            $userid = Auth::user()->id ;  

                            foreach($cards as $card){
                                if($card->user_id == $userid){
                                    echo "<tr>";
                                        echo"<td>$i</td>";
                                        echo"<td>$card->user_email</td>";
                                        echo"<td>$card->user_id</td>";
                                        echo"<td>$card->user_name</td>";
                                        echo"<td>$card->product_id</td>";
                                    echo"</tr>";
                                }
                                    $i = $i + 1;
                                
                            }
                        }
                        if($cards->isEmpty()){
                            $recordNotFound = "Records Not Found";
                            echo"<tr>";
                                echo"<td>$recordNotFound</td>";
                            echo"</tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="card-footer clearfix">
                {{$cards->links()}}

            </div>
        </div>
    </div>
    <!-- /.card -->
</section>
<!-- /.content -->
@endsection

@section('CustomJs')
<script>
    function deleteProduct(id) {

        event.preventDefault();
        var element = $(this);
        var url = '{{route("products.delete" , "ID")}}';
        newUrl = url.replace("ID", id);
        //alert(url);
        //return false;
        //$("button[type=submit]").prop('disabled', true);
        var xhttp = new XMLHttpRequest();

        if (confirm("Are you sure you want to delete")) {
            $.ajax({
                url: newUrl,
                type: 'delete',
                data: {},
                dataType: 'json',

                success: function(response) {
                    $("button[type=submit]").prop('disabled', false);
                    if (response["status"]) {

                        window.location.href = "{{route('products.index')}}";
                        //xhttp.open("GET", "{{route('products.index')}}", true); // Replace "your-url" with the actual URL
                        //xhttp.send();
                    }
                }
            });
        }

    }
</script>
@endsection