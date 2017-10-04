$(document)
		.ready(
				function() {

					var sock = null;
					var message = {};
					// sock = new
					// SockJS("http://13.124.224.234:8080/QuickPollSocketServer/echo");
					sock = new SockJS(
							"http://localhost:8080/QuickPollSocketServer/echo");
					// 자바스크립트 안에 function을 집어넣을 수 있음.

					// 데이터가 나한테 전달되읐을 때 자동으로 실행되는 function

					sock.onmessage = professorLecture.onMessage;

					// 데이터를 끊고싶을때 실행하는 메소드

					sock.onclose = professorLecture.onClose;

					sock.onopen = function() {
						message = {};
						message.course_id = "cs";
						message.type = "create";
						message.id = $("#id").val();
						message.name = "kim";
						sock.send(JSON.stringify(message));

					};

					$("#sendDirectQuestionBtn")
							.click(
									function() {
										var direct_question_content = $(
												"#direct_question_content")
												.val();
										message = {};
										message.type = "sendDirectQuestion";
										message.id = $("#id").val();
										message.course_id = "cs";
										message.question_type = 1;
										message.question_content = direct_question_content;
										sock.send(JSON.stringify(message));
										var table_html = '<div class="content"><div class="container-fluid"><div class="row"><div class="col-md-12"><div class="card"><div id="table_content" class="content"><div class="toolbar"></div><table id="bootstrap-table" class="table"><thead><th data-field="state" data-checkbox="true"></th><th data-field="id" class="text-center">번호</th><th data-field="city">답안</th></thead><tbody><tr><td></td><td>1</td><td>1</td></tr></tbody></table></div></div></div></div></div></div>'
										$('#question_content').html(table_html);

										// $('#question_content').html('<button
										// type="button" class="btn btn-info
										// btn-fill btn-wd btn-next pull-center"
										// id="sendDirectQuestionBtn">결과보기</button>');

									});
					$("#sendObjectiveQuestionBtn")
							.click(
									function() {
										var cnt = $('#objective_header')
												.children().length;
										var objective_question_content;
										message = {};
										message.type = "sendObjectiveQuestion";
										message.id = $("#id").val();
										message.course_id = "cs";
										message.question_type = 2;
										for (var i = 1; i < cnt; i++) {
											if ($('#objective_question_check'+ i + '').css('visibility') == "visible") {
												objective_question_content = $.trim($('#objective_question_content'+ i+ '').text());
												message.question_content = objective_question_content;
												var example1 = $('#example' + i + "_1").text();
												var example2 = $("#example" + i + "_2").text();
												var example3 = $("#example" + i + "_3").text();
												var example4 = $("#example" + i + "_4").text();
												message.example1 = example1.substring(3,example1.length);
												message.example2 = example2.substring(3,example2.length);
												message.example3 = example3.substring(3,example3.length);
												message.example4 = example4.substring(3,example4.length);
												break;
											}
										}
										sock.send(JSON.stringify(message));
										
										var watting_html = '<div class="content"><div class="row"><div id="" class="col-md-10 col-md-offset-1">'+ 
											'<div class="panel panel-border panel-default">'+
										'<div class="panel-heading">'+
											'<h4 class="panel-title">Q. ' + message.question_content + '</h4>'+
										'</div>'+
										'<br />'+						
										'<div id="objective_question_header_student">'+
											'<div class="panel panel-border panel-default">'+
												'<a data-toggle="collapse"'+
													'onclick="">'+
													'<div class="panel-heading">'+
														'<h4 class="panel-title">'+
														'<span id=""'+
															'style="visibility: hidden" class="ti-check"></span>1. ' + message.example1 +
															'</h4>'+
													'</div></a>'+
											'</div>'+
											'<div class="panel panel-border panel-default">'+
												'<a data-toggle="collapse"'+
													'onclick="">'+
													'<div class="panel-heading">'+
														'<h4 class="panel-title">'+
														'<span id=""'+
														'style="visibility: hidden" class="ti-check"></span>2. ' + message.example2 +
														'</h4>'+
												'</div></a>'+
											'</div>'+
											'<div class="panel panel-border panel-default">'+
												'<a data-toggle="collapse"'+
												'onclick="">'+
												'<div class="panel-heading">'+
													'<h4 class="panel-title">'+
														'<span id=""'+
															'style="visibility: hidden" class="ti-check"></span>3. ' + message.example3 +
													'</h4>'+
												'</div></a>'+
											'</div>'+
											'<div class="panel panel-border panel-default">'+
												'<a data-toggle="collapse"'+
												'onclick="">'+
												'<div class="panel-heading">'+
													'<h4 class="panel-title">'+
														'<span id=""'+
															'style="visibility: hidden" class="ti-check"></span>4. ' + message.example4 +
													'</h4>'+
												'</div></a>'+
											'</div>'+
										'</div>'+
									'</div></div>'+
									'<div id="result_objective_question">'+
									'<div class="col-md-10 col-md-offset-1">'+
										'<div class="card card-circle-chart" data-background="color" data-color="blue">'+
											'<div class="header text-center"><h5 class="title">제출현황</h5><p class="description">해당 문제에 제출자 현황입니다.</p></div>'+
											'<div id="connected_student_percent" class="content">'+
												'<div id="chartDashboard" class="chart-circle" data-percent="0">0 / 전체인원</div>'+
											'</div>'+
										'</div>'+
										'</div>'+
									'<button type="button" class="btn btn-info btn-fill btn-wd btn-next pull-right" onclick="objectiveQuestionResultBtn();">결과보기</button>'+
									'</div></div></div>';


										$('#question_content').html(
												watting_html);
										
										
										

										demo.initOverviewDashboard();
										demo.initCirclePercentage();

										objectiveQuestionResultBtn = function() {
											var result_html = '<div class="col-lg-3 col-sm-6">'+
												'<div class="card card-circle-chart" data-background="color" data-color="blue">'+
											'<div class="header text-center">'+
				                                '<h5 class="title">Dashboard</h5>'+
				                                '<p class="description">Monthly sales target</p>'+
				                            '</div>'+
											'<div class="content">'+
												'<div id="chartDashboard" class="chart-circle" data-percent="10">1/10</div>'+
											'</div>'+
										'</div>'+
									'</div>'+
									'<div class="col-lg-3 col-sm-6">'+
										'<div class="card card-circle-chart" data-background="color" data-color="green">'+
											'<div class="header text-center">'+
				                                '<h5 class="title">Orders</h5>'+
				                                '<p class="description">Completed</p>'+
				                            '</div>'+
											'<div class="content">'+
												'<div id="chartOrders" class="chart-circle" data-percent="34">34%</div>'+
											'</div>'+
										'</div>'+
									'</div>'+
									'<div class="col-lg-3 col-sm-6">'+
										'<div class="card card-circle-chart" data-background="color" data-color="orange">'+
											'<div class="header text-center">'+
				                                '<h5 class="title">New Visitors</h5>'+
				                                '<p class="description">Out of total number</p>'+
				                            '</div>'+
											'<div class="content">'+
												'<div id="chartNewVisitors" class="chart-circle" data-percent="62">62%</div>'+
											'</div>'+
										'</div>'+
									'</div>'+
									'<div class="col-lg-3 col-sm-6">'+
										'<div class="card card-circle-chart" data-background="color" data-color="brown">'+
											'<div class="header text-center">'+
				                                '<h5 class="title">Subscriptions</h5>'+
				                                '<p class="description">Monthly newsletter</p>'+
				                            '</div>'+
											'<div class="content">'+
												'<div id="chartSubscriptions" class="chart-circle" data-percent="10">10%</div>'+
											'</div>'+
										'</div>'+
									'</div>';
											$('#result_objective_question').html(result_html);

											demo.initOverviewDashboard();
											demo.initCirclePercentage();
										};

									});

					$("#close").click(function() {
						location.href = "/QuickPollSocketServer/";
					});

				});
professorLecture = {

	// 웸소켓을 지정한 url로 연결한다.

	sendMessage : function() {
		/* 소켓으로 보내겠다. */
		sock.send("h");
	},

	// evt 파라미터는 웹소켓을 보내준 데이터다.(자동으로 들어옴)

	onMessage : function(evt) {
		var data = evt.data;
		// alert(data);
		var parsedJson = JSON.parse(data);
		if (parsedJson.type == "connect")
			$('li').remove('#' + parsedJson.id);
		else if (parsedJson.type == "directQuestionAnswer") {
			var length = ($('#bootstrap-table > tbody > tr').length) + 1;
			var tr_html = '<tr data-index="'
					+ (length - 1)
					+ '"><td class="bs-checkbox"><input data-index="'
					+ (length - 1)
					+ '" name="btSelectItem" type="checkbox"></td><td class="text-center" style="">'
					+ length + '</td><td style="">'
					+ parsedJson.question_answer + '</td></tr>'
			$('#bootstrap-table > tbody:last').append(tr_html);
			var $table = $('#bootstrap-table');
			$table.bootstrapTable({
				toolbar : ".toolbar",
				clickToSelect : true,
				showRefresh : true,
				search : true,
				showToggle : true,
				showColumns : true,
				pagination : true,
				searchAlign : 'left',
				pageSize : 8,
				clickToSelect : false,
				pageList : [ 8, 10, 25, 50, 100 ],

				formatShowingRows : function(pageFrom, pageTo, totalRows) {
					//do nothing here, we don't want to show the text "showing x of y from..."
				},
				formatRecordsPerPage : function(pageNumber) {
					return pageNumber + " rows visible";
				},
				icons : {
					refresh : 'fa fa-refresh',
					toggle : 'fa fa-th-list',
					columns : 'fa fa-columns',
					detailOpen : 'fa fa-plus-circle',
					detailClose : 'ti-close'
				}
			});

			//activate the tooltips after the data table is initialized
			$('[rel="tooltip"]').tooltip();

			$(window).resize(function() {
				$table.bootstrapTable('resetView');
			});
		} else if (parsedJson.type == "objectiveQuestionAnswer") {
			var percent = 10/parsedJson.summitedCount;
			$('#connected_student_percent').html('<div id="chartDashboard" class="chart-circle" data-percent="'+percent+'">' + parsedJson.summitedCount+' / 전체인원</div>');
			demo.initOverviewDashboard();
			demo.initCirclePercentage();
		}
		// sock.close();
	},

	onClose : function(evt) {

		$("#data").append("연결 끊김");

	},

	closeMessage : function() {

	}

}