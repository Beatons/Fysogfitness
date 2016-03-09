<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fitness.aspx.cs" Inherits="Fitness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


          <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
     <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/768.css" rel="stylesheet" />
    <link href="css/320.css" rel="stylesheet" />
    <style>
        #secondcontact {
            display:none;
        }
    </style>


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
   
       <!-- Place your content here-->

       <div id="fintesscontent"> 
                <asp:Image CssClass="FitnessImage" ID="FitnessImage" src="Pictures/FitnessImage2.jpg" runat="server"></asp:Image>
           
           <div id="Fancypants">

           Fitness er en del af hotellet, og medlemskabet oprettes hos dem.<br />
Priser for 2016<br /> 
               <br />
1 mdr. 200,-<br />
3 mdr. 500,-<br />
12 mdr. 1500,-<br />
               <br />
Med et fitness medlemskab er der også adgang til sauna og dampbad.<br />
               <br />
               <br />
I fitness finder du løbebånd, crosstrainer, romaskine, samt de meste generelle maskiner, til ben, arme, ryg og mave. <br />
Alle maskiner er med kabel træk, det giver den bedst mulige træning,og at du også får brugt dine stabiliserende muskler i maskinerne.<br />
<br />
Her ud over er der håndvægte fra 1 kg - 16 kg<br /> 
Desuden er der ribbe med pull up bar, diverse elastikker og træningsbolde.<br /> 
               </div>
       </div>











    
  </main>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
    <script src="Script/forburger.js"></script>





</asp:Content>

