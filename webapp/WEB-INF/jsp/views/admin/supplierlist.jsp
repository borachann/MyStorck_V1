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

<!-- Base Css Files -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />

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
<link href="${pageContext.request.contextPath}/resources/css/helper.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />
	
<link href="${pageContext.request.contextPath}/resources/css/customize.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<script
	src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>

</head>



<body class="fixed-left" ng-app="wecafe">

	<!-- Begin page -->
	<div id="wrapper" ng-controller="SupplierController as controller">

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

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Supplier List</h4>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">	
					<div class="panel-heading">
						<!-- <h3 class="panel-title">Product Lists</h3> -->
						<form class="form-inline">
							<div class="form-group">
								<label>Search</label> <input type="text" ng-model="search" id="txtSearch"
									class="form-control" placeholder="Search" width="400%">
									<input type="button" class="btn btn-default" id="btnSearch" value="Search">
							</div>
							<div class="col-md-2 pull-right" style="text-align: right;">
								<button id="btn_add_user" class="btn btn-primary">Add Supplier</button>
						</div>	
						</form> 
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<table id="datatable" class="overflow-x">
									<thead>
										<tr>
											<th>#</th>
											<th>Supplier Name</th>
											<th style="text-align: right;">Phone Number</th>
											<th>E-mail</th>
											<th>Address</th>
											<th style="text-align: center;">Action</th>
										</tr>
									</thead>
									<tbody id="CONTENTS"> 
									</tbody>
								</table>
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
										<div id="PAGINATION" class="pull-right"></div>
							</div> 
					</div>
				</div>
				</div>
				</div>
				<!-- end Panel -->				
			</div>
			
			<!-- container -->

		</div>
		<!-- content -->

		<%@ include file="footer.jsp"%>

	</div>
	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->


	<!-- Right Sidebar -->
	<div class="side-bar right-bar nicescroll">
		<h4 class="text-center">Chat</h4>
		<div class="contact-list nicescroll">
			<ul class="list-group contacts-list">
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-1.jpg"
								alt="">
						</div> <span class="name">Chadengle</span> <i
						class="fa fa-circle online"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-2.jpg"
								alt="">
						</div> <span class="name">Tomaslau</span> <i class="fa fa-circle online"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-3.jpg"
								alt="">
						</div> <span class="name">Stillnotdavid</span> <i
						class="fa fa-circle online"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-4.jpg"
								alt="">
						</div> <span class="name">Kurafire</span> <i class="fa fa-circle online"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-5.jpg"
								alt="">
						</div> <span class="name">Shahedk</span> <i class="fa fa-circle away"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-6.jpg"
								alt="">
						</div> <span class="name">Adhamdannaway</span> <i
						class="fa fa-circle away"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-7.jpg"
								alt="">
						</div> <span class="name">Ok</span> <i class="fa fa-circle away"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-8.jpg"
								alt="">
						</div> <span class="name">Arashasghari</span> <i
						class="fa fa-circle offline"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-9.jpg"
								alt="">
						</div> <span class="name">Joshaustin</span> <i
						class="fa fa-circle offline"></i>
				</a> <span class="clearfix"></span></li>
				<li class="list-group-item"><a href="#">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/images/users/avatar-10.jpg"
								alt="">
						</div> <span class="name">Sortino</span> <i class="fa fa-circle offline"></i>
				</a> <span class="clearfix"></span></li>
			</ul>
		</div>
	</div>
	<!-- /Right-bar -->

	</div>
	<!-- END wrapper -->
<%@ include file="supplieradd.jsp"%> 


	<script>
            var resizefunc = [];
            var ctx = "${pageContext.request.contextPath}"
    </script>
	<script src="${pageContext.request.contextPath}/resources/js/angular.js"></script>
	<script src="<c:url value='/resources/scripts/dirPagination.js' />"></script>
	<script src="<c:url value='/resources/scripts/app.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/services/supplier_service.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/controllers/supplier_controller.js' />"></script>

	<!-- jQuery  -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
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
		src="${pageContext.request.contextPath}/resources/assets/chat/moment-2.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-detectmobile/detect.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-blockui/jquery.blockUI.js"></script>

	<!-- sweet alerts -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.init.js"></script>

	<!-- flot Chart -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.time.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.selection.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.crosshair.js"></script>

	<!-- Counter-up -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/waypoints.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>

	<!-- CUSTOM JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script>
	<!-- Dashboard -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dashboard.js"></script>

	<!-- Chat -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.chat.js"></script>

	<!-- Todo -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.todo.js"></script>
<script id="CONTENT_Supplierlist" type="text/x-jquery-tmpl"> 
	<tr>
		<td id="supplierId" style="display: none;">{{= supId}}</td>
		<td>{{= order}}</td>
		<td id="supName">{{= supplierName }}</td>
		<td style="text-align: right;">{{= supplierNumber }}</td>
		<td>{{= supplierEmail }}</td>
		<td>{{= supplierAddress}}</td>
		<td class="actions" style="text-align: center;">
			<a class="on-default edit-row" href="${pageContext.request.contextPath}/admin/viewupdate/{{= supId}}">
				<i class="fa fa-pencil"></i></a> 
			<a class="on-default remove-row" href="javascript:;" id="btnRemove">
				<i class="fa fa-trash-o"></i></a>
		</td>
	</tr>
 
</script>
	<script type="text/javascript">
		/* ==============================================
		Counter Up
		=============================================== */
		jQuery(document).ready(function($) {
			var check = true;
			var order = 1;
			var v=[];
			var b = true;
			getAllSupplier(1);
			$("#btnSearch").click(function(){
				str = $("#txtSearch").val();
				if(str == ""){
					getAllSupplier(1);
					return ;
				} 
				$.ajax({
					url: "${pageContext.request.contextPath}/admin/searchsupplier/" + str,
					type: 'GET',
					dataType: 'JSON',
					beforeSend: function(xhr){
						xhr.setRequestHeader("Accept", "application/json");
						xhr.setRequestHeader("Context-Type", "application/json");
					},
					success: function(data){
						console.log(data); 
						b =true;
						//v=data;	
						if(data.suppliers.length>0){  
							$("tbody#CONTENTS").html('');					
							for(i=0; i<data.suppliers.length;i++)
								{
									format(data.suppliers[i]); 
								}
							$("#CONTENT_Supplierlist").tmpl(data.suppliers).appendTo("tbody#CONTENTS"); 
						}else{
							$("tbody#CONTENTS").html('<tr>NO CONTENTS</tr>'); 
						}
					},
					error:function(data,status,er){
						console.log("error: "+data+" status: "+status+" er:"+er);
					}
				});
			});
			function getAllSupplier(currentPage){
				var json = {
					 	"currentPage" : currentPage,
			    		"perPage"     : $("#PER_PAGE").val() 
				};
				$.ajax({ 
					    url: "${pageContext.request.contextPath}/admin/listsupplier", 
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
							if(data.suppliers.length>0){  
								$("tbody#CONTENTS").html('');					
								for(i=0; i<data.suppliers.length;i++)
									{
										format(data.suppliers[i]); 
									}
								$("#CONTENT_Supplierlist").tmpl(data.suppliers).appendTo("tbody#CONTENTS"); 
							}else{
								$("tbody#CONTENTS").html('<tr>NO CONTENTS</tr>'); 
							}
					    	if(check){
					    		setPagination(data.pagination.totalPages,1);
					    		check=false;
					    	}
					    },
					    error:function(data,status,er) { 
					        console.log("error: "+data+" status: "+status+" er:"+er);
					    }
					});
					
				} 
			
			format = function(value){  
		 		if(b){
		 			order = v.pagination.perPage * (v.pagination.currentPage-1);
		 			j = order + 1;
		 			value["order"] =j;
		 			b = false;
		 		}
		 		else  
		 		value["order"] = ++j;  
	 }
	 $("#PER_PAGE").change(function(){
			check = true;
			getAllSupplier(1);
	    });

setPagination = function(totalPage, currentPage){
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
    	getAllSupplier(currentPage);
    }); 
};
			
			$('.counter').counterUp({
				delay : 100,
				time : 1200
			});
			$(document).on('click','#btnRemove',function(){  
				   				var id = $(this).parents("tr").find("#supplierId").html();  
				   				if(confirm("Do you want to delete that supplier?")){
				   					$.ajax({ 
				   					    url: "${pageContext.request.contextPath}/admin/delete/"+id, 
				   					    type: 'POST', 
				    					    dataType: 'JSON', 
				   					    //data: JSON.stringify(json), 
				   					    beforeSend: function(xhr) {
				   		                    xhr.setRequestHeader("Accept", "application/json");
				   		                    xhr.setRequestHeader("Content-Type", "application/json");
				    		                },
				   					    success: function(data) { 
				   					    	console.log(data);
				   					        if(data){
				   					        	alert('YOU HAVE BEEN DELETED SUCCESSFULLY.');
				   					        	location.href="${pageContext.request.contextPath}/admin/supplierlist";
				  					        }else{
				   					        	alert('YOU HAVE ERRORS WHEN DELETE EXSITING CATEGORY.');
				   					        }
				   					    },
				   					    error:function(data,status,er) { 
				   					        console.log("error: "+data+" status: "+status+" er:"+er);
				   					    }
				   					});
				 					
				   				}
				 			}); 
			$("#btn_add_user").click(function(){  	
				//clearFormAdd();
				//clearUser();
				$('#form_add_supplier').modal({
					"backdrop":"static"
				}) ;
			});
			$("#save").click(function(){
            	var supName 		= $("#supplierName").val();
	 			var phoneNm 		= $("#phoneNumber").val();
	 			var address 		= $("#address").val();
	 			var email 			= $("#email").val();
	 			alert
	 			json = {
	 						"supplierName"   		  : supName,
	 						"supplierNumber" 		  : phoneNm,
	 						"supplierAddress"		  : address,
	 						"supplierEmail"	 		  : email
	 			};
	 			console.log(JSON.stringify(json));
	 			$.ajax({
	 				 url: "${pageContext.request.contextPath}/admin/addSupplier", 
 				    type: 'POST',
	 				datatype: 'JSON',
	 				data: JSON.stringify(json), 
	 				beforeSend: function(xhr) {
	 		            xhr.setRequestHeader("Accept", "application/json");
	 		            xhr.setRequestHeader("Content-Type", "application/json");
	 		        },
	 				success: function(data){
	 					location.href="${pageContext.request.contextPath}/admin/supplierlist";
	 				},
	 				error:function(data, status,er){
	 					console.log("error: " + data + "status: " + status + "er: ");
	 				}
	 			}); 
            });
				      
		});
	</script>

	<!-- Examples -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/datatables/dataTables.bootstrap.js"></script>
</body>
</html>