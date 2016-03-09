<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }
    void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute(
            "HomeRoute",
            "Home",
            "~/Default.aspx"
        );
        routes.MapPageRoute(
            "PricesRoute",
            "Prices",
            "~/Prices.aspx"
        );
        routes.MapPageRoute(
            "AboutRoute",
            "About",
            "~/About.aspx"
        );
        routes.MapPageRoute(
            "FitnessRoute",
            "Fitness",
            "~/Fitness.aspx"
        );
        routes.MapPageRoute(
            "NewsfeedRoute",
            "Newsfeed",
            "~/Newsfeedaspx.aspx"
        );
        routes.MapPageRoute(
            "PanelRoute",
            "Panel",
            "~/panel.aspx"
        );
        routes.MapPageRoute(
            "404Route",
            "404",
            "~/Error404.aspx"
        );
        routes.MapPageRoute(
            "500Route",
            "500",
            "~/Error500.aspx"
        );
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
