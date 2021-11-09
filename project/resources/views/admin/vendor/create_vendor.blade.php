@extends('layouts.admin')
@section('styles')

    <link href="{{asset('assets/admin/css/product.css')}}" rel="stylesheet"/>
    <link href="{{asset('assets/admin/css/jquery.Jcrop.css')}}" rel="stylesheet"/>
    <link href="{{asset('assets/admin/css/Jcrop-style.css')}}" rel="stylesheet"/>

@endsection
@section('content')

    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __('Create Vendor') }} <a class="add-btn"
                                                                        href="{{ route('admin-vendor-index') }}"><i
                                    class="fas fa-arrow-left"></i> {{ __('Back') }}</a></h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __('Vendors') }} </a>
                        </li>
                        <li>
                            <a href="{{ route('admin-vendor-index') }}">{{ __('Vendors List') }}</a>
                        </li>
                        <li>
                            <a href="{{ route('admin-vendor-create') }}">{{ __('Add Vendor') }}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="add-product-content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-description">
                        <div class="body-area" id="modalEdit">

                            <div class="gocover"
                                 style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                            <form id="ActiveHouseformVendorProduct" action="{{route('admin-vendor-save')}}" method="POST"
                                  enctype="multipart/form-data">
                                {{csrf_field()}}

                                @include('includes.admin.form-both')
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Name') }}* </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field"
                                               placeholder="{{ __('Name') }}" name="name" required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Email') }}* </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="email" class="input-field"
                                               placeholder="{{ __('Email') }}" name="email" required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Phone No') }}* </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field"
                                               placeholder="{{ __('Phone No') }}" name="phoneNo" required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Address') }}* </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field"
                                               placeholder="{{ __('Address') }}" name="address" required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Password') }}* </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="password" class="input-field"
                                               placeholder="{{ __('Password') }}" name="password" required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Confirm Password') }}* </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="password" class="input-field"
                                               placeholder="{{ __('Confirm Password') }}" name="password_confirmation"
                                               required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ $langg->lang238 }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text"
                                               id="shop-name" class="input-field"
                                               name="shop_name" placeholder="{{ $langg->lang238 }}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ $langg->lang239 }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="input-field" name="owner_name"
                                               placeholder="{{ $langg->lang239 }}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ $langg->lang240 }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="input-field" name="shop_number"
                                               placeholder="{{ $langg->lang240 }}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ $langg->lang241 }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="input-field" name="shop_address"
                                               placeholder="{{ $langg->lang241 }}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ $langg->lang242 }}
                                                <small>{{ $langg->lang417 }}</small>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="input-field" name="reg_number"
                                               placeholder="{{ $langg->lang242 }}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ $langg->lang243 }}
                                                <small>{{ $langg->lang417 }}</small>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <textarea class="input-field" name="shop_message"
                                                  placeholder="{{ $langg->lang243 }}" rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Subscription') }}*</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <select id="subs_id" name="subs_id" required>
                                            <option value="">{{ __('Select Subscription') }}</option>
                                            @if(!empty($subs))
                                                @foreach($subs as $sub)
                                                    <option
                                                            value="{{ $sub->id }}">{{$sub->title}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">

                                        </div>
                                    </div>
                                    <div class="col-lg-7 text-center">
                                        <button class="addProductSubmit-btn"
                                                type="submit">{{ __('Add Vendor') }}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection

@section('scripts')

    <script src="{{asset('assets/admin/js/jquery.Jcrop.js')}}"></script>
    <script src="{{asset('assets/admin/js/jquery.SimpleCropper.js')}}"></script>

    <script type="text/javascript">

        // Gallery Section Insert

        $(document).on('click', '.remove-img', function () {
            var id = $(this).find('input[type=hidden]').val();
            $('#galval' + id).remove();
            $(this).parent().parent().remove();
        });

        $(document).on('click', '#prod_gallery', function () {
            $('#uploadgallery').click();
            $('.selected-image .row').html('');
            $('#ActiveHouseform').find('.removegal').val(0);
        });


        $("#uploadgallery").change(function () {
            var total_file = document.getElementById("uploadgallery").files.length;
            for (var i = 0; i < total_file; i++) {
                $('.selected-image .row').append('<div class="col-sm-6">' +
                    '<div class="img gallery-img">' +
                    '<span class="remove-img"><i class="fas fa-times"></i>' +
                    '<input type="hidden" value="' + i + '">' +
                    '</span>' +
                    '<a href="' + URL.createObjectURL(event.target.files[i]) + '" target="_blank">' +
                    '<img src="' + URL.createObjectURL(event.target.files[i]) + '" alt="gallery image">' +
                    '</a>' +
                    '</div>' +
                    '</div> '
                );
                $('#ActiveHouseform').append('<input type="hidden" name="galval[]" id="galval' + i + '" class="removegal" value="' + i + '">')
            }

        });

        // Gallery Section Insert Ends

    </script>

    <script type="text/javascript">

        $('.cropme').simpleCropper();
        $('#crop-image').on('click', function () {
            $('.cropme').click();
        });
    </script>


    <script src="{{asset('assets/admin/js/product.js')}}"></script>
@endsection
