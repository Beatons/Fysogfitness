<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
     <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link href="css/style.css" rel="stylesheet" />
     <link href="css/768.css" rel="stylesheet" />
    <link href="css/320.css" rel="stylesheet" />





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
   
       <!-- Placne your content here-->
    

        <asp:Image CssClass="jannie" src="Pictures/Janniegray.jpg" ID="Image2" runat="server"></asp:Image>
       
    <div id="aboutcontent">
        <asp:Image ID="Image1" CssClass="frameabout" src="Pictures/aboutimg.jpg" runat="server"></asp:Image>
        <div id="abouttext"> 
            
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            </ItemTemplate>
        </asp:DataList>

    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Description] FROM [Portfolio] ORDER BY [PortfolioID]"></asp:SqlDataSource>
            </div>
        </div>








  </main>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
    <script src="Script/forburger.js"></script>









</asp:Content>

