<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<meta name="description" content="Fys og fitness er personlig og privat fysioterapi af høj kvalitet. Med tilskud fra sygesikring Danmark.Desuden tilbydes der personligtræning for at sikre at skadesfrit og hurtigt når dine mål på en sjov og udfordrende måde! Fys og fitness findes i Hjerting ved Esbjerg og Fåborg ved Varde."/>
<meta name="keywords" content="Fys, Fysioterapeut, træner, personligtræner, fitnessinstruktør, fitnessinstruktion, fitness, træning, personligtræning, Hjerting, Fåborg, Årre, 6710, 6818, skade, kinesiotape, genoptræning, rehabilitering, behandling, optræning, badehotellet. "/>
<meta name="author" content="Helle Hedegaard Larsen"/>
    <link rel="icon" type="image/png"  href="../Pictures/iconf.png"/>

   <title>Fys og Fitness | Velkommen | Jannie Hedegaard Larsen</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <link href="css/animate.css" rel="stylesheet" />
    <script src="Script/jquery-1.11.3.min.js"></script>
    <link href="bootstrap.css" rel="stylesheet" />
    <script src="Script/jquery.cycle2.js"></script>
    <script src="Script/jquery.cycle2.min.js"></script>
    <script src="Script/URL.js" type="text/javascript"></script>
    <link href="css/768.css" rel="stylesheet" />
    <link href="css/320.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#introtext").addClass("fadeInDownBig").addClass("animated");
            $("#bookingbtn").addClass("bounceInDown").addClass("animated");

     /*       $("nav li").click(function (e) {
                e.preventDefault();
                $("nav li a.active").removeClass("active");
                $("a", this).addClass("active");

            });*/
        });
   </script>



        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
     <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link href="css/style.css" rel="stylesheet" />

    <style>
        #contactline {
            margin-top: 2%;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">


         <div id="site-wrapper">
      <nav class="menu" role="navigation">
    <ul>
          <li><a href="Home">FORSIDE</a></li>
          <li><a href="Prices">PRISER</a></li>
          <li><a href="Fitness">Fitness</a></li>
          <li><a target="_blank" href="http://www.eadministration.dk/kunde/kundelogin.asp?klient=1197">Booking</a></li>
          <li><a href="Newsfeed">News feed</a></li>
          <li><a href="About">OM</a></li>
        </ul>
  </nav>
      <a href="#" class="nav-toggle"><span class="fa fa-bars"></span></a>
   <main role="main">
   
  
    
  </main>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
    <script src="Script/forburger.js"></script>






        <div id="wrapper">
            
        <div id="header">
            <a href="Home"> <img id="logo" src="Pictures/logo.jpg" /> </a>
        <div id="navigation">
        <nav>
            <ul>

                <li><a><asp:Button ID="homebutton" runat="server" Text="Forside" OnClick="homebutton_Click" /></a></li>
                <li><a><asp:Button ID="pricesbutton" runat="server" Text="Priser" OnClick="pricesbutton_Click" /></a></li>
                <li><a><asp:Button ID="fitnessbutton" runat="server" Text="Fitness" OnClick="fitnessbutton_Click" /></a></li>
                <li><a><asp:Button ID="bookingbutton" runat="server" Text="Booking" OnClientClick="window.open('http://www.eadministration.dk/kunde/kundelogin.asp?klient=1197')" OnClick="bookingbutton_Click" /></a></li>
                <li><a><asp:Button ID="newsfeedbutton" runat="server" Text="Newsfeed" OnClick="newsfeedbutton_Click" /></a></li>
                <li><a> <asp:Button ID="aboutbutton" runat="server" Text="Om" OnClick="aboutbutton_Click" /></a></li>
            </ul>
        </nav>
            </div>
        </div>
                <asp:Image ID="frameGrab" runat="server" src="/Pictures/framegrab.jpg" />
                <asp:Image ID="picturebg" runat="server" src="/Pictures/bgpic6.jpg" />
    <video autoplay="autoplay" loop="loop" preload="auto" muted="muted" id="bgvid">
        <source src="intro8.ogv" type="audio/ogg" />
        <source src="intro8.webm" type="video/webm" />
        <source src="Intro8.mp4" type="video/mp4" />
    </video>
<div id="homevideobox">
        <p id="introtext">
            Fysioterapi & personlig træning
    </p>

                               <a id="bookingbuttonlink" href="http://www.eadministration.dk/kunde/kundelogin.asp?klient=1197" target="_blank"> <div id="bookingbtn"><center>Book en tid nu!</center></div> </a>
                   </div>
                            <div id="homefooter">

                      
<div id="contactstuff">
                               
            <div id="firstcontactf">
            <br />Hjerting
            <br />Gammel Guldagervej 2
            <br />6710 Esbjerg V
            </div>
            <div id="secondcontactf">
                <br />Fåborg
           <br />Fåborgvej 49 
            <br />6818 Årre
            </div>
    </div>
                                        <div class="center">


                                     <span id="leftbutton" class="prev">  <div id="triangle"></div> </span>


                                    <div class="homepagenewsbox">

                                          <div class="cycle-slideshow" 
                                          data-cycle-prev=".prev"
                                          data-cycle-next=".next"
                                            data-cycle-fx="fade" 
                                         data-cycle-timeout="8000"
                                        data-cycle-slides="> div">
                                              <div>

                                                  
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False">
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                            <ItemTemplate>
                                        <asp:Label CssClass="headlinelabel" ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                                <br />
                                <br />
                                <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                                <br />
                                <asp:Button CssClass="homereadmore" ID="Button1fdsfds" runat="server" Text="Read more" OnClick="newsfeedbutton_Click" />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP (1) [Headline], [Text] FROM [Newsfeed] ORDER BY [NewsfeedID] DESC"></asp:SqlDataSource>
                                              </div>
                                                <div>
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <asp:Label CssClass="headlinelabel" ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
<br />
                                <asp:Button CssClass="homereadmore" ID="Button1ssss" runat="server" Text="Read more" OnClick="newsfeedbutton_Click" />

                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  [Headline], [Text] 
FROM 
(
SELECT [Headline], [Text], ROW_NUMBER() OVER (ORDER BY [NewsfeedID] DESC) AS Rownumber
FROM Newsfeed
) results
WHERE results.Rownumber = 2"></asp:SqlDataSource>
                                                </div>  
                                                  <div>
                            <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                    <asp:Label CssClass="headlinelabel" ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                                    <br />
                                <asp:Button CssClass="homereadmore" ID="Button1ss" runat="server" Text="Read more" OnClick="newsfeedbutton_Click" />

                                </ItemTemplate>
                            </asp:DataList>
                                                                                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  [Headline], [Text] 
FROM 
(
SELECT [Headline], [Text], ROW_NUMBER() OVER (ORDER BY [NewsfeedID] DESC) AS Rownumber
FROM Newsfeed
) results
WHERE results.Rownumber = 3"></asp:SqlDataSource>
                                                  </div>
                                                  <div>
                  <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4">
                                <ItemTemplate>
                                    <asp:Label CssClass="headlinelabel" ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                                    <br />
                                <asp:Button CssClass="homereadmore" ID="Button1fdd" runat="server" Text="Read more" OnClick="newsfeedbutton_Click" />

                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  [Headline], [Text] 
FROM 
(
SELECT [Headline], [Text], ROW_NUMBER() OVER (ORDER BY [NewsfeedID] DESC) AS Rownumber
FROM Newsfeed
) results
WHERE results.Rownumber = 4"></asp:SqlDataSource>
                                                  </div>

                                              <div>
 <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource5">
                                <ItemTemplate>
                                    <asp:Label CssClass="headlinelabel" ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                                    <br />
                                <asp:Button CssClass="homereadmore" ID="Button1fd" runat="server" Text="Read more" OnClick="newsfeedbutton_Click" />

                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  [Headline], [Text] 
FROM 
(
SELECT [Headline], [Text], ROW_NUMBER() OVER (ORDER BY [NewsfeedID] DESC) AS Rownumber
FROM Newsfeed
) results
WHERE results.Rownumber = 5"></asp:SqlDataSource>
                                              </div>
                                                   </div> <!--Slideshow div -->
                              </div>

                                     <span id="rightbutton" class="next"> <div id="triangle2"></div>  </span>

                                     </div>


                                <div id="socialmedia">
                                    <div id="coolstory">
                             <a target="_blank" href="https://www.facebook.com/Fys-og-Fitness-205870102911939/"><asp:Image ID="facebookicon" src="/Pictures/facebook.png" runat="server" /></a>
                             <a target="_blank" href="https://www.linkedin.com/in/jannie-hedegaard-larsen-66271918"><asp:Image ID="linkedinicon" src="/Pictures/linkedin.png" runat="server" /></a>
                             </div>
                             </div>
             
                                  <div class="contactline">
                <div class="contactboxie">

            
                                   Kontakt Jannie Hedegaard på Tlf. 20656133 eller Mail: Jannie@fysogfitness.com
        </div></div>   
                                </div>
            </div>
                   
    </form>
</body>
</html>
