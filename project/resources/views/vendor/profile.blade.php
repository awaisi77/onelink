@extends('layouts.vendor')
@section('styles')
    <style>
        fieldset{
            color: #000000;
            min-width: 73px;
            padding: 16px;
            margin: 0px;
            border: 2px solid;
        }
        legend{
            width: 10% !important;
        }
    </style>
@endsection

@section('content')

    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ $langg->lang434 }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('vendor-dashboard') }}">{{ $langg->lang441 }} </a>
                        </li>
                        <li>
                            <a href="{{ route('vendor-profile') }}">{{ $langg->lang434 }} </a>
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
                            <form id="ActiveHouseform" action="{{ route('vendor-profile-update') }}" method="POST"
                                  enctype="multipart/form-data">
                                {{csrf_field()}}

                                @include('includes.vendor.form-both')

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h5>Company Details:</h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="right-area">
                                            <h6 class="heading"> {{ $data->shop_name }}
                                                @if($data->checkStatus())
                                                    <a class="badge badge-success verify-link"
                                                       href="javascript:;">{{ $langg->lang783 }}</a>
                                                @else
                                                    <span class="verify-link"><a
                                                            href="{{ route('vendor-verify') }}">{{ $langg->lang784 }}</a></span>
                                                @endif
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" name="user_id" value="{{$data?$data->id:null}}">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">

                                            <h4 class="heading">{{__('Status of Business') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <select
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
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="company_name"
                                               placeholder="{{ __('Company Name') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->company_name:''}}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('Country') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="address_country"
                                               placeholder="{{ __('Country') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->address_country:''}}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('City') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="address_city"
                                               placeholder="{{ __('City') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->address_city:''}}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('State') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="address_state"
                                               placeholder="{{ __('State') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->address_state:''}}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('Street Address') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="address_street"
                                               placeholder="{{ __('Street Address') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->address_street:''}}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">

                                            <h4 class="heading">{{__('Nature of Business') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <select
                                            class="form-control"
                                            name="business_nature" id="business_nature">
                                            <option value="supplier">Supplier</option>
                                            <option value="manufacturer">Manufacturer</option>
                                            <option value="retailer">Retailer</option>
                                            <option value="distributor">Distributor</option>
                                            <option value="consultant">Consultant</option>
                                            <option value="service_provider">Service Provider</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">

                                            <h4 class="heading">{{__('Industry of work ') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <select class="form-control"
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
                                    <div class="col-lg-7">
                                        <input type="email" class="input-field" name="company_email"
                                               placeholder="{{ __('Company Email') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->company_email:''}}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('Company Website') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="company_website"
                                               placeholder="{{ __('Company Website') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->company_website:''}}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('Company Phone/Fax') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="company_phone"
                                               placeholder="{{ __('Company Phone/Fax') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->company_phone:''}}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('Country of Incorporation') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="country_of_incorporation"
                                               placeholder="{{ __('Country of Incorporation') }}"
                                               required=""
                                               value="{{$vendorDetail?$vendorDetail->country_of_incorporation:''}}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{__('NTN') }}</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="ntn_strn"
                                               placeholder="{{ __('NTN') }}"
                                               required="" value="{{$vendorDetail?$vendorDetail->ntn_strn:''}}">
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
                                               value="{{$contact?$contact->name:''}}"
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
                                               value="{{$contact?$contact->title:''}}"
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
                                               value="{{$contact?$contact->phone:''}}"
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
                                        <input type="text" class="input-field"
                                               value="{{$contact?$contact->fax_number:''}}"
                                               name="contact_fax"
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
                                               value="{{$contact?$contact->email:''}}"
                                               placeholder="{{ __('Contact Email') }}"
                                               required>
                                    </div>
                                </div>
                                </fieldset>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">

                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <button class="addProductSubmit-btn"
                                                type="submit">{{ $langg->lang464 }}</button>
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
    </script>
@endsection
