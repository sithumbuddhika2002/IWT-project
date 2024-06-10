(Q1)
a)

1) dynamic
2) web application
3) html, css, js, php, mysql
4) LAN

b) 

1) b2b
2) b2c
3) c2c
4) c2c

c)

1) DNS attack
2) XSS
3) DoS
4) SQL injection

d) key generation --> encryption --> transmission --> decryption


(Q2)
a) 

<?php

	$studentMarks = [80, 92, 85, 50, 65];
	$studentName = ['Uthpala', 'Meena', 'Abdul', 'Sahan', 'Teena'];
	
	for($i=0; $i<5; $i++) 
	{

		if($studentMarks[$i] <= 100 && $studentMarks[$i] > 90)
		{
			$grade = 'A';
		}

		else if($studentMarks[$i] <= 90 && $studentMarks[$i] > 80)
		{
			$grade = 'B';
		}

		else if($studentMarks[$i] <= 80 && $studentMarks[$i] > 70)
		{
			$grade = 'C';
		}
		
		else if($studentMarks[$i] <= 70 && $studentMarks[$i] > 60)
		{
			$grade = 'D';
		}

		else if($studentMarks[$i] <= 60)
		{
			$grade = 'F';
		}

		if($grade != 'F')
		{
			echo "Congratulation $studentName[$i], You got $studentMarks[$i] marks and your grade is $grade <br>";
		}

		else
		{
			echo "Try harder $studentName[$i], you got $studentMarks[$i] marks and you Fail the module <br>";
	    }
    }

?>


b)

<!Doctype html>
<html>
<head>
	<title>volume of a cone</title>
</head>

<body>

	<h2>hprf radius and height , get the volume of a cone</h2><br><br>

	<form>
	
	<label>Radius</label><br>
	<input type="text" id="rad"><br>

	<label>Radius</label><br>
	<input type="text" id="hgt"><br>

	<label>Radius</label><br>
	<input type="text" id="vol"><br><br>

	<button type="submit" id="btn">Calculate</button>
	</form>

	<script>

		var button = document.getElementById("btn");
		
		button.addEventListner("click", function()){

			var radius = document.getElementById("rad").value;
			radius = parseInt(radius);

			var height = document.getElementById("hgt").value;
			height = parseInt(height);

			var volume= (1/3) * Math.PI * Math.pow(radius, 2)*height

			document.getElementById("hgt").value = volume
		}
	</script>
</body>
</html>

c) 

(Q3)

a)

1)

<?php

    $host = 'httD ://nanasara. Ik';
    $username = 'admin';
    $password = 'admn@ne#231';
    $database = 'book_db';

    $con = new mysqli($host, $username, $password, $database);

    if (mysqli_connect_error()) {

        die("Connection error!" .mysqli_connect_error());
    }
?>

2)

<?php

    require 'config.php';

    $name = $_POST['name'];
    $category = $_POST['category'];
    $image = $_POST['image'];
    $stock = $_POST['stock'];
    $store = $_POST['store'];
    $year = $_POST['year'];
    $price = $_POST['price'];

    if (!empty($name)) {
        
        $sql = "INSERT INTO bookdetails(catId, name, Imageurl, stock, publishedyear, store, price) VALUES ('$name', '$category', '$image', '$stock', '$store', '$year', '$price')";

        $result = mysqli_query($con, $sql);
    }
?>

<!DOCTYPE html>
<html>

<head>
    <title>add book information</title>
</head>

<body>

    <div style="border: 2px solid; width:450px; padding:50px;">
        <form action="addProduct.php" method="post">

            <h1>Add Book Information</h1><br><br>

            <label for="">Name of the book: </label>
            <input type="text" name="name"><br><br>

            <label for="">Name of the book: </label>
            <select name="category">

                <option value="001">Action and Adventure</option>
                <option value="002">Classics</option>
                <option value="003">Detective and Mystery</option>
                <option value="004">History</option>
                <option value="005">Comics</option>
                <option value="006">Literary Fiction</option>
            </select><br><br>

            <label for="">Image to upload: </label>
            <input type="file" name="image"><br><br>

            <label for="">Stock Availability: </label>
            <input type="radio" name="stock">Yes
            <input type="radio" name="stock">No <br><br>

            <label for="">Available store: </label>
            <input type="checkbox" name="store">Colombo 05
            <input type="checkbox" name="store">Colombo 04
            <input type="checkbox" name="store">Colombo 03 <br><br>

            <label for="">Publication Year: </label>
            <select name="year">

                <option value="2023">2023</option>
                <option value="2022">2022</option>
                <option value="2021">2021</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
            </select><br><br>

            <label for="">Price: </label>
            <input type="text" name="price"><br><br>

            <button type="submit">Upload</button>

        </form>
    </div>
</body>

</html>

new1
function isPerfectNumber(number) {
    if (number <= 1) {
        return false; // Perfect numbers are positive integers greater than 1.
    }

    let divisorsSum = 1; // Start with 1 as the first proper divisor.

    for (let i = 2; i * i <= number; i++) {
        if (number % i === 0) {
            divisorsSum += i;
            if (i !== number / i) {
                // Avoid adding the same divisor twice for perfect squares.
                divisorsSum += number / i;
            }
        }
    }

    return divisorsSum === number;
}

// Example usage:
console.log(isPerfectNumber(6));    // true
console.log(isPerfectNumber(28));   // true
console.log(isPerfectNumber(496));  // true
console.log(isPerfectNumber(8128)); // true
console.log(isPerfectNumber(7));    // false


