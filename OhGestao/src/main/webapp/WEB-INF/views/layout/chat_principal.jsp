<%@page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage=""%>


<!-- Chat Bar -->
<div id="chatbar" class="page-chatbar">
	<div class="chatbar-contacts">
		<div class="contacts-search">
			<input type="text" class="searchinput" placeholder="Busca de contatos" />
			<i class="searchicon fa fa-search"></i>
			<div class="searchhelper">Busca rápida, Conversas ou Contatos</div>
		</div>
		<ul class="contacts-list">
			<li class="contact">
				<div class="contact-avatar">
					<img
						src="${pageContext.request.contextPath}/resources/assets/img/logo.png" />
				</div>
				<div class="contact-info">
					<div class="contact-name">Em construção</div>
					<div class="contact-status">
						<div class="offline"></div>
						<div class="status">offline</div>
					</div>
					<div class="last-chat-time">em breve</div>
				</div>
			</li>
			
		</ul>
	</div>
	<div class="chatbar-messages" style="display: none;">
		<div class="messages-contact">
			<div class="contact-avatar">
				<img
					src="${pageContext.request.contextPath}/resources/assets/img/logo_5.png" />
			</div>
			<div class="contact-info">
				<div class="contact-name">Em construção</div>
				<div class="contact-status">
					<div class="offline"></div>
					<div class="status">offline</div>
				</div>
				<div class="last-chat-time">em breve</div>
				<div class="back">
					<i class="fa fa-arrow-circle-left"></i>
				</div>
			</div>
		</div>
		<ul class="messages-list">
			<li class="message">
				<div class="message-info">
					<div class="bullet"></div>
					<div class="contact-name">Meu</div>
					<div class="message-time">10:14 AM, Hoje</div>
				</div>
				<div class="message-body">EM CONSTRUÇÃO</div>
			</li>
			
		</ul>
		<div class="send-message">
			<span class="input-icon icon-right"> <textarea rows="4"
					class="form-control" placeholder="Escreva sua menssagem"></textarea> <i
				class="fa fa-camera themeprimary"></i>
			</span>
		</div>
	</div>
</div>
<!-- /Chat Bar -->