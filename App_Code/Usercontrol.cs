using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Usercontrol
/// </summary>
public class Usercontrol
{
    public static string Error;
    
    public static SqlDataReader Getdetail(string sql)
    {
        //string sql = "SELECT CategoryName FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static int editcashierpw(


      int Id,
      string Password


                       )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("speditCashierpw", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = Password;


                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int editaccountantrpw(


     int Id,
     string Password


                      )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEdit_acountantpw", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = Password;


                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    
}
