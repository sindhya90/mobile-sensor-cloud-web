<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Mobile Sensor Cloud - Admin Dashboard</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <!-- meta http-equiv="refresh" content="30" -->

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>

</head>

<body onload="Sensor()">

<div id="session" data-email="${sessionScope.email}" />

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
                    <a href="vendor-dashboard.jsp">
                        <i class="fa fa-dashboard"></i>
                        <p>Dashboard</p>
                    </a>
                </li>-->
                <li class="active">
                    <a href="vendor-sensors.jsp">
                        <i class="fa fa-wifi"></i>
                        <p>Sensors</p>
                    </a>
                </li>
                <li>
                    <a href="vendor-charts.html">
                        <i class="fa fa-area-chart"></i>
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
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> Vendor Dashboard</a>
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
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Sensors
                                    <button class="btn btn-info btn-fill pull-right" data-toggle="modal"
                                            data-target="#add-sensors">Add Sensor
                                    </button>
                                </h4>

                            </div>
                            <div class="content table-responsive table-full-width">
                                <table id="sensortable" class="table table-hover">
                                    <thead>
                                    <th>No</th>
                                    <th>Sensor Name</th>
                                    <th>Sensor Type</th>
                                    <th>Sensor status</th>
                                    <th>Sensor Location</th>
                                    <th>operations</th>
                                    </thead>
                                    <tbody>


                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>

<div id="add-sensors" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Sensor</h4>
            </div>
            <div class="modal-body">
                <div class="content">
                    <form id="add-form">
                        <div class="row">
                            <!--<div class="col-md-7">
                                <div class="form-group">
                                    <label>Sensor Id</label>
                                    <input id="sensor-num" type="number" class="form-control" placeholder="Sensor No" name="sensorId">
                                </div>
                            </div>-->
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Sensor Name</label>
                                    <input id="add-sensor-name" type="text" class="form-control"
                                           placeholder="Sensor Name"
                                           name="sensorName">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Sensor Type</label>
                                    <input id="add-sensor-type" type="text" class="form-control"
                                           placeholder="Sensor Type"
                                           name="sensorType">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Status</label>
                                    <!--input id="sensor-status" type="text" class="form-control" placeholder="state of sensor" name="sensorStatus"-->
                                    <select id="add-sensor-status" class="form-control" name="sensorStatus">
                                        <option value="true">Active</option>
                                        <option value="false">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Location</label>
                                    <!--input id="sensor-location" type="text" class="form-control" placeholder="Location" name="sensorLocation"-->
                                    <select id="add-sensor-location" class="form-control" name="sensorLocation">
                                        <option value="SFO">SF</option>
                                        <option value="Foster city">Milpitas</option>
                                        <option value="San Jose">San Jose</option>
                                        <option value="Santa Clara">Santa Clara</option>
                                        <option value="Fremont">Fremont</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <div class="form-group">
                                    <input class="btn btn-info btn-fill pull-left" onclick="add_sensor()" type="button"
                                           value="Submit">
                                    <input class="btn btn-danger btn-fill pull-right" onclick="cancel_add_sensor()" type="button" value="Cancel"/>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="edit-sensors" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit Sensor</h4>
            </div>
            <div class="modal-body">
                <div class="content">
                    <form id="edit-form">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Sensor Id</label>
                                    <input id="edit-sensor-num" type="number" class="form-control"
                                           placeholder="Sensor No" name="sensorId">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Sensor Name</label>
                                    <input id="edit-sensor-name" type="text" class="form-control"
                                           placeholder="Sensor Name"
                                           name="sensorName">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Sensor Type</label>
                                    <input id="edit-sensor-type" type="text" class="form-control"
                                           placeholder="Sensor Type"
                                           name="sensorType">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Status</label>
                                    <!--input id="sensor-status" type="text" class="form-control" placeholder="state of sensor" name="sensorStatus"-->
                                    <select id="edit-sensor-status" class="form-control" name="sensorStatus">
                                        <option value="true">Active</option>
                                        <option value="false">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Location</label>
                                    <!--input id="sensor-location" type="text" class="form-control" placeholder="Location" name="sensorLocation"-->
                                    <select id="edit-sensor-location" class="form-control" name="sensorLocation">
                                        <option value="SFO">SF</option>
                                        <option value="Foster city">Milpitas</option>
                                        <option value="San Jose">San Jose</option>
                                        <option value="Santa Clara">Santa Clara</option>
                                        <option value="Fremont">Fremont</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <div class="form-group">
                                    <input class="btn btn-info btn-fill pull-left" onclick="update_sensor()"
                                           type="submit"
                                           value="Submit">
                                    <input class="btn btn-danger btn-fill pull-right" onclick="cancel_edit_sensor()" type="button" value="Cancel"/>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!--<div id="dialog" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Sensor</h4>
            </div>
            <div class="modal-body">
                <div class="content">

                </div>
            </div>
        </div>
    </div>
</div>-->

<dialog id="delete-dialog">
    <p id="dialog_message"> Sensor Deleted</p>
    <buttton class="btn btn-info btn-fill pull-right" id="dialog_ok"> OK</buttton>
</dialog>
</body>


<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/chartist.min.js"></script>
<script src="js/sensor.js"></script>


</html>
