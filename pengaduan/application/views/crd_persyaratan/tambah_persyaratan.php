<div class="card pt-4 pl-5 pr-5">
	<form action="" method="post">
		<div class="form-group row">
			<label for="judul" class="col-sm-3 col-form-label">Judul</label>
			<div class="col-sm-8">
				<input type="text" name="judul" id="judul" class="form-control" placeholder=""
					aria-describedby="helpId" value="<?= set_value('judul') ?>" >
				<small id="helpId" class="text-muted"><?php echo form_error('judul', '<div class="alert alert-danger mt-2">', '</div>'); ?></small>
			</div>
		</div>
		<div class="form-group row">
			<label for="isi" class="col-sm-3 col-form-label">Isi</label>
			<div class="col-sm-8">
				<textarea class="form-control ckeditor" type="text" name="isi" id="isi" class="form-control" placeholder=""
					aria-describedby="helpId" value="<?= set_value('isi') ?>"></textarea>
				<small id="helpId" class="text-muted"><?php echo form_error('isi', '<div class="alert alert-danger mt-2">', '</div>'); ?></small>
			</div>
		</div>
        <br>
        <div class="form-group row justify-content-center">
			<button type="reset" class="btn btn-danger mr-2">Reset</button>
			<a href="<?= base_url('admin/crd_persyaratan') ?>" class="btn btn-warning mr-2">Kembali</a>
			<button type="submit" class="btn btn-primary">Simpan</button>
		</div>
	</form>
</div>

<script>
	CKEDITOR.replace('isi');
</script>