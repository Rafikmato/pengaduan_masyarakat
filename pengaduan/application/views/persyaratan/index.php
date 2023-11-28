<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        .custom-card {
            background-color: #f8f9fa; /* Set the background color to gray */
            margin-bottom: 15px; /* Add some bottom margin between cards */
        }

        h5 {
            text-align: center;
        }

        .card {
            /* justify-content: space-between; */
            margin-right: 10px;
            margin-left: 20px;
            height: 50vh;
        }
    </style>
    <title>Card Layout</title>
</head>

<body>

<div class= "text-center fw-bold mb-4 pt-3 ">
	<h2>PERSYARATANsdasdasdasd ADMINISTRASI KEPENDUDUKAN</h2>
</div>

    <div class="container">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-2 g-lg-3">

        <?php foreach ($persyaratan as $value) :?>
        
            <div class="card custom-card card bg-primary text-white" style="width: 18rem; height: 21rem; background: rgb(43,50,126);
                        background: linear-gradient(0deg, rgba(43,50,126,1) 0%, rgba(66,81,219,1) 100%);">
                <div class="card-body">
                    <h5 class="card-header"><?= $value["judul"]  ?></h5>
                    <p class="card-title text-center"><?= $value["isi"]?></p>
                </div>
            </div>
            <?php endforeach; ?>


            

        <!-- Blok 11: KK pekerjaan -->
     

        

        <!-- Blok 12: Kartu keluarga -->
       


        <!-- Ulangi blok di atas untuk kartu yang tersisa -->

    </div>
</div>
