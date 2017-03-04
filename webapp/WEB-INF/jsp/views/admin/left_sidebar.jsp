            <c:url value="/admin/logout" var="logoutUrl" />
			<form id="logout" action="${logoutUrl}" method="post" >
			  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
            <div class="left side-menu hidden-print" >
                <div class="sidebar-inner slimscrollleft">
                    <div class="user-details">
                        <div class="pull-left">
                            <img src="${pageContext.request.contextPath}/resources/images/img/Coke.jpg" alt="" class="thumb-md img-circle">
                        </div>
                        <div class="user-info">
                            <div class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">${pageContext.request.userPrincipal.name} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                                        	<li><a href="javascript:document.getElementById('logout').submit()"><i class="md md-settings-power"></i> Logout</a></li>
									</c:if>
                                    
                                </ul>
                            </div>
                            
                            <%-- <p class="text-muted m-0">${pageContext.request.userPrincipal.name}</p> --%>
                        </div>
                    </div>
                    <!--- Divider -->
                    <div id="sidebar-menu">
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/" class="waves-effect active"><i class="md md-home"></i><span> Dashboard </span></a>
                            </li>

                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ion-ios7-cart"></i><span>Products Mg</span><span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/products">Products </a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/categorylist">Categories</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/unitlist">Units </a></li>
                                     <li><a href="${pageContext.request.contextPath}/admin/importlist">Imports </a></li>
                                   
                                   <!--<li><a href="${pageContext.request.contextPath}/admin/productadd">Add Product</a></li> --> 
                                </ul>
                            </li>

                           <!--<li>
                                <a href="#" class="waves-effect"><i class="md md-mail"></i><span> Unit </span><span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/unitlist">Unit List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/unitadd">Add Unit</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="#" class="waves-effect"><i class="md md-mail"></i><span> Category </span><span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/categorylist">Category List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/categoryadd">Add Category</a></li>
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="md md-palette"></i> <span> Import </span> <span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/importlist">Import List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/importadd">Add Import</a></li>
                                </ul>
                            </li>-->
  							<li class="has_sub">
                                <a href="#" class="waves-effect"><i class="fa fa-shopping-cart"></i> <span> Cash Flow </span> <span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/expenselist">Expense</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/sale_report">Sale</a></li>
                                    <!--<li><a href="${pageContext.request.contextPath}/admin/expenseadd">Add Expense</a></li>-->
                                </ul>
                            </li>
                           <!-- <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ion-social-usd"></i><span> Sale </span><span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/sale_report">Sale List</a></li>
                                    <%-- <li><a href="${pageContext.request.contextPath}/admin/saleadd">Add Sale</a></li> --%>
                                </ul>
                            </li>-->

                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="md md-redeem"></i> <span> Users Mg</span> <span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                	<li><a href="${pageContext.request.contextPath}/admin/userlist">User</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/supplierlist">Suppliers</a></li>
                                    <%-- <li><a href="${pageContext.request.contextPath}/admin/customerlist">Customers</a></li> --%>
                                </ul>
                            </li>
                            
                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="md md-now-widgets"></i><span> Reports </span><span class="pull-right"><i class="md md-add"></i></span></a>
                               <ul class="list-unstyled">
                               		<li><a href="${pageContext.request.contextPath}/admin/purchasereport">Purchase Reports</a></li>
                                    <%-- <li><a href="${pageContext.request.contextPath}/admin/sellreport">Sell Reports</a></li> --%>
                                    <li><a href="${pageContext.request.contextPath}/admin/sale_report">Sell Reports</a></li>
                                    <%-- <li><a href="${pageContext.request.contextPath}/admin/orderreport">Take Out Reports</a></li> --%>
                                    <li><a href="${pageContext.request.contextPath}/admin/import_product_detail_report">Import Product Reports</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/beveragestock">Beverage Stock Accounting Report</a></li>
                                	<%-- <li><a href="${pageContext.request.contextPath}/admin/cupstock">Cup Stock</a></li> --%>
                                </ul>
                            </li>
                            
                            <!--<li class="has_sub">
                                <a href="#" class="waves-effect"><i class="md md-now-widgets"></i><span> Users </span><span class="pull-right"><i class="md md-add"></i></span></a>
                               <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/userlist">User List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/useradd">Add User</a></li>
                                </ul>
                            </li>-->
                            
                           <%--  <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="md md-view-list"></i><span> Setting </span><span class="pull-right"><i class="md md-add"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="${pageContext.request.contextPath}/admin/slides">Slide List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/slideadd">Add Slide</a></li>
                                </ul>
                            </li>  --%>                           
                           
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>