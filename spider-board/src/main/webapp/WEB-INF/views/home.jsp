<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- bootstrap --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<%-- bootstrap-theme --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
<%-- bootstrap-dialog --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css" rel="stylesheet">
<%-- favicon --%>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon/favicon-brown.ico" type="image/x-icon">

<%-- jquery --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- fontawesom --%>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<%-- bootstrap --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- bootstrap-dialog --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<title>Administrator</title>

</head>
<body>
   <div class="container-fluid">
      <div class="row main">
         <div class="col-sm-offset-2 col-sm-8">
            <h3>test</h3>
            <a href ="board.do">게시판</a>
         </div> <%-- col-sm-offset-2 col-sm-8 --%>
      </div> <%-- row main --%>
   </div> <%-- container-fluid --%>
</body>
</html>