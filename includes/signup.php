<?php
error_reporting(0);
if(isset($_POST['submit']))
{
$fname=$_POST['fname'];
$mnumber=$_POST['mobilenumber'];
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql="INSERT INTO  tblusers(FullName,MobileNumber,EmailId,Password) VALUES(:fname,:mnumber,:email,:password)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mnumber',$mnumber,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$_SESSION['msg']="Estás registrado exitosamente. Ahora puedes iniciar sesión ";
header('location:thankyou.php');
}
else 
{
$_SESSION['msg']="Algo salió mal. Inténtalo de nuevo.";
header('location:thankyou.php');
}
}
?>
<!--Javascript for check email availabilty-->
<script>
function checkAvailability() {

$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'emailid='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
							<section>
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
												<form name="signup" method="post">
													<h3>Crea tu cuenta </h3>
					

				<input type="text" value="" placeholder="Nombre completo" name="fname" autocomplete="off" required="">
				<input type="text" value="" placeholder="Número celular" maxlength="10" name="mobilenumber" autocomplete="off" required="">
		<input type="text" value="" placeholder="Id. correo" name="email" id="email" onBlur="checkAvailability()" autocomplete="off"  required="">	
		 <span id="user-availability-status" style="font-size:12px;"></span> 
	<input type="password" value="" placeholder="Contraseña" name="password" required="">	
													<input type="submit" name="submit" id="submit" value="CREAR CUENTA">
												</form>
											</div>
												<div class="clearfix"></div>								
										</div>
											<p>Al iniciar sesión, aceptas nuestros <a href="page.php?type=terms">Terminos y condiciones</a> y <a href="page.php?type=privacy">Politica de privacidad</a></p>
									</div>
								</div>
							</section>
					</div>
				</div>
			</div>