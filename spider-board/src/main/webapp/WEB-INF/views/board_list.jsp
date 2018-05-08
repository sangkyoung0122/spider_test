<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- bootstrap --%>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<%-- bootstrap-theme --%>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css"
	rel="stylesheet">
<%-- bootstrap-dialog --%>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css"
	rel="stylesheet">
<%-- favicon --%>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/favicon/favicon-brown.ico"
	type="image/x-icon">

<%-- jquery --%>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- fontawesom --%>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<%-- bootstrap --%>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- bootstrap-dialog --%>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<title>Administrator</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row main">
			<div class="col-sm-offset-2 col-sm-8">
				<table>
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>조회수</th>
							<th>작성일</th>
							<th>이름</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${mvo.blist}" var="mvo">
							<tr>
								<td>${mvo.no }</td>
								<td>${mvo.title}</td>
								<td>${mvo.content}</td>
								<td>${mvo.hits}</td>
								<td>${mvo.time_posted}</td>
								<td>${mvo.memberVo.name}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<c:if test="${mvo.pb.previousPageGroup==true }">
				<a href="board.do?nowPage=${mvo.pb.startPageOfPageGroup-1 }">이전</a>
				</c:if>
				<c:forEach begin="${mvo.pb.startPageOfPageGroup }" end="${mvo.pb.endPageOfPageGroup }" var="i">
					<c:choose>
						<c:when test="${mvo.pb.nowPage==i }">
							${i }
						</c:when>
						<c:otherwise>
							<a href="board.do?nowPage=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:if test="${mvo.pb.nextPageGroup==true }">
				<a href="board.do?nowPage=${mvo.pb.endPageOfPageGroup+1 } ">이후</a>
				</c:if>
				
			</div>
			<%-- col-sm-offset-2 col-sm-8 --%>
		</div>
		<%-- row main --%>
	</div>
	<%-- container-fluid --%>
</body>
</html>