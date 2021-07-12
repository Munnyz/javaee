<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="Model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
	@ SuppressWarnings("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");	
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda</title>
<link rel="icon" href="imagens/fone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
<script src="scripts/confirmado.js"></script>
	<h1>Agenda de contatos</h1>
	<a href="novo.html" class="b1">Novo contato</a>
	<a href="report" class="b2">Relatório</a>
	
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>E-mail</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<% for (int i=0; i < lista.size(); i++) { %>
				<tr>
					<td> <%= lista.get(i).getIdcon() %></td>
					<td> <%= lista.get(i).getNome() %></td>
					<td> <%= lista.get(i).getFone() %></td>
					<td> <%= lista.get(i).getEmail() %></td>
					<td>
						<a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="b1">Editar</a>
						<a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" class="b2">Excluir</a>
					</td>
				</tr>
			<% } %>
		</tbody>
	</table>

</body>
</html>