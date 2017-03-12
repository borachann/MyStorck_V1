<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">

<link rel="shortcut icon" href="images/favicon_1.ico">

<title>KOSIGN WeCafe...</title>
<style>
a { 
	cursor: pointer;
}
.hidetable {
	display: none;
}

</style>


<!-- Base Css Files -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />

<!-- Font Icons -->
<link
	href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/ionicon/css/ionicons.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/material-design-iconic-font.min.css"
	rel="stylesheet">

<!-- animate css -->
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet" />

<!-- Waves-effect -->
<link
	href="${pageContext.request.contextPath}/resources/css/waves-effect.css"
	rel="stylesheet">

<!-- sweet alerts -->
<link
	href="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.css"
	rel="stylesheet">

<!-- Custom Files -->
<link href="${pageContext.request.contextPath}/resources/css/helper.css" rel="stylesheet" type="text/css" />
	
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/resources/css/customize.css" rel="stylesheet" type="text/css" />
	


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<script src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>

<style>
@media print {
	.content-page {
		margin-top: 0px;
		margin-left: 0px;
	}
	.content {
		margin-top: 0px;
		margin-bottom: 0px;
	}
}
</style>
</head>



<body class="fixed-left-void">

	<!-- Begin page -->
	<div id="wrapper">

		<!-- Top Bar Start -->
		<%@ include file="topbar.jsp"%>
		<!-- Top Bar End -->


		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="left_sidebar.jsp"%>
		<!-- Left Sidebar End -->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<!-- <div class="panel-heading">
                                    <h4>Invoice</h4>
                                </div> -->
								<div class="panel-body">
									<div class="clearfix">
										<div class="pull-left">
											<h2 class="text-right">
												<%-- <img src="${pageContext.request.contextPath}/resources/images/logo_dark.png" alt="velonic"> --%>

												<strong>Import Information</strong> 
												<small id="startfrom"></small>
												<!-- <small>start from</small> <small id="purchasemonth"></small> -->
											</h2>
										</div>
									</div>
<div class="cmxform form-horizontal tasi-form" >
						<div class="form-group ui-widget">
							<label for="productName" class="control-label col-lg-2">Product
								Name *</label>
							<div class="col-lg-4">
								<input class=" form-control" required="required"
									id="productName" name="productName" type="text"> <input
									class="hidetable" id="proID">
							</div>
							<div class="col-lg-4">
								<button type="button" class="btn btn-primary" id="btn_search" data-dismiss="modal">Search</button>
							</div>
						</div>
</div>
									<hr>
									<div class="m-h-50 form-group hidden-print ">
										<div class="col-sm-9 ">
										<spen id="datelable" >
											<label class="col-sm-1 control-label">Date : </label> <input
												type="hidden" id="SEND_DT" data-id="SEND_DT" />
											<div id="sendFrdt" class="date-range col-sm-5">
												<input type="text" readonly="readonly" id="REGS_DATE_S"
													name="startdate" class="range-start"
													style="width: 100px; text-align: center;">&nbsp; <a
													href="#none" id="btnREGS_DATE_S"><img
													style="width: 20px; height: 20px;"
													src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png">
													</a><span id="EDate" class="">&nbsp;~&nbsp;
												<input type="text" readonly="readonly" id="REGS_DATE_E"	name="stopdate" class="range-end" style="width: 100px; text-align: center;">&nbsp; 
												<a href="#none" id="btnREGS_DATE_E"><img style="width: 20px; height: 20px;" src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png"></a>
													</span>
											</div>
										</spen>
										<span id="monthcombo" class="hidetable">
											<select id="selectmonth">
												<option value="0">January</option>
												<option value="1">February</option>
												<option value="2">March</option>
												<option value="3">April</option>
												<option value="4">May</option>
												<option value="5">June</option>
												<option value="6">July</option>
												<option value="7">August</option>
												<option value="8">September</option>
												<option value="9">October</option>
												<option value="10">November</option>
												<option value="11">December</option>
											</select>
										</span>
										<span id="yearcombo">
											<select id="selectyear" class="hidetable">
												<!-- <option value="2014">2014</option>
												<option value="2015">2015</option>
												<option value="2016">2016</option> -->												
											</select>
										</span>
										</div>
										<div class="col-sm-3 form-group">
											<select class="form-control" id="selectreport">
												<!-- <option value="0">Detail</option> -->
												<option value="1">Daily</option>
												<option value="2">Weekly</option>
												<option value="3">Monthly</option>
												<option value="4">Yearly</option>
											</select>
										</div>

									</div>

									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12 overflow-x">
											<div  id="tbldaily">
												<table id="dailytable">
													<thead>
														<tr>
															<th>#</th>
															<th>Supplier</th>
															<th>Date</th>
															<th>Item</th>
															<th>Qty</th>
															<th>Unit Price</th>
															<th>Purchase By</th>
															<th>Purchase Type</th>
															<th>Total</th> 
														</tr> 
													</thead>
													<tbody id="tbodydaily">
													</tbody>
												</table>
											</div>
											<div id="tbldetail" class="overflow-x hidetable">
												<table id="detailtable" >
													<thead>
														<tr> 
															<th>#</th>
															<th>Invoice No</th> 
															<th>Purchase Date</th>
															<th>Purchase By</th> 
															<th>Purchase type</th> 
															<th>Total Amount</th>
														</tr>
													</thead>
													<tbody id="tbodydetail"> 
													</tbody>
												</table>
											</div>
											<div>
												<div class="hidetable overflow-x" id="tblweekly" >
													<table id="weeklytable">
														<thead>
															<tr>
																<th rowspan="2">#</th>
																<th rowspan="2">Customer</th>
																<th rowspan="2">Item</th>
																<th colspan="2" id="week1"></th>
																<th colspan="2" id="week2"></th>
																<th colspan="2" id="week3"></th>
																<th colspan="2" id="week4"></th>
																<th colspan="2" id="week5"></th>
																<th colspan="2" id="week6"></th>
																<th colspan="2" id="week7"></th>
																<th colspan="2">Total</th>
															</tr>
															<tr>
																<th>qty</th>
																<th>Amt</th>
																<th>qty</th>
																<th>Amt</th>
																<th>qty</th>
																<th>Amt</th>
																<th>qty</th>
																<th>Amt</th>
																<th>qty</th>
																<th>Amt</th>
																<th>qty</th>
																<th>Amt</th>
																<th>qty</th>
																<th>Amt</th>
																<th>Total Qty</th>
																<th>Total Amt</th>
															</tr>
														</thead>
														<tbody id="tbodyweekly"> 
														</tbody>
													</table>
												</div>
												<div id="tblmonthly" class="hidetable overflow-x" >
													<table id="monthlytable">
														<thead id="tbl_header_month"> 
														</thead>
														<tbody id="tbodymonthly"> 
														</tbody>
													</table>
												</div>
												<div class="hidetable overflow-x" id="tblyearly" >
													<table id="yearlytable">
														<thead>
															<tr>
																<th rowspan="2">#</th>
																<th rowspan="2">Customer</th>
																<th rowspan="2">Item</th>
																<th colspan="2" id="mon1">Jan</th>
																<th colspan="2" id="mon2">Feb</th>
																<th colspan="2" id="mon3">Mar</th>
																<th colspan="2" id="mon4">Air</th>
																<th colspan="2" id="mon5">May</th>
																<th colspan="2" id="mon6">Jun</th>
																<th colspan="2" id="mon7">Jul</th>
																<th colspan="2" id="mon7">Aug</th>
																<th colspan="2" id="mon7">Sep</th>
																<th colspan="2" id="mon7">Oct</th>
																<th colspan="2" id="mon7">Nov</th>
																<th colspan="2" id="mon7">Dec</th>
																<th colspan="2">Total</th>
															</tr>
															<tr>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th> 
																<th>Total Qty</th>
																<th>Total Amt</th>
															</tr>
														</thead>
														<tbody id="tbodyyearly"> 
														</tbody>
													</table>
												</div>
												
											</div>
										</div>
										<div class="row">
											<div class="col-md-2">
												<select id="PER_PAGE" class="form-control">
													<option value="15">15</option>
													<option value="30">30</option>
													<option value="50">50</option>
													<option value="100">100</option>
												</select>
											</div>
											<div class="col-md-10 form-horizontal" align="right">
												<label  class="control-label col-md-2">Total Qty : </label>
												<div class="col-md-3">
															<input class="form-control" readonly="readonly" id="allTotalQty" type="text">
												</div>												
												<label  class="control-label col-md-4">Total Amount : </label>
												<div class="col-md-3">
															<input class="form-control" readonly="readonly" id="allTotalAmount" type="text">
												</div>
											</div>
											<div id="PAGINATION" class="pull-right"></div>
										</div>
										<div class="row" style="border-radius: 0px;" id="printAble">
											 <div class="hidden-print">
											<div class="pull-right">
												<a href="javascrpt:"
													class="btn btn-inverse waves-effect waves-light" id="print_report"><i class="fa fa-print"></i></a> 
													<a href="#"  class="btn btn-primary waves-effect waves-light">Submit</a>
											</div>
										</div>
										</div>
										<br>
										
									</div>
								</div>

							</div>

						</div>

					</div>
					<!-- container -->

				</div>
				<!-- content -->

				<%@ include file="footer.jsp"%>
				<%@ include file="print_report_purchase_list.jsp"%>
			</div>
			<!-- ============================================================== -->
			<!-- End Right content here -->
			<!-- ============================================================== -->
		</div>
		<!-- END wrapper -->
		<!-- ############################################################# --> 
		<div id="impDetail" style="display: none; width: 90%;" class="overflow-x">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>×</span></span>
					</button>
					<h4 class="modal-title">Import Detail</h4>

				</div>
				<div class="modal-body" style="width: 100%;">
					<table>
						<thead>
							<tr>
								<th>#</th>
								<th>Produce Name</th>
								<th>Qty</th>
								<th>Unit Price</th>
								<th>Amount</th>
								<th>Supplier Name</th>
							</tr>
						</thead>
						<tbody id="impProDetail"> 
						</tbody> 
					</table>
				</div> 
				<div class="modal-footer form-group form-horizontal" style="height: 80px;"> 
					<div align="right">
						<label  class="control-label col-lg-1">Total Amount : </label>
							<div class="col-lg-2">
									<input class="form-control" id="btotalamount"type="text">
							</div>
						<button class="btn btn-default b-close">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- ################################################################## -->

		<script id="CONTENT_TEMPLATE" type="text/x-jquery-tmpl">
	 

        </script>
		<script>
        var resizefunc = [];
        var ctx = "${pageContext.request.contextPath}";
    </script>

		<!-- jQuery  -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery.ui.datepicker-ko.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">

		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/waves.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js"
			type="text/javascript"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/jquery-detectmobile/detect.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/fastclick/fastclick.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/jquery-blockui/jquery.blockUI.js"></script>

		<script	src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script>
		<!-- CUSTOM JS -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/numeral.min.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery.bpopup.min.js"></script>
		
		<script src="${pageContext.request.contextPath}/resources/js/print.js"></script>
	
		
<!-- ============================  tbodydetail  ================================== -->		
	<script id="CONTENT_DETAIL" type="text/x-jquery-tmpl">
    	<tr>  
			<td>{{= order}}</td>
			<td><a herf="javascript:;" id="impid" class="ng-binding">{{= purchase_id}}</a></td>
			<td>{{= purchase_date}}</td>
			<td>{{= purchase_by}}</td>
			<td>{{= purchase_type}}</td>
			<td class="content-right">{{= purchase_total_amount}}</td>
		</tr>
    </script>
 
 <!-- ============================  tbodydaily  ================================== -->		
	<script id="CONTENT_DAILY" type="text/x-jquery-tmpl">
    	<tr>
			<td>{{= order}}</td>
			<td class="content-left"><span class="ellipsis">{{= supplier_name}}</span></td>
			<td class="content-left"><span class="ellipsis">{{= purchase_date}}</span></td>
			<td class="content-left"><span class="ellipsis">{{= product_name}}</span></td>
			<td>{{= product_qty}}</td>
			<td>{{= pro_unit_price}}</td>
			<td>{{= purchase_by}}​</td>
			<td>{{= purchase_type}}</td>
			<td class="content-right">{{= purchase_total_amount}}</td>
		</tr>
    </script>
 
 <!-- ============================  tbodyweekly  ================================== -->		
	<script id="CONTENT_WEEKLY" type="text/x-jquery-tmpl">
    	<tr>
			<td>{{= order}}</td>
			<td class="content-left"><span class="ellipsis">{{= customer}}</span></td>
			<td class="content-left"><span class="ellipsis">{{= pro_name}}</span></td>
			<td>{{= day1_qty}}</td>
			<td>{{= day1_amount}}</td>
			<td>{{= day2_qty}}</td>
			<td>{{= day2_amount}}</td>
			<td>{{= day3_qty}}</td>
			<td>{{= day3_amount}}</td>
			<td>{{= day4_qty}}</td>
			<td>{{= day4_amount}}</td>
			<td>{{= day5_qty}}</td>
			<td>{{= day5_amount}}</td>
			<td>{{= day6_qty}}</td>
			<td>{{= day6_amount}}</td>
			<td>{{= day7_qty}}</td>
			<td>{{= day7_amount}}</td>
			<td class="content-right">{{= total_qty}}</td>
			<td class="content-right">{{= total_amount}}</td>
		</tr>
    </script>
 <!-- ============================  tbodymonthly  ================================== -->		


 <!-- ============================  tbodyyearly  ================================== -->		
	<script id="CONTENT_YEARLY" type="text/x-jquery-tmpl">    
			<tr>
			<td>{{= order}}</td>
			<td class="content-left"><span class="ellipsis">{{= customer}}</span></td>
			<td class="content-left"><span class="ellipsis">{{= pro_name}}</span></td>
			<td>{{= jan_qty}}</td>
			<td>{{= jan_amount}}</td>
			<td>{{= feb_qty}}</td>
			<td>{{= feb_amount}}</td>
			<td>{{= mar_qty}}</td>
			<td>{{= mar_amount}}</td>
			<td>{{= apr_qty}}</td>
			<td>{{= apr_amount}}</td>
			<td>{{= may_qty}}</td>
			<td>{{= may_amount}}</td>
			<td>{{= jun_qty}}</td>
			<td>{{= jun_amount}}</td>
			<td>{{= jul_qty}}</td>
			<td>{{= jul_amount}}</td>
			<td>{{= aug_qty}}</td>
			<td>{{= aug_amount}}</td>
			<td>{{= sep_qty}}</td>
			<td>{{= sep_amount}}</td>
			<td>{{= oct_qty}}</td>
			<td>{{= oct_amount}}</td>
			<td>{{= nov_qty}}</td>
			<td>{{= nov_amount}}</td>
			<td>{{= dec_qty}}</td>
			<td>{{= dec_amount}}</td>
			<td class="content-right">{{= total_qty}}</td>
			<td class="content-right">{{= total_amount}}</td>
		</tr>
    </script>
   <!-- ============================================================== -->   
 <script>
 var st = "";
 $(document).ready(function(){
	var products ={};
	var check = true;
	var order = 1;
	var v=[];
	var b = true;
	 setCalendar();
	// searchByDate();
	 searchProduct();
	 var showYear = "";
	    for(i=0; i < new Date().getFullYear() - 2016 + 1; i++){
	    if((2016 + i) == new Date().getFullYear())
	    	showYear += "<option selected>" + (2016 + i) + "</option>";
	    else
	    	showYear += "<option>" + (2016 + i) + "</option>";
	    $("#selectyear").html(showYear);
	    
	    }
     
     // print pursurse monthly 
     $("#btn_print_monthly").click(function(){
  	   var divContents = $("#print_data_monthly").html(); 
         loadPrintPage(divContents,getLangScape());
         return false;
     });
     
     $("#btn_search").click(function(){
    	 if($("#proID").val() == "")
    		 {
    		 	alert("ឈ្មោះផលិតផលមិនត្រឹមត្រូវ។");
    		 	return;
    		 }
    	if($("#selectreport option:selected").val() == 1){
    		//setCalendar();
    		check = true;
    		products.listDaily(1);    		 
    	}
    	else if($("#selectreport option:selected").val() == 2){
    		setCalendar();
    		settableheader();
    		check = true;
    		products.listWeekly(1);
    	}
		else if($("#selectreport option:selected").val() == 3){
			$('select#selectyear option[value="'+new Date().getFullYear()+'"]').attr("selected",true);
			$('select#selectmonth option[value="'+new Date().getMonth()+'"]').attr("selected",true);
			check = true;
			setheadermonthly();
			products.listMonthly(1);
    	 }
		else if($("#selectreport option:selected").val() == 4){
			var startdate = new Date().getFullYear() + '/01/01';
			var stopdate = new Date().getFullYear() + '/12/31';
			check = true;
			products.listYearly(1);
   	 	}
     });
     
     // print pursurse yearly 
     $("#btn_print_yearly").click(function(){
  	   var divContents = $("#print_data_yearly").html(); 
         loadPrintPage(divContents,getPortrait());
         return false;
     });
	 
	 
	 
	 $('select#selectyear option[value="'+new Date().getFullYear()+'"]').attr("selected",true); 
	 $("#selectyear").change(function(){
		 check = true;
		 switch($("#selectreport").val()){
			 case '0': 
				 products.listDetail(1); 
				 break;
				 
			 case '3':
				 products.listMonthly(1); 
				 break;
				 
			 case '4':
				 products.listYearly(1); 
				 break;
		 }
	 });
	 function searchProduct(){
    	 
			$.ajax({ 
			    url: "${pageContext.request.contextPath}/admin/searchproduct", 
			    type: 'POST', 
			    dataType: 'JSON', 
			    beforeSend: function(xhr) {
                 xhr.setRequestHeader("Accept", "application/json");
                 xhr.setRequestHeader("Content-Type", "application/json");
             },
			    success: function(data) { 
			       console.log(data); 
			       var availableTags=[];
			       for(i=0; i<data.length; i++)
						{							
			    	   availableTags[i]= 
						         {
						         	"label": data[i].productName,
									"dataid": data[i].productId 
						         };
						}
			       $("#productName" ).autocomplete({
			    	   
			    	   select: function(event, ui){
			    		   $("#proID").val(ui.item.dataid);
			    	   },
			    	  // maxShowItems: 8,
			           source: availableTags
			       });
			       $(".ui-autocomplete").css("position", "absolute");
				   $(".ui-autocomplete").css("z-index", "2147483647");
			    },
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			});
			return ;
		}
	 
	 function checkFilter(currentPage){
		 switch($("#selectreport").val()){
		 case '0': 
			 products.listDetail(currentPage); 
			 break;
		 case '1':
			 products.listDaily(currentPage);
			 break;
		 case '2':
			 products.listWeekly(currentPage);
			 break;
		 case '3':
			 products.listMonthly(currentPage); 
			 break;
			 
		 case '4':
			 products.listYearly(currentPage); 
			 break;
	 }
} 
	 
	 $("#selectmonth").change(function(){ 
		 setheadermonthly();
		 check = true;
		 products.listMonthly(1);
	 });
	 
	 $("#PER_PAGE").change(function(){
		 check = true;
		 checkFilter(1);
	 });
	 products.listDetail = function(currentPage){
		var byyear = $("#selectyear").val(); 
		 $.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportdetail/" , 
			    type: 'GET', 
			    data: {
			    		"currentPage" : currentPage,
			    		"perPage"     : $("#PER_PAGE").val(), 
			    		"byYear" 	  : byyear 
			    },
				    beforeSend: function(xhr) {
	               xhr.setRequestHeader("Accept", "application/json");
	               xhr.setRequestHeader("Content-Type", "application/json");
	           },
			    success: function(data) { 
			 		$("#allTotalAmount").val("");
			    	b =true;
					v=data;
					 if(data.reportdetail.length>0){
					$("tbody#tbodydetail").html('');
						 for(var i=0;i<data.reportdetail.length;i++){							
							products.formatDetail(data.reportdetail[i]);
						} 
						$("#CONTENT_DETAIL").tmpl(data.reportdetail).appendTo("tbody#tbodydetail");
					}else{
						$("tbody#tbodydetail").html(''); 
					}
			    	if(check){
			    		products.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}  
			    },
			    error:function(data,status,er) { 
			        console.log("error: ",data," status: ",status," er:",er);
			    }
			}); 
	 }
	 products.listDaily = function(currentPage){
		 
		 if($("#proID").val() == "")
			 return;
		 $.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportdailyimport/" , 
			    type: 'GET', 
			    data: {
			    		"currentPage" : currentPage,
			    		"perPage"     : $("#PER_PAGE").val(),
			    		"startDate"   : $("#REGS_DATE_S").val(),
			    		"endDate"   : $("#REGS_DATE_E").val(),
			    		"proId" : $("#proID").val()
			    },
				    beforeSend: function(xhr) {
	               xhr.setRequestHeader("Accept", "application/json");
	               xhr.setRequestHeader("Content-Type", "application/json");
	           },
			    success: function(data) {
			    	console.log(data);
			    	b =true;
					v=data;
					var total_amount = 0;
					var total_qty = 0;
				 	 if(data.reportdaily.length>0){
						$("tbody#tbodydaily").html('');
						   for(var i=0;i<data.reportdaily.length;i++){
							products.formatDaily(data.reportdaily[i]); 
						}   
					 for(var i=0; i<data.get_total_amount.length; i++){
							   total_amount += data.get_total_amount[i].purchase_total_amount;
							   total_qty += data.get_total_amount[i].product_qty
						   }
						$("#CONTENT_DAILY").tmpl(data.reportdaily).appendTo("tbody#tbodydaily"); 
						$("#allTotalAmount").val((total_amount).toFixed(2));
						$("#allTotalQty").val(total_qty);
					}else{
						$("tbody#tbodydaily").html("");
						$("#allTotalAmount").val('');
						$("#allTotalQty").val('');
					}
			    	if(check){
			    		products.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}  
			    },
			    error:function(data,status,er) { 
			        console.log("error: ",data," status: ",status," er:",er);
			    }
			}); 
	 }
	 products.listWeekly = function(currentPage){ 
		 if($("#proID").val() == "")
			 return ;
		 var json = {
				 	"currentPage" : currentPage,
		    		"perPage"     : $("#PER_PAGE").val(),
	   				"start_date" : $("#REGS_DATE_S").val(),
	   				"end_date"   : $("#REGS_DATE_E").val(),
	   				"proId" : $("#proID").val()
	   			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportweekly_import/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			    	console.log(data);
			    	b =true;
					v=data;
			    	if(data.reportweekly.length>0){
						$("tbody#tbodyweekly").html('');
						   for(var i=0;i<data.reportweekly.length;i++){
							products.formatWeekly(data.reportweekly[i]);
						}   
						$("#CONTENT_WEEKLY").tmpl(data.reportweekly).appendTo("tbody#tbodyweekly"); 
					 	var total_amount = 0;
					 	var total_qty = 0;
					 	for(var i=0; i<data.get_total_amount.length; i++){
					 			for(j=1;j<=7;j++){
					 				total_amount += data.get_total_amount[i]["day" + j +"_amount" ]; 
					 				total_qty += data.get_total_amount[i]["day" + j +"_qty" ]; 
					 			} 
						   }	  
						$("#allTotalAmount").val(numeral(total_amount).format('0,0')); 
						$("#allTotalQty").val(total_qty.toFixed(2));
					}else{
						$("tbody#tbodyweekly").html("");
						$("#allTotalAmount").val('');
						$("#allTotalQty").val('');
					}
			    	if(check){
			    		products.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	} 
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
		 
	 }
	 products.listMonthly = function(currentPage){
		 if($("#proID").val() == "")
			 return;
		 var json = {
				 	"currentPage" : currentPage,
		    		"perPage"     : $("#PER_PAGE").val(),
	   				"start_date" : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-01",
	   				"end_date"   : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-" + (new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate()),
					"proId" : $("#proID").val()
		 };$.ajax({
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportmonthly_import/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			    	console.log(data);
			    	b=true;
			    	var total_all = 0;
			    	var total_all_qty = 0;
			    	    if(data.reportmonthly){ 
				    	$("#monthlytable tbody").html('');
				    	$("#allTotalAmount").val('');
				    	$("#allTotalQty").val('');
				    	var st = ""; 
					    	for(var i=0;i<data.reportmonthly.length;i++){
					    	var total_qty = 0, total_amount = 0;
				    		st += "<tr>"; 
					    	if(b){
					 			order = data.pagination.perPage * (data.pagination.currentPage-1); 
					 			orderlist = order + 1;
					 			st += "<td>"+ orderlist +"</td>";
					 			b = false; 
					 		}
					 		else  {
					 			orderlist = orderlist + 1;
					 			st += "<td>"+ (orderlist) +"</td>"; 
					 		} 
				    		st +="<td class='content-left'><span class='ellipsis'>" + data.reportmonthly[i].customer + "</span></td>";
				    		st += "<td class='content-left'><span class='ellipsis'>" + data.reportmonthly[i].pro_name + "</span></td>";
				    		
				    		for(var j=0; j<(new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate());j++) { 
				    				st += "<td>" + numeral(data.reportmonthly[i]['day' + (j+1) + '_qty']).format('0,0') + "</td>";
				    				st += "<td>" + numeral(data.reportmonthly[i]['day' + (j+1) + '_amount']).format('0,0') + "</td>";
				    				total_qty += data.reportmonthly[i]['day' + (j+1) + '_qty'];
				    				total_amount += data.reportmonthly[i]['day' + (j+1) + '_amount'];
				    		}
				    		st += "<td class='content-right'>" + numeral(total_qty).format('0,0') + "</td>";
				    		st += "<td class='content-right'>" + numeral(total_amount).format('0,0') + "</td>";
				    		st += "</tr>"; 
						}  
					     	for(i =0; i<data.get_total_amount.length; i++)
					    		{
					     			for(var j=0; j<(new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate());j++) 
					     			{  
					     				total_all +=  data.get_total_amount[i]['day' + (j+1) + '_amount'] ;  
					     				total_all_qty += data.get_total_amount[i]['day' + (j+1) + '_qty'] ; 
					     			} 
				    			}  
				    	$("#monthlytable tbody").html(st);
				     	$("#allTotalAmount").val(numeral(total_all).format('0,0')); 
				     	$("#allTotalQty").val(numeral(total_all_qty).format('0,0')); 
				    }    
			    	    if(check){
				    		products.setPagination(data.pagination.totalPages,1);
				    		check=false;
				    	} 
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 }
	 products.listYearly = function(currentPage){
		 if($("#proID").val() == "")
			return;
		 var json = {
				 	"currentPage" : currentPage,
		    		"perPage"     : $("#PER_PAGE").val(),
	   				"start_date" : $("#selectyear").val() + "-01-01",
	   				"end_date"   : $("#selectyear").val() + "-12-31",
	   				"proId" : $("#proID").val()
			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportyearly_import/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  
			    	b= true;
			    	v=data;
			    	var total_amount = 0;
			    	var total_qty = 0;
			    	console.log(data);
			    	$("#allTotalAmount").val('');
		    		$("#allTotalQty").val('');
			    	if(data.reportyear){
				    	$("tbody#tbodyyearly").html('');
				    	for(var i=0;i<data.reportyear.length;i++){
				    	formatMonthlySaleReport(data.reportyear[i]); 
				    	}
				    	for(j=0;j<data.get_total_amount.length;j++){
				    		total_amount +=  data.get_total_amount[j].jan_amount
							    		+ data.get_total_amount[j].feb_amount 
							    		+ data.get_total_amount[j].mar_amount 
							    		+ data.get_total_amount[j].apr_amount 
							    		+ data.get_total_amount[j].may_amount 
							    		+ data.get_total_amount[j].jun_amount 
							    		+ data.get_total_amount[j].jul_amount 
							    		+ data.get_total_amount[j].aug_amount 
							    		+ data.get_total_amount[j].sep_amount 
							    		+ data.get_total_amount[j].oct_amount 
							    		+ data.get_total_amount[j].nov_amount 
							    		+ data.get_total_amount[j].dec_amount; 
				    		total_qty +=  data.get_total_amount[j].jan_qty
				    		+ data.get_total_amount[j].feb_qty 
				    		+ data.get_total_amount[j].mar_qty 
				    		+ data.get_total_amount[j].apr_qty 
				    		+ data.get_total_amount[j].may_qty 
				    		+ data.get_total_amount[j].jun_qty 
				    		+ data.get_total_amount[j].jul_qty 
				    		+ data.get_total_amount[j].aug_qty 
				    		+ data.get_total_amount[j].sep_qty 
				    		+ data.get_total_amount[j].oct_qty 
				    		+ data.get_total_amount[j].nov_qty 
				    		+ data.get_total_amount[j].dec_qty; 
				    	}
			    		 $("#CONTENT_YEARLY").tmpl(data.reportyear).appendTo("tbody#tbodyyearly");	
			    		 $("#allTotalAmount").val(numeral(total_amount).format('0,0'));
			    		 $("#allTotalQty").val(numeral(total_qty).format('0,0'));
			    	}
			    	else
			    		{
			    			$("tbody#tbodyyearly").html('');
			    			$("#allTotalAmount").val('');
			    		} 
			    	if(check){
			    		products.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}  
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 }
	 products.formatDetail = function(value){
		 if(value["purchase_type"] == 0)
		 		value["purchase_type"] = "Import";
		 else
			 	value["purchase_type"] = "Expense";
		 value["purchase_date"] = value["purchase_date"].substring(0,10);
		 value["purchase_total_amount"] = (value["purchase_total_amount"]).toFixed(2);
		 if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1);
	 			j = order + 1;
	 			value["order"] =j;
	 			b = false;
	 		}
	 		else  
	 		value["order"] = ++j; 
	 }
	products.formatDaily = function(value){
		 if(value["purchase_type"] == 0)
		 		value["purchase_type"] = "Import";
		 else
			 	value["purchase_type"] = "Expense"; 
		 value['product_qty'] = (value['product_qty']).toFixed(2);
		 value['pro_unit_price'] = (value['pro_unit_price']).toFixed(2);
		 value['purchase_total_amount'] = (value['purchase_total_amount']).toFixed(2);
		 if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1);
	 			j = order + 1;
	 			value["order"] =j;
	 			b = false;
	 		}
	 		else  
	 		value["order"] = ++j; 
	 } 
	 products.formatWeekly = function(value){
		 value["total_amount"] = numeral(value["day1_amount"] + 
					value["day2_amount"] + 
					value["day3_amount"] +
					value["day4_amount"] +
					value["day5_amount"] +
					value["day6_amount"] +
					value["day7_amount"]).format('0,0') ;
		value["total_qty"] = numeral(value["day1_qty"] + 
				 value["day2_qty"] + 
				 value["day3_qty"] +
				 value["day4_qty"] +
				 value["day5_qty"] +
				 value["day6_qty"] +
				 value["day7_qty"] ).format('0,0')  ;
 		for(j =1 ;j<=7; j++){
		value['day' +(j) + '_qty'] = numeral(value['day' +(j) + '_qty']).format('0,0'); 
		value['day' +(j) + '_amount'] = numeral(value['day' +(j) + '_amount']).format('0,0');
		}  
		if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1); 
	 			k = order + 1;
	 			value["order"] =k;
	 			b = false; 
	 		}
	 		else  
	 		value["order"] = ++k;  
	 } 
	 function formatMonthlySaleReport(value){
		 if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1);
	 			j = order + 1;
	 			value["order"] =j;
	 			b = false;
	 		}
	 		else  
	 		value["order"] = ++j;
	    	value["total_amount"] = numeral(value["jan_amount"] + 
	    							value["feb_amount"] + 
	    							value["mar_amount"] +
	    							value["apr_amount"] +
	    							value["may_amount"] +
	    							value["jun_amount"] +
	    							value["jul_amount"] +
	    							value["aug_amount"] +
	    							value["sep_amount"] +
	    							value["oct_amount"] +
	    							value["nov_amount"] +
	    							value["dec_amount"]).format('0,0') ;
	    	value["total_qty"] = numeral(value["jan_qty"] + 
								 value["feb_qty"] + 
								 value["mar_qty"] +
								 value["apr_qty"] +
								 value["may_qty"] +
								 value["jun_qty"] +
								 value["jul_qty"] +
								 value["aug_qty"] +
								 value["sep_qty"] +
								 value["oct_qty"] +
								 value["nov_qty"] +
								 value["dec_qty"]).format('0,0')  ;
	    	value["jan_amount"] = numeral(value["jan_amount"]).format('0,0');
	    	value["feb_amount"] = numeral(value["feb_amount"]).format('0,0');
			value["mar_amount"] = numeral(value["mar_amount"]).format('0,0');
			value["apr_amount"] = numeral(value["apr_amount"]).format('0,0');
			value["may_amount"] = numeral(value["may_amount"]).format('0,0');
			value["jun_amount"] = numeral(value["jun_amount"]).format('0,0');
			value["jul_amount"] = numeral(value["jul_amount"]).format('0,0');
			value["aug_amount"] = numeral(value["aug_amount"]).format('0,0');
			value["sep_amount"] = numeral(value["sep_amount"]).format('0,0');
			value["oct_amount"] = numeral(value["oct_amount"]).format('0,0');
			value["nov_amount"] = numeral(value["nov_amount"]).format('0,0');
			value["dec_amount"] = numeral(value["dec_amount"]).format('0,0');
			value["jan_qty"] =  numeral(value["jan_qty"]).format('0,0');
			value["feb_qty"] =  numeral(value["feb_qty"]).format('0,0');
			value["mar_qty"] = numeral(value["mar_qty"]).format('0,0');
			value["apr_qty"] = numeral(value["apr_qty"]).format('0,0');
			value["may_qty"] = numeral(value["may_qty"]).format('0,0');
			value["jun_qty"] = numeral(value["jun_qty"]).format('0,0');
			value["jul_qty"] = numeral(value["jul_qty"]).format('0,0');
			value["aug_qty"] = numeral(value["aug_qty"]).format('0,0');
			value["sep_qty"] = numeral(value["sep_qty"]).format('0,0');
			value["oct_qty"] = numeral(value["oct_qty"]).format('0,0');
			value["nov_qty"] = numeral(value["nov_qty"]).format('0,0');
			value["dec_qty"] = numeral(value["dec_qty"]).format('0,0');
	    	
	    }
	 products.setPagination = function(totalPage, currentPage){
	    	$('#PAGINATION').bootpag({
		        total: totalPage,
		        page: currentPage,
		        maxVisible: 10,
		        leaps: true,
		        firstLastUse: true,
		        first: 'First',
		        last: 'Last',
		        wrapClass: 'pagination',
		        activeClass: 'active',
		        disabledClass: 'disabled',
		        nextClass: 'next',
		        prevClass: 'prev',
		        lastClass: 'last',
		        firstClass: 'first'
		    }).on("page", function(event, currentPage){
		    	check = false;
		    	checkFilter(currentPage);
		    }); 
		};
	// products.listDetail(1); 
	
	products.listDaily(1);
	 
	 $("#selectreport").change(function(){
		 if($(this).val()==0){
			 $("#tbldetail").removeClass("hidetable");
			 $("#tbldaily").addClass("hidetable"); 
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").addClass("hidetable");
			 $("#printAble").addClass("hidetable");
			 $("#yearcombo").removeClass("hidetable");
			 $("#monthcombo").addClass("hidetable");
			 $("#datelable").addClass("hidetable");
			 check = true;
			 products.listDetail(1);			 
		 }			 
		 else if($(this).val()==1){ 
			 $("#tbldetail").addClass("hidetable");
			 $("#tbldaily").removeClass("hidetable");
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").addClass("hidetable");			 
			 $("#yearcombo").addClass("hidetable");
			 $("#monthcombo").addClass("hidetable");
			 $("#datelable").removeClass("hidetable");
			 $("#EDate").removeClass("hidetable");			 
			 $("#printAble").removeClass("hidetable");
			 setCalendar();
			 check = true;
			 products.listDaily(1);			 
		 }else if($(this).val()==2){ 			 
			 $("#tbldetail").addClass("hidetable");
			 $("#tbldaily").addClass("hidetable");
			 $("#tblweekly").removeClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").addClass("hidetable");			 
			 $("#yearcombo").addClass("hidetable");
			 $("#datelable").removeClass("hidetable");
			 $("#EDate").removeClass("hidetable");	
			 $("#monthcombo").addClass("hidetable");			 
			 $("#printAble").removeClass("hidetable");
			 setCalendar();
			 settableheader();
			 check = true;
			 products.listWeekly(1);		
		 }else if($(this).val()==3){
			 $("#tbldaily").addClass("hidetable");
			 $("#tbldetail").addClass("hidetable");
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").removeClass("hidetable");
			 $("#tblyearly").addClass("hidetable");				 
			 $('select#selectyear option[value="'+new Date().getFullYear()+'"]').attr("selected",true);
			 $('select#selectmonth option[value="'+new Date().getMonth()+'"]').attr("selected",true);			 
			 $("#yearcombo").removeClass("hidetable");
			 $("#selectmonth").removeClass("hidetable");
			 $("#selectyear").removeClass("hidetable");
			 $("#datelable").addClass("hidetable");
			 $("#monthcombo").removeClass("hidetable");			 
			 $("#printAble").removeClass("hidetable");
			 check = true;
			 setheadermonthly();
			 products.listMonthly(1);
	
		 }else if($(this).val()==4){
			 $("#tbldaily").addClass("hidetable");
			 $("#tbldetail").addClass("hidetable");
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").removeClass("hidetable");
			 
			 $("#yearcombo").removeClass("hidetable");
			 $("#selectmonth").addClass("hidetable");
			 $("#datelable").addClass("hidetable");
			 $("#monthcombo").addClass("hidetable");	
			 $("#selectyear").removeClass("hidetable");
			 
			 $("#printAble").removeClass("hidetable");
			 var startdate = new Date().getFullYear() + '/01/01';
			 var stopdate = new Date().getFullYear() + '/12/31';
			 check = true;
			 products.listYearly(1);
		 }		 
	 });
	function setheadermonthly(){
		
		var st = "";
			st += "<tr>";
			st += "<th rowspan='2'>#</th>"
			st += "<th rowspan='2'>Customer</th>";
			st += "<th rowspan='2'>Item</th>";
		for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
			{			
			st += "<th colspan='2'>" + (1+i) + "</th>";
			}
			st += "<th colspan='2'>Total</th></tr><tr>";		
			for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
			{			
			st += "<th>Qty</th><th>Amt</th>";
			}	
			st += "<th>Qty</th><th>Amt</th></tr>";	
			$("#tbl_header_month").html(st);
			
	}
	 
	function settableheader(){
		var monthOfyear = ['January', 'February', 'Match', 'April', 'May', 'June', 'July','Augest','Septemper', 'October', 'November', 'December'];
		
		var dd = 0;
		var dayID ="";
		
			for (var i=0; i <7; i++) {
				dayID = "#week" + (i+1);
				dd=	moment($("#REGS_DATE_S").val()).add(i, 'days').get('date');
				$(dayID).html(dd);
			}; 
			 
		}
	 
	 function searchByDate(){
      	var startDate 		= $( "#REGS_DATE_S" ).val() + " 00:00:00";
		var endDate 		= $( "#REGS_DATE_E" ).val() + " 24:00:00"; 
		json = {
					"startdate"   		  : startDate,
					"enddate" 		  	  : endDate
		};
		console.log(JSON.stringify(json));
		$.ajax({
			 url: "${pageContext.request.contextPath}/admin/getsearchsellbydate", 
	    type: 'POST',
			datatype: 'JSON',
			data: JSON.stringify(json), 
			beforeSend: function(xhr) {
	            xhr.setRequestHeader("Accept", "application/json");
	            xhr.setRequestHeader("Content-Type", "application/json");
	        },
			success: function(data){
				st="";
				
            	var a = 1;
            	var total = 0;
            	
	            for(i=0; i<data.length; i++)	
		      	{ 
	            	a = i+1;
	            	total += data[i].Total ;
		    	  	st += "<tr>"
		    	  	st += "<td>" + a + "</td> "
		    	  	st += "<td>" + data[i].productName + "</td>";
		    	  	st += "<td>" + data[i].proQty + "</td>";
		    	  	st += "<td>" + data[i].UnitPrice + "</td>";
		    	  	st += "<td>" + data[i].Total + "</td>"; 
		    	  
		    	}
	            
      			$("#searchDetail").html(st);
      			$("#totalPrice").html(total);
			},
			error:function(data, status,er){
				console.log("error: " + data + "status: " + status + "er: ");
			}
		}); 
	 }
	  
	 
	 
	 
	 $("#btnREGS_DATE_S").click(function(){	
	 			$( "#REGS_DATE_S" ).datepicker("show");		
	 			
	 		});		
	 	$("#btnREGS_DATE_E").click(function(){
	 			$( "#REGS_DATE_E" ).datepicker("show");			
	 		});

	 function calculateDay(start, end){		
	         var days = (end - start) / (1000 * 60 * 60 * 24);
	         $("#totalday").val(days);
	         return;
	 }

	 function setCalendar(){		
	 		$("#REGS_DATE_S").datepicker({
	 		      defaultDate: new Date(),
	 		      setDate: new Date(),
	 		      changeMonth: true,
	 		     changeYear : true,
	 		      numberOfMonths: 1,
	 		      dateFormat: "yy-mm-dd",
	 		      onClose: function( selectedDate ) {			    	  
	 			    	    calculateDay($("#REGS_DATE_S").datepicker("getDate"),$("#REGS_DATE_E").datepicker("getDate"));
	 				
	 						$("#REGS_DATE_E").datepicker("option", "minDate", selectedDate);
	 						if($("#selectreport option:selected").val() == 1)
	 							{
	 								check = true;
	 								products.listDaily(1);
	 							}	 							
	 						else
	 							{
	 								settableheader();
	 								if($("#selectreport option:selected").val() != 1)
	 								$("#REGS_DATE_E").datepicker('setDate', moment($("#REGS_DATE_S").val()).add(6, 'days').format('YYYY-MM-DD'));
	 								check = true;
	 								products.listWeekly(1);
	 								 
	 							}
	 							
	 						searchByDate();
	 			      }
	 		});
	 		$("#REGS_DATE_E").datepicker({
	 		     defaultDate: new Date(),
	 		      setDate: new Date(),
	 		      changeMonth: true,
	 		     changeYear : true,
	 		      numberOfMonths: 1,
	 		      dateFormat: "yy-mm-dd",
	 		      onClose: function( selectedDate ) {

	 			    	  $("#REGS_DATE_S").datepicker("option", "maxDate", selectedDate);
	 			    	    calculateDay($("#REGS_DATE_S").datepicker("getDate"),$("#REGS_DATE_E").datepicker("getDate"));
	 			    	   if($("#selectreport option:selected").val() == 1){
	 								check = true;
	 								products.listDaily(1);
	 			    	   }	 			    	   
	 			    	   else{
	 						$("#REGS_DATE_S").datepicker('setDate', moment($("#REGS_DATE_E").val()).subtract(6, 'days').format('YYYY-MM-DD'));
	 						settableheader();
	 						searchByDate();
	 						check = true;
	 						products.listWeekly(1);}
	 			      }
	 		});	
	 		if($("#EDate").hasClass("hidetable"))
	 			$("#REGS_DATE_S").datepicker('setDate', moment().format('YYYY-MM-DD'));
	 		else{
	 			if($("#selectreport option:selected").val() != 1)	 			
	 				$("#REGS_DATE_S").datepicker('setDate', moment().subtract(6, 'days').format('YYYY-MM-DD'));
	 			else
	 				$("#REGS_DATE_S").datepicker('setDate', moment().format('YYYY-MM-DD'));
	 		}
	 		
	 		$("#REGS_DATE_E").datepicker('setDate', moment().format('YYYY-MM-DD'));
	 }
	 $(document).on("click","#impid", function(){
		 _this = $(this);
		   	if(_this.parents("tr").children().eq(4).html() == 'Import')
		   		url = "${pageContext.request.contextPath}/admin/getimportdetail/" + $(this).html();
		   	else
		   		url = "${pageContext.request.contextPath}/admin/getexpensedetail/" + $(this).html(); 
		   $.ajax({ 
			    url: url , 
			    type: 'GET', 
			    dataType: 'JSON', 
			    beforeSend: function(xhr) {
                  xhr.setRequestHeader("Accept", "application/json");
                  xhr.setRequestHeader("Content-Type", "application/json");
              },
			    success: function(data) {  
			    	console.log(data);
		    	var st= "";
		    	var amount = 0;
		    	if(_this.parents("tr").children().eq(4).html() == 'Import'){
				       for(i=0; i<data.length; i++){
				    	   st += "<tr><td>" + (i + 1) + "</td>";
				    	   st += "<td>" + data[i].proname +"</td>";
				    	   st += "<td>" + data[i].proqty +"</td>";
				    	   st += "<td>" + data[i].prounitprice.toFixed(2) +"</td>";
				    	   st += "<td>" + (data[i].proqty * data[i].prounitprice).toFixed(2) +"</td>";
				    	   st += "<td>" + data[i].supname +"</td></tr>"
				    	   amount += data[i].proqty * data[i].prounitprice;
				       }
		    	}else
		    		{
		    		for(i=0; i<data.length; i++){
				    	   st += "<tr><td>" + (i + 1) + "</td>";
				    	   st += "<td>" + data[i].exp_description +"</td>";
				    	   st += "<td>" + numeral(data[i].exp_qty).format('0,0') +"</td>";
				    	   st += "<td>" + (data[i].exp_unitprice).toFixed(2) +"</td>";
				    	   st += "<td>" + ((data[i].exp_unitprice * data[i].exp_qty)).toFixed(2) +"</td>";
				    	   st += "<td>" + data[i].customer +"</td>"; 
				    	   amount += data[i].exp_unitprice * data[i].exp_qty;
				       }
		    		}
					       $("#impProDetail").html(st);
					       $("#btotalamount").val(amount.toFixed(2));
					    
			    	},
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
		  $("#impDetail").bPopup();  
	 });
	 
	 print_daily = function(){
		 $.ajax({ 
			 url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportdaily_print/" , 
			    type: 'GET', 
			    data: { 
			    		"startDate"   : $("#REGS_DATE_S").val()			    		 
			    },
				    beforeSend: function(xhr) {
	               xhr.setRequestHeader("Accept", "application/json");
	               xhr.setRequestHeader("Content-Type", "application/json");
	           },
			    success: function(data) {
			 
			    
					var total_amount = 0;
				 	 if(data.reportdaily_print.length>0){
						$("tbody#PRINT_CONTENTS_DAILY").html('');
						   for(var i=0;i<data.reportdaily_print.length;i++){
							products.formatDaily(data.reportdaily_print[i]);  
							data.reportdaily_print[i].order = i+1;
						}   
					 for(var i=0; i<data.get_total_amount_print.length; i++){ 
							   total_amount += data.get_total_amount_print[i].purchase_total_amount;
						   }
						$("#CONTENT_DAILY_PRINT").tmpl(data.reportdaily_print).appendTo("tbody#PRINT_CONTENTS_DAILY"); 
						$("#allTotalAmount_print_daily").html(numeral(total_amount).format('0,0'));
					}else{
						$("tbody#PRINT_CONTENTS_DAILY").html("");
						$("#allTotalAmount_print_daily").html('');
					}
			    	/* if(check){
			    		products.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}  */ 
			    	
			    	 var divContents = $("#print_data").html(); 
			         loadPrintPage(divContents,getPortrait());
			    },
			    error:function(data,status,er) { 
			        console.log("error: ",data," status: ",status," er:",er);
			    }
			}); 
	 }
	 print_weekly = function(){ 
		 var json = { 
	   				"start_date" : $("#REGS_DATE_S").val(),
	   				"end_date"   : $("#REGS_DATE_E").val()
			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportweekly_print/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			    	//b =true;
					//v=data;
			    	if(data.reportweekly_print.length>0){
						$("tbody#PRINT_CONTENTS_WEEKLY").html('');
						   for(var i=0;i<data.reportweekly_print.length;i++){
							products.formatWeekly(data.reportweekly_print[i]);
							data.reportweekly_print[i].order = i+1;
						}   
						$("#CONTENT_WEEKLY_PRINT").tmpl(data.reportweekly_print).appendTo("tbody#PRINT_CONTENTS_WEEKLY"); 
					 	var total_amount = 0;					 
					 	for(var i=0; i<data.get_total_amount_print.length; i++){
					 			for(j=1;j<=7;j++){
					 				total_amount += data.get_total_amount_print[i]["day" + j +"_amount" ]; 
					 			} 
						   }	  
						$("#allTotalAmount_print_weekly").html(numeral(total_amount).format('0,0')); 
					}else{
						$("tbody#PRINT_CONTENTS_WEEKLY").html("");
						$("#allTotalAmount_print_weekly").html('');
					} 
			    	
			    	  var divContents = $("#print_data_weekly").html(); 
				         loadPrintPage(divContents,getPortrait());
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
		 
	 }
	  print_monthly = function(){
		 var json = { 
	   				"start_date" : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-01",
	   				"end_date"   : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-" + (new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate())
			};$.ajax({
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportmonthly_print/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			  
			    	var total_all = 0;
			    	var d="";
			    	    if(data.reportmonthly_print){
				    	$("#PRINT_CONTENTS_MONTHLY").html('');
				    	var st = ""; 
					    	for(var i=0;i<data.reportmonthly_print.length;i++){
					    	var total_qty = 0, total_amount = 0;
				    		st += "<tr>"; 
						    st += "<td>"+ (i+1) +"</td>";  
				    		st +="<td class='content-left'><span class='ellipsis'>" + data.reportmonthly_print[i].customer + "</span></td>";
				    		st += "<td class='content-left'><span class='ellipsis'>" + data.reportmonthly_print[i].pro_name + "</span></td>"; 
				    		for(var j=0; j<(new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate());j++) { 
				    			 d=(j<=14)?"show1":"hide";
				    			st += "<td class='"+d+"'>" + numeral(data.reportmonthly_print[i]['day' + (j+1) + '_qty']).format('0,0') + "</td>";
				    				st += "<td class='"+d+"' >" + numeral(data.reportmonthly_print[i]['day' + (j+1) + '_amount']).format('0,0') + "</td>";
				    				total_qty += data.reportmonthly_print[i]['day' + (j+1) + '_qty'];
				    				total_amount += data.reportmonthly_print[i]['day' + (j+1) + '_amount'];
				    		}
				    		st += "<td  class='content-right "+d+"'>" + numeral(total_qty).format('0,0') + "</td>";
				    		st += "<td class='content-right "+d+"'>" + numeral(total_amount).format('0,0') + "</td>";
				    		st += "</tr>"; 
						}  
					     	for(i =0; i<data.get_total_amount_print.length; i++)
					    		{
					     			for(var j=0; j<(new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate());j++) 
					     			{  
					     				total_all +=  data.get_total_amount_print[i]['day' + (j+1) + '_amount'] ;  
					     			} 
				    			}  
				    	$("#PRINT_CONTENTS_MONTHLY").html(st);
				     	$("#allTotalAmount_print_monthly").html(numeral(total_all).format('0,0')); 
				    }    
			    	    else
			    	    	{
			    	    	$("#PRINT_CONTENTS_MONTHLY").html("");
					     	$("#allTotalAmount_print_monthly").html('');
			    	    	}
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 }
	 print_yearly = function(){
		 var json = { 
	   				"start_date" : $("#selectyear").val() + "-01-01",
	   				"end_date"   : $("#selectyear").val() + "-12-31"
			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/purchasereportyearly_print/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  
			    //	b= true;
			    //	v=data;
			    	var total_amount = 0;
			 
			    	if(data.reportyear_print){
				    	$("tbody#PRINT_CONTENTS_YEARLY").html('');
				    	for(var i=0;i<data.reportyear_print.length;i++){
				    	formatMonthlySaleReport(data.reportyear_print[i]); 
				    	data.reportyear_print[i].order = i+1;
				    	}
				    	for(j=0;j<data.get_total_amount_print.length;j++){
				    		total_amount +=  data.get_total_amount_print[j].jan_amount
							    		+ data.get_total_amount_print[j].feb_amount 
							    		+ data.get_total_amount_print[j].mar_amount 
							    		+ data.get_total_amount_print[j].apr_amount 
							    		+ data.get_total_amount_print[j].may_amount 
							    		+ data.get_total_amount_print[j].jun_amount 
							    		+ data.get_total_amount_print[j].jul_amount 
							    		+ data.get_total_amount_print[j].aug_amount 
							    		+ data.get_total_amount_print[j].sep_amount 
							    		+ data.get_total_amount_print[j].oct_amount 
							    		+ data.get_total_amount_print[j].nov_amount 
							    		+ data.get_total_amount_print[j].dec_amount; 
				    	}
			    		 $("#CONTENT_YEARLY_PRINT").tmpl(data.reportyear_print).appendTo("tbody#PRINT_CONTENTS_YEARLY");	
			    		 $("#allTotalAmount_print_yearly").html(numeral(total_amount).format('0,0'));
			    	}
			    	else
			    		{
			    			$("tbody#PRINT_CONTENTS_YEARLY").html('');
			    			$("#allTotalAmount_print_yearly").html('');
			    		}  
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 }
 	 $("#print_report").click(function() {
		 switch($("#selectreport").val()){
		 case '0':  
			 break;
		 case '1':
			 $("#report_start_daily").html(" Date : " + $("#REGS_DATE_S").val());
			 print_daily();		
			 break;
		 case '2':
			 $("#report_start_weekly").html(" Date : " + $("#REGS_DATE_S").val());
			 $("#report_end_weekly").html(" Date : " + $("#REGS_DATE_E").val()); 
				var dd = 0;
				var dayID =""; 
					for (var i=0; i <7; i++) {
						dayID = "#week_print" + (i+1);
						dd=	moment($("#REGS_DATE_S").val()).add(i, 'days').get('date');
						$(dayID).html(dd);
					};
			print_weekly();
				
			 break;
		 case '3':  
			 var d="";
			 var end=new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate();
			 $("#end").html('16 -'+ end);
			 $("#select_yearly option[value='1']").attr("selected","selected");
			 $("#report_start_monthly").html(" Date : " + $("#selectmonth option:selected").text() + ", " + $("#selectyear").val());
			   var st = "";
				st += "<tr>";
				st += "<th rowspan='2'>#</th>";
				st += "<th rowspan='2'>Supplier</th>";
				st += "<th rowspan='2'>Item</th>";
			for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
				{		
				 d=(i<=14)?"show1":"hide";
				st += "<th colspan='2' class='"+d+"'>" + (1+i) + "</th>";
				}
				st += "<th colspan='2' class='"+d+"'>Total</th></tr><tr>";		
				for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
				{			
					 var d=(i<=14)?"show1":"hide";
				st += "<th class='"+d+"' style='padding-left:12px !important; padding-right:12px !important'>qty</th><th style='padding-left: 22px !important; padding-right: 22px !important;' class='"+d+"'>Amt</th>";
				}	
				st += "<th class='"+d+"'> Qty</th><th class='"+d+"'> Amt</th></tr>";	
				$("#tbl_header_month_print").html(st);  
				print_monthly();
			 $('#monthly_list').modal({
					"backdrop":"static"
				}) ;  
			 break;
			 
		 case '4': 
			 $("#select_month option[value='1']").attr("selected","selected");
			 $("#report_start_yearly").html(" Date : " + $("#selectyear").val());			
			 print_yearly();
			 $('#yearly_list').modal({
					"backdrop":"static"
				}) ; 
			 break;
	 }  	
		});
	 });
 
 </script>
</body>
</html>