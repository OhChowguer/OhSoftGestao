<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:url var="url" value="/usuario/registrar" />

<div class="register-container animated fadeInDown">
	<div class="col-lg-12 col-sm-12col-xs-12">
		<div class="widget flat radius-bordered">
			<div class="widget-header bg-blue">
				<span class="widget-caption">Formulario de registro</span>
			</div>
			<div class="widget-body">
				<div id="registration-form">
					<form:form id="registerForm" data-bv-message="Usuario invalido"
						data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
						data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
						data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
						role="form" action="${url}" method="POST" modelAttribute="usuario">
						<div class="form-title">Informa��es do Usuario</div>

						<div class="form-group">
							<div class="registerbox-textbox">
								<span class="input-icon icon-right"> <form:input
										placeholder="Usuario" type="text" class="form-control"
										name="login" data-bv-message="O usario n�o � valido."
										data-bv-notempty="true"
										data-bv-notempty-message="O campo Usuario n�o pode ficar em branco."
										path="login" />
								</span>
							</div>
						</div>
						<div class="form-group">
							<span class="input-icon icon-right"> <form:input
									placeholder="E-mail" type="text" class="form-control"
									name="email" data-bv-message="E-mail n�o � valido."
									data-bv-notempty="true"
									data-bv-notempty-message="O campo E-mail n�o pode ficar em branco."
									path="email" />
							</span>
						</div>
						<div class="form-group">
							<span class="input-icon icon-right"> <form:input
									placeholder="Senha" type="password" class="form-control"
									name="senha" data-bv-message="O usario n�o � valido."
									data-bv-notempty="true"
									data-bv-notempty-message="O campo Senha n�o pode ficar em branco."
									path="senha" />
							</span>
						</div>
						<div class="form-group">
							<span class="input-icon icon-right"> <input
								placeholder="Confirme a senha" type="password" class="form-control"
								name="csenha" data-bv-message="A senha n�o confere."
								data-bv-notempty="true"
								data-bv-notempty-message="O campo de confirma��o de senha n�o pode ficar em branco." />
							</span>
						</div>
						<div class="form-title">Informa��es pessoais</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<span class="input-icon icon-right"> <form:input
											placeholder="Nome" type="text" class="form-control"
											name="nome" data-bv-message="O nome n�o � valido."
											data-bv-notempty="true"
											data-bv-notempty-message="O campo Nome n�o pode ficar em branco."
											path="nome" />
									</span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<span class="input-icon icon-right"> <input
										placeholder="Familiar" type="text" class="form-control"
										name="familia" data-bv-message="O nome n�o � valido."
										data-bv-notempty="true"
										data-bv-notempty-message="O campo Nome do familiar n�o pode ficar em branco." />
									</span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<span class="input-icon icon-right"> <input
											placeholder="Telefone" type="text" class="form-control"
											name="fone" data-bv-message="O Telefone n�o � valido."
											data-bv-notempty="true"
											data-bv-notempty-message="O campo Telefone n�o pode ficar em branco."
											 />
									</span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<span class="input-icon icon-right"> <input
											placeholder="Celular" type="text" class="form-control"
											name="celular" data-bv-message="O Telefone n�o � valido."
											data-bv-notempty="true"
											data-bv-notempty-message="O campo Telefone n�o pode ficar em branco."
											 />
									</span>
								</div>
							</div>
						</div>
						<hr class="wide" />
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<span class="input-icon icon-right"> <input
											placeholder="Data Nasc" type="text" class="form-control"
											name="celular" data-bv-message="A Data n�o � valido."
											data-bv-notempty="true"
											data-bv-notempty-message="O campo Data Nasc n�o pode ficar em branco."
											data-date-format="dd-mm-yyyy"
											 />
									</span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<span class="input-icon icon-right"> <input
											placeholder="Local Nasc" type="text" class="form-control"
											name="celular" data-bv-message="A Local n�o � valido."
											data-bv-notempty="true"
											data-bv-notempty-message="O campo Local Nasc n�o pode ficar em branco."
											
											 />
									</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" class="colored-blue">
									<span class="text">Entrar automaticamente ap�s registrar-se </span>
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

<!--<form:form id="registerForm" class="form-horizontal"
		data-bv-message="Usuario invalido"
		data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
		data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
		data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
		role="form" action="${url}" method="POST" modelAttribute="usuario">

		<div class="registerbox bg-white">

			<div class="registerbox-title">Registro</div>

			<div class="registerbox-caption ">Por favor, preencha suas
				informa��es</div>

			<div class="form-group">
				<div class="registerbox-textbox">

					<form:input placeholder="Usuario" type="text" class="form-control"
						name="username" data-bv-message="O usario n�o � valido."
						data-bv-notempty="true"
						data-bv-notempty-message="O campo Usuario n�o pode ficar em branco."
						path="login" />
				</div>
			</div>
			<div class="form-group">
				<div class="registerbox-textbox">
					<form:input placeholder="E-mail" type="text" class="form-control"
						name="email" data-bv-message="O usario n�o � valido."
						data-bv-notempty="true"
						data-bv-notempty-message="O campo E-mail n�o pode ficar em branco."
						path="email" />
				</div>
			</div>
			<div class="form-group">
				<div class="registerbox-textbox">
					<form:input placeholder="Senha" type="password"
						class="form-control" name="email"
						data-bv-message="O usario n�o � valido." data-bv-notempty="true"
						data-bv-notempty-message="O campo Senha n�o pode ficar em branco."
						path="senha" />
				</div>
			</div>
			<div class="form-group">
				<div class="registerbox-textbox">
					<input type="password" class="form-control"
						placeholder="Confirme a senha" />
				</div>
			</div>
			<hr class="wide" />
			<div class="form-group">
				<div class="registerbox-textbox">
					<form:input placeholder="Seu nome" type="text" class="form-control"
						name="nome" data-bv-message="O usario n�o � valido."
						data-bv-notempty="true"
						data-bv-notempty-message="O campo Nome n�o pode ficar em branco."
						path="nome" />
				</div>
			</div>
			<div class="form-group">
				<div class="registerbox-textbox">
					<input type="text" class="form-control" placeholder="Familia" />
				</div>
			</div>

			<div class="registerbox-textbox">
				<div class="row">
					<div class="col-lg-6 col-sm-6 col-xs-6 padding-right-10">
						<input type="text" class="form-control" placeholder="M�s" />
					</div>
					<div class="col-lg-3 col-sm-3 col-xs-3 no-padding padding-right-10">
						<input type="text" class="form-control" placeholder="Dia" />
					</div>
					<div class="col-lg-3 col-sm-3 col-xs-3 no-padding-left">
						<input type="text" class="form-control" placeholder="Ano" />
					</div>
				</div>
			</div>
			<div class="registerbox-textbox no-padding-bottom">
				<div class="checkbox">
					<label> <input type="checkbox" class="colored-primary"
						checked="checked"> <span class="text darkgray">Eu
							aceito os <a class="themeprimary">Termos de servi�o</a> e
							politica de privacidade
					</span>
					</label>
				</div>

			</div>


		</div>
		<button type="submit" class="btn btn-primary btn-block">Registrar</button>

	</form:form>-->