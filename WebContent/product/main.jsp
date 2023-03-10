<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="main.jsp">
<title>HS STATIONERY</title>
<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
<link href="${context}/css/vegas.min.css" rel="stylesheet">

<script src="${context}/js/bootstrap.min.js"></script>
<script src="${context}/js/jquery-1.9.1.js"></script>
<script src="${context}/js/common.js"></script>


</head>

<c:set var="loginUrl">${context}/user/login.jsp</c:set>

<c:set var="officeUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="penUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[1].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="binderUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[2].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="designUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[3].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="storageUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[4].PRODUCT_CATEGORY_CD}</c:set>

<c:set var="productManageUrl">${context}/work/product/retrieveProductListForManage.do</c:set>
<c:set var="statisticsForProductUrl">${context}/work/sell/retrieveStatisticsForProduct.do</c:set>
<c:set var="statisticsForStockUrl">${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=P</c:set>

<script type="text/javascript">
$(function(){
	$(".mainveg").vegas({
		delay : 3000,
	    slides: [
	        {   src: '/mainveg/main_s1.jpg' },
	        {   src: '/mainveg/main_s2.jpg' },
	        {   src: '/mainveg/main_s3.jpg' },
	        {   src: '/mainveg/main_s4.jpg' },
	        {   src: '/mainveg/main_s5.jpg' }
	    ]
	})
});

$(document).ready(function() {
    /* 1 */
    $(window).scroll( function(){
        /* 2 */
        $('.hideimg').each( function(i){
            var bottom_of_object = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            /* 3 */
            if( bottom_of_window > bottom_of_object/2 ){
                $(this).animate({'opacity':'1'},2000);
            }
        }); 
    });
});

	
</script>
<body>
<jsp:include page="../common/top.jsp"></jsp:include>
	<c:if test="${sessionScope.grade != 'A'}">
			
      <div class="mainveg" style="height: 700px;">
    		<!-- vegas -->
      </div>
		
		<div class="container" style="background-color:#ffffff; height:200px">
			<p>????????? ????????? ???????????? ????????? ??? ?????? ????????? ???????????? ?????????. ????????? ????????? ???????????? ????????? ????????????. ???????????? ????????? ????????? ???????????? ???, ???????????? ????????? ?????? ?????? ???. AROMA FRAGANCIA??? ?????? ?????? ???????????? ???????????? ?????? ?????????????????? ?????????.
				AROMA FRAGANCIA??? ?????? ????????? ???????????? ????????? ?????? ????????? ?????? ????????? ?????? ????????? ???????????????. ????????? ?????? ????????? ????????? ??? ????????? ????????? ???????????? ?????? ????????? ????????? ???????????? ???????????????. ???????????? ????????? ????????? ????????? ?????? ????????? ?????? ?????? ???????????? ????????? 				????????? ????????? ?????? ????????? ????????? ?????? ????????? ??????????????????.</p>
		</div>
	 
	 	<div class="story">
			<h4> Story of <strong>AROMA FRAGANCIA</strong></h4>
		        <div class="storyproduct">
		            <div>
		                <li>
		                    <img src="/storyimg/story1.jpg" alt="story1" class="hideimg" style="margin:0px;">
		                    <h3>????????? 1 ?????????</h3>
		                <li>
		            </div> 
		            <div>
		                <li>
		                <img src="/storyimg/story2.jpg" class="hideimg" alt="story2">
		                  <h3>????????? 2 ?????????</h3>
		                </li>
		            </div> 
		            <div>
		                <li>
		                    <img src="/storyimg/story3.jpg" class="hideimg" alt="story3" >
		                    <h3>????????? 3 ?????????</h3>
		                </li>
		            </div> 
		        </div>
			</div>
		
		<div class="container" style="background-color:#ffffff; height:200px">
			<p>????????? ????????? ???????????? ????????? ??? ?????? ????????? ???????????? ?????????. ????????? ????????? ???????????? ????????? ????????????. ???????????? ????????? ????????? ???????????? ???, ???????????? ????????? ?????? ?????? ???. AROMA FRAGANCIA??? ?????? ?????? ???????????? ???????????? ?????? ?????????????????? ?????????.
				AROMA FRAGANCIA??? ?????? ????????? ???????????? ????????? ?????? ????????? ?????? ????????? ?????? ????????? ???????????????. ????????? ?????? ????????? ????????? ??? ????????? ????????? ???????????? ?????? ????????? ????????? ???????????? ???????????????. ???????????? ????????? ????????? ????????? ?????? ????????? ?????? ?????? ???????????? ????????? 				????????? ????????? ?????? ????????? ????????? ?????? ????????? ??????????????????.</p>
		</div>
			
		<div class="maincolor" style="background-color: rgb(225, 225, 227); height:1200px">
			<h4> Fill Your Color</h4>
		        <div class="colorproduct">
		            <div>
		                <li>
		                    <img src="/maincolor/color1.jpg" class="hideimg" alt="color1">
		                <li>
		            </div> 
		            <div>
		                <li>
		                	<img src="/maincolor/color2.jpg" class="hideimg" alt="color2">
		                </li>
		            </div> 
		            <div>
		                <li>
		                    <img src="/maincolor/color3.jpg" class="hideimg" alt="color3">
		                </li>
		            </div> 
		            <div>
		                <li>
		                    <img src="/maincolor/color4.jpg" class="hideimg" alt="color4">
		                </li>
		            </div> 
	            </div> 
		        <div class="colorproduct">
		            <div>
		                <li>
		                    <img src="/maincolor/color5.jpg" class="hideimg" alt="color5">
		                </li>
		            </div> 
		            <div>
		                <li>
		                    <img src="/maincolor/color6.jpg" class="hideimg" alt="color6">
		                </li>
		            </div> 
		            <div>
		                <li>
		                    <img src="/maincolor/color7.jpg" class="hideimg" alt="color7">
		                </li>
		            </div> 
		            <div>
		                <li>
		                    <img src="/maincolor/color8.jpg" class="hideimg" alt="color8">
		                </li>
		            </div> 
		        </div>
		        
		        
		        <input type="button" value="??????????????? ?????? ?????? ???" class="probtn">

		</div>

		<div class="container" style="background-color:#ffffff; height:200px">
			<p>6?????? ????????? ???????????????</p>
		</div>
		
		<div class="container" style="background-color:#ffffff; height:200px">
			<p>??????????????? ??? ?????? ???????????????</p>
		</div>
		
	</c:if>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- ????????? ????????? -->
		<c:if test="${sessionScope.grade == 'A'}">
		<div class="container" style="margin-top: 10%; margin-bottom: 10%">
			<div class="row">
				<div class="col-md-4">
				    <a href="${productManageUrl}" class="btn btn-primary" style="width: 100%; height: 250px;" role="button">
						<h1><span class="glyphicon glyphicon-list-alt" style="font-size: 80px; margin-top: 5%;"></span> <br/>????????????</h1>
					</a>
				</div>
				<div class="col-md-4">
				    <a href="${statisticsForProductUrl}" class="btn btn-danger" style="width: 100%; height: 250px;" role="button">
						<h1><span class="glyphicon glyphicon-signal" style="font-size: 80px; margin-top: 5%;"></span> <br/>????????????</h1>
				    </a>
				</div>
				<div class="col-md-4">
				    <a href="${statisticsForStockUrl}" class="btn btn-info" style="width: 100%; height: 250px;" role="button">
						<h1><span class="glyphicon glyphicon-eye-open" style="font-size: 80px; margin-top: 5%;"></span> <br/>????????????</h1>
	    		    </a>
				</div>
			</div>
		</div>
		</c:if>

	<jsp:include page="../common/foot.jsp"></jsp:include>
	
		    <!-- ????????? ?????? -->
<script type="text/javascript" src="${context}/js/vegas.min.js"></script>

</body>
</html>