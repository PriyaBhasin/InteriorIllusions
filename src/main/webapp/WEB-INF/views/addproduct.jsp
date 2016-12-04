<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.util.ArrayList" %>
<html>

<body>
<%@ include file ="background.jsp" %>
<%@ include file ="header.jsp" %>
<div class="container">
<div class="jumbotron">

<%
	ArrayList<String> categoryList=new ArrayList<String>();
	categoryList.add("Bed");
	categoryList.add("Chairs");
	categoryList.add("Tables");
	categoryList.add("Lamp Shades");
	categoryList.add("Cupboards");
	request.setAttribute("categoryList",categoryList);
%>
<form:form method="POST" action="addnewproduct" commandName="product"  enctype="multipart/form-data">
   <table>
    <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="price">Price</form:label></td>
        <td><form:input path="price" /></td>
    </tr>
    <tr>
        <td><form:label path="description">Description</form:label></td>
        <td><form:input path="description" /></td>
    </tr>
    <tr>
        <td><form:label path="category">Category</form:label></td>
        <td>
        	<form:select path="category">
        		<form:options items="${categoryList}"/>
            </form:select>
        </td>
    </tr>
    <tr>
    	<td><form:input type="file" path="image"/></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</div>
</div>
<%@ include file ="footer.jsp" %>

</body>
</html>