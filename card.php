<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kalnia:wght@100&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>عربتي/منتجاتي</title>
    <link rel="stylesheet" href="index.css">
    <style>
h3{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: bold;
}
main{
    width: 40%;
    margin-top: 20px;
}
table{
    box-shadow:1px 1px 10px blue;
    
}
thead{
    background-color: #115111;
    color: white;
    text-align: center;
}
tbody{
    text-align: center;
}
button{
    background-color: orange;
}
    </style>
</head>
<body>
    <br>
    <br>
    <center>
    <h3>
        منتجاتك المحجوزة
    </h3> 
    </center>
    
    <?php
    include('config.php');
    $result = mysqli_query($con, "SELECT * FROM addcard");
    while($row =mysqli_fetch_array($result)){
        echo "
        <center>
        <main>
            <br>
            <br>
            <br>
            <table class='table'>
                <thead>
                    <tr>
                        <th scope='col'>Product Name</th>
                        <th scope='col'>Product Price</th>
                        <th scope='col'>Delete Product</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>$row[name]</td>
                        <td>$row[price]</td>
                        <td><a href='del_card.php? id=$row[id]' class='btn btn-danger'>إزالة</a></td>
                    </tr>
                </tbody>

            </table>
        </main>
    </center>
        ";}?>

        <center>
            <br>
            <br>
            <button>
            <a href="shop.php">الرجوع لصفحة المنتجات</a>
            </button>
        </center>
</body>
</html>