using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// This class contains a number of common methods
/// readDB: receives a SQL statement and returns data in a dataReader object
/// updateDB: receives a SQL statement and returns an integer value indicating the number of records updated
/// </summary>
public class DBClass
{
    // We need a number of global objects to communicate with the database
    SqlConnection objConn;
    SqlCommand objCmd;


	public DBClass()
	{
    }

    public SqlDataReader readDB(string strSQL)
    {
        // This method receives a SQL statement received in the parameter strSQL 
        // The SQL statement is executed to the database
        // A DataReader object is returned

        // Initiate a connection object using the ConnectionString defined in web.config
        objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        // Then open the connection to the database
        objConn.Open();

        // initiate a Command object with the SQL statement and the Connection object as parameters
        objCmd = new SqlCommand(strSQL, objConn);

        // execute the SQL statement and load the resulting data into the DataReader object
        SqlDataReader objDR = objCmd.ExecuteReader();

        // return the DataReader object
        return objDR;
    }

    public Int32 updateDB(string strSQL)
    {
        // This method receives a SQL statement received in the parameter strSQL 
        // The SQL statement is executed to the database
        // An integer value is returned. The value indicates how many records were updated
        // If no records were updated, the value -1 is returned

        // Initiate a connection object using the ConnectionString defined in web.config
        objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        // Then open the connection to the database
        objConn.Open();

        // initiate a Command object with the SQL statement and the Connection object as parameters
        objCmd = new SqlCommand(strSQL, objConn);

        // execute the SQL statement and return a value
        return objCmd.ExecuteNonQuery();
    }
}