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
/// Summary description for CashierInsertDetails
/// </summary>
public class CashierInsertDetails
{
    public static string Error;

    public static int cno;
    public static int Addcustomer(
        int Cid,
        string Firstname,
        string Lastname,
        string Address,
        string Zipcode,
        string City,
        string NICno,
        string Companyname,
        string Regno,
        string Companyaddress,
        string Companyphone1,
        string Companyphone2,
        string Personalphone,
        string Fax,
        string Email,
        string Website,
        string Bankname,
        string Bankcode,
        string Branchcode,
        string Accountno,
        DateTime Joindate,
        string Notos,
        string Staffcode
        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddCustomer",connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Cid", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@Zipcode", SqlDbType.VarChar, 10).Value = Zipcode;
                command.Parameters.Add("@City", SqlDbType.VarChar, 20).Value = City;
                command.Parameters.Add("@NICno", SqlDbType.VarChar, 10).Value = NICno;
                command.Parameters.Add("@Companyname", SqlDbType.VarChar, 30).Value = Companyname;
                command.Parameters.Add("@Regno", SqlDbType.VarChar, 10).Value = Regno;
                command.Parameters.Add("@Companyaddress", SqlDbType.VarChar, 50).Value = Companyaddress;
                command.Parameters.Add("@Companyphone1", SqlDbType.VarChar, 20).Value = Companyphone1;
                command.Parameters.Add("@Companyphone2", SqlDbType.VarChar, 20).Value = Companyphone2;
                command.Parameters.Add("@Personalphone", SqlDbType.VarChar, 20).Value = Personalphone;
                command.Parameters.Add("@Fax", SqlDbType.VarChar, 20).Value = Fax;
                command.Parameters.Add("@Email", SqlDbType.VarChar, 30).Value = Email;
                command.Parameters.Add("@Website", SqlDbType.VarChar, 30).Value = Website;
                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 50).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode", SqlDbType.VarChar, 20).Value = Branchcode;
                command.Parameters.Add("@Accountno", SqlDbType.VarChar, 30).Value = Accountno;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Notos", SqlDbType.VarChar, 50).Value = Notos;
                command.Parameters.Add("@Staffcode", SqlDbType.VarChar, 20).Value = Staffcode;

                rowsAffected = command.ExecuteNonQuery();
              cno = int.Parse(command.Parameters["@Cid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int issueid;
    public static int Addcuschequedetails(
        int id,
        int Cid,
        string holdername,
        string Accountno,
        string Chequeno,
        DateTime Getdate,
        string Chequetype,
        DateTime Chequedate,
        double Amount,
        string bankname,
        string Bankcode,
        string Branchcode,
        string Payeename,
        string NICno,
        string Reson,
        string notes,
        string Chequestatus,
        string StaffCode
      
        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spcus_addchequedetails", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Cid", SqlDbType.Int).Value = Cid;
                command.Parameters.Add("@holdername", SqlDbType.VarChar, 50).Value = holdername;
                command.Parameters.Add("@Accountno", SqlDbType.VarChar, 30).Value = Accountno;
                command.Parameters.Add("@Chequeno", SqlDbType.VarChar, 20).Value = Chequeno;
                command.Parameters.Add("@Getdate", SqlDbType.DateTime).Value = Getdate;
                command.Parameters.Add("@Chequetype", SqlDbType.VarChar, 20).Value = Chequetype;
                command.Parameters.Add("@Chequedate", SqlDbType.DateTime).Value = Chequedate;
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;
                command.Parameters.Add("@bankname", SqlDbType.VarChar, 50).Value = bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode", SqlDbType.VarChar, 20).Value = Branchcode;
                command.Parameters.Add("@Payeename", SqlDbType.VarChar, 30).Value = Payeename;
                command.Parameters.Add("@NICno", SqlDbType.VarChar, 10).Value = NICno;
                command.Parameters.Add("@Reson ", SqlDbType.VarChar, 50).Value = Reson;
                command.Parameters.Add("@notes ", SqlDbType.VarChar, 50).Value = notes;
                command.Parameters.Add("@Chequestatus ", SqlDbType.VarChar, 30).Value = Chequestatus;
                command.Parameters.Add("@StaffCode", SqlDbType.VarChar, 20).Value = StaffCode;
                rowsAffected = command.ExecuteNonQuery();
                issueid  = int.Parse(command.Parameters["@ID"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }


   
    public static int Addcusdatechequedetails(

        int issueid,
        string Chequeno,
        string  Chequedate,
    
        double Amount,
             string chequetype


        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spcus_adddatechequedetails", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@issueid", SqlDbType.Int).Value = issueid;
                command.Parameters.Add("@Chequeno ", SqlDbType.VarChar, 30).Value = Chequeno;

                command.Parameters.Add("@Chequedate", SqlDbType.VarChar, 30).Value = Chequedate;
     
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;
                command.Parameters.Add("@chequetype", SqlDbType.VarChar, 20).Value = chequetype;
                
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

    public static int Sno;
    public static int Addsuppliers(
        int Sid,
        string Firstname,
        string Lastname,
        string Address,
        string Zipcode,
        string City,
        string NICno,
        string Companyname,
        string Regno,
        string Companyaddress,
        string Companyphone1,
        string Companyphone2,
        string Personalphone,
        string Fax,
        string Email,
        string Website,
        string Bankname,
        string Bankcode,
        string Branchcode,
        string Accountno,
        DateTime Joindate,
        string Notos,
        string Staffcode
        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spaddsuppliers", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Sid", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 30).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = Address;
                command.Parameters.Add("@Zipcode", SqlDbType.VarChar, 10).Value = Zipcode;
                command.Parameters.Add("@City", SqlDbType.VarChar, 20).Value = City;
                command.Parameters.Add("@NICno", SqlDbType.VarChar, 10).Value = NICno;
                command.Parameters.Add("@Companyname", SqlDbType.VarChar, 30).Value = Companyname;
                command.Parameters.Add("@Regno", SqlDbType.VarChar, 10).Value = Regno;
                command.Parameters.Add("@Companyaddress", SqlDbType.VarChar, 50).Value = Companyaddress;
                command.Parameters.Add("@Companyphone1", SqlDbType.VarChar, 20).Value = Companyphone1;
                command.Parameters.Add("@Companyphone2", SqlDbType.VarChar, 20).Value = Companyphone2;
                command.Parameters.Add("@Personalphone", SqlDbType.VarChar, 20).Value = Personalphone;
                command.Parameters.Add("@Fax", SqlDbType.VarChar, 20).Value = Fax;
                command.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = Email;
                command.Parameters.Add("@Website", SqlDbType.VarChar, 50).Value = Website;
                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 50).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode", SqlDbType.VarChar, 20).Value = Branchcode;
                command.Parameters.Add("@Accountno", SqlDbType.VarChar, 30).Value = Accountno;
                command.Parameters.Add("@Joindate", SqlDbType.DateTime).Value = Joindate;
                command.Parameters.Add("@Notos", SqlDbType.VarChar, 50).Value = Notos;
                command.Parameters.Add("@Staffcode", SqlDbType.VarChar, 20).Value = Staffcode;

                rowsAffected = command.ExecuteNonQuery();
                Sno = int.Parse(command.Parameters["@Sid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int issueid1;
    public static int AddSupchequedetails(
        int id,
        int Sid,
        string holdername,
        string Accountno,
        string Chequeno,
        DateTime Getdate,
        string Chequetype,
        DateTime Chequedate,
        double Amount,
        string bankname,
        string Bankcode,
        string Branchcode,
        string Payeename,
        string NICno,
        string Reson,
        string notes,
        string Chequestatus,
        string StaffCode

        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spsup_addchequedetails", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Sid", SqlDbType.Int).Value = Sid;
                command.Parameters.Add("@holdername", SqlDbType.VarChar, 50).Value = holdername;
                command.Parameters.Add("@Accountno", SqlDbType.VarChar, 30).Value = Accountno;
                command.Parameters.Add("@Chequeno", SqlDbType.VarChar, 20).Value = Chequeno;
                command.Parameters.Add("@Getdate", SqlDbType.DateTime).Value = Getdate;
                command.Parameters.Add("@Chequetype", SqlDbType.VarChar, 20).Value = Chequetype;
                command.Parameters.Add("@Chequedate", SqlDbType.DateTime).Value = Chequedate;
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;
                command.Parameters.Add("@bankname", SqlDbType.VarChar, 50).Value = bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode", SqlDbType.VarChar, 20).Value = Branchcode;
                command.Parameters.Add("@Payeename", SqlDbType.VarChar, 30).Value = Payeename;
                command.Parameters.Add("@NICno", SqlDbType.VarChar, 10).Value = NICno;
                command.Parameters.Add("@Reson ", SqlDbType.VarChar, 50).Value = Reson;
                command.Parameters.Add("@notes ", SqlDbType.VarChar, 50).Value = notes;
                command.Parameters.Add("@Chequestatus ", SqlDbType.VarChar, 30).Value = Chequestatus;
                command.Parameters.Add("@StaffCode", SqlDbType.VarChar, 20).Value = StaffCode;
                rowsAffected = command.ExecuteNonQuery();
                issueid1 = int.Parse(command.Parameters["@Id"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int AddSupdatechequedetails(

        int issueid,
        string Chequeno,
        string  Chequedate,

        double Amount,
             string chequetype


        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spsup_adddatechequedetails", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@issueid", SqlDbType.Int).Value = issueid;
                command.Parameters.Add("@Chequeno ", SqlDbType.VarChar, 30).Value = Chequeno;

                command.Parameters.Add("@Chequedate", SqlDbType.VarChar, 30).Value = Chequedate;

                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;
                command.Parameters.Add("@chequetype", SqlDbType.VarChar, 20).Value = chequetype;

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



    public static int Addcashwithdrwaldetails(

           string Bankname ,
            string Bankcode,
        string Accountno,
         DateTime withdrwaldate,
        string Chequeno,
         double Amount,
        string Purpose ,
        string Withdrawercode,
        string Staffcode 


            )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spcashwithdrawal", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Bankname", SqlDbType.VarChar,30).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar,30).Value = Bankcode;
                command.Parameters.Add("@Accountno ", SqlDbType.VarChar, 30).Value = Accountno;

                command.Parameters.Add("@withdrwaldate", SqlDbType.DateTime).Value = withdrwaldate;
                command.Parameters.Add("@Chequeno ", SqlDbType.VarChar, 20).Value = Chequeno;
                                
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;

                command.Parameters.Add("@Purpose", SqlDbType.VarChar, 50).Value = Purpose;
                command.Parameters.Add("@Withdrawercode", SqlDbType.VarChar, 30).Value = Withdrawercode;
                command.Parameters.Add("@Staffcode", SqlDbType.VarChar, 20).Value = Staffcode;

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

    public static int Addcashdepositdetails(

          string Bankname,
           string Bankcode,
       string Accountno,
        DateTime Depositdate,
              double Amount,
       string Purpose,
       string Depositorocode,
       string Staffcode


           )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spcashdeposit", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 30).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Accountno ", SqlDbType.VarChar, 20).Value = Accountno;

                command.Parameters.Add("@Depositdate", SqlDbType.DateTime).Value = Depositdate;


                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;

                command.Parameters.Add("@Purpose", SqlDbType.VarChar, 50).Value = Purpose;
                command.Parameters.Add("@Depositorocode", SqlDbType.VarChar, 30).Value = Depositorocode;
                command.Parameters.Add("@Staffcode", SqlDbType.VarChar, 30).Value = Staffcode;

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


    public static int chequeissueid;
    public static int AddChequeissuedetails(
        int Id,
              int Holderid,
          int oid,
        string Holdername,
        string type,
        DateTime  Issuedate,      
        string Bankname,
        string Bankcode,
        string Accountno,
        string Chequeno ,
        string Chequetype,
        DateTime Chequedate,
        double Amount,
        int Reciverid,
        string companyname,
        string Recivername,
        string NICno,
        string Phoneno,
        string Chequestatus,
        string Reson,
        string Notes,
        string Staffcode 

        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spadd_chequeissueDetails", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Holderid", SqlDbType.Int).Value = Holderid;
                command.Parameters.Add("@oid", SqlDbType.Int).Value = oid;
                command.Parameters.Add("@Holdername", SqlDbType.VarChar, 30).Value = Holdername;
                command.Parameters.Add("@type", SqlDbType.VarChar, 20).Value = type;
                command.Parameters.Add("@Issuedate", SqlDbType.DateTime).Value = Issuedate;

                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 30).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 30).Value = Bankcode;
                command.Parameters.Add("@Accountno", SqlDbType.VarChar, 30).Value = Accountno;
                command.Parameters.Add("@Chequeno", SqlDbType.VarChar, 30).Value = Chequeno;
                command.Parameters.Add("@Chequetype", SqlDbType.VarChar, 30).Value = Chequetype;
                command.Parameters.Add("@Chequedate", SqlDbType.DateTime).Value = Chequedate;
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;

                command.Parameters.Add("@Reciverid", SqlDbType.Int).Value = Reciverid;
                command.Parameters.Add("@companyname", SqlDbType.VarChar, 50).Value = companyname;
                command.Parameters.Add("@Recivername", SqlDbType.VarChar, 30).Value = Recivername;
                command.Parameters.Add("@NICno", SqlDbType.VarChar, 10).Value = NICno;
                command.Parameters.Add("@Phoneno ", SqlDbType.VarChar, 20).Value = Phoneno;

                command.Parameters.Add("@Chequestatus ", SqlDbType.VarChar, 30).Value = Chequestatus;

                command.Parameters.Add("@Reson ", SqlDbType.VarChar, 50).Value = Reson;
                command.Parameters.Add("@Notes ", SqlDbType.VarChar, 50).Value = Notes;
                command.Parameters.Add("@Staffcode", SqlDbType.VarChar, 20).Value = Staffcode;
                rowsAffected = command.ExecuteNonQuery();
                chequeissueid = int.Parse(command.Parameters["@Id"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
 
    }

    public static int AddChequedepositdetails(

            string Accountno,
             string Bankname,
         string Bankcode,
          DateTime Depositdate,
        string Chequeno,
        DateTime Chequedate,

                double Amount,
        int Holderid,
        int Inchequeid ,
         string Purpose,
         string DepositorCode,
         string staffcode


             )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddchequeDeposit", connection);
                command.CommandType = CommandType.StoredProcedure;

                 command.Parameters.Add("@Accountno ", SqlDbType.VarChar, 20).Value = Accountno;
                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 30).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Depositdate", SqlDbType.DateTime).Value = Depositdate;
                command.Parameters.Add("@Chequeno", SqlDbType.VarChar, 30).Value = Chequeno;
                command.Parameters.Add("@Chequedate", SqlDbType.DateTime ).Value = Chequedate;
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;

                command.Parameters.Add("@Holderid", SqlDbType.Int).Value = Holderid;
                command.Parameters.Add("@Inchequeid", SqlDbType.Int).Value = Inchequeid;

                command.Parameters.Add("@Purpose", SqlDbType.VarChar, 50).Value = Purpose;
                command.Parameters.Add("@DepositorCode", SqlDbType.VarChar, 20).Value = DepositorCode;
                command.Parameters.Add("@staffcode", SqlDbType.VarChar, 20).Value = staffcode;

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
    public static int Addchequereturndetails(

       int inid,
        int Holderid,
        string chequeno,
        string Bankname,
          string Bankcode,
        string Branchcode,


       DateTime Chequedate,
             double Amount,
      DateTime  Returndate,
      string Notes,
      string staffcode


          )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpaddChequereturn", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@inid", SqlDbType.Int).Value = inid;
                command.Parameters.Add("@Holderid", SqlDbType.Int).Value = Holderid;
                command.Parameters.Add("@chequeno", SqlDbType.VarChar, 30).Value = chequeno;
                command.Parameters.Add("@Bankname", SqlDbType.VarChar, 30).Value = Bankname;
                command.Parameters.Add("@Bankcode", SqlDbType.VarChar, 20).Value = Bankcode;
                command.Parameters.Add("@Branchcode ", SqlDbType.VarChar, 20).Value = Branchcode;

                command.Parameters.Add("@Chequedate", SqlDbType.DateTime).Value = Chequedate;


                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;
                command.Parameters.Add("@Returndate", SqlDbType.DateTime).Value = Returndate;
                command.Parameters.Add("@Notes", SqlDbType.VarChar, 50).Value = Notes;

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

}


