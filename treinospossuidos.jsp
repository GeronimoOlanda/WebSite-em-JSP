<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Bootstrap 3 template for corporate business" />
        <title>Meus Treinos</title>
        <link rel="stylesheet" type="text/css" href="css/semantic.min.css">
       
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />
        <link href="css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />  
        <link rel="stylesheet"href="css/bootstrap.min.css">
        <!-- Theme skin -->
        <link id="t-colors" href="skins/default.css" rel="stylesheet" />
         <link rel="icon" type="image/png" href="img/icon_academia.png" >

         
        <style>
            a:hover{color:#F98484;}
            a:active{color:#F98484};
            </style>



    </head>

    <body>
        <!-- inclusao do head no documento-->
        <%@ include file="headerLogout.jsp" %>
        <!-- inclusao do head no documento-->


       <hr>
        <span><a href="treinospossuidos.jsp"style="padding-left: 20%">Treinos</a></span>
        <span><a href="treinosdisponiveis.jsp" style="padding-left: 40%">Treinos Livres</a></span>
        <hr>
                <div style="padding-left:30px;width:600px;weight:300px; padding-top:30px;"  class="ui three column grid">
           <div class="column">
             <div class="ui fluid card">
               <div class="image">
                 <img  src="img/padrao1.jpg">
               </div>
               <div class="content">
                 <a class="header">Visualizar Treino</a>
               </div>
             </div>
           </div>
           <div class="column">
             <div class="ui fluid card">
               <div class="image">
                 <img  src="img/padrao1.jpg">
               </div>
               <div class="content">
                <a class="header">Visualizar Treino</a>
               </div>
             </div>
           </div>
           <div class="column">
             <div class="ui fluid card">
               <div class="image">
               <img  src="img/padrao1.jpg">
               </div>
               <div class="content">
                 <a class="header">Visualizar Treino</a>
               </div>
             </div>
           </div>
         </div>
            <!-- script -->
            <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="crossorigin="anonymous"></script>
            <script src="semantic/dist/semantic.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
