<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student confirm</title>
</head>
<body>

The Student is Confirmed: ${student.firstName} ${student.lastName}

<br><br>

Country : ${student.country}


<br><br>

Favorite Language: ${student.favoriteLanguage}

<br><br>

Operating System: ${student.operatingSystems}
<ul>
   <c:forEach var="temp" items="${student.operatingSystems}">
   <li>${temp}</li>
   </c:forEach>
</ul>
</body>
</html>