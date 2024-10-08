<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->


<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Coomingsoon</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="icon" href="images/fox.png" type="image/x-icon">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/scrollbar.css">
	<link rel="stylesheet" href="css/fontawesome/fontawesome-all.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/tipso.css">
	<link rel="stylesheet" href="css/chosen.css">
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/transitions.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!-- Preloader Start -->
	<div class="preloader-outer">
		<div class='loader'>
			<div class='loader--dot'></div>
			<div class='loader--dot'></div>
			<div class='loader--dot'></div>
			<div class='loader--dot'></div>
		</div>
	</div>
	<!-- Preloader End -->
	<!-- Wrapper Start -->
	<div id="wt-wrapper" class="wt-wrapper wt-haslayout">
		<!--Main Start-->
		<main id="wt-main" class="wt-main wt-haslayout">
			<!--Coming Soon Start -->
			<div class="wt-haslayout wt-main-section">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="wt-comingsoon-holder wt-haslayout">
								<div class="wt-comingsoon-aligncenter">
									<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7 float-left">
										<div class="wt-comingsoon-content">
											<strong class="wt-comingsoon-logo"><img src="images/comingsoon/logo.png" alt="img description"></strong>
											<div class="wt-title">
												<h2><span>Stay Tuned We’re</span> Launching Very Soon!</h2>
											</div>
											<div class="wt-description">
												<p>Consectetur adipisicing elit sed dotem eiusmod tempor incuntes ut labore etdolore maigna aliqua enim.</p>
											</div>
											<ul id="wt-comming-sooncounter" class="wt-comming-sooncounter">
												<li class="wt-counterbox">
													<div id="days" class="timer_box"></div>
												</li>
												<li class="wt-counterbox">
													<div id="hours" class="timer_box"></div>
												</li>
												<li class="wt-counterbox">
													<div id="minutes" class="timer_box"></div>
												</li>
												<li class="wt-counterbox">
													<div id="seconds" class="timer_box"></div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 float-left">
										<div class="wt-comingsoonimg">
											<figure><img src="images/comingsoon/img-02.png" alt="img description"></figure>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Coming Soon End-->
		</main>
		<!--Main End-->
		<p class="wt-copyrights wt-comingsoon-wt-copyrights"><a href="javascript:void(0);"><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
	</div>
	<!--Wrapper End-->
	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/jquery-library.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/chosen.jquery.js"></script>
	<script src="js/tilt.jquery.js"></script>
	<script src="js/scrollbar.min.js"></script>
	<script src="js/prettyPhoto.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/readmore.js"></script>
	<script src="js/countTo.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/tipso.js"></script>
	<script src="js/jRate.js"></script>
	<script src="js/main.js"></script>
	<script>
		(function($) {
			var launch = new Date(2019, 12, 1, 1, 12);
			var days = $('#days');
			var hours = $('#hours');
			var minutes = $('#minutes');
			var seconds = $('#seconds');
			setDate();
			function setDate(){
				var now = new Date();
				if( launch < now ){
					days.html('<h1>0</h1><p>Days</p>');
					hours.html('<h1>0</h1><p>Hours</p>');
					minutes.html('<h1>0</h1><p>Minutes</p>');
					seconds.html('<h1>0</h1><p>Seconds</p>');
				}
				else{
					var s = -now.getTimezoneOffset()*60 + (launch.getTime() - now.getTime())/1000;
					var d = Math.floor(s/86400);
					days.html('<h1>'+d+'</h1><p>Day'+(d>1?'s':''),'</p>');
					s -= d*86400;
					var h = Math.floor(s/3600);
					hours.html('<h1>'+h+'</h1><p>Hour'+(h>1?'s':''),'</p>');
					s -= h*3600;
					var m = Math.floor(s/60);
					minutes.html('<h1>'+m+'</h1><p>Minute'+(m>1?'s':''),'</p>');
					s = Math.floor(s-m*60);
					seconds.html('<h1>'+s+'</h1><p>Second'+(s>1?'s':''),'</p>');
					setTimeout(setDate, 1000);
				}
			}
		})(jQuery);
	</script>
</body>

</html>