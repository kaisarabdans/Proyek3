<div class="page-header">
    <h1>Tambah Stationary</h1>
</div>
<div class="row">
    <div class="col-sm-6">
        <?php if($_POST) include'aksi.php'?>
        <form method="post" action="?m=stationary_tambah" enctype="multipart/form-data">
            <div class="form-group">
                <label>Nama Stationary</label>
                <input type="text" class="form-control" name="nama_stationary">
            </div>
            <div class="form-group">
                <label>Latitude</label>
                <input type="text" class="form-control" name="lat">
            </div>
            <div class="form-group">
                <label>Longtitude</label>
                <input type="text" class="form-control" name="lng">
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="?m=stationary"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
        </form>
    </div>
</div>