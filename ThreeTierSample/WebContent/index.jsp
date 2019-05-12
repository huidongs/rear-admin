<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="priv.huidong.entity.Student"%>
<%@page import="priv.huidong.entity.Page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   


    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Open Sans Font [ OPTIONAL ]-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="res/css/bootstrap.min.css" rel="stylesheet">

    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="res/css/nifty.min.css" rel="stylesheet">

    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="res/css/demo/nifty-demo-icons.min.css" rel="stylesheet">

    <!--Demo [ DEMONSTRATION ]-->
    <link href="res/css/demo/nifty-demo.min.css" rel="stylesheet">

    <!--Morris.js [ OPTIONAL ]-->
    <link href="res/plugins/morris-js/morris.min.css" rel="stylesheet">

    <!--Magic Checkbox [ OPTIONAL ]-->
    <link href="res/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">

    <!--JAVASCRIPT-->
    <!--=================================================-->
    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="res/plugins/pace/pace.min.css" rel="stylesheet">
    <script src="res/plugins/pace/pace.min.js"></script>

    <!--jQuery [ REQUIRED ]-->
    <script src="res/js/jquery-2.2.4.min.js"></script>

    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="res/js/bootstrap.min.js"></script>

    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="res/js/nifty.min.js"></script>

    <!--=================================================-->
    
    <!--Demo script [ DEMONSTRATION ]-->
    <script src="res/js/demo/nifty-demo.min.js"></script>

    <!--Morris.js [ OPTIONAL ]-->
    <script src="res/plugins/morris-js/morris.min.js"></script>
	<script src="res/plugins/morris-js/raphael-js/raphael.min.js"></script>


    <!--Sparkline [ OPTIONAL ]-->
    <script src="res/plugins/sparkline/jquery.sparkline.min.js"></script>


    <!--Specify page [ SAMPLE ]-->
    <script src="res/js/demo/dashboard.js"></script>

</head>
<body>

<%	
		String error = (String)request.getAttribute("error");
		if(error!=null){
			if(error.equals("addError")){
				out.print("增加失败！");
			}else if(error.equals("noaddError")){
				out.print("增加成功！");
			}
		}
	
	%>


    <div id="container" class="effect aside-float aside-bright mainnav-lg">
        
        <!--NAVBAR-->
        <!--===================================================-->
        <header id="navbar">
            <div id="navbar-container" class="boxed">

                <!--Brand logo & name-->
                <!--================================-->
                <div class="navbar-header">
                    <a href="index.html" class="navbar-brand">
                        <img src="res/img/logo.png" alt="Nifty Logo" class="brand-icon">
                        <div class="brand-title">
                            <span class="brand-text">Carbinet</span>
                        </div>
                    </a>
                </div>
                <!--================================-->
                <!--End brand logo & name-->


                <!--Navbar Dropdown-->
                <!--================================-->
                <div class="navbar-content clearfix">
                    <ul class="nav navbar-top-links pull-left">

                        <!--Navigation toogle button-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="tgl-menu-btn">
                            <a class="mainnav-toggle" href="#">
                                <i class="demo-pli-view-list"></i>
                            </a>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End Navigation toogle button-->

                    </ul>
                    <ul class="nav navbar-top-links pull-right">

                        <!--Language selector-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="dropdown">
                            <a id="demo-lang-switch" class="lang-selector dropdown-toggle" href="#" data-toggle="dropdown">
                                <span class="lang-selected">
                                    <img class="lang-flag" src="res/img/flags/china.png" >
                                </span>
                            </a>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End language selector-->



                        <!--User dropdown-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li id="dropdown-user" class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right" >
                                <span class="pull-right" style="margin-top:10px">
                                    <!--<img class="img-circle img-user media-object" src="img/profile-photos/1.png" alt="Profile Picture">-->
                                    <i class="demo-pli-male ic-user"></i>
                                </span>
                                <div class="username hidden-xs">管理员</div>
                            </a>


                            <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">


                                <!-- User dropdown menu -->
                                <ul class="head-list">
                                    <li>
                                        <a href="#">
                                            <i class="demo-pli-male icon-lg icon-fw"></i> Profile
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="demo-pli-computer-secure icon-lg icon-fw"></i> Lock screen
                                        </a>
                                    </li>
                                </ul>

                                <!-- Dropdown footer -->
                                <div class="pad-all text-right">
                                    <a href="pages-login.html" class="btn btn-primary">
                                        <i class="demo-pli-unlock"></i> Logout
                                    </a>
                                </div>
                            </div>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End user dropdown-->

                    </ul>
                </div>
                <!--================================-->
                <!--End Navbar Dropdown-->

            </div>
        </header>
        <!--===================================================-->
        <!--END NAVBAR-->

        <div class="boxed">

            <!--CONTENT CONTAINER-->
            <!--===================================================-->
            <div id="content-container">
                
                <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->

                <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					<div class="row">
					    <div class="col-lg">
					        <div class="row">
					            <div class="col-sm-6 col-lg-4">
					
					                <!--Sparkline Area Chart-->
					                <div class="panel panel-success panel-colorful">
					                    <div class="pad-all">
					                        <p class="text-lg text-semibold"><i class="demo-pli-data-storage icon-fw"></i> 使用人数</p>
					                        <p class="mar-no">
					                            <span class="pull-right text-bold">...</span>
					                            Free Space
					                        </p>
					                        <p class="mar-no">
					                            <span class="pull-right text-bold">...</span>
					                            Used space
					                        </p>
					                    </div>
					                    <div class="pad-all text-center">
					                        <!--Placeholder-->
					                        <div id="demo-sparkline-area"></div>
					                    </div>
					                </div>
					            </div>
					            <div class="col-sm-6 col-lg-4">
					
					                <!--Sparkline Line Chart-->
					                <div class="panel panel-info panel-colorful">
					                    <div class="pad-all">
					                        <p class="text-lg text-semibold"><i class="demo-pli-wallet-2 icon-fw"></i> 访问量</p>
					                        <p class="mar-no">
					                            <span class="pull-right text-bold">...</span>
					                            Today
					                        </p>
					                        <p class="mar-no">
					                            <span class="pull-right text-bold">...</span>
					                            Last 7 Day
					                        </p>
					                    </div>
					                    <div class="pad-all text-center">
					
					                        <!--Placeholder-->
					                        <div id="demo-sparkline-line"></div>
					
					                    </div>
					                </div>
					            </div>
					            <div class="col-sm-6 col-lg-4">
					
					                <!--Sparkline bar chart -->
					                <div class="panel panel-purple panel-colorful">
					                    <div class="pad-all">
					                        <p class="text-lg text-semibold"><i class="demo-pli-bag-coins icon-fw"></i> 总收入</p>
					                        <p class="mar-no">
					                            <span class="pull-right text-bold">...</span>
					                            Today
					                        </p>
					                        <p class="mar-no">
					                            <span class="pull-right text-bold">...</span>
					                            Last 7 Day
					                        </p>
					                    </div>
					                    <div class="pad-all text-center" style="height:30px">
					
					                        <!--Placeholder-->
					                        <div id="demo-sparkline-bar" class="box-inline"></div>
					
					                    </div>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
					<div class="row">
					    <div class="col-xs-12">
					        <div class="panel">
					            <div class="panel-heading">
					                <h3 class="panel-title">寄存柜管理</h3>
					            </div>
					
					            <!--Data Table-->
					            <!--===================================================-->
					            <div class="panel-body">
					                <div class="pad-btm form-inline">
					                    <div class="row">
					                        <div class="col-sm-6 table-toolbar-left"  >
					                           <div class="btn btn-purple"><i class="demo-pli-add icon-fw"></i><a href="add.jsp" style="color:white">Add</a></div>
					                        </div>
					                        <div class="col-sm-6 table-toolbar-right">
					                            <div class="form-group">
					                                <input type="text" autocomplete="off" class="form-control" placeholder="Search" id="demo-input-search2">
					                            </div>
					                            <div class="btn-group">
					                                <button class="btn btn-default"><i class="demo-pli-download-from-cloud"></i></button>

					                            </div>
					                        </div>
					                    </div>
					                </div>
					                <div class="table-responsive">
										<table class="table table-striped">
											<thead>
											<tr>
												<th>CarbinetID</th>
												<th>User</th>
												<th>Order date</th>
												<th>Amount</th>
												<th class="text-center">Status</th>
												<th class="text-center">Number</th>
												<th class="text-center">revise</th>
												<th class="text-center">Open</th>
												<th class="text-center">Delete</th>
											</tr>
											</thead>
											<tbody>
											<%
				//获取request域中的数据
		    Page p= (Page)request.getAttribute("p");
			for(Student student:p.getStudent()){
			%>
											<tr>
												<td><a href="QueryStudentBySnoServlet?sno=<%=student.getSno()%>" class="btn-link"> <%=student.getSno()%></a></td>
												<td> <input type="text" readonly="readonly" value="<%=student.getSname()%>" /> </td>
												<td><span class="text-muted"> <%=student.getSage()%></span></td>
												<td>$45.00</td>
												<td class="text-center">
													<div class="label label-table label-success">Paid</div>
												</td>
												<td class="text-center">-</td>
												<td align="center"><button type="button" class="btn btn-warning btn-xs">修改</button></td>
												<td align="center"><button type="button" class="btn btn-info btn-xs">开启</button></td>
												<td style="width:70px; height:70%">
													<div  style="width:80%; height:60%">
														<button  class="btn btn-danger btn-xs"  type="button"  >
															<i class="demo-pli-cross"></i> <a href="DeleteStudentServlet?sno=<%=student.getSno()%>" style="color:white">delete</a></button>
													</div>
												</td>
											</tr>
											<%
											}
											 %>
											</tbody>
										</table>
										
	                  			
									<a href="QueryStudentByPage?currentPage=0">首页</a>
									
									<a href="QueryStudentByPage?currentPage=<%=p.getTotalPage()-1%>">尾页</a>
					                </div>
					                <hr>
					                <div class="pull-right">
					                    <ul class="pagination text-nowrap mar-no">
					                        <li class="page-pre ">
					                        <%	if(p.getCurrentPage()==0) {%>
					                            <a href="QueryStudentByPage?currentPage=0">&lt;</a>
					                            <% }else{%>
					                            <a href="QueryStudentByPage?currentPage=<%=p.getCurrentPage()-1%>">&lt;</a>
					                            <% } %>
					                        </li>
					                        <li class="page-number active">
					                            <span>1</span>
					                        </li>
					                        <li class="page-number">
					                            <a href="#">2</a>
					                        </li>
					                        <li class="page-number">
					                            <a href="#">3</a>
					                        </li>
					                        <li>
					                            <span>...</span>
					                        </li>
					                        <li class="page-number">
					                            <a href="#">9</a>
					                        </li>
					                        <li class="page-next">
					                        <%if(p.getCurrentPage()==(p.getTotalPage()-1)){ %>
					                            <a href="QueryStudentByPage?currentPage=<%=p.getCurrentPage()%>">&gt;</a>
					                            <%}else{ %>
					                            <a href="QueryStudentByPage?currentPage=<%=p.getCurrentPage()+1%>">&gt;</a>
					                            <%} %>
					                        </li>
					                    </ul>
					                </div>
					            </div>
					            <!--===================================================-->
					            <!--End Data Table-->
					
					        </div>
					    </div>
					</div>
					
                </div>
                <!--===================================================-->
                <!--End page content-->


            </div>
            <!--===================================================-->
            <!--END CONTENT CONTAINER-->


            
            <!--ASIDE-->
            <!--===================================================-->
            <aside id="aside-container">
                <div id="aside">
                    <div class="nano">
                        <div class="nano-content">
                            
                            <!--Nav tabs-->
                            <!--================================-->
                            <ul class="nav nav-tabs nav-justified">
                                <li class="active">
                                    <a href="#demo-asd-tab-1" data-toggle="tab">
                                        <i class="demo-pli-speech-bubble-7"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#demo-asd-tab-2" data-toggle="tab">
                                        <i class="demo-pli-information icon-fw"></i> Report
                                    </a>
                                </li>
                                <li>
                                    <a href="#demo-asd-tab-3" data-toggle="tab">
                                        <i class="demo-pli-wrench icon-fw"></i> Settings
                                    </a>
                                </li>
                            </ul>
                            <!--================================-->
                            <!--End nav tabs-->



                            <!-- Tabs Content -->
                            <!--================================-->
                            <div class="tab-content">

                                <!--First tab (Contact list)-->
                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                <div class="tab-pane fade in active" id="demo-asd-tab-1">
                                    <p class="pad-hor mar-top text-semibold text-main">
                                        <span class="pull-right badge badge-warning">3</span> Family
                                    </p>

                                    <!--Family-->
                                    <div class="list-group bg-trans">
							            <a href="#" class="list-group-item">
							                <div class="media-left pos-rel">
							                    <img class="img-circle img-xs" src="img/profile-photos/2.png" alt="Profile Picture">
												<i class="badge badge-success badge-stat badge-icon pull-left"></i>
							                </div>
							                <div class="media-body">
							                    <p class="mar-no">Stephen Tran</p>
							                    <small class="text-muted">Availabe</small>
							                </div>
							            </a>
							            <a href="#" class="list-group-item">
							                <div class="media-left pos-rel">
							                    <img class="img-circle img-xs" src="img/profile-photos/7.png" alt="Profile Picture">
							                </div>
							                <div class="media-body">
							                    <p class="mar-no">Brittany Meyer</p>
							                    <small class="text-muted">I think so</small>
							                </div>
							            </a>
							            <a href="#" class="list-group-item">
							                <div class="media-left pos-rel">
							                    <img class="img-circle img-xs" src="img/profile-photos/1.png" alt="Profile Picture">
												<i class="badge badge-info badge-stat badge-icon pull-left"></i>
							                </div>
							                <div class="media-body">
							                    <p class="mar-no">Jack George</p>
							                    <small class="text-muted">Last Seen 2 hours ago</small>
							                </div>
							            </a>
							            <a href="#" class="list-group-item">
							                <div class="media-left pos-rel">
							                    <img class="img-circle img-xs" src="img/profile-photos/4.png" alt="Profile Picture">
							                </div>
							                <div class="media-body">
							                    <p class="mar-no">Donald Brown</p>
							                    <small class="text-muted">Lorem ipsum dolor sit amet.</small>
							                </div>
							            </a>
							            <a href="#" class="list-group-item">
							                <div class="media-left pos-rel">
							                    <img class="img-circle img-xs" src="img/profile-photos/8.png" alt="Profile Picture">
												<i class="badge badge-warning badge-stat badge-icon pull-left"></i>
							                </div>
							                <div class="media-body">
							                    <p class="mar-no">Betty Murphy</p>
							                    <small class="text-muted">Idle</small>
							                </div>
							            </a>
							            <a href="#" class="list-group-item">
							                <div class="media-left pos-rel">
							                    <img class="img-circle img-xs" src="img/profile-photos/9.png" alt="Profile Picture">
												<i class="badge badge-danger badge-stat badge-icon pull-left"></i>
							                </div>
							                <div class="media-body">
							                    <p class="mar-no">Samantha Reid</p>
							                    <small class="text-muted">Offline</small>
							                </div>
							            </a>
                                    </div>

                                    <hr>
                                    <p class="pad-hor text-semibold text-main">
                                        <span class="pull-right badge badge-success">Offline</span> Friends
                                    </p>

                                    <!--Works-->
                                    <div class="list-group bg-trans">
                                        <a href="#" class="list-group-item">
                                            <span class="badge badge-purple badge-icon badge-fw pull-left"></span> Joey K. Greyson
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge badge-info badge-icon badge-fw pull-left"></span> Andrea Branden
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge badge-success badge-icon badge-fw pull-left"></span> Johny Juan
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge badge-danger badge-icon badge-fw pull-left"></span> Susan Sun
                                        </a>
                                    </div>


                                    <hr>
                                    <p class="pad-hor mar-top text-semibold text-main">News</p>

                                    <div class="pad-hor">
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer
                                            <a data-title="45%" class="add-tooltip text-semibold" href="#">adipiscing elit</a>, sed diam nonummy nibh. Lorem ipsum dolor sit amet.
                                        </p>
                                        <small class="text-muted"><em>Last Update : Des 12, 2014</em></small>
                                    </div>


                                </div>
                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                <!--End first tab (Contact list)-->


                                <!--Second tab (Custom layout)-->
                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                <div class="tab-pane fade" id="demo-asd-tab-2">

                                    <!--Monthly billing-->
                                    <div class="pad-all">
                                        <p class="text-semibold text-main">Billing &amp; reports</p>
                                        <p class="text-muted">Get <strong>$5.00</strong> off your next bill by making sure your full payment reaches us before August 5, 2016.</p>
                                    </div>
                                    <hr class="new-section-xs">
                                    <div class="pad-all">
                                        <span class="text-semibold text-main">Amount Due On</span>
                                        <p class="text-muted text-sm">August 17, 2016</p>
                                        <p class="text-2x text-thin text-main">$83.09</p>
                                        <button class="btn btn-block btn-success mar-top">Pay Now</button>
                                    </div>


                                    <hr>

                                    <p class="pad-hor text-semibold text-main">Additional Actions</p>

                                    <!--Simple Menu-->
                                    <div class="list-group bg-trans">
                                        <a href="#" class="list-group-item"><i class="demo-pli-information icon-lg icon-fw"></i> Service Information</a>
                                        <a href="#" class="list-group-item"><i class="demo-pli-mine icon-lg icon-fw"></i> Usage Profile</a>
                                        <a href="#" class="list-group-item"><span class="label label-info pull-right">New</span><i class="demo-pli-credit-card-2 icon-lg icon-fw"></i> Payment Options</a>
                                        <a href="#" class="list-group-item"><i class="demo-pli-support icon-lg icon-fw"></i> Message Center</a>
                                    </div>


                                    <hr>

                                    <div class="text-center">
                                        <div><i class="demo-pli-old-telephone icon-3x"></i></div>
                                        Questions?
                                        <p class="text-lg text-semibold text-main"> (415) 234-53454 </p>
                                        <small><em>We are here 24/7</em></small>
                                    </div>
                                </div>
                                <!--End second tab (Custom layout)-->
                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->


                                <!--Third tab (Settings)-->
                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                <div class="tab-pane fade" id="demo-asd-tab-3">
                                    <ul class="list-group bg-trans">
                                        <li class="pad-top list-header">
                                            <p class="text-semibold text-main mar-no">Account Settings</p>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="pull-right">
                                                <input class="toggle-switch" id="demo-switch-1" type="checkbox" checked>
                                                <label for="demo-switch-1"></label>
                                            </div>
                                            <p class="mar-no">Show my personal status</p>
                                            <small class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</small>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="pull-right">
                                                <input class="toggle-switch" id="demo-switch-2" type="checkbox" checked>
                                                <label for="demo-switch-2"></label>
                                            </div>
                                            <p class="mar-no">Show offline contact</p>
                                            <small class="text-muted">Aenean commodo ligula eget dolor. Aenean massa.</small>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="pull-right">
                                                <input class="toggle-switch" id="demo-switch-3" type="checkbox">
                                                <label for="demo-switch-3"></label>
                                            </div>
                                            <p class="mar-no">Invisible mode </p>
                                            <small class="text-muted">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </small>
                                        </li>
                                    </ul>


                                    <hr>

                                    <ul class="list-group pad-btm bg-trans">
                                        <li class="list-header"><p class="text-semibold text-main mar-no">Public Settings</p></li>
                                        <li class="list-group-item">
                                            <div class="pull-right">
                                                <input class="toggle-switch" id="demo-switch-4" type="checkbox" checked>
                                                <label for="demo-switch-4"></label>
                                            </div>
                                            Online status
                                        </li>
                                        <li class="list-group-item">
                                            <div class="pull-right">
                                                <input class="toggle-switch" id="demo-switch-5" type="checkbox" checked>
                                                <label for="demo-switch-5"></label>
                                            </div>
                                            Show offline contact
                                        </li>
                                        <li class="list-group-item">
                                            <div class="pull-right">
                                                <input class="toggle-switch" id="demo-switch-6" type="checkbox" checked>
                                                <label for="demo-switch-6"></label>
                                            </div>
                                            Show my device icon
                                        </li>
                                    </ul>



                                    <hr>

                                    <p class="pad-hor text-semibold text-main mar-no">Task Progress</p>
                                    <div class="pad-all">
                                        <p>Upgrade Progress</p>
                                        <div class="progress progress-sm">
                                            <div class="progress-bar progress-bar-success" style="width: 15%;"><span class="sr-only">15%</span></div>
                                        </div>
                                        <small class="text-muted">15% Completed</small>
                                    </div>
                                    <div class="pad-hor">
                                        <p>Database</p>
                                        <div class="progress progress-sm">
                                            <div class="progress-bar progress-bar-danger" style="width: 75%;"><span class="sr-only">75%</span></div>
                                        </div>
                                        <small class="text-muted">17/23 Database</small>
                                    </div>

                                </div>
                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                <!--Third tab (Settings)-->

                            </div>
                        </div>
                    </div>
                </div>
            </aside>
            <!--===================================================-->
            <!--END ASIDE-->

            
            <!--MAIN NAVIGATION-->
            <!--===================================================-->
            <nav id="mainnav-container">
                <div id="mainnav">

                    <!--Menu-->
                    <!--================================-->
                    <div id="mainnav-menu-wrap">
                        <div class="nano">
                            <div class="nano-content">

                                <!--Profile Widget-->
                                <!--================================-->
                                <div id="mainnav-profile" class="mainnav-profile">
                                    <div class="profile-wrap">
                                        <div class="pad-btm">
                                            <span class="label label-success pull-right">New</span>
                                            <img class="img-circle img-sm img-border" src="res/img/profile-photos/1.png" alt="Profile Picture">
                                        </div>
                                        <a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                            <p class="mnp-name">管理员</p>

                                        </a>
                                    </div>
                                    <div id="profile-nav" class="collapse list-group bg-trans">
                                        <a href="#" class="list-group-item">
                                            <i class="demo-pli-male icon-lg icon-fw"></i> View Profile
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="demo-pli-gear icon-lg icon-fw"></i> Settings
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="demo-pli-unlock icon-lg icon-fw"></i> Logout
                                        </a>
                                    </div>
                                </div>


                                <!--Shortcut buttons-->
                                <!--================================-->
                                <div id="mainnav-shortcut">
                                    <ul class="list-unstyled">
                                        <li class="col-xs-3" data-content="My Profile">
                                            <a class="shortcut-grid" href="#">
                                                <i class="demo-psi-male"></i>
                                            </a>
                                        </li>
                                        <li class="col-xs-3" data-content="Messages">
                                            <a class="shortcut-grid" href="#">
                                                <i class="demo-psi-speech-bubble-3"></i>
                                            </a>
                                        </li>
                                        <li class="col-xs-3" data-content="Activity">
                                            <a class="shortcut-grid" href="#">
                                                <i class="demo-psi-thunder"></i>
                                            </a>
                                        </li>
                                        <li class="col-xs-3" data-content="Lock Screen">
                                            <a class="shortcut-grid" href="#">
                                                <i class="demo-psi-lock-2"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!--================================-->
                                <!--End shortcut buttons-->


                                <ul id="mainnav-menu" class="list-group">
						
						            <!--Category name-->
						            <li class="list-header">Navigation</li>
						
						            <!--Menu list item-->
						            <li class="active-link">
						                <a href="index.html">
						                    <i class="demo-psi-home"></i>
						                    <span class="menu-title">
												<strong>Dashboard</strong>
											</span>
						                </a>
						            </li>
						
						            <!--Menu list item-->
						            <li>
						                <a href="#">
						                    <i class="demo-psi-split-vertical-2"></i>
						                    <span class="menu-title">
												<strong>Layouts</strong>
											</span>
											<i class="arrow"></i>
						                </a>
						
						                <!--Submenu-->
						                <ul class="collapse">
						                    <li><a href="layouts-collapsed-navigation.html">Collapsed Navigation</a></li>
											<li><a href="layouts-offcanvas-navigation.html">Off-Canvas Navigation</a></li>
											<li><a href="layouts-offcanvas-slide-in-navigation.html">Slide-in Navigation</a></li>
											<li><a href="layouts-offcanvas-revealing-navigation.html">Revealing Navigation</a></li>

						                </ul>
						            </li>

						
						            <li class="list-divider"></li>
						
						            <!--Category name-->
						            <li class="list-header">Components</li>
						
						            <!--Menu list item-->
						            <li>
						                <a href="#">
						                    <i class="demo-psi-boot-2"></i>
						                    <span class="menu-title">UI Elements</span>
											<i class="arrow"></i>
						                </a>
						
						                <!--Submenu-->
						                <ul class="collapse">
						                    <li><a href="ui-buttons.html">Buttons</a></li>
											<li><a href="ui-panels.html">Panels</a></li>
											<li><a href="ui-modals.html">Modals</a></li>
											<li><a href="ui-progress-bars.html">Progress bars</a></li>
											<li><a href="ui-components.html">Components</a></li>
											<li><a href="ui-typography.html">Typography</a></li>
											<li><a href="ui-list-group.html">List Group</a></li>
											<li><a href="ui-tabs-accordions.html">Tabs &amp; Accordions</a></li>
											<li><a href="ui-alerts-tooltips.html">Alerts &amp; Tooltips</a></li>
											
						                </ul>
						            </li>
						
						            <!--Menu list item-->
						            <li>
						                <a href="#">
						                    <i class="demo-psi-pen-5"></i>
						                    <span class="menu-title">Forms</span>
											<i class="arrow"></i>
						                </a>
						
						                <!--Submenu-->
						                <ul class="collapse">
						                    <li><a href="forms-general.html">General</a></li>
											<li><a href="forms-components.html">Advanced Components</a></li>
											<li><a href="forms-validation.html">Validation</a></li>
											<li><a href="forms-wizard.html">Wizard</a></li>
											<li><a href="forms-file-upload.html">File Upload</a></li>
											<li><a href="forms-text-editor.html">Text Editor</a></li>
											<li><a href="forms-markdown.html">Markdown</a></li>
											
						                </ul>
						            </li>
						
						            <!--Menu list item-->
						            <li>
						                <a href="#">
						                    <i class="demo-psi-receipt-4"></i>
						                    <span class="menu-title">Tables</span>
											<i class="arrow"></i>
						                </a>
						
						                <!--Submenu-->
						                <ul class="collapse">
						                    <li><a href="tables-static.html">Static Tables</a></li>
											<li><a href="tables-bootstrap.html">Bootstrap Tables</a></li>
											<li><a href="tables-datatable.html">Data Tables</a></li>
											<li><a href="tables-footable.html">Foo Tables</a></li>
											
						                </ul>
						            </li>
						
						            <!--Menu list item-->
						            <li>
						                <a href="charts.html">
						                    <i class="demo-psi-bar-chart"></i>
						                    <span class="menu-title">Charts</span>
						                </a>
						            </li>
						
						            <li class="list-divider"></li>




                            </div>
                        </div>
                    </div>
                    <!--================================-->
                    <!--End menu-->

                </div>
            </nav>
            <!--===================================================-->
            <!--END MAIN NAVIGATION-->

        </div>

        

        <!-- FOOTER -->
        <!--===================================================-->
        <footer id="footer">

            <!-- Visible when footer positions are fixed -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <div class="show-fixed pull-right">
                You have <a href="#" class="text-bold text-main"><span class="label label-danger">3</span> pending action.</a>
            </div>



            <!-- Visible when footer positions are static -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <div class="hide-fixed pull-right pad-rgt">
                14GB of <strong>512GB</strong> Free.
            </div>



            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <!-- Remove the class "show-fixed" and "hide-fixed" to make the content always appears. -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

            <p class="pad-lft">&#0169; 2016 Your Company</p>



        </footer>
        <!--===================================================-->
        <!-- END FOOTER -->


        <!-- SCROLL PAGE BUTTON -->
        <!--===================================================-->
        <button class="scroll-top btn">
            <i class="pci-chevron chevron-up"></i>
        </button>
        <!--===================================================-->



    </div>
    <!--===================================================-->
    <!-- END OF container -->



</body>

</html>