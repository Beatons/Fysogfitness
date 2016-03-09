using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUser.Focus();
    }
    protected void Loginbtn_Click(object sender, EventArgs e)
    {
        DBClass myDBClass = new DBClass();

        string strSQL = "SELECT Id FROM Admin WHERE LogIn='" + txtUser.Text + "' AND Password='" + txtPassword.Text + "'";

        SqlDataReader objDR = myDBClass.readDB(strSQL);

        if (objDR.Read())
        {
            Session["Id"] = objDR["Id"];
            objDR.Close();
            Response.Redirect("Home");
        }
        else
        {
            Label1.Text = "Incorrect Login/Password or you have no authorization to access further";
        }
    }
}