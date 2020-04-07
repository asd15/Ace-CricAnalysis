<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stanalyze.aspx.cs" Inherits="CricketAnalysis2.stanalyze" %>

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
  <body id="back">
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
			  <a href="index.aspx" target="_blank">
                  Home
			  </a></li>
              
               
                <li>
                    <div class="dropdown">
                      <button class="btn dropdown-toggle" style="background-color:white; border:1px solid black" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Analyze IPL
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="iplanalyze.aspx">Analyze Top Winners</a>
                        <a class="dropdown-item" href="scoreanalyze.aspx">Analyze Score</a>
                        <a class="dropdown-item" href="stanalyze.aspx">Analyze Stadiums</a>
                         <a class="dropdown-item" href="matanalyze.aspx">Analyze Matches</a>
                      </div>
                    </div>
               </li>

            </ul>
          </div>
        </div>
       </div>
      </div>



      <!-----------------------------------------------------------------------Stats-------------------------------------------------------------------------------------------->
      <div class="rca-clear"></div>
        <h2 class="rca-stats-title">IPL Stadium Analysis</h2>
        <br />
      <div class="container">
         <div class='tableauPlaceholder' id='viz1586187415269' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Av&#47;AvgCityscores&#47;Sheet6&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='AvgCityscores&#47;Sheet6' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Av&#47;AvgCityscores&#47;Sheet6&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1586187415269');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
          <br />
          <div class='tableauPlaceholder' id='viz1586187461870' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ma&#47;Map_15861583933180&#47;Sheet3&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Map_15861583933180&#47;Sheet3' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ma&#47;Map_15861583933180&#47;Sheet3&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1586187461870');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
          <br />
         <div class='tableauPlaceholder' id='viz1586187483551' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;St&#47;Stadiums_15861635781060&#47;Sheet5&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Stadiums_15861635781060&#47;Sheet5' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;St&#47;Stadiums_15861635781060&#47;Sheet5&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1586187483551');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
      </div>


<!------------------------------------------------------------------------footer--------------------------------------------------->
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
	 <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

  </body>
</html>
