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
    <link rel="stylesheet" href="index.css">
    <style>
        h3{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
        }
        .card{
            float: right;
            margin-top: 30px;
            margin-left: 10px;
            margin-right: 10px; 
        }
        .card img{
            width: 285px;
            height: 190px;
        }
        main{
            width: 60%;
        }
        #aa{
            margin-left: 70px;
            text-decoration: none;
            color: red;
        }
        
        ;
    </style>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
        <h4><a id= "aa" class="navbar-brand" href="card.php">عربة التسوق</a></h4>
    </nav>
<center>
    <h3>   المنتجات المتوفرة </h3>
</center>
<?php

include('config.php');
$result = mysqli_query($con, "SELECT * FROM prod");
while($row = mysqli_fetch_array($result)){
    echo "
 <center>
 <main>
<div class='card' style='width: 18rem;'>
  <img src='$row[image]' class='card-img-top' >
  <div class='card-body'>
    <h5 class='card-title'>$row[name]</h5>
    <p class='card-text'>$row[price]</p>
    
    <a href='val.php? id=$row[id]' class='btn btn-success'> إضافةالمنتج الى العربة</a>
  </div>
</div>
</main>
 <center>
";
}

?>

</body>
</html>