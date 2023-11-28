<div class="card mb-4">
	<div class="card-header">
        <a href="<?= base_url('admin/crd_persyaratan/tambah_persyaratan') ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Data</a>
    </div>
	<div class="card-body">
		<div class="table-responsive ">
			<table id="example" class="table table-striped table-bordered" style="width:100%">
				<thead>
					<tr>
						<th>Judul</th>
						<th>Isi</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
                    <?php foreach($persyaratan as $pp) { ?>
                    <tr>
                        <td><?= $pp['judul'] ?></td>
                        <td><?= $pp['isi']?></td>
	
                        <td>
                            <a href="<?= base_url('admin/pengguna/petugas/edit/')?><?= $pp['id'] ?>" class="btn btn-warning"><i class="fas fa-edit"></i> Edit </a>
                            <a href="<?= base_url('admin/pengguna/petugas/hapus/')?><?= $pp['id'] ?>" class="btn btn-danger"><i class="fas fa-trash"></i> Hapus </a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
			</table>
		</div>
	</div>
</div>

<script>
	CKEDITOR.replace('isi');
</script>