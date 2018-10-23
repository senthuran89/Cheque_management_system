using System;
using System.Data;
using System.Data.SqlClient ;
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
/// Summary description for Adminclass
/// </summary>
public class Adminclass
{
    public static string Error;

    public static int AddStaff(

        string Firstname,
        string Lastname,
        string Address,
        string City,
        string Province,
        string Moblenumber,
        string Homephone,
        string Emailid,
        DateTime Joindate,
        string Position,
        string NICno,
        string Drivinglicense,
        string staffcode
      
        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddstaffdetails", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@City", SqlDbType.VarChar, 30).Value = City;
                command.Parameters.Add("@Province", SqlDbType.VarChar, 30).Value = Province;
                command.Parameters.Add("@Moblenumber", SqlDbType.VarChar, 20).Value = Moblenumber;
                command.Parameters.Add("@Homephone", SqlDbType.VarChar, 20).Value = Homephone;
                command.Parameters.Add("@Emailid", SqlDbType.VarChar, 50).Value = Emailid;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Position", SqlDbType.VarChar, 30).Value = Position;
                command.Parameters.Add("@NICno", SqlDbType.VarChar, 10).Value = NICno;
                command.Parameters.Add("@Drivinglicense", SqlDbType.VarChar, 20).Value = Drivinglicense;
                command.Parameters.Add("@staffcode", SqlDbType.VarChar, 30).Value = staffcode;
              

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

    public static SqlDataReader Getstaffdata()
    {
        string sql = "SELECT  Firstname,Lastname,Address,City,Province,Moblenumber,Homephone,Emailid,Joindate,Position,NICno,Drivinglicense,staffcode FROM Staffdetails";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


    public static SqlDataReader Getaccountentdata()
    {
        string sql = "SELECT  * FROM Accountant";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader Getaccountentdataadd()
    {
        string sql = "SELECT  Firstname,Lastname,Address,Phonenumber,Joindate,Username,Password,StaffCode FROM Accountant";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetCashierdata()
    {
        string sql = "SELECT  * FROM Cashier";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


    public static SqlDataReader GetCashierdataadd()
    {
        string sql = "SELECT  Firstname,Lastname,Address,Phonenumber,Joindate,Username,Password,StaffCode FROM Cashier";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader Getadmindata()
    {
        string sql = "SELECT  * FROM Admin";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader Getadmindataadd()
    {
        string sql = "SELECT  Username,Password FROM Admin";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


    public static int Addadmin(

       string Username,
       string Password
      

       )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spaddadmin", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = Username;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = Password;
                
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

    public static int Editadmin(
         int Id,
      string Username,
      string Password


      )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpeditAdmin", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Id", SqlDbType.Int ).Value = Id;
                command.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = Username;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = Password;

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


    public static int Addaccount(


      string  Firstname,
      string Lastname,
string Address,
string Phonenumber ,
DateTime Joindate,
string Username,
string Password ,
string StaffCode 
    


     )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAdd_addaccountent", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Firstname", SqlDbType.VarChar,30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@Phonenumber", SqlDbType.VarChar, 20).Value = Phonenumber;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime ).Value = Joindate;
                command.Parameters.Add("@Username", SqlDbType.VarChar, 20).Value = Username;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 30).Value = Password;
                command.Parameters.Add("@StaffCode", SqlDbType.VarChar, 20).Value = StaffCode;


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

    public static int editaccount(

        int Id,
  string Firstname,
  string Lastname,
string Address,
string Phonenumber,
DateTime Joindate,
string Username,
string Password,
string StaffCode



 )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEdit_Accountent", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@Phonenumber", SqlDbType.VarChar, 20).Value = Phonenumber;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Username", SqlDbType.VarChar, 20).Value = Username;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 30).Value = Password;
                command.Parameters.Add("@StaffCode", SqlDbType.VarChar, 20).Value = StaffCode;


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

    public static int AddCashier(


  string Firstname,
  string Lastname,
string Address,
string Phonenumber,
DateTime Joindate,
string Username,
string Password,
string StaffCode



 )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spadd_Cashier", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@Phonenumber", SqlDbType.VarChar, 20).Value = Phonenumber;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Username", SqlDbType.VarChar, 20).Value = Username;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 30).Value = Password;
                command.Parameters.Add("@StaffCode", SqlDbType.VarChar, 20).Value = StaffCode;


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

    public static int editCashier(

    int Id,
string Firstname,
string Lastname,
string Address,
string Phonenumber,
DateTime Joindate,
string Username,
string Password,
string StaffCode



)
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEdit_cashier", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@Phonenumber", SqlDbType.VarChar, 20).Value = Phonenumber;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Username", SqlDbType.VarChar, 20).Value = Username;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 30).Value = Password;
                command.Parameters.Add("@StaffCode", SqlDbType.VarChar, 20).Value = StaffCode;


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
}
