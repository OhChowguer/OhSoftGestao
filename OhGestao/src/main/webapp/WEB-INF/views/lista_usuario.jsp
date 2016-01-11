<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<div class="page-content">
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<ul class="breadcrumb">
			<li><i class="fa fa-home"></i> <a href="/ohgestao/">Inicio</a></li>

		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>Pagina em Branco</h1>
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
		<div class="col-xs-12 col-md-12">
			<div class="well with-header  with-footer">
				<div class="header bg-blue">Lista de Usuario</div>
				<table class="table table-hover">
					<thead class="bordered-darkorange">
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>Login</th>
							<th>Senha</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${usuarios}" var="usuario">
							<tr>
								<td>${usuario.id}</td>
								<td>${usuario.nome}</td>
								<td>${usuario.login}</td>
								<td>${usuario.senha}</td>
								<td><a onclick="location.href='editar/${usuario.id}'" class="btn btn-info btn-xs edit"><i
										class="fa fa-edit"></i> Editar</a> <a onclick="delUsuario(${usuario.id})"
									class="btn btn-danger btn-xs delete"><i
										class="fa fa-trash-o"></i> Deletar</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>

		</div>
	</div>
	<!-- /Page Body -->
</div>
<!-- /Page Content -->
