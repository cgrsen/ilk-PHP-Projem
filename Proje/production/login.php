<?php

require "settings.php"; 
session_start(); 
ob_start(); 
include_once 'connection.php'; 



if(isset($_POST['girisButonu'])){ 
		
	$email = $_POST['email'];
	$pass = $_POST['password'];
	$password = md5($pass);
	
	if($email && $password){

		$query = mysqli_query($baglan, "SELECT * FROM kullanicilar WHERE email='$email' AND password='$password'");
		$numrow = mysqli_num_rows($query);
		
		if($numrow > 0){

			$query = mysqli_query($baglan, "SELECT * FROM kullanicilar WHERE email='$email' AND password='$password'");
			$row = mysqli_fetch_array($query);

			$_SESSION["email"] = $row["email"]; 
			$_SESSION["kullaniciID"] = $row["kullaniciID"];
			$_SESSION["kullaniciTipi"] = $row["kullaniciTipi"];
			$_SESSION["first_login"] = "first"; 

			if ($row['kullaniciTipi'] == 1){
				header('Location:index.php');
			}elseif ($row['kullaniciTipi'] == 2){
				header('Location:adminIndex.php');
			}else{
				exit("User Group Id Bulunamad─▒");
			}

		}else{

			echo "<script type='text/javascript'>
			window.location='login.php?user=false';
			</script>";

		}
	}
	
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title><?php echo $siteBasligi; ?></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
	<link rel="icon" href="<?php echo $favicon; ?>" type="image/ico" />
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img style="position:relative; left:17px; top:15px; width: 66%;" src="images/user1.png" alt="logo">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h2 class="card-title" style="text-align:center; font-family: 'Montserrat', sans-serif; font-weight: 600;">Giri┼č Yap</h2>
							<form method="POST" class="my-login-validation" novalidate="" action="login.php">
								<div class="form-group">
									<label for="email">E-posta</label>
									<input type="email" class="form-control" name="email" value="" required autofocus>
									<div class="invalid-feedback">
										Yaz─▒lan e-posta adresi ge├žersizdir.
									</div>
								</div>

								<div class="form-group">
									<label for="password">┼×ifre
										<a href="forgot.html" class="float-right">
											┼×ifrenizi mi unuttunuz?
										</a>
									</label>
									<input type="password" class="form-control" name="password" required data-eye>
								    <div class="invalid-feedback">
								    	┼×ifre k─▒sm─▒ gerekli bir aland─▒r.
							    	</div>
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">
										<label for="remember" class="custom-control-label">Beni Hat─▒rla</label>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" name="girisButonu" class="btn btn-primary btn-block">
										Giri┼č
									</button>
								</div>
								<div class="mt-4 text-center">
									<a href="register.php">Yeni Kay─▒t</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2022 &mdash; ├ça─čr─▒ & G├Âksu
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
</body>
</html>
