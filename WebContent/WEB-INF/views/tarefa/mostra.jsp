<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>  
	
<html>

<head>
<meta charset="UTF-8">
<title>Projeto agenda</title>
  <link rel="stylesheet" href="resources/css/jquery.css">
  <script src="resources/js/jquery.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
	<script  src="resources/js/datepicker-pt-BR.js"></script>

</head>

<body>
	<h3>Alterar tarefa ${tarefa.id}</h3>
	
	<form:errors path="tarefa.descricao"/>
	<form:errors path="tarefa.dataFinalizacao"/>
	
	<form action="alteraTarefa" method="post">
	
	<input type="hidden" name="id" value="${tarefa.id}" />
	
	Descricao: <textarea name="descricao" cols="100" rows="5">
	${tarefa.descricao}
	</textarea> </br>
	
	Finalizado: <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : ''}/> </br>
	
	<!-- 
	Data finalizacao: <input type="text" name="dataFinalizacao"
		value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />"/>
		 </br>
	 -->
	Data finalizacao:
	<caelum:campoData name="dataFinalizacao"  id="dataFinalizacao" value="${tarefa.dataFinalizacao.time}"/>
	</br>
	<input type="submit" value="Alterar"/>
	
	</form>
	
</body>
</html>