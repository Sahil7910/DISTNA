<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head><title>Job Roles</title>
<SCRIPT src="include/ibox.js" type=text/javascript></SCRIPT>
<script language="JavaScript" src="include/jquery.js"></script>
<script language="JavaScript" src="include/jsfunctions.js"></script>
</head>
<body id="public">
<div id="container" class="ltr">
<form:form encType="multipart/form-data" method="POST" action="saveOrUpdateJobRoles.htm" commandName="jobRoles" class="wufoo leftLabel page">
<form:hidden path="id" id="id" name="id"/>
<ul>
<li id="foli110" 
class="notranslate">
<label class="desc" id="title110" for="Field110">
Level<span id="req_23" class="req">*</span>
</label>
<div>
<form:input path="level" id="level" name="level" class="field text medium"/>
</div>
<form:errors path="level" cssClass="error"/> 
</li>

<li id="foli110" 
class="notranslate">
<label class="desc" id="title110" for="Field110">
Job Role name<span id="req_23" class="req">*</span>
</label>
<div>
<form:input path="roleName" id="roleName" name="roleName" class="field text medium" />
</div>
<form:errors path="roleName" cssClass="error"/> 
</li>

<li id="foli110" 
class="notranslate      ">
<label class="desc" id="title110" for="Field110">
Priority
<span id="req_23" class="req">*</span>
</label>
<div id="showNewPriorityListDiv">
<form:select path="priority" id="priority" name="priority" class="field select medium">
    <form:option value="0">Select</form:option>
     <c:forEach items="${priorityList}" var="priorityListVar">
         <c:choose>
         <c:when test="${jobRoles.priority==priorityListVar.id}">
         <form:option value="${priorityListVar.id}" selected="selected">${priorityListVar.name}</form:option> 
         </c:when>
         <c:otherwise>
            <form:option value="${priorityListVar.id}" >${priorityListVar.name}</form:option>
         </c:otherwise>
         </c:choose> 
        </c:forEach>
</form:select>
<form:errors path="priority" cssClass="error"/>
<c:set value="${jobRoles.id}" var="jobRolesId"></c:set>
    <%
    int jobRolesId=(Integer)pageContext.getAttribute("jobRolesId");
    String jobRolesUrl="addUpdatePriorityDiv.htm?id="+jobRolesId;
    %>
<input type="button" value="AddNew" onclick="callPopupWindowWithPost('<%=jobRolesUrl%>','PriorityWindow','POST');"/>
</div>
<div id="addPriorityDiv">
</div>
</li>

  
 <li id="foli110" 
class="notranslate">
<label class="desc" id="title110" for="Field110">
Description
</label>
<div> 
<form:textarea path="description" class="field textarea medium" ></form:textarea>
</div>
</li>    
    

<li id="foli110" 
class="notranslate      ">
<label class="mandatory" id="title110" for="Field110">
* Required Fields
</label>
<div>

</div>
</li>
<li class="buttons ">
<div>
<INPUT class="btTxt submit" value=Save type="submit" >
</div>
</li>
	</ul>
</form:form>
</div>
</body>
</html>
