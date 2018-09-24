<%@ attribute name="id" required="true"%>
<%@ attribute name="value" required="true"%>
<%@ attribute name="name" required="true"%>
<input id="${id}" name="${id}"  />
<script>
$("#${id}").datepicker($.datepicker.regional["pt-BR"]);

</script>
