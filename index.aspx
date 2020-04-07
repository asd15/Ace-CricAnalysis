<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CricketAnalysis2.index" %>

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

           <div class="rca-column-2">
			<div class="checkbox">
				<label></label>
				<input id="tog" type="checkbox" data-toggle="toggle" data-on="Light" data-off="Dark" data-onstyle="white" data-offstyle="black">
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
              
                <%if (Session["teamuname"] != null)
                    {
                        %>
                <li>
                    <a href="team.aspx" target="_blank">Team Stats</a>
                </li>
                <%}
    else
    {
                        %>
                  <li>
			  <a data-toggle="modal" data-target="#exampleModal">
                Team Stats
              </a>
			  </li>
                <%} %>
                <li>
                    <a href="pointstable.aspx" target="_blank">Points Table</a>
                </li>
			  
                <%if (Session["teamuname"] != null)
                    {%>
                <li>
			  <a href="Analyze.aspx" target="_blank">
                Team Analyze
              </a>
			  </li>
                <%}
    else
    { %>
                <li>
			  <a data-toggle="modal" data-target="#exampleModal">
                Team Analyze
              </a>
			  </li>


                <%} %>

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


                <%if (Session["teamuname"] != null) {%>
                <li><b>Welcome <%Response.Write(Session["teamname"]);%> !!!</b></li>
                <%} %>




               <li style="float:right;">
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
              </div>
   


        <!--------------------------------------------------------------Modal------------------------------------------>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Team Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
        <form id="loginform" runat="server">
          <div class="form-group">
            <label for="tname" class="col-form-label">Team Username: </label>
            <asp:TextBox ID="TextBox_user_name" runat="server" Width="100%"></asp:TextBox>
          </div>
          <div class="form-group">
            <label for="pw" class="col-form-label">Password: </label>
            <asp:TextBox ID="TextBox_password" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
          </div>
             <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        <asp:button  class="btn btn-primary" runat="server" ID="loggedin" onclick="loggedin_Click" Text="Login" />
      </div>
        </form>
      </div>
     
    </div>
  </div>
</div>

</div>


        <!----------------------------------------------------------/modal--------------------------------------------->


      <!-----------------------------------------------------------------------Stats-------------------------------------------------------------------------------------------->
      <div class="rca-clear"></div>
        <h2 class="rca-stats-title">Tournament STATS</h2>
      <div class="container">
	  <div class="row">        
        <div class="col-md-4">
          <div class="rca-micro-widget rca-stats">
            <div class="rca-match-start">
              <h3>Tournament Sixes</h3>
              <div class="rca-padding">
                <h2>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  </h2> 
              </div>
            </div>  
          </div>
          <div class="rca-micro-widget rca-stats">
            <div class="rca-match-start">
              <h3>Tournament Fours</h3>
              <div class="rca-padding">
                <h2>
                    <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
                </h2> 
              </div>
            </div>  
          </div>
        </div>
        <div class="col-md-4">
          
          <div class="rca-mini-widget rca-top-border rca-padding rca-stats">
            <div class="rca-clear"></div>
            <h2>
             Orange Cap
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class=" top-score" style="color:white">
                    <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
                </h3>
                <div class="rca-padding">
                  <h2>
                      <asp:Label ID="Label4" runat="server"></asp:Label>
                          </h2>                  
                  <p class="rca-center">
                   <asp:Label ID="Label5" runat="server"></asp:Label>
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
             Purple Cap
            </h2>
            <div class="rca-padding">    
              
              <div class="rca-match-start">
                <h3 class="top-bowl" style="color:white">
                    <asp:Label ID="Label6" runat="server" ForeColor="White"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label7" runat="server"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
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
                <h3 class=" top-six"><asp:Label ID="Label9" runat="server"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label10" runat="server"></asp:Label></h2>                  
                  <p class="rca-center">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
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
                <h3 class=" top-six"><asp:Label ID="Label12" runat="server"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label13" runat="server"></asp:Label></h2>                  
                  <p class="rca-center"><asp:Label ID="Label14" runat="server"></asp:Label></p>
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
                <h3 class=" top-six"><asp:Label ID="Label15" runat="server"></asp:Label></h3>
                <div class="rca-padding">
                  <h2><asp:Label ID="Label16" runat="server"></asp:Label></h2>                  
                  <p class="rca-center"><asp:Label ID="Label17" runat="server"></asp:Label></p>
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
	 <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>


    <script>
	$(function(){
	$('#tog').change(function(){
	if ($(this).prop('checked') == true){
        $('#back').css("background-color", "black");
	}
	else{
	$('#back').css("background-color","#CFCFCF");
	}
	});
	});
	</script>
   
  </body>
</html>