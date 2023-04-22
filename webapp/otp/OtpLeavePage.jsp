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
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

.board button {
  position: fixed;
  width:100px;
  height:40px;
  right:400px;
  bottom:60px;   
  color:white;
  border-radius: 5px;
}
table{
 border-color: skyblue;
}

/* otp 관련 css*/
.container{ /*합칠때 문제생기면 삭제*/
		width : 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh; /*화면크기에 상관없이 가운데 배치 문제있을시 삭제*/
	}
	form{
		display : block;
		width : 500px;
		border: 2px solid black;
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
           <br>
          <li><a href="../JOTP/otp.do?id=${dto.id}" class="menu-item">출근</a></li>
          <li><a href="../JOTP/otpleave.do?id=${dto.id}" class="menu-item">퇴근</a></li>
        </ul>
   </div>
   <!-- 로그인정보 -->
     <div class="center-header">
        <h2><a href="#" onclick="handleSidebar1click(4)">메인페이지</a></h2>
     </div>
     
     <!-- 가운데 -->
     <div class="board">
     	<div class="container">
	   <form action="<%=request.getContextPath() %>/JOTP/OTPTestResult.ok" method="get">
		  <h2 style="margin:10px;">퇴근</h2>
	      <table border="1" width="100%" class="login">
	         <tr>
	            <td style="font-weight:bold;">키 인증 번호 : </td>
	            <td>
	               <input type="text" class="form-control" name="encodedKey" value="${encodedKey}" readonly="readonly"/>
	            </td> 
	         </tr>
	         <tr >
	            <td style="font-weight:bold;">바코드 주소 : </td>
	            <td>
	               <input type="text" class="form-control" value="${qrUrl}" readonly="readonly"/>
	            </td> 
	         </tr>
	         <tr >
	            <td style="font-weight:bold;">코드 입력창 : </td>
	            <td>
	               <input type="text" class="form-control" id="code" name="code" placeholder="코드를 입력해주세요."/>
	            </td> 
	         </tr>
	      </table>
	      <input type="submit" class="btn btn-lg btn-dark" value="퇴근" style="margin:10px;">
	   </form> 
   </div>
 
     </div>

</body>
<script type="text/javascript">
$(function(){
	var errorMsg = "${errorMsg}";
		if(errorMsg != ""){
		alert(errorMsg); 
	}
});

function frmCheck() {
	if ($("#code").val() == "") {
		alert("코드를 입력해주세요.");
		$("#code").focus();
		return false;
	}
}
</script>
</html>