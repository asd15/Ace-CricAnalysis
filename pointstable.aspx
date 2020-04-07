<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pointstable.aspx.cs" Inherits="CricketAnalysis2.pointstable" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>AA's CricAnalysis</title>

    <link href='http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	 <link href="css/bootstrap.min.css" rel="stylesheet">
	 <link href="css/mdb.min.css" rel="stylesheet">
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
	
    <link rel="stylesheet" href="css/style1.css"/>
	<link rel="stylesheet" href="css/footer.css"/>

	
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
        <div class="rca-column-12">
          <div class="rca-menu-widget rca-left-border">
            <ul class="rca-season-list">
             
              <li>
			  <a href="index.aspx" target="_blank">Home</a>
			  </li>
                <li>
                    <a href="team.aspx" target="_blank">Tournament Stats</a>
                </li>

                <li>
                    <a href="pointstable.aspx" target="_blank">Points Table</a>
                </li>
			  
                <li>
			  <a href="Analyze.aspx" target="_blank">
                Team Analyze
              </a>
			  </li>

                <%if (Session["teamuname"] != null) {%>
                <li><b>Welcome <%Response.Write(Session["teamuname"]);%> !!!</b></li>
                <%} %>

               <li style="float:right; padding-right:5px; padding-top:5px">
                   
                   <%  if (Session["teamuname"] == null)
                       {%>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Login</button>
                   <%}
                                                            else
                                                            { %>
                   <a href="logout.aspx"><button  class="btn btn-primary">Logout</button></a>
                   <%} %>
                       
               </li>
            </ul>
          </div>
        </div>
    			
      <h2 class="rca-stats-title">Points Table</h2>
      <div class="container">
	
	  <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
           
          <div class="rca-mini-widget rca-top-border rca-stats">
            <div class="rca-padding">
              <div class="rca-bowling-score rca-padding rca-no-border " id="pointstable">
                
                <div class="rca-row">
                  <div class="rca-header rca-table">
                    <div class="rca-col rca-player">
                      Team
                    </div>
                    <div class="rca-col small">
                      M<span class="rca-hide-mobile">atch</span>
                    </div>
                    <div class="rca-col small">
                      W<span class="rca-hide-mobile">on</span>
                    </div>
                    <div class="rca-col small">
                      L<span class="rca-hide-mobile">ost</span>
                    </div>
                    <div class="rca-col small rca-hide-mobile">
                      Tied
                    </div>
                    <div class="rca-col small rca-hide-mobile">
                      Net RR
                    </div>
                    <div class="rca-col small">
                      Pts
                    </div>
                  </div>
                </div>
               <%=gettbl() %>

				 <div class="rca-row points">
                 
                </div>

              </div>
            </div>
            
          </div>
        </div>
        <div class="col-md-3"></div>
        <div class="rca-clear"></div>
      </div>
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
</body>
</html>