<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reboot</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>

.sidebar {
  background-color: #4169E1;
  height: 100%;
  width: 65px;
  position: fixed;
  top: auto;
  left: auto;
  overflow-x: hidden;
  padding-top: 20px;
  border-right: 4px solid white;
}

.sidebar ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.sidebar ul li a {
  display: flex;
  align-items: center;
  color: black;
  padding: 5px 5px;
  text-decoration: none;
  flex-direction : column;
  margin: 5px 5px;
  background-color: orange;
  border-radius: 5px;
}

.sidebar ul li a img {
  width: 16px;
  height: 16px;
  margin-right: 3px;
}

.sidebar ul li a:hover {
  background-color: blue;
  color: white;
}
.sidebar ul li a:active {
  background-color: silver;
  color: white;
}

.sidebar-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 16px;
  background-color: #f2f2f2;
  text-align: center;
  border-bottom: 5px solid white;
}

.sidebar-header h1 {
  font-size: 20px;
  margin: 0;
}

/* 사이드바 2 스타일링 */
.sidebar2 {
  background-color: #E57733;
  height: 100%;
  width: 200px;
  position: fixed;
  top: 95px;
  left:64px;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidebar2 ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.sidebar2 ul li a {
  display: block;
  color: white;
  padding: 8px 16px;
  text-decoration: none;
}


.sidebar2 ul li a:hover {
  background-color: #555;
  color: white;
}
.sidebar2 ul li a:active {
  background-color: gray;
  color: white;
}
.sidebar2 a:active {
  background-color: black;
  color: white;
}
.sidebar2-header {
  height: 100%;
  width: 200px;
  position: fixed;
  top: 0;
  left:64px;
  overflow-x: hidden;
  padding-top: 20px;
  border-bottom: 4px solid white;
 }
 
.sidebar2-header img {
  width: 200px;
  height: 70px;
  margin: 0 auto;
  padding:0;
  margin-right: 8px;
}
.center-header{
  display:block;
  width: 300px;
  height: 60px;
  font-size: 20px;
  margin: 30px 280px;
  text-align: center;
  background-color: #4169E1;
  padding-top: 20px;
  border-radius: 5px;
}
.center-header a:hover {
  color: white;
}
.center-header a{
  color:white;
}

.board {
 background-color: skyblue;
  height: 100%;
  width:100%;
  position: fixed;
  float:right;
  top: 10%;
  left: 14%;
  overflow-x: hidden;
  padding-top: 20px;
  border-right: 4px solid white;
}

/*.board button {
  position: fixed;
  width:100px;
  height:40px;
  right:400px;
  bottom:60px;   
  color:white;
  border-radius: 5px;
} */
table{
 border-color: skyblue;
}
</style>
</head>
<body>
	<div class="sidebar">
		<ul>
			<li>
				<a href="../rebootServlet/myPage.do">
					<img src="http://localhost:8081/reboot/Reboot/img/user.png" alt="메뉴 1">
					<span style="font-size: 9pt;">프로필</span>
				</a>
            </li> 
            <li>
              <a href="../JOTP/otp.do">
                   <img src="http://localhost:8081/reboot/Reboot/img/Attendance.png" alt="메뉴 2">
                   <span style="font-size: 3pt;">근태기록</span>
              </a>
            </li>
            <li>
              <a href="#" onclick="handleSidebar1click(2)">
                <img src="http://localhost:8081/reboot/Reboot/img/Approval.png" alt="메뉴 3">
                <span style="font-size:3pt;">전자결재</span>
           </a>
            </li>
            <li>
              <a href="#">
                <img src="http://localhost:8081/reboot/Reboot/img/organization.png" alt="메뉴 4">
                <span style="font-size: 9pt;">조직도</span>
              </a>
            </li>
            <li>
              <a href="../rebootServlet/accountList.do">
                <img src="http://localhost:8081/reboot/Reboot/img/Edit.png" alt="메뉴 4">
                <span style="font-size: 3pt;">계정관리</span>
              </a>
            </li>
            <li>
              <a href="../rebootServlet/logout.do">
                <img src="http://localhost:8081/reboot/Reboot/img/logout.png" alt="메뉴 5">
                <span style="font-size: 3pt;">로그아웃</span>
              </a>
            </li>
       </ul>
     </div>
     <!-- 사이드바헤드 이미지 -->
     <div class="sidebar2-header">
        <a href="#">
          <img style="button" src="http://localhost:8081/reboot/Reboot/img/RebootLogo.png" alt="로고 이미지" >
        </a>
    </div>
     <!-- 사이드바 2 -->
   <div class="sidebar2">
        <ul>
          <li><a href="#" class="menu-item">계정 관리</a></li>
          <li><a href="#" class="menu-item">계정 개별 생성</a></li>
          <li><a href="#" class="menu-item">계정 대량 생성</a></li>
        </ul>
   </div>
   <!-- 로그인정보 -->
     <div class="center-header">
        <h2><a href="#" onclick="handleSidebar1click(4)">계정 관리</a></h2>
     </div>
     
     <!-- 가운데 -->
     <div class="board">
   		<form action="../account/pleaseinsert.do" method="post" name="insertForm" enctype="multipart/form-data">
		<table border="1" width="300">
		<tr>
			<td>
				부서명 : 
				<!--  <input type="text" name="deptn" /> -->
				<select name="deptn">
				  <option value= 0>시스템팀</option>
				  <option value= 1>인사팀</option>
				  <option value= 2>업무팀</option>
				</select>
				<p></p>
				
				사번 : 
				<input type="text" name="id" />
				<p></p>
				이름 : 
				<input type="text" name="name" />
				<p></p>
				직급 : 
				<input type="text" name="grade" />
				<p></p>
				입사일 : 
				<input type="date" name="in_d" />
				<p></p>
				잔여 연차 개수:
				<input type="text" name="off_d" />
				<p></p>
				<button type="submit">계정생성</button>
			</td>
		</tr>
		</table>
	</form>
     </div>
   <script>
	if(form.attachedFile.value==""){
		alert("첨부파일은 필수입니다.");
		return false;
	}
}
  
  
</script>
</body>
</html>