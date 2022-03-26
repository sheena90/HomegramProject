<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homegram</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>
	<div id="wrap">
		<div class="mainContentHeader"> <!-- 추후 header로 수정 예정 -->
			<div class="d-flex justify-content-between align-items-center bg-white">
				<div>
					<a href="/user/homegram"><img width="200" alt="logo" src="/static/image/logo4.PNG"></a>
				</div>
				<div>
					<input type="text" placeholder="검색" class="form-control">
				</div>
				<div>
					<h4>
						<a href="#" class="mr-2 text-dark">
							<i class="bi bi-house-door-fill mr-3"></i>
						</a>
						<a href="/post/newPostPhoto_view" class="mr-2 text-dark">
							<i class="bi bi-plus-square mr-3"></i>
						</a>
						<a href="#" class="mr-2 text-dark">
							<i class="bi bi-heart mr-3"></i>
						</a>
						<c:if test="${not empty userId }">
							<div class="mr-2 text-dark" id="profileClick">
								<i class="bi bi-person-circle"></i>
								<div id="userOptions">
									<a href="/user/sign_out">로그아웃</a>
								</div>
								
							</div>
						</c:if>
						
					</h4>	
				</div>
			</div>
		</div>
		<hr>
		<div class="mainContentSection"> <!-- 나중에 section으로 수정 -->		
			<div class="d-flex justify-content-center">
				<div>
					<!-- 친구 업데이트 -->
					<div class="mainContentStories">
							
					</div>
					<!-- 상세 업데이트 -->
					<c:forEach var="post" items="${postList }">
					<div class="mainContentNewContent mt-3">
						<!-- 유저 정보 -->
						<div class="mainContentNameInfo d-flex justify-content-between align-items-center">
							<div class="ml-3"><b>${post.userName }</b></div>
							<div class="mr-3"><b><i class="bi bi-three-dots"></i></b></div>
						</div>
						<!-- 이미지 -->
						<div>
							<img class="w-100" src="${post.imagePath }" alt="유저 업로드 사진">
						</div>
						<!-- 아이콘 -->
						<div class="mainContentLike d-flex justify-content-start align-items-center">
							<div class="ml-3"><i class="bi bi-heart"></i></div>
							<div class="ml-3"><i class="bi bi-chat-square"></i></div>
						</div>
						<!-- 좋아요 개수 표기 -->
						<div class="mainContentLikeCount">
							<div class="ml-3">
								<b>좋아요 10개</b>
							</div>
						</div>
						<!-- 게시글 -->
						<div class="ml-3">
							<b>${post.userName }</b> 
							<span>${post.content }</span>
						</div>
						<!-- 댓글 -->
						<div>
							<div class="mainContentComment d-flex align-items-end mb-2">
								<b class="text-secondary ml-3">댓글</b>
							</div>
							<div class="ml-3">
								<b>pro</b> 너무 이뻐요!
							</div>
							<div class="ml-3">
								<b>kim</b> 봄 느낌 물씬!!
							</div>
						</div>
						<!-- 댓글 달기 -->
						<hr class="mt-3">
						<div class="mainContentWriteComment d-flex">
							<input type="text" class="form-control border-0" placeholder="댓글 달기...">
							<button type="button" class="btn btn-link"><b class="text-info">게시</b></button>
						</div>
					</div>
					</c:forEach>				
				</div>
				
				<div class="ml-4">
					<!-- 로그인 대상 -->
					<div class="mainContentLoginInfo">
						
						<div class="ml-3">
							<span class="display-3"><i class="bi bi-person-circle"></i></span>
							<b class="ml-4">${userName }</b>
						</div>
						
						<div class="ml-3 mt-5">
							<b class="text-secondary">회원님을 위한 추천</b>
						</div>
						<div class="mt-4">
							<div class="d-flex justify-content-between align-items-center ml-3 mr-3">
								<div class="d-flex align-items-center">
									<h2><i class="bi bi-person-circle"></i></h2>
									<b class="ml-4">pro</b>
								</div>
								<a href="#"><b class="text-primary">팔로우</b></a>
							</div>
							<div class="d-flex justify-content-between align-items-center ml-3 mr-3">
								<div class="d-flex align-items-center">
									<h2><i class="bi bi-person-circle"></i></h2>
									<b class="ml-4">user1</b>
								</div>
								<a href="#"><b class="text-primary">팔로우</b></a>
							</div>
							<div class="d-flex justify-content-between align-items-center ml-3 mr-3">
								<div class="d-flex align-items-center">
									<h2><i class="bi bi-person-circle"></i></h2>
									<b class="ml-4">user2</b>
								</div>
								<a href="#"><b class="text-primary">팔로우</b></a>
							</div>
							<div class="d-flex justify-content-between align-items-center ml-3 mr-3">
								<div class="d-flex align-items-center">
									<h2><i class="bi bi-person-circle"></i></h2>
									<b class="ml-4">user3</b>
								</div>
								<a href="#"><b class="text-primary">팔로우</b></a>
							</div>
							<div class="d-flex justify-content-between align-items-center ml-3 mr-3">
								<div class="d-flex align-items-center">
									<h2><i class="bi bi-person-circle"></i></h2>
									<b class="ml-4">user4</b>
								</div>
								<a href="#"><b class="text-primary">팔로우</b></a>
							</div>
						</div>
					</div>
					<!-- footer -->
					<div class="mainContentFooter mt-5">
						<c:import url="/WEB-INF/jsp/include/footer.jsp" />
					</div>
				</div>
			</div>
		</div>
		
	
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#profileClick").on("click", function() {
				$("#userOptions").show();
			});
			
			$("#profileClick").on("click", function() {
				$("#userOptions").hide();
			});
		});
	</script>

</body>
</html>