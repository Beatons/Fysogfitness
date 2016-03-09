<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Prices.aspx.cs" Inherits="Prices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


          <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
     <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link href="style.css" rel="stylesheet" />
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
    
  
                  <asp:Image ID="Image1"  CssClass="imagechairs" src="Pictures/chairs.jpg"  runat="server"></asp:Image>
   
   
   
   
    <div id="pricescontent">
<div id="smartass">
            Afbud skal ske senest dagen før.<br />
            Ved afbud på dagen vil der blive opkrævet 50% af behandlingens pris.<br />
                Ved udeblivelse vil der blive opkrævet fuld pris.<br />
                Gælder selvfølgelig ikke ved sygdom.<br />
    </div>
        <ul>
                <li><asp:Image CssClass="pricepicture" AlternateText="Fysioterapi, Massage, akupunktur, el-terapi pg laser behandlig. 25 min. 250,- 45 min. 400,-" src="Pictures/Fysio.png" ID="Image2" runat="server"></asp:Image></li>
                <li><asp:Image CssClass="pricepicture" AlternateText="Personlig træning, Programlægning + 1times personlig træning. 800,- Pris pr. time efterfølgende 450,-" src="Pictures/Personlig.png" ID="Image3" runat="server"></asp:Image></li>
                <li><asp:Image CssClass="pricepicture" AlternateText="Fitness instruktion. Programlægning og instruktion i fitness. 40 min. inkl. program 350,-" src="Pictures/FitnessIns.png" ID="Image4" runat="server"></asp:Image></li>
                <li><asp:Image CssClass="pricepicture" AlternateText="Speciale tilbud, Klippekort 10 x 1 times personlig træning 4000,-" src="Pictures/tilbud.png" ID="Image5" runat="server"></asp:Image></li>

            </ul>




                  

    </div>
   
   
   
   
   
   
   </main>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
    <script src="Script/forburger.js"></script>









    </asp:Content>

