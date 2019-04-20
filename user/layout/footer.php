

<!-- Main Search -->
<div id="search">
    <button id="close" type="button" class="close btn btn-primary btn-icon btn-icon-mini btn-round">x</button>
    <form>
        <input type="search" value="" placeholder="Search..." />
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>

<!-- Right Icon menu Sidebar -->
<div class="navbar-right">
    <ul class="navbar-nav" >
        <li><a href="http://classlink.com/user/controller/suggetion/suggetion.php" class="main_search" style="padding: 15px !important;"  title="Search..."><i class="zmdi zmdi-search"></i></a></li>
        <li class="dropdown">
            <a href="javascript:void(0);" class="dropdown-toggle" style="padding: 15px !important;" title="App" data-toggle="dropdown" role="button"><i class="zmdi zmdi-apps"></i></a>
            <ul class="dropdown-menu slideUp2">
                <li class="header">App Sortcute</li>
                <li class="body">

                <?php
        include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
        
        $user_id= $_SESSION['user']['user_id'];
        $qry=" SELECT * FROM `m_user` WHERE `user_id`='$user_id' ";
        $result=mysqli_query($con,$qry);
        $run = mysqli_fetch_array($result)

        ?>

               
            



              
                    <ul class="menu app_sortcut list-unstyled">
          <!---========================letter box ==================  -->          

                    <?php
                    if ($run['user_role_id']==1) {
                        ?>

                        <li>
                        <a href="http://classlink.com/user/Letter_box/view/show_letter.php" >
                            <div class="icon-circle mb-2"><img src="http://classlink.com/assets/images/icons/letter box.jpg" alt="Letter box" ></div>
                            <p class="mb-0">Letter Box</p>
                        </a>
                    </li>
                        <?php
                    }
                    elseif($run['user_role_id']==2)
                        {
                            ?>
                        <li>
                            <a href="http://classlink.com/user/Letter_box/view/letter.php" >
                                <div class="icon-circle mb-2"><img src="http://classlink.com/assets/images/icons/letter box.jpg" alt="Letter box" ></div>
                                <p class="mb-0">Letter Box</p>
                            </a>
                        </li>
                        <?php

                    }
                    elseif($run['user_role_id']=3){
                        ?>
                        <li>
                        <a href="http://classlink.com/user/Letter_box/view/letter.php" >
                            <div class="icon-circle mb-2"><img src="http://classlink.com/assets/images/icons/letter box.jpg" alt="Letter box" ></div>
                            <p class="mb-0">Letter Box</p>
                        </a>
                    </li>
                    <?php

                    }


                    ?>
            <!----------------------- Announcement  start --------====-->
            <?php 
            if ($run['user_role_id']==1) {
                ?>
                         <li>
                            <a href="http://classlink.com/user/Announcement/view/announcement.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/announcement.png" alt="Announcement" ></div>
                                <p class="mb-0">Announce</p>
                            </a>
                        </li>
                        <?php
                
            }
            elseif($run['user_role_id']==2||$run['user_role_id']==3){
                ?>
                        <li>
                            <a href="http://classlink.com/user/Announcement/view/show_announce.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/announcement.png" alt="Announcement" ></div>
                                <p class="mb-0">Announce</p>
                            </a>
                        </li>
                        <?php
                    } 
                    ?>   
          



    <!-------===========================  timetable =======================------>
    <?php
    if($run['user_role_id']==3||$run['user_role_id']==2)
    {
        ?>

                        <li>
                            <a href="http://classlink.com/user/timetable/view/show_timetable.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/timetable.jpg" alt="Timetable" ></div>
                                <p class="mb-0">Timetable</p>
                            </a>
                        </li>
                        <?php

     }    
     elseif($run['user_role_id']==1||$run['user_role_id']==2)
     {
         ?>
                     <li>
                            <a href="http://classlink.com/user/timetable/view/timetable.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/timetable.jpg" alt="Timetable" ></div>
                                <p class="mb-0">Timetable</p>
                            </a>
                        </li>
                        <?php
     } 
    ?>

    <!----====================== Result ================-->
    <?php
if ($run['user_role_id']==2||$run['user_role_id']==3) {
    ?>

                        <li>
                            <a href="http://classlink.com/user/result/view/show_result.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/result1.jpg" alt="Result" ></div>
                                <p class="mb-0">Result</p>
                            </a>
                        </li>
            <?php            
                        
                    }
elseif($run['user_role_id']==1||$run['user_role _id']==2){
    ?>
    <li>
    <a href="http://classlink.com/user/result/view/result.php">
        <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/result1.jpg" alt="Result" ></div>
        <p class="mb-0">Result</p>
    </a>
</li>
<?php

}


 ?>

 <!--------------------------- Events -------------------------->

 <?php 
 if ($run['user_role_id']==2||$run['user_role_id']==3) {
     
    ?> 
           
       <li>  
                            <a href="http://classlink.com/user/event/view/show_event.php">
                                <div class="icon-circle mb-2"><img src="http://classlink.com/assets/images/icons/event1.png" alt="Event" ></div>
                                <p class="mb-0">Events</p>
                            </a>
                        </li>
                        <?php
                    }  
elseif($run['user_role_id']==1||$run['user_role_id']==2){
    ?>

    <li>  
    <a href="http://classlink.com/user/event/view/event.php">
        <div class="icon-circle mb-2"><img src="http://classlink.com/assets/images/icons/event1.png" alt="Event" ></div>
        <p class="mb-0">Events</p>
    </a>
</li>
<?php

}
?>

<!----============================= Suggestion ==================-->
<?php
if($run['user_role_id']==1){ 
    ?>
                        <li>
                            <a href="http://classlink.com/user/suggestion/view/show_suggestion.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/suggestion.png" alt="Suggestion" ></div>
                                <p class="mb-0">Suggestion</p>
                            </a>
                        </li>
                        <?php
                    }
elseif($run['user_role_id']==2||$run['usr_role_id']==3){
?>
                 <li>
                            <a href="http://classlink.com/user/suggestion/view/suggestion.php">
                                <div class="icon-circle mb-2 "><img src="http://classlink.com/assets/images/icons/suggestion.png" alt="Suggestion" ></div>
                                <p class="mb-0">Suggestion</p>
                            </a>
                        </li>
                        <?php
         }
         ?>               
                    </ul>
                </li>
            </ul>
        </li>
        
        <li><a href="http://classlink.com/user/controller/authentication/logout.php" style="padding: 15px !important;" class="mega-menu" title="Sign Out"><i class="zmdi zmdi-power"></i></a></li>
    </ul>
</div>
</body>