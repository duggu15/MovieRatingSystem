
<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Movie Rating System</title>
  <script type="text/javascript" src="em.js"></script>
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="a.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/valid.js"></script>
</head>
<body>
    
 <header>
<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <div class="header-imges">
                    <img src="images/lobo.jpg" alt="logo" class="brand-image">
                    
                </div>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="active"><a href="userlogin.jsp">Home</a></li>
              
              <li><a href="logincontact.jsp">Contact Us</a></li>
              <li><a href="loginabout.jsp">About Us</a></li>
            </ul>
              <ul class="nav navbar-nav navbar-right">
                  <li style="margin:0; padding:0; "><a href="profile.jsp"> <b>Welcome</b> <br>
                    <%
                    String data=session.getAttribute("name").toString();
                    out.print(data);
                    %>
                    
                    
                    </a></li>
              <li><a href="logout.jsp"  style="width:auto;"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
 </header>
	  
 

<div class="bn">
<div >
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
	  <li data-target="#myCarousel" data-slide-to="5"></li>
	  <li data-target="#myCarousel" data-slide-to="6"></li>
	  <li data-target="#myCarousel" data-slide-to="7"></li>
	  <li data-target="#myCarousel" data-slide-to="8"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/poster/aladdi.jpg" alt="Aladdin" style="width:100%; height: 500px;">
        <div class="carousel-caption">
                <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                          </x-star-rating>
                   </h3>
                <a href="movies/aladdin.jsp" class="btn btn-default btnD">watch Traler</a>          </div>
	  </div>
	  
	  <div class="item">
			<img src="images/poster/avebgers.jpg" alt="New york" style="width:100%; height: 500px;">
			<div class="carousel-caption">
					 <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                          </x-star-rating>
                   </h3>
					<a href="movies/avengers.jsp" class="btn btn-default btnD">watch Trailer</a>			  </div>
		  </div>

      <div class="item">
        <img src="images/poster/dark_phoenix.jpg" alt="Chicago" style="width:100%; height: 500px;">
        <div class="carousel-caption">
                 <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                            <div class="star "></div>
                          </x-star-rating>
                   </h3>
				<a href="movies/darkpheonix.jsp" class="btn btn-default btnD">watch Trailer</a>            </div>       
      </div>

      <div class="item">
            <img src="images/poster/frozen.jpg" alt="Chicago" style="width:100%; height: 500px;">
            <div class="carousel-caption">
                     <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                          </x-star-rating>
                   </h3>
					<a href="movies/frozen2.jsp" class="btn btn-default btnD">watch Trailer</a>      </div>
          </div>

      <div class="item">
              <img src="images/poster/joker.jpg" alt="Chicago" style="width:100%;height: 500px;">
              <div class="carousel-caption">
                    <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                          </x-star-rating>
                   </h3>
					<a href="movies/joker.jsp" class="btn btn-default btnD">watch Trailer</a>        </div>
              </div>
    
      <div class="item">
        <img src="images/poster/kesari.jpg" alt="New york" style="width:100%; height: 500px;">
        <div class="carousel-caption">
                 <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                          </x-star-rating>
                   </h3>
				<a href="movies/kesari.jsp" class="btn btn-default btnD">watch Trailer</a>          </div>
	  </div>
	  
	  <div class="item">
			<img src="images/poster/terminarer.jpg" alt="New york" style="width:100%; height: 500px;">
			<div class="carousel-caption">
					 <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                          </x-star-rating>
                   </h3>
					<a href="movies/terminator.jsp" class="btn btn-default btnD">watch Trailer</a>				  </div>
		  </div>

		  <div class="item">
				<img src="images/poster/war.jpg" alt="New york" style="width:100%; height: 500px;">
				<div class="carousel-caption">
				 <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                            <div class="star "></div>
                          </x-star-rating>
                   </h3>
						<a href="movies/war.jsp" class="btn btn-default btnD">watch Trailer</a>				  </div>
			  </div>

			  <div class="item">
					<img src="images/poster/chhichhore.jpg" alt="New york" style="width:100%; height: 500px;">
					<div class="carousel-caption">
                                                 <h3 > <b>Rating:</b> 
                          <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                          </x-star-rating>
                   </h3>
						<a href="movies/chichore.jsp" class="btn btn-default btnD">watch Trailer</a>
						  </div>
				  </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>




<div class="ram">
		<h1>High Rated Movie</h1>
		<section>
			<div class="container-fluid">
				<div>
					<div class="row">
						<div class="col-sm-6 col-lg-3">
							<div class="box">
								<div class="imgBox">
									<img src="images/padmavat.jpg" class="img-responsive">

								</div>
								<div class="content">
									<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
									
									<a href="movies/padmavat.jsp" class="btn btn-default btnD">watch Trailer</a>

								</div>

							</div>
						</div>
						<div class="col-sm-6 col-lg-3">
								<div class="box">
									<div class="imgBox">
										<img src="images/ramleela.jpg" class="img-responsive">
	
									</div>
									<div class="content">
										<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
										
										<a href="movies/ramleela.jsp" class="btn btn-default btnD">watch Trailer</a>
	
									</div>
	
								</div>
							</div>
							<div class="col-sm-6 col-lg-3">
									<div class="box">
										<div class="imgBox">
											<img src="images/ddlj.jpg" class="img-responsive">
		
										</div>
										<div class="content">
											<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
									
											<a href="movies/ddlj.jsp" class="btn btn-default btnD">watch Trailer</a>
		
										</div>
		
									</div>
								</div>
								<div class="col-sm-6 col-lg-3">
										<div class="box">
											<div class="imgBox">
												<img src="images/blackpanther.jpg" class="img-responsive">
			
											</div>
											<div class="content">
												<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
												
												<a href="movies/blackpanther.jsp" class="btn btn-default btnD">watch Trailer</a>
			
											</div>
			
										</div>
									</div>
									<div class="col-sm-6 col-lg-3">
											<div class="box">
												<div class="imgBox">
													<img src="images/3idiots.jpg" class="img-responsive">
				
												</div>
												<div class="content">
													<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
													
													<a href="movies/3idiots.jsp" class="btn btn-default btnD">watch Trailer</a>
				
												</div>
				
											</div>
									</div>
										<div class="col-sm-6 col-lg-3">
														<div class="box">
															<div class="imgBox">
																<img src="images/venom.jpg" class="img-responsive">
							
															</div>
															<div class="content">
																<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																
																<a href="movies/venom.jsp" class="btn btn-default btnD">watch Trailer</a>
							
															</div>
							
														</div>
													</div>
													<div class="col-sm-6 col-lg-3">
															<div class="box">
																<div class="imgBox">
																	<img src="images/martian.jpg" class="img-responsive">
								
																</div>
																<div class="content">
																	<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																	
																	<a href="movies/martian.jsp" class="btn btn-default btnD">watch Trailer</a>
								
																</div>
								
															</div>
														</div>	
														<div class="col-sm-6 col-lg-3">
																<div class="box">
																	<div class="imgBox">
																		<img src="images/intel.jpg" class="img-responsive">
									
																	</div>
																	<div class="content">
																		<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																	
																		<a href="movies/intersteller.jsp" class="btn btn-default btnD">watch Trailer</a>
									
																	</div>
									
																</div>
															</div>
															<div class="col-sm-6 col-lg-3">
																	<div class="box">
																		<div class="imgBox">
																			<img src="images/lucy.jpg" class="img-responsive">
										
																		</div>
																		<div class="content">
																			<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																			
																			<a href="movies/lucy.jsp" class="btn btn-default btnD">watch Trailer</a>
										
																		</div>
										
																	</div>
																</div>
																<div class="col-sm-6 col-lg-3">
																		<div class="box">
																			<div class="imgBox">
																				<img src="images/devdas.jpg" class="img-responsive">
											
																			</div>
																			<div class="content">
																				<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																			
																				<a href="movies/devdas.jsp" class="btn btn-default btnD">watch Trailer</a>
											
																			</div>
											
																		</div>
																	</div>
																	<div class="col-sm-6 col-lg-3">
																			<div class="box">
																				<div class="imgBox">
																					<img src="images/bajiroamastani.jpg" class="img-responsive">
												
																				</div>
																				<div class="content">
																					<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																					
																					<a href="movies/bajiraomastani.jsp" class="btn btn-default btnD">watch Trailer</a>
												
																				</div>
												
																			</div>
																		</div>
																		<div class="col-sm-6 col-lg-3">
																			<div class="box">
																				<div class="imgBox">
																					<img src="images/gravity.jpg" class="img-responsive">
												
																				</div>
																				<div class="content">
																					<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																					
																					<a href="movies/gravity.jsp" class="btn btn-default btnD">watch Trailer</a>
												
																				</div>
												
																			</div>
																		</div>
												
																		
					</div>
				</div>
			</div>
		</section>
	</div>

	<div class="rama">
		<h1>Upcoming Movie</h1>
		<section>
			<div class="container-fluid">
				<div>
					<div class="row">
						<div class="col-sm-6 col-lg-3">
							<div class="box">
								<div class="imgBox">
									<img src="images/aladdin.jpg" class="img-responsive">

								</div>
								<div class="content">
									<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
									
									<a href="movies/aladdin.jsp" class="btn btn-default btnD">watch Trailer</a>

								</div>

							</div>
						</div>
						<div class="col-sm-6 col-lg-3">
								<div class="box">
									<div class="imgBox">
										<img src="images/aquaman.jpg" class="img-responsive">
	
									</div>
									<div class="content">
										<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
									
										<a href="movies/aquaman.jsp" class="btn btn-default btnD">watch Trailer</a>
	
									</div>
	
								</div>
							</div>
							<div class="col-sm-6 col-lg-3">
									<div class="box">
										<div class="imgBox">
											<img src="images/chichore.jpg" class="img-responsive">
		
										</div>
										<div class="content">
											<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
										
											<a href="movies/chichore.jsp" class="btn btn-default btnD">watch Trailer</a>
		
										</div>
		
									</div>
								</div>
								<div class="col-sm-6 col-lg-3">
										<div class="box">
											<div class="imgBox">
												<img src="images/dark phoinix.jpg" class="img-responsive">
			
											</div>
											<div class="content">
												<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
											
												<a href="movies/darkpheonix.jsp" class="btn btn-default btnD">watch Trailer</a>
			
											</div>
			
										</div>
									</div>
									<div class="col-sm-6 col-lg-3">
											<div class="box">
												<div class="imgBox">
													<img src="images/dreamgirl.jpg" class="img-responsive">
				
												</div>
												<div class="content">
													<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
													
													<a href="movies/dreamgirl.jsp" class="btn btn-default btnD">watch Trailer</a>
				
												</div>
				
											</div>
									</div>
										<div class="col-sm-6 col-lg-3">
														<div class="box">
															<div class="imgBox">
																<img src="images/hf4.jpg" class="img-responsive">
							
															</div>
															<div class="content">
																<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																
																<a href="movies/hf4.jsp" class="btn btn-default btnD">watch Trailer</a>
							
															</div>
							
														</div>
													</div>
													<div class="col-sm-6 col-lg-3">
															<div class="box">
																<div class="imgBox">
																	<img src="images/frozen2.jpg" class="img-responsive">
								
																</div>
																<div class="content">
																	<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																	
																	<a href="movies/frozen2.jsp" class="btn btn-default btnD">watch Trailer</a>
								
																</div>
								
															</div>
														</div>	
														<div class="col-sm-6 col-lg-3">
																<div class="box">
																	<div class="imgBox">
																		<img src="images/kabirsingh.jpg" class="img-responsive">
									
																	</div>
																	<div class="content">
																		<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																		
																		<a href="movies/kabirsingh.jsp" class="btn btn-default btnD">watch Trailer</a>
									
																	</div>
									
																</div>
															</div>
															<div class="col-sm-6 col-lg-3">
																	<div class="box">
																		<div class="imgBox">
																			<img src="images/war.jpg" class="img-responsive">
										
																		</div>
																		<div class="content">
																			<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 <div class="star "></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																		
																			<a href="movies/war.jsp" class="btn btn-default btnD">watch Trailer</a>
										
																		</div>
										
																	</div>
																</div>
																<div class="col-sm-6 col-lg-3">
																		<div class="box">
																			<div class="imgBox">
																				<img src="images/Panipat.jpg" class="img-responsive">
											
																			</div>
																			<div class="content">
																				<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																				
																				<a href="movies/panipat.jsp" class="btn btn-default btnD">watch Trailer</a>
											
																			</div>
											
																		</div>
																	</div>
																	<div class="col-sm-6 col-lg-3">
																			<div class="box">
																				<div class="imgBox">
																					<img src="images/skyispink.jpg" class="img-responsive">
												
																				</div>
																				<div class="content">
																					<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star "></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																					
																					<a href="movies/skyispink.jsp" class="btn btn-default btnD">watch Trailer</a>
												
																				</div>
												
																			</div>
																		</div>
																		<div class="col-sm-6 col-lg-3">
																			<div class="box">
																				<div class="imgBox">
																					<img src="images/missionmangal.jpg" class="img-responsive">
												
																				</div>
																				<div class="content">
																					<h3 > <b>Rating:</b> 
                                                                                <x-star-rating>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 <div class="star full"></div>
                                                                                 </x-star-rating>
                                                                           </h3>
																					
																					<a href="movies/missionmangal.jsp" class="btn btn-default btnD">watch Traler</a>
												
																				</div>
												
																			</div>
																		</div>
																
																		
					</div>
				</div>
			</div>
		</section>
	</div>

 <div>
      <footer >
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
              <h2>Movie Rating</h2>
              <p>The Movie Rating  system provides us to have the idea about the upcoming movies,the reactions of the people and also about the content of the movie in brief.
                  the website includes the short trailer of movies which gives the clear cut of idea of the concern movies. 
              </p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
                <h2>Divinector</h2>
                <ul>
                  <li><a href="userlogin.jsp">Home</a></li>
                  <li><a href="loginabout.jsp">About Us</a></li>
                  <li><a href="logincontact.jsp">Contact Us</a></li>
                  <li ><a href="#"> <b>Welcome</b> 
                    <%
                    String dat=session.getAttribute("name").toString();
                    out.print(dat);
                    %>
                    
                    
                    </a></li>
                  <li><a href="logout.jsp" style="width:auto;">Logout</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
              <h2>Follow Us</h2>
              <p> This helps our users to stay connected to us for the latest and upcoming movies, users can connect to us using social media.
                  stay tuned to us via facebook, twitter, Instagram, Linkedin, Pinterest.
              </p>
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-instagram"></i></a>
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-pinterest"></i></a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
              <h2>Our Newletter</h2>
              <p>Please Follow us and subscribe us for the latest news regarding movies. kindly provide us with your email
                  so that we can send updates to you as soon as possible.
                 </p>
                 <form action="">
                   <input type="email" placeholder=" Email">
                   <input type="submit" value="subscribe">
                 </form>
            </div>
          </div>
        </div>
      </div>
      <p class="footer-bottom-text">All Right reserved by &copy;Divinector.2019</p>
    </footer>
    
    </div>





	



</body>
</html>