﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="team.aspx.cs" Inherits="CricketAnalysis2.team" %>

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
			  <a href="index.aspx" target="_blank">
                  Home
                       </a>
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

               <li style="float:right; padding-right:5px; padding-top:5px">   
                   <a href="logout.aspx"><button  class="btn btn-primary">Logout</button></a>
               </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

        <!---------------------------------------------------------stats---------------------------------------------->

    <div class="rca-clear"></div>
        <h2 class="rca-stats-title">Team STATS</h2>
      <div class="container">
	  <div class="row">        
        <div class="col-md-4">
          <div class="rca-micro-widget rca-stats">
            <div class="rca-match-start">
              <h3>Team Sixes</h3>
              <div class="rca-padding">
                <h2><asp:Label ID="Label1" runat="server"></asp:Label></h2> 
              </div>
            </div>  
          </div>
          <div class="rca-micro-widget rca-stats">
            <div class="rca-match-start">
              <h3>Team Fours</h3>
              <div class="rca-padding">
                <h2><asp:Label ID="Label2" runat="server"></asp:Label></h2> 
              </div>
            </div>  
          </div>
        </div>
        <div class="col-md-4">
          
          <div class="rca-mini-widget rca-top-border rca-padding rca-stats">
            <div class="rca-clear"></div>
            <h2>
              Most Runs
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class=" top-six"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                  </p>
                </div>
              </div>
              <div class="rca-row rca-name-tag">
                <%=getpls() %>
              </div>
            </div>      
          </div>
        </div>

        <div class="col-md-4">
          <!--Season Stats-->
          <div class="rca-mini-widget rca-top-border rca-padding rca-stats">
            <div class="rca-clear"></div>
            <h2>
              Most Wickets
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class="top-six"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                  </p>
                </div>
              </div>
              <div class="rca-row rca-name-tag">
                <%=getbowls() %>
              </div>
            </div>      
          </div>
        </div>
      </div>
	  </div>
<!--------------------------------------------------------------------------------2nd row----------------------------------------------------------------------------------->
	  <div class="container">
      <div class="row">
        <div class="col-md-4">
          <!--Season Stats-->
          <div class="rca-mini-widget rca-top-border rca-padding rca-stats">
            <div class="rca-clear"></div>
            <h2>
              Most Sixes
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class=" top-six"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                  </p>
                </div>
              </div>
              <div class="rca-row rca-name-tag">
                <%=getsixes() %>
              </div>
            </div>      
          </div>
        </div>

        <div class="col-md-4">
          <!--Season Stats-->
          <div class="rca-mini-widget rca-top-border rca-padding rca-stats">
            <div class="rca-clear"></div>
            <h2>
              Most Fours
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class=" top-six"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                  </p>
                </div>
              </div>
              <div class="rca-row rca-name-tag">
                <%=getfours() %>
              </div>
            </div>      
          </div>
        </div>
        <div class="col-md-4">
          <!--Season Stats-->
          <div class="rca-mini-widget rca-top-border rca-padding rca-stats">
            <div class="rca-clear"></div>
            <h2>
              Most Fifties
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class=" top-six"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                  </p>
                </div>
              </div>
              <div class="rca-row rca-name-tag">
                <%=getfifty() %>
              </div>
            </div>      
          </div>
        </div>
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
