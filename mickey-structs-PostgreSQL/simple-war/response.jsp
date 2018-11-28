<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
   
<html>
<head>
  <title>Response Page</title>
</head>
<body>


	<p>welcome to response</p>
	<h1><s:property value="name" /></h1>
  
  <h1><s:property value="message" /></h1>
  
  <s:form action="/input.jsp" >
    <s:submit value="Back" />
  </s:form>
   
</body>
</html>