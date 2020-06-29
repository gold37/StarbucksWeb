<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String ctxPath = request.getContextPath();
	// ctxPath = /StarbucksWeb
%>

<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../header.jsp" />

<style type="text/css">
	
	/* 전체 틀 */
	
	body {
		font-family: Arial, "MS Trebuchet", sans-serif;
		margin: 0;
	}
	
	/* * {
		margin: 20 0 0 0px;
	} */

	div#container { 
		width: 100%;
	}
	
	div#middle {
		width: 78%;
		margin: 0 auto;
	}
	
	ul#feed {
		list-style-type: none;
	}
	
	a {
		color: #4d4d4d;
		text-decoration: none;
	}
	
	.radio input {
		vertical-align: text-bottom;
	}
	
	input {
		border: solid 1px #ccc;
		border-radius: 3px;
		height: 23px;
	}
	
	.radio label {
		vertical-align:-1px
	}
	
	select {
		border: solid 1px #ccc;
		border-radius: 3px;
		height: 27px;
	}

	/* 상단(제목) */
	div#top {
		width: 100%;
		height: 180px;
		background-image: url("/StarbucksWeb/images/hyejeong/ms_sub_ttl_bg.jpg");
	}
	
	/* 상단링크 */
	
	div#link {
		margin-right: 210px;
		text-align: right;
		font-size: 10pt;
	}

	/* 텍스트박스 */
	
	div#text {
		height: 200px;
		margin-top: 40px;
		margin-bottom: 20px;
		padding: 20px;
		border-radius: 3px;
		background: url("/StarbucksWeb/images/hyejeong/m_voc_top_bg.png") right no-repeat ;
		background-color: #f4f4f2;
		
		text-align: left;
	}
	
	p {
		margin: 0;
		font-size: 10pt;
	}
	
	div#text>button {
		margin-top: 10px;
		padding: 5px;
	}
	
	button#viewMyComplain{
		background: #e2c383;
		border: 1px solid #bb9f65;
		border-radius: 3px;
		color: #222;
		font-size: 12px;
		font-weight: bold;
		height: 28px;
		width: 131px;
	}
	
	/* 테이블 */
	
	table.type05 {
		width: 100%;
	    border-collapse: separate;
	    border-spacing: 1px;
	    text-align: left;
	    line-height: 1.5;
	    border-top: 1px solid #ccc;
	    margin: 5px 0;
	}
	
	table.type05 th {
	    width: 20%;
	    padding: 10px;
	    font-weight: bold;
	    vertical-align: middle;
	    border-bottom: 1px solid #ccc;
	    background: #f2f2f2;
	}
	
	table.type05 td {
	    width: 80%;
	    padding: 10px;
	    vertical-align: top;
	    border-bottom: 1px solid #ccc;
	}
	
	.form-control-tel {
		width: 70px;
	}
	
	/* 텍스트박스2 */
	
	div#text2 {
		margin-top: 30px;
		border: solid 1px #ccc;
		border-radius: 3px;
		padding: 15px;
	}
	
	div#text2>ul#feed {
		padding-left: 25px;
		list-style-type: disc;
		color: gray;
		font-size: 10pt;
		
	}
	
	input[id="calendar"] + label {
		display: inline-block;
		margin-top: 10px;
		cursor: pointer; 
		width: 14px; 
		height: 14px;
		background: url('/StarbucksWeb/images/hyejeong/icon_calendar.gif') center no-repeat;
		margin-left: -6px;
	}

	
	input[id="calendar"] {
		 display: none; 
	}
	
	label#calendar {
		border-bottom: solid 1px #ccc;
		border-right: solid 1px #ccc;
		border-top: solid 1px #ccc;
		border-radius: 3px;
		padding: 5.5px;
		padding-left: 8px;
		padding-right: 8px;
	}
	
	.search label {
		vertical-align: bottom;
	}
	

	/* 제목 */
	input.subject {
		width: 513px;
	}
	
	/* 내용 */
	textarea {
		border: solid 1px #ccc;
		border-radius: 3px;
		height: 173px;
		padding: 5px;
		width: 507px;
		resize: none;
	}
	
	li.file {
		font-size: 10pt;
	}
	
	input#file {
		width: 402px;
		height: 26px;
	}
	
	div.button {
		display: inline-block;
		width: 62px;
		height: 28px;
		background: #777;
	    border: none;
	    border-radius: 3px;
	    color: #fff;
	    cursor: pointer;
	    font-size: 10pt;
	    text-align: center;
	    vertical-align: middle;
	    line-height: 2;
	    margin-left: 9px;
	}
	
	div.plus {
		background: url("/StarbucksWeb/images/hyejeong/file_add.gif") no-repeat;
		border: 1px solid #ddd;
	    border-radius: 3px;
	    float: right;
	    margin-right: 482px;
	    height: 26px;
	    margin-left: 10px;
	    margin-top: 1px;
	    overflow: hidden;
	   /*  text-indent: -20000px; */
	    width: 26px;
	}

	
	/* 글쓰기 버튼 */
	
	input#btnWrite {
		margin-top: 15px;
		margin-right: 5px;
		font-size: 12px;
		font-weight: bold;
		background: #e2c383;
		border: 1px solid #bb9f65;
		color: #222;
		height: 28px;
		width: 141px;
	
	/* pagination */
	
	.pagination>li>a {
		border: none;
		color: gray;
	}
	
	.pagination>.active>a,
	.pagination>.active>a:focus, 
	.pagination>.active>a:hover, 
	.pagination>.active>span, 
	.pagination>.active>span:focus, 
	.pagination>.active>span:hover
	 {
		background-color: white;
		border: none;
		color: green;
		text-decoration: underline;
		cursor: pointer;
	}

</style>

<script type="text/javascript">


	window.onload = function() {
		
		$("#loginBtn").click(function(){
			goLogin(); // 로그인 시도한다.
		});
		
		$("#loginPwd").keydown(function(){
			if(event.keyCode == 13) { // 암호입력란에 엔터를 했을 경우
				goLogin(); // 로그인 시도한다.
			}
			
		});

		// === 로컬스토리지(localStorage)에 저장된 userid 값을 불러와서 input 태그 userid에 넣어주기 === //
		
		/* var loginUserid = localStorage.getItem('saveid');
		
		if( loginUserid != null) {
			$("#loginUserid").val(loginUserid);
			$("input:checkbox[id=storage]").prop("checked",true);
		} */
		
		localStorage.removeItem('saveid');
		
		$("#label").click(function(){
			
			var isChecked = $("#storage").is(":checked");
		//	alert(isChecked); // 1.false // 3.true
			
			if(isChecked==true) {
			   $("#storage").attr("checked",false); 
		//	   alert($("#storage").is(":checked")); // 4.false
			   localStorage.removeItem('saveid');
			}
			else {
				$("#storage").attr("checked",true);
		//		alert($("#storage").is(":checked")); // 2. true
				localStorage.setItem('saveid', $("#loginUserid").val());
			}
		});
		
	}
	

	/* === 로그인 처리 함수 === */
	function goLogin() {
		
	//	alert("확인용 로그인 처리");
	
		var loginUserid = $("#loginUserid").val().trim();
		var loginPwd = $("#loginPwd").val().trim();
		
		if(loginUserid == "") {
			alert("아이디를 입력해 주세요.");
			$("#loginUserid").val("");
			$("#loginUserid").focus();
			return; // goLogin() 함수 종료.
		}
		
		
		if(loginPwd == "") {
			alert("비밀번호를 입력해 주세요.");
			$("#loginPwd").val("");
			$("#loginPwd").focus();
			return; // goLogin() 함수 종료.
		}

		/* // === 로컬 스토리지(localStorage)에 userid 값 저장시키기 === //
		if( $("input:checkbox[id=storage]").prop("checked") ) {
		//	alert("아이디저장 체크를 하셨네요");
			
			localStorage.setItem('saveid', $("#loginUserid").val());
		}
		else {
		//	alert("아이디저장 체크를 안 하셨네요");
			localStorage.removeItem('saveid');
		} */

		var frm = document.loginFrm;
		frm.method = "POST";
		frm.action = "<%= request.getContextPath()%>/login/login.sb";
		frm.submit();
		
	}// end of function goLogin()-----------------------------


	
</script>


<div id="container" style="margin: 0 auto;">
	<div id="top">
	<h1 style="margin:0; margin-left:160px; padding-top:100px; color: white;">고객의 소리</h1>
	<div id="link">
		<ul id="feed" >
		    <li>
			  	<a href="" class="btnMain"><img src="/StarbucksWeb/images/hyejeong/icon_home_w.png" alt="홈으로"></a>&nbsp;<span style="color: white;">></span>&nbsp;<a href="" class="btnComplain" style="color: white;">고객의소리</a>
		    </li>
		</ul>
	</div>
	</div>
	<div id="middle">
	<div id="text">
		<h3>귀한 말씀 들려 주십시오.작은 소리도 듣겠습니다.</h3>
		<p>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.</p>
		<p>만족스러운 서비스였는지,불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다.보다 나은 서비스로 보답하겠습니다.</p>
		<p>　</p>
		<p>· 고객의 소리 운영시간 : 월~일 09:00 ~ 18:00 (연중무휴)</p>
		<br/>
		<button id="viewMyComplain">나의 문의 내역 보기</button>
	</div>
		<p style="text-align:right; font-size: 8pt;"><span style="color: red;">*</span>표시 항목은 필수 입력 사항입니다.</p>
	<table class="type05" style="border-top: solid 1px black;">
	    <tr>
	        <th scope="row">분야 <span style="color: red;">*</span></th>
	        <td>
				<form>
			    <div class="radio">
			      <label><input type="radio" id="section" name="section" value="1" checked> 문의 </label><label><input type="radio" id="section" name="section" value="2" > 칭찬 </label><label><input type="radio" id="section" name="section" value="3"> 제안 </label><label><input type="radio" id="section" name="section" value="4" > 불만 </label>
			    </div>
			    </form>
			</td>
	    </tr>
	    <tr>
	        <th scope="row">연락처</th>
	        <td>
				<select class="form-control-tel" id="sel1">
			      	<option>010</option>
			        <option>011</option>
			        <option>016</option>
			        <option>017</option>
			        <option>018</option>
			        <option>019</option>
			    </select> - <input class="form-control-tel" type="text" maxlength="4" /> - <input class="form-control-tel" type="text" maxlength="4" />
			</td>
	    </tr>
	    <tr>
	        <th scope="row">장소 <span style="color: red;">*</span></th>
	        <td>
	        	<div class="radio">
      				<label><input type="radio" name="optradio" checked> 매장 방문 </label><label><input type="radio" name="optradio"> 매장 방문 외 </label>
    			</div>
    			<div class="search">
		        	&nbsp;방문매장&nbsp;<button id="searchChain" style="width: 64px; height:28px; margin:5px 3px; margin-bottom:6px; background-color: #666; color: white; border-radius: 3px; font-size: 12px; font-weight: bold;">매장찾기</button><br/>
		        	&nbsp;방문일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="calendar"><input type="text"> <input id="calendar" type="date"><label id="calendar" for="calendar"></label></span>
				</div>
			</td>
	    </tr>
	    <tr>
	        <th scope="row">제목 <span style="color: red;">*</span></th>
	        <td>
	        	<input type="text" class="subject" maxlength="50">
			</td>
	    </tr>
	    <tr>
	        <th scope="row">내용 <span style="color: red;">*</span></th>
	        <td>
	        	<textarea placeholder="관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보 보안, 불충분한 증거/ 귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다."></textarea>
			</td>
	    </tr>
	    <tr>
	        <th scope="row">파일첨부</th>
	        <td id="file" style="height: 120px;">
	        	<input type="text" id="file" maxlength="50"><input id="addfile" type="file" style="display:none" /><div class="button" onclick="onclick=document.all.file.click()">찾아보기</div><div class="plus" onclick="onclick=document.all.fileAdd.click()"></div>
	        	<ul  id="feed" style="padding-left:18px; list-style: disc; color: #444; line-height: 16px;">
  					<li class="file">
  						파일첨부는 아래의 파일만 등록이 가능하며 최대 2개(1개당 최대5MB), 총 10MB까지 등록이 가능합니다.<br/>
  						(등록 가능 확장자 : jpg, jpeg, png, gif)
  					</li>
  				</ul>	
	        </td>
	    </tr>
	</table>
  <div id="text2">
  	<ul id="feed">
  		<li>전화 상담 요청은 불가하오니 양해 부탁 드립니다.</li>
  		<li>고객이 동의한 개인정보처리방침에 따라 고객의 소리 민원 처리를 위해 작성자의 개인정보를 활용할 수 있습니다.</li>
  		<li>답변글을 통해 상담이 진행되며, 기재 오류 및 계정문제가 발생한 경우에는 답변이 불가할 수 있습니다.</li>
  		<li>관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 
  			업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 
  			점 양지하여 주시기 바랍니다.</li>
  		<li>공정거래위원회에서 고시한 소비자분쟁해결기준에 의거 소비자 피해에 대한 교환/환불 처리 해드립니다.</li>
  	</ul>
  </div>	
  <div id="writeBtn" style="text-align: right;">
	<ul id="feed">
		<li>
			<input type="button" id="btnWrite" value="고객의 소리 등록하기" />
		</li>
	</ul>
  </div>
  </div>
</div>



<jsp:include page="../footer.jsp" />