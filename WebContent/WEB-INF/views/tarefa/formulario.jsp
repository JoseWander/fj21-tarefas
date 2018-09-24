<html>
<head>

</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:errors path="tarefa.descricao"/>
	<form method="post" action="adicionaTarefa">
		Desc
		
		<textarea rows="5" cols="100" name="descricao"></textarea>
	
		
		<br /> <input type="submit" value="Adicionar">


	</form>
</body>
</html>