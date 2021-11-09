@extends('layouts.admin')

@section('styles')

<style type="text/css">

.input-field {
    padding: 15px 20px;
}


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

<input type="hidden" id="headerdata" value="{{ __('ORDER') }}">

                    <div class="content-area">
                        <div class="mr-breadcrumb">
                            <div class="row">
                                <div class="col-lg-10">
                                        <h4 class="heading">{{ __('All Orders') }}</h4>
                                        <ul class="links">
                                            <li>
                                                <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">{{ __('Orders') }}</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('admin-order-index') }}">{{ __('All Orders') }}</a>
                                            </li>
                                        </ul>
                                </div>
                                <div class="col-md-2">
                                    <div class="card c-info-box-area">
                                        <div class="c-info-box box2">
                                            <p id="countTotal"></p>
                                        </div>
                                        <div class="c-info-box-content">
                                            <h6 class="title">{{ __('Order Count') }}</h6>
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
                                        <br />
                                        <div class="row input-daterange">
                                            <div class="col-md-3">
                                                <input type="text" name="from_date" id="from_date" class="form-control" placeholder="From Date" readonly />
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" name="to_date" id="to_date" class="form-control" placeholder="To Date" readonly />
                                            </div>
                                            <div class="col-md-3">
                                                <select name="status" id="status" class="form-control">
                                                    <option value="all" selected="">All</option>
                                                    <option value="pending">Pending</option>
                                                    <option value="processing">Processing</option>
                                                    <option value="on delivery">On Delivery</option>
                                                    <option value="completed">Completed</option>
                                                    <option value="declined">Declined</option>
                                                    <option value="withheld">Withheld</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <button type="button" name="filter" id="filter" class="btn btn-primary">Filter</button>
                                                <button type="button" name="refresh" id="refresh" class="btn btn-dark">Refresh</button>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="table-responsiv">
                                        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                                                <table id="ActiveHousetable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                            <th>{{ __('Customer Email') }}</th>
                                                            <th>{{ __('Order Number') }}</th>
                                                            <th>{{ __('Total Qty') }}</th>
                                                            <th>{{ __('Total Cost') }}</th>
                                                            <th>{{ __('Status') }}</th>
                                                            <th>{{ __('Options') }}</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

{{-- ORDER MODAL --}}

<div class="modal fade" id="confirm-delete1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="submit-loader">
            <img  src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
        </div>
    <div class="modal-header d-block text-center">
        <h4 class="modal-title d-inline-block">{{ __('Update Status') }}</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
    </div>

      <!-- Modal body -->
      <div class="modal-body">
        <p class="text-center">{{ __("You are about to update the order's Status.") }}</p>
        <p class="text-center">{{ __('Do you want to proceed?') }}</p>
        <input type="hidden" id="t-add" value="{{ route('admin-order-track-add') }}">
        <input type="hidden" id="t-id" value="">
        <input type="hidden" id="t-title" value="">
        <textarea class="input-field" placeholder="Enter Your Tracking Note (Optional)" id="t-txt"></textarea>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('Cancel') }}</button>
            <a class="btn btn-success btn-ok order-btn">{{ __('Proceed') }}</a>
      </div>

    </div>
  </div>
</div>

{{-- ORDER MODAL ENDS --}}



{{-- MESSAGE MODAL --}}
<div class="sub-categori">
    <div class="modal" id="vendorform" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="vendorformLabel">{{ __('Send Email') }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
            <div class="modal-body">
                <div class="container-fluid p-0">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="contact-form">
                                <form id="emailreply">
                                    {{csrf_field()}}
                                    <ul>
                                        <li>
                                            <input type="email" class="input-field eml-val" id="eml" name="to" placeholder="{{ __('Email') }} *" value="" required="">
                                        </li>
                                        <li>
                                            <input type="text" class="input-field" id="subj" name="subject" placeholder="{{ __('Subject') }} *" required="">
                                        </li>
                                        <li>
                                            <textarea class="input-field textarea" name="message" id="msg" placeholder="{{ __('Your Message') }} *" required=""></textarea>
                                        </li>
                                    </ul>
                                    <button class="submit-btn" id="emlsub" type="submit">{{ __('Send Email') }}</button>
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

{{-- ADD / EDIT MODAL --}}

                <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">

                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                                                <div class="submit-loader">
                                                        <img  src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
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
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
                                            </div>
                        </div>
                    </div>

                </div>

{{-- ADD / EDIT MODAL ENDS --}}

@endsection

@section('scripts')

{{-- DATA TABLE --}}
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.input-daterange').datepicker({
                todayBtn:'linked',
                format:'yyyy-mm-dd',
                autoclose:true
            });

            load_data();
            function load_data(from_date = '', to_date = '',status='')
            {
                var table = $('#ActiveHousetable').DataTable({
                    dom: 'Blfrtip',
                    buttons: [
                        { "extend": 'excelHtml5', "text":'Export Report',"className": 'exportBtn btn btn-primary btn-xs' }
                    ],
                    ordering: false,
                    lengthMenu: [[25, 50,100, -1], [25, 50, 100, "All"]],
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url:'{{ route('admin-order-datatables','none') }}',
                        data:{from_date:from_date, to_date:to_date,status:status}
                    },
                    columns: [
                        { data: 'customer_email', name: 'customer_email' },
                        { data: 'id', name: 'id' },
                        { data: 'totalQty', name: 'totalQty' },
                        { data: 'pay_amount', name: 'pay_amount' },
                        { data: 'status', name: 'status' },
                        { data: 'action', searchable: false, orderable: false }],
                    language : {
                        processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                    },
                    drawCallback : function( settings ) {
                        $('.select').niceSelect();
                        var length = table.page.info().recordsTotal;
                        $('#countTotal').html(length)
                    }
                });
            }

            $('#filter').click(function(){
                var from_date = $('#from_date').val();
                var to_date = $('#to_date').val();
                var status = $('#status').val();

                    $('#ActiveHousetable').DataTable().clear().destroy();
                    load_data(from_date, to_date,status);
            });

            $('#refresh').click(function(){
                $('#from_date').val('');
                $('#to_date').val('');
                $('#status').val('-1');
                $('#ActiveHousetable').DataTable().clear().destroy();
                load_data();
            });

        });

/*        var table = $('#ActiveHousetable').DataTable({
            dom: 'Blfrtip',
            buttons: [
                'excelHtml5'
            ],
               ordering: false,
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-order-datatables','none') }}',
               columns: [
                        { data: 'customer_email', name: 'customer_email' },
                        { data: 'id', name: 'id' },
                        { data: 'totalQty', name: 'totalQty' },
                        { data: 'pay_amount', name: 'pay_amount' },
                        { data: 'action', searchable: false, orderable: false }
                     ],
               language : {
                    processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },
                drawCallback : function( settings ) {
                        $('.select').niceSelect();
                }
            });*/

    </script>

{{-- DATA TABLE --}}

@endsection
