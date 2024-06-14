<%!String name;
int age;
long mobile; %>  

<%
try{
	name=request.getParameter("name");
	age=Integer.parseInt(request.getParameter("age"));
	mobile=Long.parseLong(request.getParameter("mobile"));
}catch(Exception e){
	e.printStackTrace();
}
%>

<jsp:useBean id="user" class="com.usedatas.User" scope="session">
<jsp:setProperty name="user" property="name" value='<%=name %>'/>
<jsp:setProperty name="user" property="age" value='<%=age %>'/>
<jsp:setProperty name="user" property="mobile" value='<%=mobile %>'/>
</jsp:useBean>
<html>
<body>
<h2>user details</h2>
<table border="1">
<tr>
<td>Name</td>
<td>
<jsp:getProperty property="name" name="user"/>
</td>
</tr>
<tr>
<td>Age</td>
<td>
<jsp:getProperty property="age" name="user"/>
</td>
</tr>
<tr>
<td>Mobile</td>
<td>
<jsp:getProperty property="mobile" name="user"/>
</td>
</tr>

</table>
</body>
</html>
