<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<body>


<form:form method="POST" action="updateaproduct" commandName="product">
   <table>
   <tr>
   <td><form:label path="id">ID</form:label></td>
        <td><form:input path="id" readonly="true" /></td>
        </tr>
    <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
        <td><form:errors path="name" cssClass="error"/></td>
    </tr>
    <tr>
        <td><form:label path="price">Price</form:label></td>
        <td><form:input path="price" /></td>
         <td><form:errors path="price" cssClass="error"/></td>
    </tr>
    <tr>
        <td><form:label path="description">description</form:label></td>
        <td><form:input path="description" /></td>
         <td><form:errors path="description" cssClass="error"/></td>
    </tr>
    <tr>
        <td><form:label path="category">category</form:label></td>
        <td><form:input path="category" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>