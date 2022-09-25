<?php
include_once 'config.php';

session_destroy();

$postData = ''; 
if(!empty($_SESSION['postData'])){ 
    $postData = $_SESSION['postData']; 
    unset($_SESSION['postData']); 
} 
 
$status = $statusMsg = ''; 
if(!empty($_SESSION['status_response'])){ 
    $status_response = $_SESSION['status_response']; 
    $status = $status_response['status']; 
    $statusMsg = $status_response['status_msg']; 
} 

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Event Maker</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	   <div class="row justify-content-center align-items-center" style="height:100vh">
            <div class="col-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="text-center">Add Event</h2>
                        <!-- Status message -->
<?php if(!empty($statusMsg)){ ?>
    <div class="alert alert-<?php echo $status; ?>"><?php echo $statusMsg; ?></div>
<?php } ?>
                        <form action="addEvent.php" method="post" class="mt-3" id="eventForm" autocomplete="off">
                            <div class="form-group">
                                <label for="name">Title:</label>
                                <input type="text" id="title" class="form-control" name="title">
                            </div>
                            <div class="form-group">
                                <label for="description">Description:</label>
                                <textarea class="form-control" rows="5" id="description" name="description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="location">Location:</label>
                                <input type="text" id="location" class="form-control" name="location">
                            </div>
                            <div class="form-group">
                            	<label for="date">Date:</label>
                                <input type="date" id="date" class="form-control" name="date">
                            </div>
                             <div class="form-group">
                                <label for="time_from">Time From:</label>
                                <input type="time" id="time_from" class="form-control" name="time_from">
                            </div>
                             <div class="form-group">
                                <label for="time_to">Time To:</label>
                                <input type="time" id="time_to" class="form-control" name="time_to">
                            </div>
                            <button id="btnAddEvent" class="btn btn-primary" name="submit">Add Event</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>
</body>
</html>