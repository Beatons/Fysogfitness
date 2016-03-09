<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newsfeedaspx.aspx.cs" Inherits="Newsfeedaspx" %>

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


       <!-- Place your content here-->








    <div id="trythis">

        <div id="newsimg">

<asp:Image ID="Image2" src="Pictures/img.jpg" runat="server"></asp:Image>

        </div>

        <div id="newsposts">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Text], [Picture], [Headline] FROM [Newsfeed] ORDER BY [NewsfeedID] DESC"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div id="newsbox">
          <div class="newsimagebox">  <asp:Image ID="Image1" cssclass="newsimage" runat="server" ImageUrl='<%# Eval("Picture","~/Pictures/{0}") %>' /></div>
            <asp:Label id="Label1" cssclass="headlinelabel" runat="server" Text='<%# Eval("Headline") %>' />
            &nbsp;<br />
            <asp:Label ID="Label2" cssclass="casualtext" runat="server" Text='<%# Eval("Text") %>' />
<br />
        </div>
        </ItemTemplate>
    </asp:DataList>
   </div>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Headline], [Picture], [Text] FROM [Newsfeed] ORDER BY [NewsfeedID] DESC"></asp:SqlDataSource>
        <br />
        <div id="adminUpload">
            <div id="adminUploadBox">
        <asp:TextBox ID="headlineUpload" runat="server">Headline</asp:TextBox>

        <asp:TextBox ID="textUpload" runat="server" TextMode="MultiLine">Text</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:FileUpload ID="pictureUpload" runat="server" />
        <br />
        <asp:Label ID="labelUpload" runat="server">Remember to put &lt; a href = &quot; Link &quot; &gt; Link &lt; /  a &gt; when you add links to make them clickable cheers!</asp:Label>
        <br />
        <asp:Button ID="buttonUpload" runat="server" Text="Post" OnClick="buttonUpload_Click" />
        </div>
            </div>
        </div>

         </main>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
    <script src="Script/forburger.js"></script>

</asp:Content>

