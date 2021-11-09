@extends('layouts.admin')
@section('styles')
    <style type="text/css">
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
    <input type="hidden" id="headerdata" value="{{ __("CUSTOMER") }}">
    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-10">
                    <h4 class="heading">{{ __("Customers") }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
                        </li>
                        <li>
                            <a href="{{ route('admin-user-index') }}">{{ __("Customers") }}</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-2">
                    <div class="card c-info-box-area">
                        <div class="c-info-box box2">
                            <p id="countTotal"></p>
                        </div>
                        <div class="c-info-box-content">
                            <h6 class="title">{{ __('User Count') }}</h6>
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
                        <div class="row">
                            <br/>
                            <div class="col-lg-12">
                                <div class="row input-daterange">
                                    <div class="col-md-3">
                                        <input type="text" name="from_date" id="from_date" class="form-control"
                                               placeholder="From Date" readonly/>
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" name="to_date" id="to_date" class="form-control"
                                               placeholder="To Date" readonly/>
                                    </div>
<!--                                    <div class="col-md-3">
                                        <select name="status" id="status" class="form-control">
                                            <option value="-1">All</option>
                                            <option value="2">Activated</option>
                                            <option value="1">Deactivated</option>
                                        </select>
                                    </div>-->
                                    <div class="col-md-3">
                                        <button type="button" name="filter" id="filter" class="btn btn-primary">Filter</button>
                                        <button type="button" name="refresh" id="refresh" class="btn btn-dark">Refresh</button>
                                    </div>
                                </div>
                            </div>
                            <br/>
                        </div>
                        <div class="table-responsiv">
                            <table id="ActiveHousetable" class="table table-hover dt-responsive" cellspacing="0"
                                   width="100%">
                                <thead>
                                <tr>
                                    <th>{{ __("Name") }}</th>
                                    <th>{{ __("Email") }}</th>
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

    {{-- ADD / EDIT MODAL --}}

    <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">

        <div class="modal-dialog modal-dialog-centered" role="document">
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

    {{-- ADD / EDIT MODAL ENDS --}}

    {{-- TRANSACTION MODAL --}}

    <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">

        <div class="modal-dialog modal-dialog-centered" role="document">
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

    {{-- TRANSACTION MODAL ENDS --}}



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
                    <p class="text-center">{{ __("You are about to delete this Customer.") }}</p>
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

    {{-- MESSAGE MODAL --}}
    <div class="sub-categori">
        <div class="modal" id="vendorform" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="vendorformLabel">{{ __("Send Message") }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid p-0">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="contact-form">
                                        <form id="emailreply1">
                                            {{csrf_field()}}
                                            <ul>
                                                <li>
                                                    <input type="email" class="input-field eml-val" id="eml1" name="to"
                                                           placeholder="{{ __("Email") }} *" value="" required="">
                                                </li>
                                                <li>
                                                    <input type="text" class="input-field" id="subj1" name="subject"
                                                           placeholder="{{ __("Subject") }} *" required="">
                                                </li>
                                                <li>
                                                    <textarea class="input-field textarea" name="message" id="msg1"
                                                              placeholder="{{ __("Your Message") }} *"
                                                              required=""></textarea>
                                                </li>
                                            </ul>
                                            <button class="submit-btn" id="emlsub1"
                                                    type="submit">{{ __("Send Message") }}</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- MESSAGE MODAL ENDS --}}
@endsection

@section('scripts')

    {{-- DATA TABLE --}}
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css"/>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js">
    </script>
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
                    ordering: false,
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: '{{ route('admin-user-datatables') }}',
                        data: {from_date: from_date, to_date: to_date, status: status}
                    },
                    lengthMenu: [[25, 50, 100, -1], [25, 50, 100, "All"]],
                    columns: [
                        {data: 'name', name: 'name'},
                        {data: 'email', name: 'email'},
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
              //  var status = $('#status').val();
                // $('#ActiveHousetable').DataTable().destroy();
                $('#ActiveHousetable').DataTable().clear().destroy();
                load_data(from_date, to_date, 'status');
            });

            $('#refresh').click(function () {
                $('#from_date').val('');
                $('#to_date').val('');
                $('#status').val('-1');
                $('#ActiveHousetable').DataTable().clear().destroy();
                load_data();
            });

        });
    </script>

<!--    <script type="text/javascript">

        var table = $('#ActiveHousetable').DataTable({
            ordering: false,
            processing: true,
            serverSide: true,
            ajax: '{{ route('admin-user-datatables') }}',
            columns: [
                {data: 'name', name: 'name'},
                {data: 'email', name: 'email'},
                {data: 'action', searchable: false, orderable: false}
            ],
            language: {
                processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
            },
            drawCallback: function (settings) {
                $('.select').niceSelect();
            }
        });


        // DEPOSIT OPERATION

        $(document).on('click', '.deposit', function () {
            if (admin_loader == 1) {
                $('.submit-loader').show();
            }
            $('#modal1').find('.modal-title').html('Manage Deposit');
            $('#modal1 .modal-content .modal-body').html('').load($(this).attr('data-href'), function (response, status, xhr) {
                if (status == "success") {
                    if (admin_loader == 1) {
                        $('.submit-loader').hide();
                    }
                }
            });
        });


        // DEPOSIT OPERATION END


    </script>-->

    {{-- DATA TABLE --}}

@endsection
