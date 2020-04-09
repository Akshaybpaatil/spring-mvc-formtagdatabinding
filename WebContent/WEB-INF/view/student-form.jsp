<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
   
   <form:form action="processForm" modelAttribute="student">
   
   First name: <form:input path="firstName"/>
   
   <br><br>
   
   Last name: <form:input path="lastName"/>
   
   <br><br>
   
   <form:select path="country">
         <form:options items="${student.countryOptions}"/>
   </form:select>
   
   <br><br>
   
   Favorite Language:
   
   Java <form:radiobutton path="favoriteLanguage" value="Java"/>
   C# <form:radiobutton path="favoriteLanguage" value="C#"/>
   PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
   Windows <form:radiobutton path="favoriteLanguage" value="Windows"/>
   
   <br><br>
   
   Operating Systems:
   
   Linux <form:checkbox path="operatingSystems" value="Linux"/>
   MAC OS <form:checkbox path="operatingSystems" value="Mac OS"/>
   Ms Windows <form:checkbox path="operatingSystems" value="Ms Windows"/>
   
   <br><br>
   
   <input type="submit" value="Submit" />
   
   </form:form>

</body>
</html>