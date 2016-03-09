using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void homebutton_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Default.aspx");
        Response.Redirect(GetRouteUrl("HomeRoute", null));
    }
    protected void pricesbutton_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Prices.aspx");
        Response.Redirect(GetRouteUrl("PricesRoute", null));
    }
    protected void fitnessbutton_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Fitness.aspx");
        Response.Redirect(GetRouteUrl("FitnessRoute", null));
    }
    protected void bookingbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.eadministration.dk/kunde/kundelogin.asp?klient=1197");
    }
    protected void newsfeedbutton_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Newsfeedaspx.aspx");
        Response.Redirect(GetRouteUrl("NewsfeedRoute", null));
    }
    protected void aboutbutton_Click(object sender, EventArgs e)
    {
        //  Response.Redirect("About.aspx");
        Response.Redirect(GetRouteUrl("AboutRoute", null));
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }



}