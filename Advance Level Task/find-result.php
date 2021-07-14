<?php
session_start();
error_reporting(0);
include('includes/config.php');?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Result Management System</title>
      
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
      
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
        <script src="../assets/js/index.js"></script>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    </head>
    <body class="bg-dark">
         <div class="row">
             <div class="col-sm-4"></div>
             <div class="col-sm-4">
                 <div class="card" style="height: 60vh;margin-top:30%;margin-bottom:30%;">
                 <div style="margin:5%;">
                 <h4 class="text-center">Student Result Management System</h4>
                 <form action="result.php" method="post" class="form">
                                   <br>             		
                    <input type="text" class="form-control" id="rollid" placeholder="Enter Your Roll Id" autocomplete="off" name="rollid">
                                
                     <br>
                                 <select name="class" class="form-control" id="default" required="required">
                                    <option value="">Select Class</option>
                                        <?php $sql = "SELECT * from tblclasses";
                                            $query = $dbh->prepare($sql);
                                            $query->execute();
                                            $results=$query->fetchAll(PDO::FETCH_OBJ);
                                            if($query->rowCount() > 0)
                                            {
                                            foreach($results as $result)
                                            {   ?>
                                    <option value="<?php echo htmlentities($result->id); ?>"><?php echo htmlentities($result->ClassName); ?>&nbsp; Section-<?php echo htmlentities($result->Section); ?></option>
                                    <?php }} ?>
                                 </select>
                             <br><br>
                               <button type="submit" class="btn btn-primary pull-right">Search<i class="fa fa-check"></i></button>
                                <div class="clearfix"> <a href="index.php">Back to Home</a></div>
                             </div>
                                           
                         </form>

                 </div>
                </div>
             </div>
             <div class="col-sm-4"></div>
         </div>

        <script src="js/main.js"></script>
        <script>
            $(function(){
                $('input.flat-blue-style').iCheck({
                    checkboxClass: 'icheckbox_flat-blue'
                });
            });
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
    </body>
</html>
