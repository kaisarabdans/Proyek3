<?php
    $row = $db->get_row("SELECT * FROM tb_lokasikreasi WHERE id_lokasikreasi='$_GET[ID]'"); 
?>
<div class="page-header">
    <h1>Ubah Lokasi Kreasi</h1>
</div>
<div class="row">
    <div class="col-sm-6">
        <?php if($_POST) include'aksi.php'?>
        <form method="post" action="?m=lokasikreasi_ubah&ID=<?=$row->id_lokasikreasi?>" enctype="multipart/form-data">
            <div class="form-group">
                <label>Nama lokasikreasi</label>
                <input class="form-control" type="text" name="lokasi_kreasi" value="<?=$row->lokasi_kreasi?>"/>
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="?m=lokasikreasi"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
        </form>
    </div>
</div>