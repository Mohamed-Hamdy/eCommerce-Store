@extends('admin.layouts.app')

@section('content')
<section class="content-header">
    <div class="container-fluid my-2">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Edit Product</h1>
            </div>
            <div class="col-sm-6 text-right">
                <a href="{{route('products.index')}}" class="btn btn-primary">Back</a>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>
<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="container-fluid">
        <form action="" method="post" id="productForm" name="productForm">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="name">Name</label>
                                <input type="text" value="{{$product->name}}" name="name" id="name" class="form-control" placeholder="Name">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="slug">Slug</label>
                                <input type="text" value="{{$product->slug}}" name="slug" readonly id="slug" class="form-control" placeholder="Slug">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="status">Status</label>
                                <select name="status" id="status" class="form-control">
                                    <option {{($product->status == 1) ? 'selected' : ''}} value="1">Active</option>
                                    <option {{($product->status == 0) ? 'selected' : ''}} value="0">Block</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="image">image</label>
                                <input type="text" value="https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png" name="image" readonly id="image" class="form-control" placeholder="image">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="category">category</label>
                                <input type="text" value="{{$product->category}}" name="category" id="category" class="form-control" placeholder="Category" required>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="quantity">quantity</label>
                                <input type="number" min="1" value="{{$product->quantity}}" name="quantity" id="quantity" class="form-control" placeholder="Quantity Min = 1 " required>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="price">Price</label>
                                <input type="number" min="50" name="price" value="{{$product->price}}" id="price" class="form-control" placeholder="Price Min = 50" required>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="description">Description</label>
                                <input type="text" min="50"  value="{{$product->description}}" name="description" id="description" class="form-control" placeholder="description" required>
                                <p></p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="pb-5 pt-3">
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="{{route('products.index')}}" class="btn btn-outline-dark ml-3">Cancel</a>
            </div>
        </form>
    </div>
    <!-- /.card -->
</section>
@endsection

@section('CustomJs')
<script>
    $("#productForm").submit(function(event) {
        event.preventDefault();
        var element = $(this);
        $("button[type=submit]").prop('disabled', true);
        $.ajax({
            url: '{{ route("products.update" , $product->id) }}',
            type: 'put',
            data: element.serializeArray(),
            dataType: 'json',
            success: function(response) {
                $("button[type=submit]").prop('disabled', false);
                if (response["status"] == true) {

                    $("#name").removeClass('is-invalid')
                        .siblings('p')
                        .addClass('invalid-feedback').html("");

                    $("#slug").removeClass('is-invalid')
                        .siblings('p')
                        .addClass('invalid-feedback').html("");


                    $("#category").removeClass('is-invalid')
                        .siblings('p')
                        .addClass('invalid-feedback').html("");

                    $("#quantity").removeClass('is-invalid')
                        .siblings('p')
                        .addClass('invalid-feedback').html("");

                    $("#price").removeClass('is-invalid')
                        .siblings('p')
                        .addClass('invalid-feedback').html("");

                    $("#description").removeClass('is-invalid')
                        .siblings('p')
                        .addClass('invalid-feedback').html("");

                    window.location.href = "{{route('products.index') }}";

                } else {
                    var errors = response['errors'];
                    if (errors['name']) {
                        $("#name").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['name']);
                    } else {
                        $("#name").removeClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html("");
                    }

                    if (errors['slug']) {
                        $("#slug").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['slug']);
                    } else {
                        $("#slug").removeClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html("");
                    }

                    if (errors['category']) {
                        $("#category").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['category']);
                    } else {
                        $("#category").removeClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html("");
                    }

                    if (errors['quantity']) {
                        $("#quantity").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['quantity']);
                    } else {
                        $("#quantity").removeClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html("");
                    }

                    if (errors['price']) {
                        $("#price").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['price']);
                    } else {
                        $("#price").removeClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html("");
                    }

                    if (errors['description']) {
                        $("#description").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['description']);
                    } else {
                        $("#description").removeClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html("");
                    }

                }

            },
            error: function(jqXHR, exception) {
                console.log("Something went wrong");
            }
        })
    });

    $("#name").change(function() {
        var element = $(this);
        $("button[type=submit]").prop('disabled', true);
        $.ajax({
            url: '{{ route("getSlug") }}',
            type: 'get',
            data: {
                title: element.val()
            },
            dataType: 'json',
            success: function(response) {
                $("button[type=submit]").prop('disabled', false);
                if (response["status"] == true) {
                    $("#slug").val(response["slug"]);
                }
            }
        });
    });
</script>
@endsection