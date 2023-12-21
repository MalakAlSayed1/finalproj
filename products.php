<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kalnia:wght@100&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
   
    
    <style>
        h3{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
        }
        .card{
            float: left;
            margin-top: 20px;
            margin-left: 10px;
            margin-right: 10px; 

        }
        .card img{
            width: 100%;
            height: 200px;
        }
        main{
            width: 65%;
            margin: auto;
        }

        
    </style>
</head>
<body>
<br>
<br>
<center>
    <h3> لوحة تحكم الآدمن </h3>
    
</center>
<?php

include('config.php');
$result = mysqli_query($con, "SELECT * FROM prod");
while($row = mysqli_fetch_array($result)){
    echo "


<main>
<div class='card' style='width: 18rem;'>
<img src='$row[image]' class='card-img-top'>
<div class='card-body'>
<center>
  <h5 class='card-title'>$row[name]</h5>
  <p class='card-text'>$row[price]</p>
  <a href='#' class='btn btn-danger'>حذف منتج</a>
  <a href='#' class='btn btn-primary'>تعديل منتج</a>
  </center>
</div>
</div>
</main>



 
";
}

?>

</body>
</html>