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
/// Summary description for banktrasferdata
/// </summary>
public class banktrasferdata
{
    public static string Error;
    public static int Addbankdetails(
          string Bankname,
     string bankcode,
          string HeadOfficeaddress,
        string Banktype,
        string phoneno1 ,
        string phoneno2,
        string Website ,
                string  email ,
        string Noofbranchsinisland,

           string Facilities 


      )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpaddBankdetails", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Bankname", SqlDbType.VarChar , 50).Value = Bankname;
                command.Parameters.Add("@bankcode ", SqlDbType.VarChar, 30).Value = bankcode;

                command.Parameters.Add("@HeadOfficeaddress", SqlDbType.VarChar, 50).Value = HeadOfficeaddress;

                command.Parameters.Add("@Banktype", SqlDbType.VarChar, 30).Value = Banktype;
                command.Parameters.Add("@phoneno1", SqlDbType.VarChar, 20).Value = phoneno1;
                command.Parameters.Add("@phoneno2", SqlDbType.VarChar, 20).Value = phoneno2;
                command.Parameters.Add("@Website", SqlDbType.VarChar, 50).Value = Website;
                command.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
                command.Parameters.Add("@Noofbranchsinisland", SqlDbType.VarChar, 20).Value = Noofbranchsinisland;
                command.Parameters.Add("@Facilities", SqlDbType.VarChar, 50).Value = Facilities;

                rowsAffected = command.ExecuteNonQuery();

            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int editbankdetails(
         int id,
        string Bankname,
    string bankcode,
         string HeadOfficeaddress,
       string Banktype,
       string phoneno1,
       string phoneno2,
       string Website,
               string email,
       string Noofbranchsinisland,

          string Facilities


     )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Speditbankdetails", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@id", SqlDbType.Int).Value = id;
                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 50).Value = Bankname;
                command.Parameters.Add("@bankcode ", SqlDbType.VarChar, 30).Value = bankcode;

                command.Parameters.Add("@HeadOfficeaddress", SqlDbType.VarChar, 50).Value = HeadOfficeaddress;

                command.Parameters.Add("@Banktype", SqlDbType.VarChar, 30).Value = Banktype;
                command.Parameters.Add("@phoneno1", SqlDbType.VarChar, 20).Value = phoneno1;
                command.Parameters.Add("@phoneno2", SqlDbType.VarChar, 20).Value = phoneno2;
                command.Parameters.Add("@Website", SqlDbType.VarChar, 50).Value = Website;
                command.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
                command.Parameters.Add("@Noofbranchsinisland", SqlDbType.VarChar, 20).Value = Noofbranchsinisland;
                command.Parameters.Add("@Facilities", SqlDbType.VarChar, 50).Value = Facilities;

                rowsAffected = command.ExecuteNonQuery();

            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int Addbankbranchdetails(
         string Bankcode,
    string Branchcode,
         string Branchname,
       string Address,
       string phone1,
       string phone2,
       string Fax,
               string Email,
       string Managername,

          string Personalph,
        string Opendaysandtime,
        string Notes



     )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spadd_Bankbranchdetails", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode ", SqlDbType.VarChar, 20).Value = Branchcode;

                command.Parameters.Add("@Branchname", SqlDbType.VarChar, 50).Value = Branchname;

                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@phone1", SqlDbType.VarChar, 20).Value = phone1;
                command.Parameters.Add("@phone2", SqlDbType.VarChar, 20).Value = phone2;
                command.Parameters.Add("@Fax", SqlDbType.VarChar, 20).Value = Fax;
                command.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = Email;
                command.Parameters.Add("@Managername ", SqlDbType.VarChar, 30).Value = Managername;
                command.Parameters.Add("@Personalph ", SqlDbType.VarChar, 20).Value = Personalph;

                command.Parameters.Add("@Opendaysandtime ", SqlDbType.VarChar, 50).Value = Opendaysandtime;
                command.Parameters.Add("@Notes ", SqlDbType.VarChar, 50).Value = Notes;

                rowsAffected = command.ExecuteNonQuery();

            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int editbankbranchdetails(
        int Id,
        string Bankcode,
   string Branchcode,
        string Branchname,
      string Address,
      string phone1,
      string phone2,
      string Fax,
              string Email,
      string Managername,

         string Personalph,
       string Opendaysandtime,
       string Notes



    )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spEdit_Bankbranchdetails", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode ", SqlDbType.VarChar, 20).Value = Branchcode;

                command.Parameters.Add("@Branchname", SqlDbType.VarChar, 50).Value = Branchname;

                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@phone1", SqlDbType.VarChar, 20).Value = phone1;
                command.Parameters.Add("@phone2", SqlDbType.VarChar, 20).Value = phone2;
                command.Parameters.Add("@Fax", SqlDbType.VarChar, 20).Value = Fax;
                command.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = Email;
                command.Parameters.Add("@Managername ", SqlDbType.VarChar, 30).Value = Managername;
                command.Parameters.Add("@Personalph ", SqlDbType.VarChar, 20).Value = Personalph;

                command.Parameters.Add("@Opendaysandtime ", SqlDbType.VarChar, 50).Value = Opendaysandtime;
                command.Parameters.Add("@Notes ", SqlDbType.VarChar, 50).Value = Notes;

                rowsAffected = command.ExecuteNonQuery();

            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int Addnewbankaccount(
        string Bankname,
   string Bankcode,
        string Branchcode,
      string Accountno,
      string Holdername,
      DateTime  Joindate,
      string Accounttype,
              double InitialAmount,
      string Swiftcode,

         string Bankbalance
     



    )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("AddnewbankAC", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 50).Value = Bankname;
                command.Parameters.Add("@Bankcode ", SqlDbType.VarChar, 30).Value = Bankcode;

                command.Parameters.Add("@Branchcode ", SqlDbType.VarChar, 20).Value = Branchcode;

                command.Parameters.Add("@Accountno", SqlDbType.VarChar, 30).Value = Accountno;
                command.Parameters.Add("@Holdername", SqlDbType.VarChar, 50).Value = Holdername;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Accounttype", SqlDbType.VarChar, 50).Value = Accounttype;
                command.Parameters.Add("@InitialAmount", SqlDbType.Money).Value = InitialAmount;
                command.Parameters.Add("@Swiftcode ", SqlDbType.VarChar, 30).Value = Swiftcode;
                command.Parameters.Add("@Bankbalance ", SqlDbType.Money).Value = Bankbalance;

            

                rowsAffected = command.ExecuteNonQuery();

            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static SqlDataReader Getbankdetails()
    {
        string sql = "SELECT  * FROM Bankdetails";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


    public static SqlDataReader Getbankdetailsforadd()
    {
        string sql = "SELECT  Bankname,bankcode,HeadOfficeaddress,Banktype,phoneno1,phoneno2,Website,email,Noofbranchsinisland,Facilities FROM Bankdetails";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader Getbankbranchdetails()
    {
        string sql = "SELECT  * FROM Bankbranchdetails";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


    public static SqlDataReader Getbankbranchdetailsforadd()
    {
        string sql = "SELECT  Bankcode ,Branchcode,Branchname ,Address,phone1,Phone2 ,Fax,email,Managername,Personalph,Opendaysandtime,Notes FROM Bankbranchdetails";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader Getbankaccount()
    {
        string sql = "SELECT   Bankname,Bankcode,Branchcode,Accountno ,Holdername,Joindate,Accounttype,InitialAmount,Swiftcode,Bankbalance FROM Bank";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


}
