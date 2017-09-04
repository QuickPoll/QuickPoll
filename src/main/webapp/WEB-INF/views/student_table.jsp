<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">	
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="resources/common/quickpoll_bootstrap/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="resources/common/quickpoll_bootstrap/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard PRO by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


     <!-- Bootstrap core CSS     -->
    <link href="resources/common/quickpoll_bootstrap/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Paper Dashboard core CSS    -->
    <link href="resources/common/quickpoll_bootstrap/assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="resources/common/quickpoll_bootstrap/assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="resources/common/quickpoll_bootstrap/assets/css/themify-icons.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<div class="sidebar" data-background-color="brown" data-active-color="danger">
	    <!--
			Tip 1: you can change the color of the sidebar's background using: data-background-color="white | brown"
			Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
		-->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text">
					Creative Tim
				</a>
			</div>
			<div class="logo logo-mini">
				<a href="http://www.creative-tim.com" class="simple-text">
					Ct
				</a>
			</div>
	    	<div class="sidebar-wrapper">
				<div class="user">
	                <div class="photo">
	                    <img src="resources/common/quickpoll_bootstrap/assets/img/faces/face-2.jpg" />
	                </div>
	                <div class="info">
	                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
	                        Chet Faker
	                        <b class="caret"></b>
	                    </a>
	                    <div class="collapse" id="collapseExample">
	                        <ul class="nav">
	                            <li><a href="#profile">My Profile</a></li>
	                            <li><a href="#edit">Edit Profile</a></li>
	                            <li><a href="#settings">Settings</a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            <ul class="nav">
					<li>
	                    <a data-toggle="collapse" href="#dashboardOverview">
	                        <i class="ti-panel"></i>
	                        <p>Dashboard
                                <b class="caret"></b>
                            </p>
	                    </a>
                        <div class="collapse" id="dashboardOverview">
							<ul class="nav">
								<li><a href="../dashboard/overview.html">Overview</a></li>
								<li><a href="../dashboard/stats.html">Stats</a></li>
							</ul>
						</div>
	                </li>
	                <li>
	                    <a data-toggle="collapse" href="#componentsExamples">
	                        <i class="ti-package"></i>
	                        <p>Components
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="componentsExamples">
	                        <ul class="nav">
	                            <li><a href="../components/buttons.html">Buttons</a></li>
	                            <li><a href="../components/grid.html">Grid System</a></li>
	                            <li><a href="../components/panels.html">Panels</a></li>
	                            <li><a href="../components/sweet-alert.html">Sweet Alert</a></li>
	                            <li><a href="../components/notifications.html">Notifications</a></li>
	                            <li><a href="../components/icons.html">Icons</a></li>
	                            <li><a href="../components/typography.html">Typography</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
						<a data-toggle="collapse" href="#formsExamples">
	                        <i class="ti-clipboard"></i>
	                        <p>
								Forms
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="formsExamples">
	                        <ul class="nav">
								<li><a href="../forms/regular.html">Regular Forms</a></li>
								<li><a href="../forms/extended.html">Extended Forms</a></li>
								<li><a href="../forms/validation.html">Validation Forms</a></li>
	                            <li><a href="../forms/wizard.html">Wizard</a></li>
	                        </ul>
	                    </div>
	                </li>
					<li class="active">
						<a data-toggle="collapse" href="#tablesExamples">
	                        <i class="ti-view-list-alt"></i>
	                        <p>
								Table list
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse in" id="tablesExamples">
	                        <ul class="nav">
								<li><a href="regular.html">Regular Tables</a></li>
	                            <li><a href="extended.html">Extended Tables</a></li>
	                            <li class="active"><a href="bootstrap-table.html">Bootstrap Table</a></li>
								<li><a href="datatables.net.html">DataTables.net</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
						<a data-toggle="collapse" href="#mapsExamples">
	                        <i class="ti-map"></i>
	                        <p>
								Maps
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="mapsExamples">
	                        <ul class="nav">
								<li><a href="../maps/google.html">Google Maps</a></li>
								<li><a href="../maps/vector.html">Vector maps</a></li>
								<li><a href="../maps/fullscreen.html">Full Screen Map</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                    <a href="../charts.html">
	                        <i class="ti-bar-chart-alt"></i>
	                        <p>Charts</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="../calendar.html">
	                        <i class="ti-calendar"></i>
	                        <p>Calendar</p>
	                    </a>
	                </li>
	                <li>
						<a data-toggle="collapse" href="#pagesExamples">
	                        <i class="ti-gift"></i>
	                        <p>
								Pages
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="pagesExamples">
	                        <ul class="nav">
								<li><a href="../pages/timeline.html">Timeline Page</a></li>
								<li><a href="../pages/user.html">User Page</a></li>
								<li><a href="../pages/login.html">Login Page</a></li>
								<li><a href="../pages/register.html">Register Page</a></li>
								<li><a href="../pages/lock.html">Lock Screen Page</a></li>
	                        </ul>
	                    </div>
	                </li>
	            </ul>
	    	</div>
	    </div>

	    <div class="main-panel">
			<nav class="navbar navbar-default">
	            <div class="container-fluid">
					<div class="navbar-minimize">
						<button id="minimizeSidebar" class="btn btn-fill btn-icon"><i class="ti-more-alt"></i></button>
					</div>
	                <div class="navbar-header">
	                    <button type="button" class="navbar-toggle">
	                        <span class="sr-only">Toggle navigation</span>
	                        <span class="icon-bar bar1"></span>
	                        <span class="icon-bar bar2"></span>
	                        <span class="icon-bar bar3"></span>
	                    </button>
	                    <a class="navbar-brand" href="#datatable">Bootstrap Table</a>
	                </div>
	                <div class="collapse navbar-collapse">
						<form class="navbar-form navbar-left navbar-search-form" role="search">
	    					<div class="input-group">
	    						<span class="input-group-addon"><i class="fa fa-search"></i></span>
	    						<input type="text" value="" class="form-control" placeholder="Search...">
	    					</div>
	    				</form>
	                    <ul class="nav navbar-nav navbar-right">
	                        <li>
	                            <a href="#stats" class="dropdown-toggle btn-magnify" data-toggle="dropdown">
	                                <i class="ti-panel"></i>
									<p>Stats</p>
	                            </a>
	                        </li>
	                        <li class="dropdown">
	                            <a href="#notigfications" class="dropdown-toggle" data-toggle="dropdown">
	                                <i class="ti-bell"></i>
	                                <span class="notification">5</span>
									<p class="hidden-md hidden-lg">
										Notifications
										<b class="caret"></b>
									</p>
	                            </a>
	                        	<ul class="dropdown-menu">
	                                <li><a href="#not1">Notification 1</a></li>
	                                <li><a href="#not2">Notification 2</a></li>
	                                <li><a href="#not3">Notification 3</a></li>
	                                <li><a href="#not4">Notification 4</a></li>
	                                <li><a href="#another">Another notification</a></li>
	                            </ul>
	                        </li>
							<li>
	                            <a href="#settings" class="btn-rotate">
									<i class="ti-settings"></i>
									<p class="hidden-md hidden-lg">
										Settings
									</p>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	        </nav>

	        <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="card">
	                            <div class="content">
	                                <div class="toolbar">
	                                    <!--Here you can write extra buttons/actions for the toolbar-->
	                                </div>
	                                <table id="bootstrap-table" class="table">
	                                    <thead>
	                                        <th data-field="state" data-checkbox="true"></th>
	                                        <th data-field="id" class="text-center">ID</th>
	                                    	<th data-field="name" data-sortable="true">Name</th>
	                                    	<th data-field="salary" data-sortable="true">Salary</th>
	                                    	<th data-field="country" data-sortable="true">Country</th>
	                                    	<th data-field="city">City</th>
	                                    	<th data-field="actions" class="td-actions text-right" data-events="operateEvents" data-formatter="operateFormatter">Actions</th>
	                                    </thead>
	                                    <tbody>
	                                        <tr>
	                                            <td></td>
	                                        	<td>1</td>
	                                        	<td>Dakota Rice</td>
	                                        	<td>$36,738</td>
	                                        	<td>Niger</td>
	                                        	<td>Oud-Turnhout</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>2</td>
	                                        	<td>Minerva Hooper</td>
	                                        	<td>$23,789</td>
	                                        	<td>Curaçao</td>
	                                        	<td>Sinaai-Waas</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>3</td>
	                                        	<td>Sage Rodriguez</td>
	                                        	<td>$56,142</td>
	                                        	<td>Netherlands</td>
	                                        	<td>Baileux</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>4</td>
	                                        	<td>Philip Chaney</td>
	                                        	<td>$38,735</td>
	                                        	<td>Korea, South</td>
	                                        	<td>Overland Park</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>5</td>
	                                        	<td>Doris Greene</td>
	                                        	<td>$63,542</td>
	                                        	<td>Malawi</td>
	                                        	<td>Feldkirchen in Kärnten</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>6</td>
	                                        	<td>Mason Porter</td>
	                                        	<td>$78,615</td>
	                                        	<td>Chile</td>
	                                        	<td>Gloucester</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>7</td>
	                                        	<td>Alden Chen</td>
	                                        	<td>$63,929</td>
	                                        	<td>Finland</td>
	                                        	<td>Gary</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>8</td>
	                                        	<td>Colton Hodges</td>
	                                        	<td>$93,961</td>
	                                        	<td>Nicaragua</td>
	                                        	<td>Delft</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>9</td>
	                                        	<td>Illana Nelson</td>
	                                        	<td>$56,142</td>
	                                        	<td>Heard Island</td>
	                                        	<td>Montone</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>10</td>
	                                        	<td>Nicole Lane</td>
	                                        	<td>$93,148</td>
	                                        	<td>Cayman Islands</td>
	                                        	<td>Cottbus</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>11</td>
	                                        	<td>Chaim Saunders</td>
	                                        	<td>$5,502</td>
	                                        	<td>Romania</td>
	                                        	<td>New Quay</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>12</td>
	                                        	<td>Josiah Simon</td>
	                                        	<td>$50,265</td>
	                                        	<td>Christmas Island</td>
	                                        	<td>Sint-Jans-Molenbeek</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>13</td>
	                                        	<td>Ila Poole</td>
	                                        	<td>$67,413</td>
	                                        	<td>Montenegro</td>
	                                        	<td>Pontevedra</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>14</td>
	                                        	<td>Shana Mejia</td>
	                                        	<td>$58,566</td>
	                                        	<td>Afghanistan</td>
	                                        	<td>Ballarat</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>15</td>
	                                        	<td>Lana Ryan</td>
	                                        	<td>$64,151</td>
	                                        	<td>Martinique</td>
	                                        	<td>Portobuffolè</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>16</td>
	                                        	<td>Daquan Bender</td>
	                                        	<td>$91,906</td>
	                                        	<td>Sao Tome and Principe</td>
	                                        	<td>Walhain-Saint-Paul</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>17</td>
	                                        	<td>Connor Wagner</td>
	                                        	<td>$86,537</td>
	                                        	<td>Germany</td>
	                                        	<td>Solihull</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>18</td>
	                                        	<td>Boris Horton</td>
	                                        	<td>$35,094</td>
	                                        	<td>Laos</td>
	                                        	<td>Saint-Mard</td>
	                                        	<td></td>
	                                        </tr>
	                                        <tr>
	                                            <td></td>
	                                        	<td>19</td>
	                                        	<td>Winifred Ryan</td>
	                                        	<td>$64,436</td>
	                                        	<td>Ireland</td>
	                                        	<td>Ronciglione</td>
	                                        	<td></td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div><!--  end card  -->
	                    </div> <!-- end col-md-12 -->
	                </div> <!-- end row -->
	            </div>
	        </div>

	        <footer class="footer">
	            <div class="container-fluid">
	                <nav class="pull-left">
	                    <ul>
	                        <li>
	                            <a href="http://www.creative-tim.com">
	                                Creative Tim
	                            </a>
	                        </li>
	                        <li>
	                            <a href="http://blog.creative-tim.com">
	                               Blog
	                            </a>
	                        </li>
	                        <li>
	                            <a href="http://www.creative-tim.com/license">
	                                Licenses
	                            </a>
	                        </li>
	                    </ul>
	                </nav>
					<div class="copyright pull-right">
	                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Creative Tim</a>
	                </div>
	            </div>
	        </footer>
	    </div>
	</div>
</body>

	<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery-ui.min.js" type="text/javascript"></script>
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Forms Validations Plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.validate.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="resources/common/quickpoll_bootstrap/assets/js/moment.min.js"></script>

	<!--  Date Time Picker Plugin is included in this js file -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-datetimepicker.js"></script>

	<!--  Select Picker Plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-selectpicker.js"></script>

	<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-checkbox-radio-switch-tags.js"></script>

	<!-- Circle Percentage-chart -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.easypiechart.min.js"></script>

	<!--  Charts Plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-notify.js"></script>

	<!-- Sweet Alert 2 plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/sweetalert2.js"></script>

	<!-- Vector Map plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery-jvectormap.js"></script>

	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js"></script>

	<!-- Wizard Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.bootstrap.wizard.min.js"></script>

	<!--  Bootstrap Table Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-table.js"></script>

	<!--  Plugin for DataTables.net  -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.datatables.js"></script>

	<!--  Full Calendar Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/fullcalendar.min.js"></script>

	<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/demo.js"></script>

	<script type="text/javascript">

		var $table = $('#bootstrap-table');

	        function operateFormatter(value, row, index) {
	            return [
					'<div class="table-icons">',
		                '<a rel="tooltip" title="View" class="btn btn-simple btn-info btn-icon table-action view" href="javascript:void(0)">',
							'<i class="ti-image"></i>',
						'</a>',
		                '<a rel="tooltip" title="Edit" class="btn btn-simple btn-warning btn-icon table-action edit" href="javascript:void(0)">',
		                    '<i class="ti-pencil-alt"></i>',
		                '</a>',
		                '<a rel="tooltip" title="Remove" class="btn btn-simple btn-danger btn-icon table-action remove" href="javascript:void(0)">',
		                    '<i class="ti-close"></i>',
		                '</a>',
					'</div>',
	            ].join('');
	        }

	        $().ready(function(){
	            window.operateEvents = {
	                'click .view': function (e, value, row, index) {
	                    info = JSON.stringify(row);

	                    swal('You click view icon, row: ', info);
	                    console.log(info);
	                },
	                'click .edit': function (e, value, row, index) {
	                    info = JSON.stringify(row);

	                    swal('You click edit icon, row: ', info);
	                    console.log(info);
	                },
	                'click .remove': function (e, value, row, index) {
	                    console.log(row);
	                    $table.bootstrapTable('remove', {
	                        field: 'id',
	                        values: [row.id]
	                    });
	                }
	            };

	            $table.bootstrapTable({
	                toolbar: ".toolbar",
	                clickToSelect: true,
	                showRefresh: true,
	                search: true,
	                showToggle: true,
	                showColumns: true,
	                pagination: true,
	                searchAlign: 'left',
	                pageSize: 8,
	                clickToSelect: false,
	                pageList: [8,10,25,50,100],

	                formatShowingRows: function(pageFrom, pageTo, totalRows){
	                    //do nothing here, we don't want to show the text "showing x of y from..."
	                },
	                formatRecordsPerPage: function(pageNumber){
	                    return pageNumber + " rows visible";
	                },
	                icons: {
	                    refresh: 'fa fa-refresh',
	                    toggle: 'fa fa-th-list',
	                    columns: 'fa fa-columns',
	                    detailOpen: 'fa fa-plus-circle',
	                    detailClose: 'ti-close'
	                }
	            });

	            //activate the tooltips after the data table is initialized
	            $('[rel="tooltip"]').tooltip();

	            $(window).resize(function () {
	                $table.bootstrapTable('resetView');
	            });
			});

	</script>

</html>
