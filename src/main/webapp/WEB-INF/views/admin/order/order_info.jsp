<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<div class="form-group">
							<label for="board_writer_name">주문 목록</label> <input type="text"
								id="board_writer_name" name="board_writer_name"
								class="form-control" value="홍길동" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="board_date">주문 날짜</label> <input type="text"
								id="board_date" name="board_date" class="form-control"
								value="2018-7-20" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="board_subject">주문 </label> <input type="text"
								id="board_subject" name="board_subject" class="form-control"
								value="제목입니다" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="board_content">주문 내용</label>
							<textarea id="board_content" name="board_content"
								class="form-control" rows="10" style="resize: none"
								disabled="disabled">본문입니다</textarea>
						</div>
						<div class="form-group">
							<label for="board_file">첨부 이미지</label> <img
								src="${root}resources/image/logo.png" width="100%" />
						</div>
						<div class="form-group">
							<div class="text-right">
								<a href="${root }admin/order" class="btn btn-primary">목록보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>