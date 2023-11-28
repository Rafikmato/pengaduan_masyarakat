<?php 
	$judul = [
			[
				"nama" => "Surat Pernyataan Perubahan Elemen Data Kependudukan [F1.06]",
				"file" => "SURAT PERNYATAAN PERUBAHAN ELEMEN DATA KEPENDUDUKAN (F1.06).pdf",
			],
			[
				"nama" => "Surat Kuasa dalam Pelayanan Administrasi Kependudukan",
				"file" => "SURAT KUASA DALAM PELAYANAN ADMINISTRASI KEPENDUDUKAN.pdf",
			],
			[
				"nama" => "Formulir Pendaftaran Perpindahan Penduduk [F1.03]",
				"file" => "FORMULIR F1.03.pdf",
			],
			[
				"nama" => "Surat Pernyataan",
				"file" => "SURAT PERNYATAAN.pdf",
			],
			[
				"nama" => "Surat Pernyataan Tanggung Jawab (SPTJM) Kebenaran Data Kelahiran",
				"file" => "SURAT PERNYATAAN TANGGUNG JAWAB (PDF) KEBENARAN DATA KELAHIRAN.pdf",
			],
			[
				"nama" => "Surat Pernyataan Tanggung Jawab (SPTJM) Kebenaran Pasangan Suami Istri",
				"file" => "SURAT PERNYATAAN TANGGUNG JAWAB (SPTJM) PASANGAN SUAMI ISTRI.pdf",
			],
			[
				"nama" => "Surat Pernyataan 2",
				"file" => "SURAT PERNYATAAN 2.pdf",
			],
			
		]
		
		?>
	


<h2 class="text-center mb-4">Template Surat</h2>
<div class="mx-5">
	<h1>Unduh Berkas</h1>
	<p>Klik tombol di bawah ini untuk mengunduh berkas administrasi kependudukan</p>
	<div class="row">
		<table class="table table-striped p-5">
		  <thead>
			<tr>
			  <th scope="col">No</th>
			  <th scope="col">Dokumen</th>
			  <th width="10%" scope="col">Unduh</th>
			</tr>
		  </thead>
		  <tbody>
			  <?php foreach($judul as $key => $j) : ?>
				<tr>
					<th scope="row"><?= $key+1?></th>
					<td><?= $j["nama"] ?></td>
					<td>
						<a target="__blank" href="<?= base_url("assets/berkas/" . $j["file"]) ?>" class="btn btn-primary text-white ">Unduh</a>
					</td>
				</tr>
			<?php endforeach; ?>
		  </tbody>
		</table>
	</div>
</div>
<!-- <div class="container mt-3 text-center">
    <button id="downloadButton1" class="btn btn-primary">Surat Rekomendasi</button>
    <button id="downloadButton2" class="btn btn-primary">Surat Penelitian</button>
    <button id="downloadButton3" class="btn btn-primary">Surat Perjalanan</button>
    <button id="downloadButton4" class ="btn btn-primary">Surat Bantuan</button>
</div> -->
<!-- ... your HTML code ... -->

<!-- <script>
document.addEventListener("DOMContentLoaded", function() {
  const tombolDownload = document.querySelectorAll(".btn.btn-primary");

  tombolDownload.forEach(function(tombol, indeks) {
    tombol.addEventListener("click", function() {
      let tautanTemplate = ""; // Setel URL template yang benar
      let namaFile = "";

      switch (indeks) {
        case 0:
          tautanTemplate = "rekomendasi.docx"; 
          namaFile = "Surat_Rekomendasi.docx";
          break;
        case 1:
          tautanTemplate = "penelitian.docx";
          namaFile = "Surat_Penelitian.docx";
          break;
        case 2:
          tautanTemplate = "perjalanan.docx";
          namaFile = "Surat_Perjalanan.docx";
          break;
        case 3:
          tautanTemplate = "bantuan.docx";
          namaFile = "Surat_Bantuan.docx";
          break;
      }

      const tautanDownload = document.createElement("a");
      tautanDownload.href = tautanTemplate;
      tautanDownload.download = namaFile;
      tautanDownload.style.display = "none";
      document.body.appendChild(tautanDownload);
      tautanDownload.click();
      document.body.removeChild(tautanDownload);
    });
  });
});
</script> -->

<!-- ... your HTML code ... -->
