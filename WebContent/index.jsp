<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  tutorial tag libs  -->
<!-- http://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm  -->

<!DOCTYPE html>
<html>
<head>
<script>
function validateForm()
{
var x=document.forms["myForm"]["email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  };
}
</script>
</head>

<body>

	<h1>TESTE JSTL</h1>

	<form name="myForm" action="index.jsp"
		onsubmit="return validateForm();" method="post">
		Email: <input type="text" name="email"> <input type="submit"
			value="Submit">
	</form>
</body>

</html>
