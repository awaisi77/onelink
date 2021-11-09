@extends('layouts.front')
@section('styles')
    <style>
        .heading {
            color: #FFFFFF;
            font-size: 18px;
        }

        fieldset {
            color: white;
            min-width: 73px;
            padding: 16px;
            margin: 0px;
            border: 2px solid;
        }

        legend {
            width: 10% !important;
        }
    </style>
@endsection
@section('content')

    <section class="login-signup">
        <div class="container">
            @if(count($errors)>0)
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            @if(session('success'))
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    {{session('success')}}</div>
            @endif
            @if(session('error'))
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    {{session('error')}}</div>
            @endif
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <nav class="comment-log-reg-tabmenu">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link login active" id="nav-log-tab" data-toggle="tab" href="#nav-log"
                               role="tab"
                               aria-controls="nav-log" aria-selected="true">
                                {{ $langg->lang197 }}
                            </a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade" id="nav-log" role="tabpanel"
                             aria-labelledby="nav-log-tab">
                            <div class="login-area">
                                <div class="header-area">
                                    <h4 class="title">{{__('Business Register')}}</h4>
                                </div>
                            </div>
                            <nav class="comment-log-reg-tabmenu">
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">

                                    <a class="nav-item nav-link" id="nav-reg-tab" data-toggle="tab" href="#nav-reg"
                                       role="tab"
                                       aria-controls="nav-reg" aria-selected="false">
                                        {{__('Business Register')}}
                                    </a>
                                </div>
                            </nav>
                        </div>
                        <div class="tab-pane fade show active" id="nav-reg" role="tabpanel"
                             aria-labelledby="nav-reg-tab">
                            <div class="login-area signup-area">
                                <div class="header-area">
                                    <h4 class="title">{{__('Business Register')}}</h4>
                                </div>
                                <div class="login-form signup-form">
                                    @include('includes.admin.form-login')
                                    <form class="mregisterform1" action="{{route('vendor-business-submit')}}"
                                          method="POST">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="user_id" value="{{$user}}"/>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Status of Business') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <select
                                                    required
                                                    class="form-control"
                                                    name="business_status" id="business_status">
                                                    <option value="corporation">Corporation</option>
                                                    <option value="partnership">Partnership</option>
                                                    <option value="sole_proprietor">Sole Proprietor</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Company Name') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="text" class="input-field" name="company_name"
                                                       placeholder="{{ __('Company Name') }}"
                                                       required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Country') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <select
                                                    required
                                                    class="form-control"
                                                    name="country" id="country">
                                                    <option value="">Select Country</option>
                                                    @foreach($countries = \App\WorldCountry::all() as $country)
                                                        <option value="{{$country->id}}">{{$country->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <input type="hidden" name="address_country" id="address_country">
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('State') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <select
                                                    required
                                                    class="form-control"
                                                    name="state" id="state">
                                                </select>
                                            </div>
                                            <input type="hidden" name="address_state" id="address_state">
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('City') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <select
                                                    required
                                                    class="form-control"
                                                    name="city" id="city">
                                                </select>
                                            </div>
                                            <input type="hidden" name="address_city" id="address_city">
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Street Address') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="text" class="input-field" name="address_street"
                                                       placeholder="{{ __('Street Address') }}"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Nature of Business') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <select
                                                    required
                                                    class="form-control input-field"
                                                    name="business_nature" id="business_nature">
                                                    <option value="supplier">Supplier</option>
                                                    <option value="manufacturer">Manufacturer</option>
                                                    <option value="retailer">Retailer</option>
                                                    <option value="distributor">Distributor</option>
                                                    <option value="consultant">Consultant</option>
                                                    <option value="service_provider">Service Provider</option>
                                                    <option value="wholesale">Wholesale</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Industry of work ') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <select
                                                    required
                                                    class="form-control"
                                                    name="industry_of_work"
                                                    id="industry_of_work"
                                                    multiple="multiple">
                                                    <option value="supplier">Mechanical</option>
                                                    <option value="manufacturer">Industrial</option>
                                                    <option value="retailer">Electrical</option>
                                                    <option value="distributor">Hardware</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Company Email') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="email" class="input-field" name="company_email"
                                                       placeholder="{{ __('Company Email') }}"
                                                       required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Company Website') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="text" class="input-field" name="company_website"
                                                       placeholder="{{ __('Company Website') }}"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Company Phone/Fax') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="text" class="input-field" name="company_phone"
                                                       placeholder="{{ __('Company Phone/Fax') }}"
                                                       required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('Country of Incorporation') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="text" class="input-field" name="country_of_incorporation"
                                                       placeholder="{{ __('Country of Incorporation') }}"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-area">
                                                    <h4 class="heading">{{__('NTN') }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 form-input">
                                                <input type="text" class="input-field" name="ntn_strn"
                                                       placeholder="{{ __('NTN') }}"
                                                       required>
                                            </div>
                                        </div>
                                        <fieldset>
                                            <legend>Contact:</legend>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="left-area">
                                                        <h4 class="heading">{{__('Contact Person') }}</h4>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 form-input">
                                                    <input type="text" class="input-field" name="contact_name"
                                                           placeholder="{{ __('Contact Person') }}"
                                                           required>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="left-area">
                                                        <h4 class="heading">{{__('Designation') }}</h4>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 form-input">
                                                    <input type="text" class="input-field" name="contact_title"
                                                           placeholder="{{ __('Designation') }}"
                                                           required>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="left-area">
                                                        <h4 class="heading">{{__('Phone No#') }}</h4>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 form-input">
                                                    <input type="text" class="input-field" name="contact_phone"
                                                           placeholder="{{ __('Phone No#') }}"
                                                           required>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="left-area">
                                                        <h4 class="heading">{{__('Fax No#') }}</h4>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 form-input">
                                                    <input type="text" class="input-field" name="contact_fax"
                                                           placeholder="{{ __('Fax No#') }}"
                                                           required>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="left-area">
                                                        <h4 class="heading">{{__('Contact Email') }}</h4>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 form-input">
                                                    <input type="email" class="input-field" name="contact_email"
                                                           placeholder="{{ __('Contact Email') }}"
                                                           required>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                                        <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </section>

@endsection
@section('scripts')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $("#business_nature").select2({
            tags: true
        });
        $("#industry_of_work").select2({
            tags: true
        });
        $("#business_status").select2({
            tags: true
        });
        $("#country").select2({
            tags: false
        });
        $("#state").select2({
            tags: false
        });
        $("#city").select2({
            tags: false
        });
        $(document).ready(function () {
            $('#country').on('change', function () {
                var idCountry = this.value;
               var country = $('#country option:selected').text();
                $('#address_country').val(country);
                $("#state").html('');
                $.ajax({
                    url: "{{route('states')}}",
                    type: "get",
                    data: {
                        country: idCountry,
                    },
                    dataType: 'json',
                    success: function (result) {
                        console.log('result',result)
                        $('#state').html('<option value="">Select State</option>');
                        $.each(result, function (key, value) {
                            $("#state").append('<option value="' + value
                                .id + '">' + value.name + '</option>');
                        });
                        $('#city').html('<option value="">Select City</option>');
                    }
                });
            });


            $('#state').on('change', function () {
                var idState = this.value;
                var state = $('#state option:selected').text();
                $('#address_state').val(state);
                $("#city").html('');
                $.ajax({
                    url: "{{route('cities')}}",
                    type: "get",
                    data: {
                        state: idState,
                    },
                    dataType: 'json',
                    success: function (result) {
                        console.log('result',result)
                        $('#city').html('<option value="">Select City</option>');
                        $.each(result, function (key, value) {
                            $("#city").append('<option value="' + value
                                .id + '">' + value.name + '</option>');
                        });
                    }
                });
            });
            $('#city').on('change', function () {
                var idCity = this.value;
                var city = $('#city option:selected').text();
                $('#address_city').val(city);
            });
        });
    </script>
@endsection
