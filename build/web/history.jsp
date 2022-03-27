<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Keranjang Pembelanjaan</title>

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
        <%@include file="headerlogin.jsp" %> 

        <!-- catg header banner section -->
        <section id="aa-catg-head-banner">
            <img src="img/green1920x300.jpg" alt="fashion img">
            <div class="aa-catg-head-banner-area">
                <div class="container">
                    <div class="aa-catg-head-banner-content">
                        <h2>History Belanja</h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>                   
                            <li class="active">HistoryBelanja</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- / catg header banner section -->

        <!-- Cart view section -->
        <section id="cart-view" style="margin-bottom: 40px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="cart-view-area">
                            <div class="cart-view-table">
                                <form action="updatecart.jsp" method="post">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Tanggal Transaksi</th>
                                                    <th>Atas Nama</th>
                                                    <th>Produk</th>
                                                    <th>Harga</th>
                                                    <th>Jumlah</th>
                                                    <th>Jumlah Pembayaran</th>
                                                </tr>
                                                <%                                                    try {
                                                        String userids = (String) session.getAttribute("sessuser");
                                                        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                        Connection conn = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conn = DriverManager.getConnection(hosts, "root", "");
                                                        statement = conn.createStatement();
                                                        String data = "Select * from pembayaran_user where userid ='" + userids + "'";
                                                        rs = statement.executeQuery(data);
                                                        while (rs.next()) {
                                                            String jammenit = rs.getString("jammenit");
                                                            Connection con2 = DriverManager.getConnection(host, "root", "");
                                                            Statement stmt2 = con2.createStatement();
                                                            String data2 = "select(harga*jumlah), id , id_produk, harga,jumlah,jammenit,userid from pembayaran where jammenit='" + jammenit + "' && userid ='" + userids + "'";
                                                            ResultSet rs2 = stmt2.executeQuery(data2);

                                                            while (rs2.next()) {
                                                                String id_produk = rs2.getString("id_produk");
                                                                Connection con3 = DriverManager.getConnection(host, "root", "");
                                                                Statement stmt3 = con3.createStatement();
                                                                String data3 = "select * from produk where id='" + id_produk + "'";
                                                                ResultSet rs3 = stmt3.executeQuery(data3);
                                                                while (rs3.next()) {
                                                %>

                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><a class="aa-cart-title" style="color: #000"><%= rs.getString("tgl_beli")%></a></td>
                                                    <td><a class="aa-cart-title" href="#" style="cursor: default"><%= rs.getString("namadepan")%> <%= rs.getString("namabelakang")%></a></td>
                                                    <td><a class="aa-cart-title" href="#" style="cursor: default"><%= rs3.getString("nama")%></a></td>
                                                    <td><a class="aa-cart-title" href="#" style="cursor: default"><%= rs3.getString("harga")%></a></td>
                                                    <td><a class="aa-cart-title" href="#" style="cursor: default"><%= rs2.getString("jumlah")%></a></td>
                                                    <td><a class="aa-cart-title" href="#" style="cursor: default"><%= rs2.getString(1)%></a></td>
                                                </tr>
                                                <%      }

                                                                rs3.close();
                                                                stmt3.close();
                                                                con3.close();
                                                            }
                                                            rs2.close();
                                                            stmt2.close();
                                                            con2.close();
                                                        }

                                                        rs.close();
                                                        statement.close();
                                                        conn.close();
                                                    } catch (SQLException ex) {
                                                        out.print("Gagal Koneksi");
                                                    } catch (Exception ex) {
                                                        out.print(ex.getMessage());
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div> 

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- / Cart view section -->


    <%@include file="footer.jsp" %>
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