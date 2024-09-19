<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
					<div class="col-sm-6 col-lg-3">
					<div class="footer">
						<img src="img/cropped-samsung-solutions-logo-01.png" class="footer-logo" alt="Footer Logo" width="50%" height="50%">
								<ul class="footer-links">
									<li><a href="PR8F+8PJ, Moi Ave, Nairobi"><i class="fa fa-map-marker"></i>Moi Avenue, Sonalux house 1st floor room M9</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>0797031014</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-6 text-center">
							<div class="footer">
							 	<h4 class="footer-title">Customer Services</h4>
								<ul class="footer-links">
										<li><a href="#">Payment Methods</a></li>
										<li><a href="#">Money-back guarantee!</a></li>
										<li><a href="#">Returns</a></li>
										<li><a href="#">Shipping</a></li>
										<li><a href="#">Terms and conditions</a></li>
										<li><a href="#">Privacy Policy</a></li>
								</ul>
								<span class="copyright">
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
							</span>
							</div>
						</div>
				

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h4 class="footer-title">My Account</h4>
								<ul class="footer-links">
									<li><a href="login.php">Sign In</a></li>
	            					<li><a href="cart.php">View Cart</a></li>
	            					<li><a href="#">Track My Order</a></li>
								</ul>
							</div>
						</div>
						
						<div class="clearfix visible-xs"></div>

						
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->
                

			<!-- bottom footer -->
			
			<!-- /bottom footer -->
		</footer>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/actions.js"></script>
		<script src="js/sweetalert.min"></script>
		<script src="js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="js/script.js"></script>
		<script>var c = 0;
        function menu(){
          if(c % 2 == 0) {
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";    
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";    
            c++; 
              }else{
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";        
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";        
            c++;
              }
        }
           
		
</script>
    <script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>
	
