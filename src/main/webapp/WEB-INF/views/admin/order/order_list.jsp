<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>주문 정보 목록</title>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<!-- 게시글 리스트 -->
	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">${boardInfoName }</h4>
				<table class="table table-hover" id='board_list'>
					<caption></caption>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">주문 번호</th>
							<th class="w-50">제품명</th>
							<th class="text-center d-none d-md-table-cell">구매자</th>
							<th class="text-center d-none d-md-table-cell">구매날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${contentList }">
							<tr>
								<td class="text-center d-none d-md-table-cell">${obj.content_idx }</td>
								<td><a
									href='${root }order/read?board_info_idx=${board_info_idx}&content_idx=${obj.content_idx}&page=${page}'>${obj.content_subject }</a></td>
								<td class="text-center d-none d-md-table-cell">${obj.content_writer_name }</td>
								<td class="text-center d-none d-md-table-cell">${obj.content_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="d-none d-md-block">
					<ul class="pagination justify-content-center">
						<c:choose>
							<c:when test="${pageBean.prevPage <= 0 }">
								<li class="page-item disabled"><a href="#"
									class="page-link">이전</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.prevPage}"
									class="page-link">이전</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var='idx' begin="${pageBean.min }"
							end='${pageBean.max }'>
							<c:choose>
								<c:when test="${idx == pageBean.currentPage }">
									<li class="page-item active"><a
										href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}"
										class="page-link">${idx }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a
										href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}"
										class="page-link">${idx }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pageBean.max >= pageBean.pageCnt }">
								<li class="page-item disabled"><a href="#"
									class="page-link">다음</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.nextPage}"
									class="page-link">다음</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>