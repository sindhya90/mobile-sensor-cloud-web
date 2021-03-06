<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Mobile Sensor Cloud - Admin Dashboard</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/chartist.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/jquery.canvasjs.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //Better to construct options first and then pass it as a parameter
            var options = {
                title: {
                    text: "Temperature data for sensor 1"
                },
                axisX:{
                    title:"Time"
                },
                axisY:{
                    title:"Temprature"
                },
                animationEnabled: true,
                data: [
                    {
                        type: "spline", //change it to line, area, column, pie, etc
                        dataPoints: [
                            { x: 6, y: 57 },
                            { x: 7, y: 56 },
                            { x: 8, y: 56 },
                            { x: 9, y: 59 },
                            { x: 10, y: 61 },
                            { x: 11, y: 63 },
                            { x: 12, y: 63 },
                            { x: 13, y: 64 },
                            { x: 14, y: 61 },
                            { x: 15, y: 58 },
                            { x: 16, y: 56 },
                            { x: 17, y: 56 },
                            { x: 18, y: 56 },
                            { x: 19, y: 57 },
                            { x: 20, y: 57 }
                        ]
                    }
                ]
            };

            $("#chartContainer").CanvasJSChart(options);

        });
    </script>
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="black">

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Mobile Sensor Cloud
                </a>
            </div>

            <ul class="nav">
                <!--<li>
                    <a href="admin-dashboard.jsp">
                        <i class="fa fa-dashboard"></i>
                        <p>Dashboard</p>
                    </a>
                </li>-->
                <li>
                    <a href="admin-vendor.jsp">
                        <i class="fa fa-user"></i>
                        <p>Vendors</p>
                    </a>
                </li>
                <li>
                    <a href="admin-users.jsp">
                        <i class="fa fa-users"></i>
                        <p>Users</p>
                    </a>
                </li>
                <li class="active">
                    <a href="admin-charts.jsp">
                        <i class="fa fa-line-chart"></i>
                        <p>Sensor Data</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> Sensor Data</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <!--<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>-->
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <!--<li>
                           <a href="">
                               Account
                            </a>
                        </li>-->

                        <li>
                            <a href="#">
                                Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">

                    </div>

                    <div id="chartContainer" class="col-md-8" style="height: 300px; width: 100%;">

                    </div>
                </div>



                <div class="row">
                    <div class="col-md-6">

                    </div>

                    <div class="col-md-6">

                    </div>
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">

            </div>
        </footer>

    </div>
</div>


</body>






</html>
