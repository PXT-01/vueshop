<template>
  <div class="wrapper">
    <div class="animated fadeIn">
      <div class="row">
        <div class="col-12">
          <b-card header="<i class='fa fa-align-justify'></i> Lịch sử đặt hàng">
            <table class="table table-bordered table-striped table-sm">
              <thead>
                <tr>
                  <th>Username</th>
                  <th>Date registered</th>
                  <th>Role</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Vishnu Serghei</td>
                  <td>2012/01/01</td>
                  <td>Member</td>
                  <td>
                    <span class="badge badge-success">Active</span>
                  </td>
                </tr>
                <tr>
                  <td>Zbyněk Phoibos</td>
                  <td>2012/02/01</td>
                  <td>Staff</td>
                  <td>
                    <span class="badge badge-danger">Banned</span>
                  </td>
                </tr>
                <tr>
                  <td>Einar Randall</td>
                  <td>2012/02/01</td>
                  <td>Admin</td>
                  <td>
                    <span class="badge badge-secondary">Inactive</span>
                  </td>
                </tr>
                <tr>
                  <td>Félix Troels</td>
                  <td>2012/03/01</td>
                  <td>Member</td>
                  <td>
                    <span class="badge badge-warning">Pending</span>
                  </td>
                </tr>
                <tr>
                  <td>Aulus Agmundr</td>
                  <td>2012/01/21</td>
                  <td>Staff</td>
                  <td>
                    <span class="badge badge-success">Active</span>
                  </td>
                </tr>
              </tbody>
            </table>
            <nav>
              <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">Prev</a></li>
                <li class="page-item active">
                  <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
              </ul>
            </nav>
          </b-card>
        </div><!--/.col-->
      </div><!--/.row-->
      >
    </div>
  </div>
</template>

<script>
export default {
  name: 'tables'
}
</script>
