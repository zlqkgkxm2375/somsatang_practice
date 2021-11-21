<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ include file="./jsp_header.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>유저 등록 완료 화면</title>
<link rel="stylesheet" type="text/css" href="resources/css/loginsty.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>

<body>
<div class="login-page">
         <div class="login-main-text">
            <h2>Company25<br>Emp Registration</h2>
            <p>welcome to company25</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form3" >
              
              

                  <form>
                             <center><font size='5'><b> 유저 등록 정보 </b></font> <br> 
                     <font color="red">${message}</font>
                     <table border='1' width='600' cellpadding='0' cellspacing='0'>
                  <div class="form-group">
          
                     
                     
                     <tr height="40px">
                     <td><label>User ID</label><br></td>
					<td>	${emp.eid}</td>
					</tr>
                  </div>
                 
                  <div class="form-group">
                     <tr height="40px">
                    <td> <label>Password</label></td>
                     
                  	<td>****</td>
                  	</tr>
                  </div>

   				 <div class="form-group">
   				  <tr height="40px">
                      <td> <label>Name</label></td>
					 <td> ${emp.ename}  </td>
					</tr>          
                  </div>

               
                  
                   <div class="form-group">
                    <tr height="40px">
                     <td>  <label>User Phone</label></td>
                	  <td>  ${emp.ephone}</td>
                	  </tr>
                  </div>
                  
                          <div class="form-group">
                           <tr height="40px">
                      <td> <label>User E - Mail</label></td>
                      	 <td>  ${emp.eemail}</td>
                      	 </tr>
                  </div>
                   </table>
                  <a href="/pany/company25?eid=${eid}" class="btn btn-black">돌아가기</a>
                   </form>

            </div>
         </div>
      </div>

</body>
</html>