<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Produk Detail</title>

        <!-- Font awesome -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">   
        <!-- SmartMenus jQuery Bootstrap Addon CSS -->
        <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
        <!-- Product view slider -->
        <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
        <!-- slick slider -->
        <link rel="stylesheet" type="text/css" href="css/slick.css">
        <!-- price picker slider -->
        <link rel="stylesheet" type="text/css" href="css/nouislider.css">
        <!-- Theme color -->
        <link id="switcher" href="css/theme-color/green-theme.css" rel="stylesheet">
        <!-- Top Slider CSS -->
        <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

        <!-- Main style sheet -->
        <link href="css/style.css" rel="stylesheet">    

        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>
    <body>  

        <%  String nama = (String) session.getAttribute("sessuser");%>
        <% if (nama == "") {%>
        <%@include file="header.jsp" %>
        <% } else {%>
        <%@include file="headerlogin.jsp" %>
        <% } %>
        <% try {

        String id = request.getParameter("id");
        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(hosts, "root", "");
        statement = conn.createStatement();
        String data = "Select * from produk where id = '" + id + "'";
        rs = statement.executeQuery(data);
        %>

        <%while (rs.next()) {%>

        <!-- catg header banner section -->
        <section id="aa-catg-head-banner">
            <img src="img/green1920x300.jpg" alt="fashion img">
            <div class="aa-catg-head-banner-area">
                <div class="container">
                    <div class="aa-catg-head-banner-content">
                        <h2><%= rs.getString("nama")%></h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>         
                            <li><a href="#">Produk</a></li>
                            <li><a href="#"><%= rs.getString("jenis")%></a></li>
                            <li class="active"><%= rs.getString("nama")%></li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- / catg header banner section -->

        <!-- product category -->
        <section id="aa-product-details">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-product-details-area">
                            <div class="aa-product-details-content">
                                <div class="row">
                                    <!-- Modal view slider -->

                                    <div class="col-md-5 col-sm-5 col-xs-12">                              
                                        <div class="aa-product-view-slider">                                
                                            <div id="demo-1" class="simpleLens-gallery-container">
                                                <div class="simpleLens-container">
                                                    <div class="simpleLens-big-image-container"><img src="img/<%= rs.getString("lokasi_gambar")%>" class="simpleLens-big-image"></div>
                                                </div>
                                                <!--<div class="simpleLens-thumbnails-container">
                                                    <a data-big-image="img/view-slider/medium/polo-shirt-1.png" data-lens-image="img/view-slider/large/polo-shirt-1.png" class="simpleLens-thumbnail-wrapper" href="#">
                                                      <img src="img/view-slider/thumbnail/polo-shirt-1.png">
                                                    </a>                                    
                                                    <a data-big-image="img/view-slider/medium/polo-shirt-3.png" data-lens-image="img/view-slider/large/polo-shirt-3.png" class="simpleLens-thumbnail-wrapper" href="#">
                                                      <img src="img/view-slider/thumbnail/polo-shirt-3.png">
                                                    </a>
                                                    <a data-big-image="img/view-slider/medium/polo-shirt-4.png" data-lens-image="img/view-slider/large/polo-shirt-4.png" class="simpleLens-thumbnail-wrapper" href="#">
                                                      <img src="img/view-slider/thumbnail/polo-shirt-4.png">
                                                    </a>
                                                </div>-->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal view content -->
                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                        <div class="aa-product-view-content">
                                            <h3><%= rs.getString("nama")%></h3>
                                            <div class="aa-price-block">
                                                <span class="aa-product-view-price">Rp <%= rs.getString("harga")%>/<%= rs.getString("satuan")%></span>
                                                <p class="aa-product-avilability">Status Stok: 

                                                    <%
                                                        int stok = Integer.parseInt(rs.getString("harga"));
                                                        if (stok >= 10) { %>
                                                    <span style="color: green">Tersedia
                                                        <% } else { %>
                                                        <span style="color: red"> Hampir Habis
                                                            <% }%>
                                                        </span></p>
                                            </div>
                                            <h3>Deskripsi</h3>
                                            <p><%= rs.getString("deskripsi")%></p>
                                            <!--<h4>Size</h4>
                                            <div class="aa-prod-view-size">
                                              <a href="#">S</a>
                                              <a href="#">M</a>
                                              <a href="#">L</a>
                                              <a href="#">XL</a>
                                            </div>
                                            <h4>Color</h4>
                                            <div class="aa-color-tag">
                                              <a href="#" class="aa-color-green"></a>
                                              <a href="#" class="aa-color-yellow"></a>
                                              <a href="#" class="aa-color-pink"></a>                      
                                              <a href="#" class="aa-color-black"></a>
                                              <a href="#" class="aa-color-white"></a>                      
                                            </div>-->
                                            <div class="aa-prod-quantity">
                                                <script>
                                                    function imposeMinMax(el) {
                                                        if (el.value != "") {
                                                            if (parseInt(el.value) < parseInt(el.min)) {
                                                                el.value = el.min;
                                                            }
                                                            if (parseInt(el.value) > parseInt(el.max)) {
                                                                el.value = el.max;
                                                            }
                                                        }
                                                    }
                                                </script>
                                              
                                                <!-- <form action="">
                                                   <select id="" name="">
                                                     <option selected="1" value="0">1</option>
                                                     <option value="1">2</option>
                                                     <option value="2">3</option>
                                                     <option value="3">4</option>
                                                     <option value="4">5</option>
                                                     <option value="5">6</option>
                                                   </select>
                                                 </form>-->
                                                <p class="aa-prod-category">
                                                    Category: <a href="#" style="cursor: text;">
                                                        <% String jenis = rs.getString("jenis");
                                                            out.print(jenis);
                                                        %></a>
                                                </p>
                                            </div>
                                            <div class="aa-prod-view-bottom">
                                                <a class="aa-add-to-cart-btn" 
                                                   <%
                                                       if (nama == null) {
                                                   %> href="" data-toggle="modal" data-target="#login-modal"
                                                   <%} else {%>
                                                   href ="prosescart.jsp?id=<%= rs.getString("id")%>"

                                                   <%
                                                       }
                                                   %>
                                                   > Tambah Keranjang
                                                    <a class="" ></a>
                                            </div>
                                        </div>
                                        <% } %>
                                        <%
                                                rs.close();
                                                statement.close();
                                                conn.close();
                                            }
                                            catch (SQLException ex

                                            
                                                ) {
                                                out.print("Gagal Koneksi");
                                            }
                                            catch (Exception ex

                                            
                                                ) {
                                                out.print(ex.getMessage());
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                            <!--
                                <div class="aa-product-details-bottom">
                                <ul class="nav nav-tabs" id="myTab2">
                                  <li><a href="#description" data-toggle="tab">Description</a></li>
                                  <li><a href="#review" data-toggle="tab">Reviews</a></li>                
                                </ul>
                  
                            <!-- Tab panes -->
                            <!-- <div class="tab-content">
                              <div class="tab-pane fade in active" id="description">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                <ul>
                                  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, culpa!</li>
                                  <li>Lorem ipsum dolor sit amet.</li>
                                  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                                  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor qui eius esse!</li>
                                  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, modi!</li>
                                </ul>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, iusto earum voluptates autem esse molestiae ipsam, atque quam amet similique ducimus aliquid voluptate perferendis, distinctio!</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis ea, voluptas! Aliquam facere quas cumque rerum dolore impedit, dicta ducimus repellat dignissimos, fugiat, minima quaerat necessitatibus? Optio adipisci ab, obcaecati, porro unde accusantium facilis repudiandae.</p>
                              </div>
                              <div class="tab-pane fade " id="review">
                               <div class="aa-product-review-area">
                                 <h4>2 Reviews for T-Shirt</h4> 
                                 <ul class="aa-review-nav">
                                   <li>
                                      <div class="media">
                                        <div class="media-left">
                                          <a href="#">
                                            <img class="media-object" src="img/testimonial-img-3.jpg" alt="girl image">
                                          </a>
                                        </div>
                                        <div class="media-body">
                                          <h4 class="media-heading"><strong>Marla Jobs</strong> - <span>March 26, 2016</span></h4>
                                          <div class="aa-product-rating">
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star-o"></span>
                                          </div>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                        </div>
                                      </div>
                                    </li>
                                    <li>
                                      <div class="media">
                                        <div class="media-left">
                                          <a href="#">
                                            <img class="media-object" src="img/testimonial-img-3.jpg" alt="girl image">
                                          </a>
                                        </div>
                                        <div class="media-body">
                                          <h4 class="media-heading"><strong>Marla Jobs</strong> - <span>March 26, 2016</span></h4>
                                          <div class="aa-product-rating">
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star-o"></span>
                                          </div>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                        </div>
                                      </div>
                                    </li>
                                 </ul>
                                 <h4>Add a review</h4>
                                 <div class="aa-your-rating">
                                   <p>Your Rating</p>
                                   <a href="#"><span class="fa fa-star-o"></span></a>
                                   <a href="#"><span class="fa fa-star-o"></span></a>
                                   <a href="#"><span class="fa fa-star-o"></span></a>
                                   <a href="#"><span class="fa fa-star-o"></span></a>
                                   <a href="#"><span class="fa fa-star-o"></span></a>
                                 </div>
                            <!-- review form -->
                            <!--  <form action="" class="aa-review-form">
                                <div class="form-group">
                                  <label for="message">Your Review</label>
                                  <textarea class="form-control" rows="3" id="message"></textarea>
                                </div>
                                <div class="form-group">
                                  <label for="name">Name</label>
                                  <input type="text" class="form-control" id="name" placeholder="Name">
                                </div>  
                                <div class="form-group">
                                  <label for="email">Email</label>
                                  <input type="email" class="form-control" id="email" placeholder="example@gmail.com">
                                </div>
          
                                <button type="submit" class="btn btn-default aa-review-submit">Submit</button>
                             </form>
                           </div>
                          </div>            
                        </div>
                      </div>
                            
                            
                            
                            
                            
                            <!-- Related product -->
                            <!--  <div class="aa-product-related-item">
                               <h3>Related Products</h3>
                               <ul class="aa-product-catg aa-related-item-slider">
                            <!-- start single product item -->
                            <!--    <li>
                                 <figure>
                                   <a class="aa-product-img" href="#"><img src="img/man/polo-shirt-2.png" alt="polo shirt img"></a>
                                   <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                    <figcaption>
                                     <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                     <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                   </figcaption>
                                 </figure>                     
                                 <div class="aa-product-hvr-content">
                                   <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                   <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                   <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>                            
                                 </div>
                            <!-- product badge -->
                            <!--     <span class="aa-badge aa-sale" href="#">SALE!</span>
                              </li>
                            <!-- start single product item -->
                            <!--     <li>
                                  <figure>
                                    <a class="aa-product-img" href="#"><img src="img/women/girl-2.png" alt="polo shirt img"></a>
                                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                    <figcaption>
                                      <h4 class="aa-product-title"><a href="#">Lorem ipsum doller</a></h4>
                                      <span class="aa-product-price">$45.50</span>
                                    </figcaption>
                                  </figure>                      
                                  <div class="aa-product-hvr-content">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                  </div>
                            <!-- product badge -->
                            <!--       <span class="aa-badge aa-sold-out" href="#">Sold Out!</span>
                               </li>
                            <!-- start single product item -->
                            <!--     <li>
                                  <figure>
                                    <a class="aa-product-img" href="#"><img src="img/man/t-shirt-1.png" alt="polo shirt img"></a>
                                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                  </figure>
                                  <figcaption>
                                    <h4 class="aa-product-title"><a href="#">T-Shirt</a></h4>
                                    <span class="aa-product-price">$45.50</span>
                                  </figcaption>
                                  <div class="aa-product-hvr-content">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                  </div>
                            <!-- product badge -->
                            <!--       <span class="aa-badge aa-hot" href="#">HOT!</span>
                               </li>
                            <!-- start single product item -->
                            <!--     <li>
                                  <figure>
                                    <a class="aa-product-img" href="#"><img src="img/women/girl-3.png" alt="polo shirt img"></a>
                                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                     <figcaption>
                                      <h4 class="aa-product-title"><a href="#">Lorem ipsum doller</a></h4>
                                      <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                    </figcaption>
                                  </figure>                     
                                  <div class="aa-product-hvr-content">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                  </div>
                                </li>
                            <!-- start single product item -->
                            <!--  <li>
                               <figure>
                                 <a class="aa-product-img" href="#"><img src="img/man/polo-shirt-1.png" alt="polo shirt img"></a>
                                 <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                 <figcaption>
                                   <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                   <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                 </figcaption>
                               </figure>                      
                               <div class="aa-product-hvr-content">
                                 <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                 <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                 <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                               </div>
                             </li>
                            <!-- start single product item -->
                            <!-- <li>
                              <figure>
                                <a class="aa-product-img" href="#"><img src="img/women/girl-4.png" alt="polo shirt img"></a>
                                <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="#">Lorem ipsum doller</a></h4>
                                  <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                </figcaption>
                              </figure>                     
                              <div class="aa-product-hvr-content">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                              </div>
                            <!-- product badge -->
                            <!--     <span class="aa-badge aa-sold-out" href="#">Sold Out!</span>
                              </li>    
                            <!-- start single product item -->
                            <!--   <li>
                                <figure>
                                  <a class="aa-product-img" href="#"><img src="img/man/polo-shirt-4.png" alt="polo shirt img"></a>
                                  <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                   <figcaption>
                                    <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                    <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                  </figcaption>
                                </figure>                     
                                <div class="aa-product-hvr-content">
                                  <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                  <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                  <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                </div>
                            <!-- product badge -->
                            <!--    <span class="aa-badge aa-hot" href="#">HOT!</span>
                             </li> 
                            <!-- start single product item -->
                            <!--   <li>
                                <figure>
                                  <a class="aa-product-img" href="#"><img src="img/women/girl-1.png" alt="polo shirt img"></a>
                                  <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                   <figcaption>
                                    <h4 class="aa-product-title"><a href="#">This is Title</a></h4>
                                    <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                  </figcaption>
                                </figure>                     
                                <div class="aa-product-hvr-content">
                                  <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                  <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                  <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>                            
                                </div>
                            <!-- product badge -->
                            <!--    <span class="aa-badge aa-sale" href="#">SALE!</span>
                             </li>                                                                                   
                           </ul>
                            <%@include file="loginmodal.html" %>
                         
                            <!-- jQuery library -->
                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                            <!-- Include all compiled plugins (below), or include individual files as needed -->
                            <script src="js/bootstrap.js"></script>  
                            <!-- SmartMenus jQuery plugin -->
                            <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
                            <!-- SmartMenus jQuery Bootstrap Addon -->
                            <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
                            <!-- To Slider JS -->
                            <script src="js/sequence.js"></script>
                            <script src="js/sequence-theme.modern-slide-in.js"></script>  
                            <!-- Product view slider -->
                            <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
                            <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
                            <!-- slick slider -->
                            <script type="text/javascript" src="js/slick.js"></script>
                            <!-- Price picker slider -->
                            <script type="text/javascript" src="js/nouislider.js"></script>
                            <!-- Custom js -->
                            <script src="js/custom.js"></script> 

                            </body>
                            </html>