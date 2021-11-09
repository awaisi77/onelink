<form action="{{route('admin-prod-approval-deny',$id)}}" method="post">
    {{csrf_field()}}
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="admin_remarks">Rejection Comments</label>
                <textarea name="admin_remarks"
                          required
                          id="" class="form-control"></textarea>

            </div>
        </div>
    </div>
    <input type="submit" class="btn btn-success" value="Save">
</form>