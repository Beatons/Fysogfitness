using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Newsfeedaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Id"] == null){
            headlineUpload.Visible = false;
            textUpload.Visible = false;
            pictureUpload.Visible = false;
            buttonUpload.Visible = false;
            labelUpload.Visible = false;
        }
        else
        headlineUpload.Focus();
       
    }
    protected void buttonUpload_Click(object sender, EventArgs e)
    {
        NumberFormatInfo provider = new NumberFormatInfo();
        provider.NumberDecimalSeparator = ".";
        string body = ResolveLinks(textUpload.Text);

        DBClass myDBobject = new DBClass();
        string strSQL = "INSERT INTO Newsfeed (Headline, Picture, Text)";
        strSQL += "VALUES('" + headlineUpload.Text + "','" + Server.HtmlEncode(pictureUpload.FileName) + "','" + textUpload.Text + "')";

        try
        {
            if (myDBobject.updateDB(strSQL) == 1)
            {
                pictureUpload.SaveAs(Request.PhysicalApplicationPath + "/Pictures/" + Server.HtmlEncode(pictureUpload.FileName));
                labelUpload.Text = "Message has been posted";
            }
            else
                labelUpload.Text = "Database error Contact webmaster";
        }
        catch {
                labelUpload.Text = "Database error Contact webmaster";
            
        }
    }


    private static readonly Regex regex = new Regex("((http://|www\\.)([A-Z0-9.-:]{1,})\\.[0-9A-Z?;~&#=\\-_\\./]{2,})", RegexOptions.Compiled | RegexOptions.IgnoreCase);
    private static readonly string link = "<a href=\"{0}{1}\">{2}</a>";

    public static string ResolveLinks(string body)
    {
        if (string.IsNullOrEmpty(body))
            return body;

        foreach (Match match in regex.Matches(body))
        {
            if (!match.Value.Contains("://"))
            {
                body = body.Replace(match.Value, string.Format(link, "http://", match.Value, ShortenUrl(match.Value, 50)));
            }
            else
            {
                body = body.Replace(match.Value, string.Format(link, string.Empty, match.Value, ShortenUrl(match.Value, 50)));
            }
        }

        return body;
    }

    private static string ShortenUrl(string url, int max)
    {
        if (url.Length <= max)
            return url;

        // Remove the protocal
        int startIndex = url.IndexOf("://");
        if (startIndex > -1)
            url = url.Substring(startIndex + 3);

        if (url.Length <= max)
            return url;

        // Remove the folder structure
        int firstIndex = url.IndexOf("/") + 1;
        int lastIndex = url.LastIndexOf("/");
        if (firstIndex < lastIndex)
            url = url.Replace(url.Substring(firstIndex, lastIndex - firstIndex), "...");

        if (url.Length <= max)
            return url;

        // Remove URL parameters
        int queryIndex = url.IndexOf("?");
        if (queryIndex > -1)
            url = url.Substring(0, queryIndex);

        if (url.Length <= max)
            return url;

        // Remove URL fragment
        int fragmentIndex = url.IndexOf("#");
        if (fragmentIndex > -1)
            url = url.Substring(0, fragmentIndex);

        if (url.Length <= max)
            return url;

        // Shorten page
        firstIndex = url.LastIndexOf("/") + 1;
        lastIndex = url.LastIndexOf(".");
        if (lastIndex - firstIndex > 10)
        {
            string page = url.Substring(firstIndex, lastIndex - firstIndex);
            int length = url.Length - max + 3;
            url = url.Replace(page, "..." + page.Substring(length));
        }

        return url;
    }




}