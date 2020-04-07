<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teamgraph.aspx.cs" Inherits="CricketAnalysis2.teamgraph" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>AA's CricAnalysis</title>

    <link href='http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	 <link href="css/bootstrap.min.css" rel="stylesheet"/>
	 <link href="css/mdb.min.css" rel="stylesheet"/>
     <link rel="stylesheet" href="css/style1.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">	
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
  </head>
    <body>
          <!--Whole Container -->
    <div class="rca-container rca-margin">
      <!--Widget Outer-->
      <div class="rca-row">
	  
	   <div class="rca-row">
        <div class="rca-column-10">
          <div class="rca-logo">
            <h2>
              <span><img src="img/logo.png" style="width: 120px; height:90px;"></span><span>AA's CricAnalysis</span>
            </h2>
          </div>
        </div>
            </div>
	  
        <!--Widget Inner -->
          <div class="rca-row">
        <div class="rca-column-12">
          <div class="rca-menu-widget rca-left-border">
            <ul class="rca-season-list">
             
              <li>
			  <a href="index.aspx" target="_blank">Home</a>
			  </li>
              
                <li>
                    <a href="team.aspx" target="_blank">Team Stats</a>
                </li>

                <li>
                    <a href="pointstable.aspx" target="_blank">Points Table</a>
                </li>
			  
                <li>
			  <a href="Analyze.aspx" target="_blank">
                Team Analyze
              </a>
			  </li>


               <li style="float:right;">
                   <a href="logout.aspx"><button class="btn btn-primary">Logout</button></a> 
               </li>
            </ul>
          </div>
        </div>
              </div>
   <!------------------------------------------------------------/nav bar-------------------------------------------------------->

 <div class="rca-clear"></div>
        <h2 class="rca-stats-title">Average Score Prediction</h2>
    <div class="container">
        <%=predictioncall() %>

        <h2 class="rca-stats-title">Analyze Team Players</h2>
        <div class="row">
           <%=getteamplyrs() %>
      </div>
    </div>
          <h2 class="rca-stats-title">Team Stats</h2>
          <%=teamanalyzecall() %>
   </div>


<!--------------------------------------------------------------------------footer--------------------------------------------------------------------------------------->


    	<div class="content">
</div>
<div class="container-fluid" >
<div class="row" >
	<footer id="myFooter" class="">
        <div class="social-networks">
            <a href="https://twitter.com/Aditya809740" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="https://www.facebook.com/AkashDesai.1010" class="facebook"><i class="fa fa-facebook-official"></i></a>
            <a href="https://www.instagram.com/aditya7776/" class="insta"><i class="fa fa-instagram"></i></a>
            <a href="mailto:akashsdesai15@gmail.com?Subject=Feedback" target="_top" class="google"><i class="fa fa-envelope"></i></a>
        </div>
		<center><p class="madeby"> - Made by Akash & Aditya - </p></center>
        <div class="footer-copyright">
            <p> Copyright &copy;  2020  AA's CricAnalysis. <br>All Rights Reserved.</p>
        </div>
    </footer>
	</div>
	</div>
	</div>

	 <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	 <script type="text/javascript" src="js/popper.min.js"></script>
	 <script type="text/javascript" src="js/bootstrap.min.js"></script>
	 <script type="text/javascript" src="js/mdb.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	
      <script type='text/javascript'>                    var divElement = document.getElementById('viz1586243296795');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
     <script type='text/javascript'>                    var divElement = document.getElementById('viz1586243425324');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
        <script type='text/javascript'>                    var divElement = document.getElementById('viz1586243506393');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
         <script type='text/javascript'>                    var divElement = document.getElementById('viz1586243544086');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
         <script type='text/javascript'>                    var divElement = document.getElementById('viz1586244993855');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>    
    </body>
    </html>