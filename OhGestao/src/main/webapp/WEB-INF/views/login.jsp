<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:url var="url" value="/usuario/logar" />


<div class="login-container animated fadeInDown">
	<div class="loginbox bg-white">
		<div class="loginbox-title">Entrar</div>
		<div class="loginbox-social">
			<div class="social-title ">Conectar-se com:</div>
			<div class="social-buttons">
				<a href="" class="button-facebook"> <i
					class="social-icon fa fa-facebook"></i>
				</a> <a href="" class="button-twitter"> <i
					class="social-icon fa fa-twitter"></i>
				</a> <a href="" class="button-google"> <i
					class="social-icon fa fa-google-plus"></i>
				</a>
			</div>
		</div>
		<div class="loginbox-or">
			<div class="or-line"></div>
			<div class="or">OU</div>
		</div>
		<form:form id="loginForm" class="form-horizontal"
			data-bv-message="Usuario invalido"
			data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
			data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
			data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
			role="form" action="${url}" method="POST" modelAttribute="usuario">
			<div class="form-group">
				<div class="loginbox-textbox">
					<div class="col-lg-12">
						<form:input placeholder="Usuario/E-mail" type="text"
							class="form-control" name="username"
							data-bv-message="O usario não é valido." 
							data-bv-notempty="true"
							data-bv-notempty-message="O campo Usuario/E-mail não pode ficar em branco." path="login" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="loginbox-textbox">
					<div class="col-lg-12">
						<form:input placeholder="Senha" type="password" class="form-control"
							name="passaword" data-bv-message="O senha não é valida." 
							data-bv-notempty="true"
							data-bv-notempty-message="O campo Senha não pode ficar em branco." path="senha"/>
					</div>
				</div>
			</div>
			<div class="loginbox-forgot">
				<a href="">Lembrar senha?</a>
			</div>
			<div class="loginbox-submit">

				<button type="submit" class="btn btn-primary btn-block">Entrar</button>

			</div>
			<div class="loginbox-signup">
				<a href="/ohgestao/usuario/registro">Registrar-se</a>
			</div>


			</form:form>
	</div>
	<div class="logobox"></div>
</div>