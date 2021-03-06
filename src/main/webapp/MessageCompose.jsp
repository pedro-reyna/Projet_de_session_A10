<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${sessionScope.langue}"/>
<fmt:setBundle basename="langue"/>
<jsp:include page="header.jsp"/>

<form action="MessageServlet?mode=composeSubmit" method="post">
    <div class="row">
        <div class="col-6">
            <h1><fmt:message key="ComposeMessage"/></h1>
        </div>
    </div>
    <div class="row form-group">
        <div class="col-20 right"><label><fmt:message key="ToUserId"/></label></div>
        <div class="col-80"><input type="text" class="form-control" name="to"></div>
    </div>
    <div class="row form-group">
        <div class="col-20 right"><label><fmt:message key="Subject"/></label></div>
        <div class="col-80"><input type="text" class="form-control" name="subject"></div>
    </div>
    <div class="row form-group">
        <div class="col-20 right"><label><fmt:message key="Content"/></label></div>
        <div class="col-80"><textarea name="content" style="height:200px" class="form-control"></textarea></div>
    </div>
    <div class="row form-group">
        <div class="col-20 right">&nbsp;</div>
        <div class="col-20">
            <button type="submit" class="btn btn-primary"><fmt:message key="Send"/></button>
        </div>
    </div>
</form>

<jsp:include page="footer.jsp"/>
