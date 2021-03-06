<%@page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage=""%>


<!-- Navbar -->
<div class="navbar">
	<div class="navbar-inner">
		<div class="navbar-container">
			<!-- Navbar Barnd -->
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <img
						src="${pageContext.request.contextPath}/resources/assets/img/logo_1.png"
						alt="" />
				</small>
				</a>
			</div>
			<!-- /Navbar Barnd -->
			<!-- Sidebar Collapse -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="collapse-icon fa fa-bars"></i>
			</div>
			<!-- /Sidebar Collapse -->
			<!-- Account Area and Settings --->
			<div class="navbar-header pull-right">
				<div class="navbar-account">
					<ul class="account-area">
						<li><a class=" dropdown-toggle" data-toggle="dropdown"
							title="Notifications" href="#"> <i class="icon fa fa-warning"></i>
						</a> <!--Notification Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-notifications">
								<li><a href="#">
										<div class="clearfix">
											<div class="notification-icon">
												<i class="fa fa-phone bg-themeprimary white"></i>
											</div>
											<div class="notification-body">
												<span class="title">Funcão de notificações em construção</span> <span
													class="description">00:00 pm</span>
											</div>
											<div class="notification-extra">
												<i class="fa fa-clock-o themeprimary"></i> <span
													class="description">Offline</span>
											</div>
										</div>
								</a></li>
								
							</ul> <!--/Notification Dropdown--></li>
						<li><a class="dropdown-toggle" data-toggle="dropdown"
							title="Mails" href="#"> <i class="icon fa fa-envelope"></i> <span
								class="badge">0</span>
						</a> <!--Messages Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-messages">
								<li><a href="#"> <img src="
										${pageContext.request.contextPath}/resources/assets/img/logo_5.png" class="message-avatar"
										alt="Divyia Austin">
										<div class="message">
											<span class="message-sender"> Em construção </span> <span
												class="message-time"> Em breve </span> <span
												class="message-subject"> Em construcao </span> <span class="message-body"> 
												Em construcao </span>
										</div>
								</a></li>
							</ul> <!--/Messages Dropdown--></li>
						<li><a class="dropdown-toggle" data-toggle="dropdown"
							title="Tasks" href="#"> <i class="icon fa fa-tasks"></i> <span
								class="badge">0</span>
						</a> <!--Tasks Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-tasks dropdown-arrow ">
								<li class="dropdown-header bordered-darkorange"><i
									class="fa fa-tasks"></i> 0 Atividades em processo</li>
								<li><a href="#">
										<div class="clearfix">
											<span class="pull-left">Em construcao</span> <span
												class="pull-right">00%</span>
										</div>

										<div class="progress progress-xs">
											<div style="width: 00%" class="progress-bar"></div>
										</div>
								</a></li>
								
							</ul> <!--/Tasks Dropdown--></li>
						<li><a class="wave in" id="chat-link" title="Chat" href="#">
								<i class="icon glyphicon glyphicon-comment"></i>
						</a></li>
						<li><a class="login-area dropdown-toggle"
							data-toggle="dropdown">
								<div class="avatar" title="View your public profile">
									<img
										src="${pageContext.request.contextPath}/resources/assets/img/logo_5.png">
								</div>
								<section>
									<h2>
										<span class="profile"><span>Configurações da conta</span></span>
									</h2>
								</section>
						</a> <!--Login Area Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
								<li class="username"><a>${sessionScope.usuarioLogado.login}</a></li>
								<li class="email"><a>${sessionScope.usuarioLogado.email}</a></li>
								<!--Avatar Area-->
								<li>
									<div class="avatar-area">
										<img
											src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
											class="avatar"> <span class="caption">Trocar
											Foto</span>
									</div>
								</li>
								<!--Avatar Area-->
								<li class="edit"><a href="profile.html" class="pull-left">Profile</a>
									<a href="#" class="pull-right">Configuracoes</a></li>
								<!--Theme Selector Area-->
								<li class="theme-area">
									<ul class="colorpicker" id="skin-changer">
										<li><a class="colorpick-btn" href="#"
											style="background-color: #5DB2FF;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/blue.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #2dc3e8;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/azure.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #03B3B2;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/teal.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #53a93f;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/green.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #FF8F32;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/orange.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #cc324b;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/pink.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #AC193D;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/darkred.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #8C0095;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/purple.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #0072C6;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/darkblue.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #585858;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/gray.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #474544;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/black.min.css"></a></li>
										<li><a class="colorpick-btn" href="#"
											style="background-color: #001940;"
											rel="${pageContext.request.contextPath}/resources/assets/css/skins/deepblue.min.css"></a></li>
									</ul>
								</li>
								<!--/Theme Selector Area-->
								<li class="dropdown-footer"><a href="${pageContext.request.contextPath}/usuario/sair"> Sair </a></li>
							</ul> <!--/Login Area Dropdown--></li>
						<!-- /Account Area -->
						<!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
						<!-- Settings -->
					</ul>
					<div class="setting">
						<a id="btn-setting" title="Setting" href="#"> <i
							class="icon glyphicon glyphicon-cog"></i>
						</a>
					</div>
					<div class="setting-container">
						<label> <input type="checkbox" id="checkbox_fixednavbar">
							<span class="text">Fixed Navbar</span>
						</label> <label> <input type="checkbox" id="checkbox_fixedsidebar">
							<span class="text">Fixed SideBar</span>
						</label> <label> <input type="checkbox"
							id="checkbox_fixedbreadcrumbs"> <span class="text">Fixed
								BreadCrumbs</span>
						</label> <label> <input type="checkbox" id="checkbox_fixedheader">
							<span class="text">Fixed Header</span>
						</label>
					</div>
					<!-- Settings -->
				</div>
			</div>
			<!-- /Account Area and Settings -->
		</div>
	</div>
</div>
<!-- /Navbar -->
