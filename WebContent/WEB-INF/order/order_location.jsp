<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style type="text/css">

		nav#sub_nav {
		    display: flex;
		    justify-content: flex-end;
		    width: 50%;
		    margin: 30px auto;
		}
		
		ul.order_progress li {
		    display: table-cell;
		    vertical-align: middle;
		    height: 50px;
		    min-width: 80px;
		    background-color: white;
		    color:black;
		    border: 1px solid lightgrey;
		    margin: 0;
		    text-align: center;
		}
		
		ul.order_progress {
		    display: table;
		    margin: 0 auto;
		    padding-inline-start: 0px;
		}
		
		/* 매장 검색 */
		section {
		    margin: 30px auto;
		    width: 100%;
		    height: auto;
		    padding-bottom: 3rem;
		}
		
		#map_container {
		    display: flex;
		    width: 50vw;
		    height: 60vh;
		    margin: 50px auto;
		    border: 1px solid rgb(21, 21, 44);
		}
		
		#search_section {
		    flex: 1;
		    display: flex;
		    flex-direction: column;
		}
		
		#map {
		    flex: 1;
		}
		
		.store_info {
			border: none;
			width: 200px;
			height: 120px;
			
		}
		
		.store_info_header {
			width: 100%;
			height: 20%;
			background-color: #8c8279;
			color: white;
			padding: 5px;
			box-sizing: border-box;
		}
		
		.store_info_body {
			box-sizing: border-box;
			padding: 5px;
		}
		
		.select_btn {
			background-color: #222;
			color: white;
			display: inline-block;
			border-radius: 5px;
			padding: 5px;
			margin: 0 10px 0 0;
		}
		
		.select_btn:hover {
			text-decoration: underline;
			cursor: pointer;
		}
		
		#selected_store_container {
			margin: auto 0;
			font-size: 20pt;
			display: none;
		}
		
		
		/* 페이지 이동 버튼 */
		
		.move_button {
		    width: 100px;
		    height: 50px;
		    margin: 0 5px 0 5px;
		    background-color: #f4f4f2;
		    border: none;
		    border-radius: 3px;
		    box-shadow: 1px 1px 1px 0 #b6b6b65a, 0 1px 1px 0 rgba(155, 155, 155, 0.337);
		}
		
		button#next {
		    background-color: #006633;
		    color: #fff;
		}
		
		/* section 끝 */
		
		#snackbar {
		    visibility: hidden;
		    min-width: 250px;
		    margin-left: -125px;
		    background-color: #006633;
		    color: #fff;
		    text-align: center;
		    border-radius: 2px;
		    padding: 16px;
		    position: fixed;
		    z-index: 1;
		    left: 50%;
		    bottom: 50px;
		    font-size: 17px;
		}
					
    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b7fa563027be4561a627edb8c3c2821f"></script>
    <script type="text/javascript" src="/StarbucksWeb/js/order_location.js"></script>
    <title>스타벅스 코리아</title>
</head>
    
	<jsp:include page="../header.jsp" />   
    
	<jsp:include page="progress_nav.jsp" />
	
        <div id="map_container" align="center">
	        <div id="map"></div>
        </div>
        <div style="height: 10vh" align="center">
        	<div id="selected_store_container">
        		<label>선택된 매장 : </label><span id="selected_store_name"></span>
        	</div>
        </div>
        <form name="loc_form"><input id="store_id" name="store_id" type="hidden" /></form>
        <div align="center">
            <button type="button" class="move_button" onclick="history.back()">뒤로</button>
            <button type="button" class="move_button" id="next" onclick="checkout()">다음</button>
        </div>
    </section>
   
    <jsp:include page="../footer.jsp" />   
