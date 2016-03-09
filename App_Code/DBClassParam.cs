using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// This class contains a number of common methods
/// readDB: receives a SQLCommand object and returns data in a dataReader object
/// updateDB: receives a SQL statement and returns an integer value indicating the number of records updated
/// </summary>
public class DBClassParam
{
	public DBClassParam()
	{
    }

    public SqlDataReader readDB(SqlCommand Cmd)
    {
        // Initiate a connection object using the ConnectionString defined in web.config
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        // set the Command-objects connection = the connection-object 
        Cmd.Connection = objConn;

        // Then open the connection to the database
        objConn.Open();

        // execute the SQL statement and load the resulting data into the DataReader object
        SqlDataReader objDR = Cmd.ExecuteReader();

        // return the DataReader object
        return objDR;
    }

    public Int32 updateDB(SqlCommand Cmd)
    {
        // This method receives a SQL statement received in the parameter strSQL 
        // The SQL statement is executed to the database
        // An integer value is returned. The value indicates how many records were updated
        // If no records were updated, the value -1 is returned

        // Initiate a connection object using the ConnectionString defined in web.config
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        // set the Command-objects connection = to the connection-object 
        Cmd.Connection = objConn;

        // Then open the connection to the database
        objConn.Open();

        // execute the SQL statement and return a value
        return Cmd.ExecuteNonQuery();
    }
}