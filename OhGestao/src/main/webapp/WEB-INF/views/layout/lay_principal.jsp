<%@page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" /></title>

<meta name="description" content="Dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.png"
	type="image/x-icon">


<!--Basic Styles-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/css/weather-icons.min.css"
	rel="stylesheet" />

<!--Fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>
<!--Beyond styles-->
<link id="beyond-link"
	href="${pageContext.request.contextPath}/resources/assets/css/beyond.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/css/demo.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/css/typicons.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css"
	rel="stylesheet" />
<link id="skin-link" href="" rel="stylesheet" type="text/css" />

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/skins.js"></script>
</head>

<!-- Body -->
<body>
<c:url var="setMenu" value="teste" />
	<!-- Loading Container -->
	<div class="loading-container">
		<div class="loader"></div>
	</div>
	<!--  /Loading Container -->

	
	<!-- Main Container -->
	<div class="main-container container-fluid">
	<tiles:insertAttribute name="header" />	
		<!-- Page Container -->
		<div class="page-container">
		
			<tiles:insertAttribute name="menu" />
			
			<tiles:insertAttribute name="chat" />
			
			<tiles:insertAttribute name="body" />

		</div>
		<!-- /Page Container -->
		<!-- Main Container -->

	</div>
	
		<!--Meus JS-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	
	

	<!--Basic Scripts-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/slimscroll/jquery.slimscroll.min.js"></script>

	<!--Beyond Scripts-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/beyond.js"></script>


	<!--Page Related Scripts-->
	<!--Sparkline Charts Needed Scripts-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/sparkline/jquery.sparkline.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/sparkline/sparkline-init.js"></script>

	<!--Easy Pie Charts Needed Scripts-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/easypiechart/jquery.easypiechart.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/easypiechart/easypiechart-init.js"></script>

	<!--Flot Charts Needed Scripts-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/flot/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/flot/jquery.flot.tooltip.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/charts/flot/jquery.flot.orderBars.js"></script>
 	<!--Page Related Scripts-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/validation/bootstrapValidator.js"></script>

    <script>
        $(document).ready(function () {

            $("#registrationForm").bootstrapValidator();

            $('#togglingForm').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                submitHandler: function (validator, form, submitButton) {
                    // Do nothing
                },
                fields: {
                    firstName: {
                        validators: {
                            notEmpty: {
                                message: 'The first name is required'
                            }
                        }
                    },
                    lastName: {
                        validators: {
                            notEmpty: {
                                message: 'The last name is required'
                            }
                        }
                    },
                    company: {
                        validators: {
                            notEmpty: {
                                message: 'The company name is required'
                            }
                        }
                    },
                    // These fields will be validated when being visible
                    job: {
                        validators: {
                            notEmpty: {
                                message: 'The job title is required'
                            }
                        }
                    },
                    department: {
                        validators: {
                            notEmpty: {
                                message: 'The department name is required'
                            }
                        }
                    },
                    mobilePhone: {
                        validators: {
                            notEmpty: {
                                message: 'The mobile phone number is required'
                            },
                            digits: {
                                message: 'The mobile phone number is not valid'
                            }
                        }
                    },
                    // These fields will be validated when being visible
                    homePhone: {
                        validators: {
                            digits: {
                                message: 'The home phone number is not valid'
                            }
                        }
                    },
                    officePhone: {
                        validators: {
                            digits: {
                                message: 'The office phone number is not valid'
                            }
                        }
                    }
                }
            })
            .find('button[data-toggle]')
            .on('click', function () {
                var $target = $($(this).attr('data-toggle'));
                // Show or hide the additional fields
                // They will or will not be validated based on their visibilities
                $target.toggle();
                if (!$target.is(':visible')) {
                    // Enable the submit buttons in case additional fields are not valid
                    $('#togglingForm').data('bootstrapValidator').disableSubmitButtons(false);
                }
            });


            $('#accountForm').bootstrapValidator({
                // Only disabled elements are excluded
                // The invisible elements belonging to inactive tabs must be validated
                excluded: [':disabled'],
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                submitHandler: function (validator, form, submitButton) {
                    // Do nothing
                },
                fields: {
                    fullName: {
                        validators: {
                            notEmpty: {
                                message: 'The full name is required'
                            }
                        }
                    },
                    company: {
                        validators: {
                            notEmpty: {
                                message: 'The company name is required'
                            }
                        }
                    },
                    address: {
                        validators: {
                            notEmpty: {
                                message: 'The address is required'
                            }
                        }
                    },
                    city: {
                        validators: {
                            notEmpty: {
                                message: 'The city is required'
                            }
                        }
                    }
                }
            });

            $('#html5Form').bootstrapValidator();
        });
    </script>
	<script>
	
	
		// If you want to draw your charts with Theme colors you must run initiating charts after that current skin is loaded
		$(window)
				.bind(
						"load",
						function() {

							/*Sets Themed Colors Based on Themes*/
							themeprimary = getThemeColorFromCss('themeprimary');
							themesecondary = getThemeColorFromCss('themesecondary');
							themethirdcolor = getThemeColorFromCss('themethirdcolor');
							themefourthcolor = getThemeColorFromCss('themefourthcolor');
							themefifthcolor = getThemeColorFromCss('themefifthcolor');

							//Sets The Hidden Chart Width
							$('#dashboard-bandwidth-chart').data('width',
									$('.box-tabbs').width() - 20);

							//-------------------------Visitor Sources Pie Chart----------------------------------------//
							var data = [ {
								data : [ [ 1, 21 ] ],
								color : '#fb6e52'
							}, {
								data : [ [ 1, 12 ] ],
								color : '#e75b8d'
							}, {
								data : [ [ 1, 11 ] ],
								color : '#a0d468'
							}, {
								data : [ [ 1, 10 ] ],
								color : '#ffce55'
							}, {
								data : [ [ 1, 46 ] ],
								color : '#5db2ff'
							} ];
							var placeholder = $("#dashboard-pie-chart-sources");
							placeholder.unbind();

							$.plot(placeholder, data, {
								series : {
									pie : {
										innerRadius : 0.45,
										show : true,
										stroke : {
											width : 4
										}
									}
								}
							});

							//------------------------------Visit Chart------------------------------------------------//
							var data2 = [
									{
										color : themesecondary,
										label : "Direct Visits",
										data : [ [ 3, 2 ], [ 4, 5 ], [ 5, 4 ],
												[ 6, 11 ], [ 7, 12 ],
												[ 8, 11 ], [ 9, 8 ],
												[ 10, 14 ], [ 11, 12 ],
												[ 12, 16 ], [ 13, 9 ],
												[ 14, 10 ], [ 15, 14 ],
												[ 16, 15 ], [ 17, 9 ] ],

										lines : {
											show : true,
											fill : true,
											lineWidth : .1,
											fillColor : {
												colors : [ {
													opacity : 0
												}, {
													opacity : 0.4
												} ]
											}
										},
										points : {
											show : false
										},
										shadowSize : 0
									},
									{
										color : themeprimary,
										label : "Referral Visits",
										data : [ [ 3, 10 ], [ 4, 13 ],
												[ 5, 12 ], [ 6, 16 ],
												[ 7, 19 ], [ 8, 19 ],
												[ 9, 24 ], [ 10, 19 ],
												[ 11, 18 ], [ 12, 21 ],
												[ 13, 17 ], [ 14, 14 ],
												[ 15, 12 ], [ 16, 14 ],
												[ 17, 15 ] ],
										bars : {
											order : 1,
											show : true,
											borderWidth : 0,
											barWidth : 0.4,
											lineWidth : .5,
											fillColor : {
												colors : [ {
													opacity : 0.4
												}, {
													opacity : 1
												} ]
											}
										}
									},
									{
										color : themethirdcolor,
										label : "Search Engines",
										data : [ [ 3, 14 ], [ 4, 11 ],
												[ 5, 10 ], [ 6, 9 ], [ 7, 5 ],
												[ 8, 8 ], [ 9, 5 ], [ 10, 6 ],
												[ 11, 4 ], [ 12, 7 ],
												[ 13, 4 ], [ 14, 3 ],
												[ 15, 4 ], [ 16, 6 ], [ 17, 4 ] ],
										lines : {
											show : true,
											fill : false,
											fillColor : {
												colors : [ {
													opacity : 0.3
												}, {
													opacity : 0
												} ]
											}
										},
										points : {
											show : true
										}
									} ];
							var options = {
								legend : {
									show : false
								},
								xaxis : {
									tickDecimals : 0,
									color : '#f3f3f3'
								},
								yaxis : {
									min : 0,
									color : '#f3f3f3',
									tickFormatter : function(val, axis) {
										return "";
									},
								},
								grid : {
									hoverable : true,
									clickable : false,
									borderWidth : 0,
									aboveData : false,
									color : '#fbfbfb'

								},
								tooltip : true,
								tooltipOpts : {
									defaultTheme : false,
									content : " <b>%x May</b> , <b>%s</b> : <span>%y</span>",
								}
							};
							var placeholder = $("#dashboard-chart-visits");
							var plot = $.plot(placeholder, data2, options);

							//------------------------------Real-Time Chart-------------------------------------------//
							var realTimedata = [], realTimedata2 = [], totalPoints = 300;

							var getSeriesObj = function() {
								return [ {
									data : getRandomData(),
									lines : {
										show : true,
										lineWidth : 1,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 0
											}, {
												opacity : 1
											} ]
										},
										steps : false
									},
									shadowSize : 0
								}, {
									data : getRandomData2(),
									lines : {
										lineWidth : 0,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : .5
											}, {
												opacity : 1
											} ]
										},
										steps : false
									},
									shadowSize : 0
								} ];
							};
							function getRandomData() {
								if (realTimedata.length > 0)
									realTimedata = realTimedata.slice(1);

								// Do a random walk

								while (realTimedata.length < totalPoints) {

									var prev = realTimedata.length > 0 ? realTimedata[realTimedata.length - 1]
											: 50, y = prev + Math.random() * 10
											- 5;

									if (y < 0) {
										y = 0;
									} else if (y > 100) {
										y = 100;
									}
									realTimedata.push(y);
								}

								// Zip the generated y values with the x values

								var res = [];
								for (var i = 0; i < realTimedata.length; ++i) {
									res.push([ i, realTimedata[i] ]);
								}

								return res;
							}
							function getRandomData2() {
								if (realTimedata2.length > 0)
									realTimedata2 = realTimedata2.slice(1);

								// Do a random walk

								while (realTimedata2.length < totalPoints) {

									var prev = realTimedata2.length > 0 ? realTimedata[realTimedata2.length]
											: 50, y = prev - 25;

									if (y < 0) {
										y = 0;
									} else if (y > 100) {
										y = 100;
									}
									realTimedata2.push(y);
								}

								var res = [];
								for (var i = 0; i < realTimedata2.length; ++i) {
									res.push([ i, realTimedata2[i] ]);
								}

								return res;
							}
							// Set up the control widget
							var updateInterval = 500;
							var plot = $
									.plot(
											"#dashboard-chart-realtime",
											getSeriesObj(),
											{
												yaxis : {
													color : '#f3f3f3',
													min : 0,
													max : 100,
													tickFormatter : function(
															val, axis) {
														return "";
													}
												},
												xaxis : {
													color : '#f3f3f3',
													min : 0,
													max : 100,
													tickFormatter : function(
															val, axis) {
														return "";
													}
												},
												grid : {
													hoverable : true,
													clickable : false,
													borderWidth : 0,
													aboveData : false
												},
												colors : [ '#eee', themeprimary ],
											});

							function update() {

								plot.setData(getSeriesObj());

								plot.draw();
								setTimeout(update, updateInterval);
							}
							update();

							//-------------------------Initiates Easy Pie Chart instances in page--------------------//
							InitiateEasyPieChart.init();

							//-------------------------Initiates Sparkline Chart instances in page------------------//
							InitiateSparklineCharts.init();
						});
	</script>



</body>
<!--  /Body -->
</html>