<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/css/bootstrap.min.css">
<div class="jumbotron jumbotron-fluid mt-2">
    <div class="container">
        <h1 class="display-3 text-center">Selamat Datang</h1>
        <h2 class="text-center" style="text-transform: capitalize">
            <?= $this->session->userdata('user')['session_nama_masyarakat'] ?>
        </h2>
    </div>
</div>
<div class="row justify-content-center">
	<div class="col-xl-4 col-md-6">
		<div class="card text-white mb-4" style="background: rgb(43,50,126);
background: linear-gradient(0deg, rgba(43,50,126,1) 0%, rgba(66,81,219,1) 100%);">
			<div class="card-body text-center">Jumlah Konsultasi</div>
			<div class="card-footer d-flex align-items-center justify-content-center">
                <h4><?= $jumlah_pengaduan ?></h4>
			</div>
		</div>
	</div>
	<div class="col-xl-4 col-md-6">
		<div class="card bg-danger text-white mb-4">
			<div class="card-body text-center">Konsultasi Belum Selesai</div>
			<div class="card-footer d-flex align-items-center justify-content-center">
				<h4><?= $jumlah_pengaduan_belum ?></h4>
			</div>
		</div>
	</div>
</div><br><br>

