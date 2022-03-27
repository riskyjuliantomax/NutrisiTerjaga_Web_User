package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/admin/sidebar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"Dashboard\">\n");
      out.write("        <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\n");
      out.write("        <title>Admin | Dashboard</title>\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!--external css-->\n");
      out.write("        <link href=\"lib/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/zabuto_calendar.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"lib/gritter/css/jquery.gritter.css\" />\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"lib/chart-master/Chart.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- =======================================================\n");
      out.write("          Template Name: Dashio\n");
      out.write("          Template URL: https://templatemag.com/dashio-bootstrap-admin-template/\n");
      out.write("          Author: TemplateMag.com\n");
      out.write("          License: https://templatemag.com/license/\n");
      out.write("        ======================================================= -->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <section id=\"container\">\n");
      out.write("            <!-- **********************************************************************************************************************************************************\n");
      out.write("                TOP BAR dan SideBar\n");
      out.write("                *********************************************************************************************************************************************************** -->\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"Dashboard\">\n");
      out.write("        <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\n");
      out.write("        <title></title>\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!--external css-->\n");
      out.write("        <link href=\"lib/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/zabuto_calendar.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"lib/gritter/css/jquery.gritter.css\" />\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"lib/chart-master/Chart.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--header start-->\n");
      out.write("        <header class=\"header black-bg\">\n");
      out.write("            <div class=\"sidebar-toggle-box\">\n");
      out.write("                <div class=\"fa fa-bars tooltips\" data-placement=\"right\" data-original-title=\"Toggle Navigation\"></div>\n");
      out.write("            </div>\n");
      out.write("            <!--logo start-->\n");
      out.write("            <a href=\"dashboard.jsp\" class=\"logo\"><b>Nutrisi<span style=\"color:#3fc35f; \">Terjaga</span></b></a>\n");
      out.write("            <!--logo end-->\n");
      out.write("            <div class=\"nav notify-row\" id=\"top_menu\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"top-menu\">\n");
      out.write("                <ul class=\"nav pull-right top-menu\">\n");
      out.write("                    <li><a class=\"logout\" href=\"Index.jsp\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!--header end-->\n");
      out.write("        <!-- **********************************************************************************************************************************************************\n");
      out.write("            MAIN SIDEBAR MENU\n");
      out.write("            *********************************************************************************************************************************************************** -->\n");
      out.write("        <!--sidebar start-->\n");
      out.write("        <aside>\n");
      out.write("            <div id=\"sidebar\" class=\"nav-collapse \">\n");
      out.write("                <!-- sidebar menu start-->\n");
      out.write("                <ul class=\"sidebar-menu\" id=\"nav-accordion\">\n");
      out.write("                    <p class=\"centered\"><a href=\"\"><!--<img src=\"img/user.png\" class=\"img-circle\" width=\"80\">--></a></p>\n");
      out.write("                    <h5 class=\"centered\">Budi</h5>\n");
      out.write("                    <li class=\"mt\">\n");
      out.write("                        <a  id=\"index\" href=\"dashboard.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Dashboard</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"input\" href=\"tambahproduk.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Tambah Produk</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"list_produk\" href=\"produk_list.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>List Produk</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                   <!-- <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\"  id=\"produk\">\n");
      out.write("                            <i class=\"fa fa-cogs\"></i>\n");
      out.write("                            <span>Produk</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li id=\"input\"><a href=\"tambahproduk.jsp\">Tambah Produk</a></li>\n");
      out.write("                            <li id=\"list_produk\"><a href=\"produk_list.jsp\">List Produk</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>-->\n");
      out.write("                     <li class=\"sub-menu\">\n");
      out.write("                         <a  id=\"mail\" href=\"mail.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Mail</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"akun_setting\" href=\"akunsetting.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Akun Setting</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <!-- sidebar menu end-->\n");
      out.write("            </div>\n");
      out.write("        </aside>\n");
      out.write("        <!--sidebar end-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            <!-- **********************************************************************************************************************************************************\n");
      out.write("              \n");
      out.write("                *********************************************************************************************************************************************************** -->\n");
      out.write("            <!--main content start-->\n");
      out.write("            <section id=\"main-content\">\n");
      out.write("                <section class=\"wrapper\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"row mt\">\n");
      out.write("                            <div class=\"col-md-4 col-sm-4 mb\">\n");
      out.write("                                <div class=\"darkblue-panel pn\" style=\"background: #333333\">\n");
      out.write("                                    <div class=\"darkblue-header\">\n");
      out.write("                                        <h5>Total Produk</h5>\n");
      out.write("                                    </div>\n");
      out.write("                                    <h1 class=\"mt\"><i class=\"fa fa-cart-plus fa-3x\"></i></h1>\n");
      out.write("                                    <!--<p>+ 1,789 NEW VISITS</p>-->\n");
      out.write("                                    <footer>\n");
      out.write("                                        <div class=\"centered\">\n");
      out.write("                                            <h5>10</h5>\n");
      out.write("                                        </div>\n");
      out.write("                                    </footer>\n");
      out.write("                                </div>\n");
      out.write("                                <!--  /darkblue panel -->\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4 col-sm-4 mb\">\n");
      out.write("                                <div class=\"darkblue-panel pn\" style=\"background: #333333\">\n");
      out.write("                                    <div class=\"darkblue-header\">\n");
      out.write("                                        <h5>Total Produk Terjual</h5>\n");
      out.write("                                    </div>\n");
      out.write("                                    <h1 class=\"mt\"><i class=\"fa fa-shopping-cart fa-3x\"></i></h1>\n");
      out.write("                                    <!--<p>+ 1,789 NEW VISITS</p>-->\n");
      out.write("                                    <footer>\n");
      out.write("                                        <div class=\"centered\">\n");
      out.write("                                            <h5>20</h5>\n");
      out.write("                                        </div>\n");
      out.write("                                    </footer>\n");
      out.write("                                </div>\n");
      out.write("                                <!--  /darkblue panel -->\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4 col-sm-4 mb\">\n");
      out.write("                                <div class=\"darkblue-panel pn\" style=\"background: #ff3333\">\n");
      out.write("                                    <div class=\"darkblue-header\">\n");
      out.write("                                        <h5>Notifikasi</h5>\n");
      out.write("                                    </div>\n");
      out.write("                                    <h1 class=\"mt\"><i class=\"fa fa-exclamation fa-3x\"></i></h1>\n");
      out.write("                                    <!--<p>+ 1,789 NEW VISITS</p>-->\n");
      out.write("                                    <footer>\n");
      out.write("                                        <div class=\"centered\">\n");
      out.write("                                            <h5>2</h5>\n");
      out.write("                                        </div>\n");
      out.write("                                    </footer>\n");
      out.write("                                </div>\n");
      out.write("                                <!--  /darkblue panel -->\n");
      out.write("                            </div>\n");
      out.write("                            <!-- SERVER STATUS PANELS -->\n");
      out.write("                            <div class=\"col-md-4 col-sm-4 mb\">\n");
      out.write("                                <div class=\"grey-panel pn donut-chart\">\n");
      out.write("                                    <div class=\"stock card\">\n");
      out.write("                                        <div class=\"stock-chart\">\n");
      out.write("                                            <div id=\"chart\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"stock current-price\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"info col-sm-6 col-xs-6\"><abbr>Penjualan</abbr>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"changes col-sm-6 col-xs-6\">\n");
      out.write("                                                    <div class=\"value up\"><i class=\"fa fa-caret-up hidden-sm hidden-xs\"></i> Rp. 1000000</div>\n");
      out.write("                                                    <div class=\"change hidden-sm hidden-xs\">+300000</div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /grey-panel -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <!-- /col-md-4-->\n");
      out.write("                            </div>  \n");
      out.write("                            <!-- /row -->\n");
      out.write("                            </section>\n");
      out.write("                            </section>\n");
      out.write("                            <!--main content end-->\n");
      out.write("\n");
      out.write("                            </section>\n");
      out.write("                            <!-- js placed at the end of the document so the pages load faster -->\n");
      out.write("                            <script src=\"lib/jquery/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("                            <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("                            <script class=\"include\" type=\"text/javascript\" src=\"lib/jquery.dcjqaccordion.2.7.js\"></script>\n");
      out.write("                            <script src=\"lib/jquery.scrollTo.min.js\"></script>\n");
      out.write("                            <script src=\"lib/jquery.nicescroll.js\" type=\"text/javascript\"></script>\n");
      out.write("                            <script src=\"lib/jquery.sparkline.js\"></script>\n");
      out.write("                            <!--common script for all pages-->\n");
      out.write("                            <script src=\"lib/common-scripts.js\"></script>\n");
      out.write("                            <script type=\"text/javascript\" src=\"lib/gritter/js/jquery.gritter.js\"></script>\n");
      out.write("                            <script type=\"text/javascript\" src=\"lib/gritter-conf.js\"></script>\n");
      out.write("                            <!--script for this page-->\n");
      out.write("                            <script src=\"lib/sparkline-chart.js\"></script>\n");
      out.write("                            <script src=\"lib/zabuto_calendar.js\"></script>\n");
      out.write("\n");
      out.write("                            <script type=\"application/javascript\"></script>\n");
      out.write("                            <script>\n");
      out.write("                                $(document).ready(function () {\n");
      out.write("                                    $(\"#date-popover\").popover({\n");
      out.write("                                        html: true,\n");
      out.write("                                        trigger: \"manual\"\n");
      out.write("                                    });\n");
      out.write("                                    $(\"#date-popover\").hide();\n");
      out.write("                                    $(\"#date-popover\").click(function (e) {\n");
      out.write("                                        $(this).hide();\n");
      out.write("                                    });\n");
      out.write("\n");
      out.write("                                    $(\"#my-calendar\").zabuto_calendar({\n");
      out.write("                                        action: function () {\n");
      out.write("                                            return myDateFunction(this.id, false);\n");
      out.write("                                        },\n");
      out.write("                                        action_nav: function () {\n");
      out.write("                                            return myNavFunction(this.id);\n");
      out.write("                                        },\n");
      out.write("                                        ajax: {\n");
      out.write("                                            url: \"show_data.php?action=1\",\n");
      out.write("                                            modal: true\n");
      out.write("                                        },\n");
      out.write("                                        legend: [{\n");
      out.write("                                                type: \"text\",\n");
      out.write("                                                label: \"Special event\",\n");
      out.write("                                                badge: \"00\"\n");
      out.write("                                            },\n");
      out.write("                                            {\n");
      out.write("                                                type: \"block\",\n");
      out.write("                                                label: \"Regular event\",\n");
      out.write("                                            }\n");
      out.write("                                        ]\n");
      out.write("                                    });\n");
      out.write("                                });\n");
      out.write("\n");
      out.write("                                function myNavFunction(id) {\n");
      out.write("                                    $(\"#date-popover\").hide();\n");
      out.write("                                    var nav = $(\"#\" + id).data(\"navigation\");\n");
      out.write("                                    var to = $(\"#\" + id).data(\"to\");\n");
      out.write("                                    console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                document.getElementById(\"index\").classList.add('active');\n");
      out.write("                            </script>\n");
      out.write("\n");
      out.write("                            </html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
