<?php
session_start();
if(isset($_POST['signin']))
{
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql ="SELECT EmailId,Password FROM tblusers WHERE EmailId=:email and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['login']=$_POST['email'];
echo "<script type='text/javascript'> document.location = 'package-list.php'; </script>";
} else{
	
	echo "<script>alert('Detalles no válidos');</script>";

}

}

?>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
								<div class="login">
										<div class="login-left">
												<ul>
													<li><a class="fb" href="#"><i></i>Facebook</a></li>
													<li><a class="goog" href="#"><i></i>Google</a></li>
													
												</ul>
											</div>
									<div class="login-right">
										<form method="post">
											<h3>Iniciar sesión con su cuenta </h3>
	<input type="text" name="email" id="email" placeholder="Introduce tu correo electrónico"  required="">	
	<input type="password" name="password" id="password" placeholder="Contraseña" value="" required="">	
											<h4><a href="forgot-password.php">Has olvidado tu contraseña</a></h4>
											
											<input type="submit" name="signin" value="INGRESAR">
										</form>
									</div>
									<div class="clearfix"></div>								
								</div>
								<p>Al iniciar sesión, aceptas nuestros <a href="page.php?type=terms">Terminos y condiciones</a> y <a href="page.php?type=privacy">Politica de Privacidad</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>