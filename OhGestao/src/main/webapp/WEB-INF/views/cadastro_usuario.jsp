<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:if test="${trans == 'cad'}">
	<c:url var="url" value="/usuario/cadastrar" />
</c:if>
<c:if test="${trans == 'edit'}">
	<c:url var="url" value="/usuario/update/${usuario.id }" />
</c:if>

<div class="page-content">
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<ul class="breadcrumb">
			<li><i class="fa fa-home"></i> <a href="/ohgestao">Inicio</a></li>
			<li><a href="#">Cadastros</a></li>
			<li class="active">Usuario do Sistema</li>

		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>Cadastro de Usuario</h1>
		</div>
		<!--Header Buttons-->
		<div class="header-buttons">
			<a class="sidebar-toggler" href="#"> <i class="fa fa-arrows-h"></i>
			</a> <a class="refresh" id="refresh-toggler" href=""> <i
				class="glyphicon glyphicon-refresh"></i>
			</a> <a class="fullscreen" id="fullscreen-toggler" href="#"> <i
				class="glyphicon glyphicon-fullscreen"></i>
			</a>
		</div>
		<!--Header Buttons End-->
	</div>
	<!-- /Page Header -->
	<!-- Page Body -->
	<div class="page-body">
		<div class="row">
			<div class="col-lg-12 col-sm-12 col-xs-12">

				<div class="row">
					<div class="col-lg-12 col-sm-12 col-xs-12">
						<div class="widget flat radius-bordered">
							<div class="widget-header bg-blue">
								<span class="widget-caption">Formulario de cadastro de
									usuarios</span>
							</div>
							<div class="widget-body">
								<div id="registration-form">
									<form:form id="registrationForm"
										data-bv-message="This value is not valid"
										data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
										data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
										data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
										role="form" action="${url}" method="POST"
										modelAttribute="usuario">

										<div class="form-title">Informaçõess do Usuario</div>
										<div class="form-group">
											<span class="input-icon icon-right"> <form:input
													data-bv-notempty="true"
													data-bv-notempty-message="Esse campo não pode estar vazio!"
													type="text" class="form-control" id="userameInput"
													name="userameInput" placeholder="Nome de Usuario"
													required="" path="login" /> <!--i class="glyphicon glyphicon-user circular"></i-->
											</span>
										</div>
										<div class="form-group">
											<span class="input-icon icon-right"> <form:input
													data-bv-emailaddress="true"
													data-bv-emailaddress-message="Insira um e-mail válido"
													data-bv-notempty="true"
													data-bv-notempty-message="Esse campo não pode estar vazio!"
													type="text" class="form-control" placeholder="E-mail"
													required="" path="email" />

											</span>
										</div>
										<div class="form-group">
											<span class="input-icon icon-right"> <form:input
													type="password" class="form-control" name="password"
													placeholder="Senha" required="" path="senha"
													data-bv-notempty="true"
													data-bv-notempty-message="A senha não pode ser vazia"
													data-bv-different="true"
													data-bv-different-field="userameInput"
													data-bv-different-message="A senha não pode ser a mesma do usuario" />
												<!--<i class="fa fa-lock circular"></i>-->
											</span>
										</div>
										<div class="form-group">
											<span class="input-icon icon-right"> <input
												name="confirmPassword" type="password" class="form-control"
												placeholder="Confirmar senha" 
												
												data-bv-identical="true" 
												data-bv-identical-field="password"
												data-bv-identical-message="The password and its confirm are not the same" />
												<!--<i class="fa fa-lock circular"></i>-->
											</span>
										</div>
										<div class="form-title">Informações Pessoais</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<span class="input-icon icon-right"> <form:input
															type="text" class="form-control" placeholder="Nome"
															required="" path="nome" /> <i class="fa fa-user"></i>
													</span>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<span class="input-icon icon-right"> <input
														type="text" class="form-control"
														placeholder="Nome do contato familiar"> <i
														class="fa fa-user"></i>
													</span>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<span class="input-icon icon-right"> <input
														type="text" class="form-control" placeholder="Residencial">
														<i class="glyphicon glyphicon-earphone"></i>
													</span>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<span class="input-icon icon-right"> <input
														type="text" class="form-control" placeholder="Celular">
														<i class="glyphicon glyphicon-phone"></i>
													</span>
												</div>
											</div>
										</div>
										<hr class="wide" />
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<span class="input-icon icon-right"> <input
														class="form-control date-picker" id="id-date-picker-1"
														type="text" data-date-format="dd-mm-yyyy"
														placeholder="Data de nascimento"> <i
														class="fa fa-calendar"></i>
													</span>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<span class="input-icon icon-right"> <input
														type="text" class="form-control"
														placeholder="Local de nascimento"> <i
														class="fa fa-globe"></i>
													</span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="checkbox">
												<label> <input type="checkbox" class="colored-blue">
													<span class="text">Ativar usuario somente após
														confirmação do e-mail</span>
												</label>
											</div>
										</div>
										<button type="submit" class="btn btn-blue">Registrar</button>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Page Body -->
	</div>
	<!-- /Page Content -->