@extends('layouts.admin')
@section('styles')
    <style>
        .c-info-box-area .c-info-box.box2 {
            border-color: #21456d;
        }


        .c-info-box-area .c-info-box {
            width: 68%;
            height: auto;
            margin: 0 auto;
            text-align: center;
            border-width: 4px !important;
            border-radius: 11% !important;
        }

        .c-info-box-area{
            background:#fff (Remove this so the custom.css will work)
        }

        .c-info-box-area .c-info-box p {
            font-size: 30px;
            font-weight: 600;
            line-height: 46px !important;
            margin-bottom: 0;
            background: #21456d;
            color: #fff;
        }

    </style>

    @endsection
@section('content')
    <input type="hidden" id="headerdata" value="{{ __("PRODUCT") }}">
    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-10">
                    <h4 class="heading">{{ __("Products") }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __("Products") }} </a>
                        </li>
                        <li>
                            <a href="{{ route('admin-prod-index') }}">{{ __("All Products") }}</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-2">
                    <div class="card c-info-box-area">
                        <div class="c-info-box box2">
                            <p id="countTotal"></p>
                        </div>
                        <div class="c-info-box-content">
                            <h6 class="title">{{ __('Product Count') }}</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-area">
            <div class="row">
                <div class="col-lg-12">
                    <div class="mr-table allproduct">

                        @include('includes.admin.form-success')

                        <br/>
                        <div class="row input-daterange">
                            <div class="col-md-3">
                                <input type="text" name="from_date" id="from_date" class="form-control"
                                       placeholder="From Date" readonly/>
                            </div>
                            <div class="col-md-3">
                                <input type="text" name="to_date" id="to_date" class="form-control"
                                       placeholder="To Date" readonly/>
                            </div>
                            <div class="col-md-3">
                                <select name="status" id="status" class="form-control">
                                    <option value="-1">All</option>
                                    <option value="1">Activated</option>
                                    <option value="0">Deactivated</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <button type="button" name="filter" id="filter" class="btn btn-primary">Filter</button>
                                <button type="button" name="refresh" id="refresh" class="btn btn-dark">Refresh</button>
                            </div>

                        </div>
                        <br/>

                        <div class="table-responsiv">
                            <table id="ActiveHousetable" class="table table-hover dt-responsive" cellspacing="0"
                                   width="100%">
                                <thead>
                                <tr>
                                    <th>{{ __("Name") }}</th>
                                    <th>{{ __("Vendor") }}</th>
                                    <th>{{ __("Type") }}</th>
                                    <th>{{ __("Stock") }}</th>
                                    <th>{{ __("Price") }}</th>
                                    <th>{{ __("Status") }}</th>
                                    <th>{{ __("Options") }}</th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    {{-- HIGHLIGHT MODAL --}}

    <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="modal2" aria-hidden="true">


        <div class="modal-dialog highlight" role="document">
            <div class="modal-content">
                <div class="submit-loader">
                    <img src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
                </div>
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __("Close") }}</button>
                </div>
            </div>
        </div>
    </div>

    {{-- HIGHLIGHT ENDS --}}

    {{-- CATALOG MODAL --}}

    <div class="modal fade" id="catalog-modal" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header d-block text-center">
                    <h4 class="modal-title d-inline-block">{{ __("Update Status") }}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <!-- Modal body -->
                <div class="modal-body">
                    <p class="text-center">{{ __("You are about to change the status of this Product.") }}</p>
                    <p class="text-center">{{ __("Do you want to proceed?") }}</p>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __("Cancel") }}</button>
                    <a class="btn btn-success btn-ok">{{ __("Proceed") }}</a>
                </div>

            </div>
        </div>
    </div>

    {{-- CATALOG MODAL ENDS --}}


    {{-- DELETE MODAL --}}

    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header d-block text-center">
                    <h4 class="modal-title d-inline-block">{{ __("Confirm Delete") }}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <p class="text-center">{{ __("You are about to delete this Product.") }}</p>
                    <p class="text-center">{{ __("Do you want to proceed?") }}</p>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __("Cancel") }}</button>
                    <a class="btn btn-danger btn-ok">{{ __("Delete") }}</a>
                </div>

            </div>
        </div>
    </div>

    {{-- DELETE MODAL ENDS --}}


    {{-- GALLERY MODAL --}}

    <div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">{{ __("Image Gallery") }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="top-area">
                        <div class="row">
                            <div class="col-sm-6 text-right">
                                <div class="upload-img-btn">
                                    <form method="POST" enctype="multipart/form-data" id="form-gallery">
                                        {{ csrf_field() }}
                                        <input type="hidden" id="pid" name="product_id" value="">
                                        <input type="file" name="gallery[]" class="hidden" id="uploadgallery"
                                               accept="image/*" multiple>
                                        <label for="image-upload" id="prod_gallery"><i
                                                class="icofont-upload-alt"></i>{{ __("Upload File") }}</label>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <a href="javascript:;" class="upload-done" data-dismiss="modal"> <i
                                        class="fas fa-check"></i> {{ __("Done") }}</a>
                            </div>
                            <div class="col-sm-12 text-center">( <small>{{ __("You can upload multiple Images") }}
                                    .</small> )
                            </div>
                        </div>
                    </div>
                    <div class="gallery-images">
                        <div class="selected-image">
                            <div class="row">


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{-- GALLERY MODAL ENDS --}}

@endsection



@section('scripts')


    {{-- DATA TABLE --}}
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
    <script type="text/javascript">

        /*	var table = $('#ActiveHousetable').DataTable({
                dom: 'Blfrtip',
                buttons: [
                    'excelHtml5'
                ],
                   ordering: false,
                   processing: true,
                   serverSide: true,
                   ajax: '{{ route('admin-prod-datatables') }}',
               columns: [
                        { data: 'name', name: 'name' },
                        { data: 'vendor', name: 'vendor' },
                        { data: 'type', name: 'type' },
                        { data: 'stock', name: 'stock' },
                        { data: 'price', name: 'price' },
                        { data: 'status', searchable: false, orderable: false},
            			{ data: 'action', searchable: false, orderable: false }

                     ],
                language : {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },
				drawCallback : function( settings ) {
	    				$('.select').niceSelect();
				}
            });
*/
        $(function () {
            $(".btn-area").append('<div class="col-sm-4 table-contents">' +
                '<a class="add-btn" href="{{route('admin-prod-types')}}">' +
                '<i class="fas fa-plus"></i> <span class="remove-mobile">{{ __("Add New Product") }}<span>' +
                '</a>' +
                '</div>');
        });



        {{-- DATA TABLE ENDS--}}


    </script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            $('.input-daterange').datepicker({
                todayBtn: 'linked',
                format: 'yyyy-mm-dd',
                autoclose: true
            });

            load_data();

            function load_data(from_date = '', to_date = '', status = '') {
                var table = $('#ActiveHousetable').DataTable({
                    dom: 'Blfrtip',
                    buttons: [
                        {
                            "extend": 'excelHtml5',
                            "text": 'Export Report',
                            "className": 'exportBtn btn btn-primary btn-xs'
                        }
                    ],
                    lengthMenu: [[25, 50, 100, -1], [25, 50, 100, "All"]],
                    ordering: false,
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: '{{ route("admin-prod-datatables") }}',
                        data: {from_date: from_date, to_date: to_date, status: status}
                    },
                    columns: [
                        {data: 'name', name: 'name'},
                        {data: 'vendor', name: 'vendor'},
                        {data: 'type', name: 'type'},
                        {data: 'stock', name: 'stock'},
                        {data: 'price', name: 'price'},
                        {data: 'status', searchable: false, orderable: false},
                        {data: 'action', searchable: false, orderable: false}
                    ],
                    language: {
                        processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                    },
                    drawCallback: function (settings) {
                        $('.select').niceSelect();
                        var length = table.page.info().recordsTotal;
                        $('#countTotal').html(length)
                    }
                });


            }

            $('#filter').click(function () {
                var from_date = $('#from_date').val();
                var to_date = $('#to_date').val();
                var status = $('#status').val();
                // $('#ActiveHousetable').DataTable().destroy();
                $('#ActiveHousetable').DataTable().clear().destroy();
                load_data(from_date, to_date, status);
                /* if(from_date != '' &&  to_date != '' && status!='')
                 {
                     $('#ActiveHousetable').DataTable().destroy();
                     load_data(from_date, to_date,status);
                 }
                 else
                 {
                     alert('Both Date is required');
                 }*/
            });

            $('#refresh').click(function () {
                $('#from_date').val('');
                $('#to_date').val('');
                $('#status').val('-1');
                $('#ActiveHousetable').DataTable().clear().destroy();
                load_data();
            });

        });


        // Gallery Section Update

        $(document).on("click", ".set-gallery", function () {
            var pid = $(this).find('input[type=hidden]').val();
            $('#pid').val(pid);
            $('.selected-image .row').html('');
            $.ajax({
                type: "GET",
                url: "{{ route('admin-gallery-show') }}",
                data: {id: pid},
                success: function (data) {
                    if (data[0] == 0) {
                        $('.selected-image .row').addClass('justify-content-center');
                        $('.selected-image .row').html('<h3>{{ __("No Images Found.") }}</h3>');
                    } else {
                        $('.selected-image .row').removeClass('justify-content-center');
                        $('.selected-image .row h3').remove();
                        var arr = $.map(data[1], function (el) {
                            return el
                        });

                        for (var k in arr) {
                            $('.selected-image .row').append('<div class="col-sm-6">' +
                                '<div class="img gallery-img">' +
                                '<span class="remove-img"><i class="fas fa-times"></i>' +
                                '<input type="hidden" value="' + arr[k]['id'] + '">' +
                                '</span>' +
                                '<a href="' + '{{asset('assets/images/galleries').'/'}}' + arr[k]['photo'] + '" target="_blank">' +
                                '<img src="' + '{{asset('assets/images/galleries').'/'}}' + arr[k]['photo'] + '" alt="gallery image">' +
                                '</a>' +
                                '</div>' +
                                '</div>');
                        }
                    }

                }
            });
        });


        $(document).on('click', '.remove-img', function () {
            var id = $(this).find('input[type=hidden]').val();
            $(this).parent().parent().remove();
            $.ajax({
                type: "GET",
                url: "{{ route('admin-gallery-delete') }}",
                data: {id: id}
            });
        });

        $(document).on('click', '#prod_gallery', function () {
            $('#uploadgallery').click();
        });


        $("#uploadgallery").change(function () {
            $("#form-gallery").submit();
        });

        $(document).on('submit', '#form-gallery', function () {
            $.ajax({
                url: "{{ route('admin-gallery-store') }}",
                method: "POST",
                data: new FormData(this),
                dataType: 'JSON',
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    if (data != 0) {
                        $('.selected-image .row').removeClass('justify-content-center');
                        $('.selected-image .row h3').remove();
                        var arr = $.map(data, function (el) {
                            return el
                        });
                        for (var k in arr) {
                            $('.selected-image .row').append('<div class="col-sm-6">' +
                                '<div class="img gallery-img">' +
                                '<span class="remove-img"><i class="fas fa-times"></i>' +
                                '<input type="hidden" value="' + arr[k]['id'] + '">' +
                                '</span>' +
                                '<a href="' + '{{asset('assets/images/galleries').'/'}}' + arr[k]['photo'] + '" target="_blank">' +
                                '<img src="' + '{{asset('assets/images/galleries').'/'}}' + arr[k]['photo'] + '" alt="gallery image">' +
                                '</a>' +
                                '</div>' +
                                '</div>');
                        }
                    }

                }

            });
            return false;
        });


        // Gallery Section Update Ends


    </script>




@endsection
