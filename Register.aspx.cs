using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Task1
{
    public partial class Register1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source = MOB-APP-LILA\CCTNSMSSQLSERVER;Initial Catalog = Task_1;  Persist Security Info=True;User ID = sa; Password=aai@123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmdInsert = new SqlCommand();
                cmdInsert.Connection = conn;
                cmdInsert.CommandType = System.Data.CommandType.StoredProcedure;
                cmdInsert.CommandText = "insertEmployeeDetails";

                if(empid.Text != string.Empty || fname.Text != string.Empty || lname.Text != string.Empty || phone.Text != string.Empty || email.Text != string.Empty || password.Text != string.Empty
                    || dob.Text != string.Empty || address.Text != string.Empty || state.Text != string.Empty || designation.Text != string.Empty)
                {
                    cmdInsert.Parameters.AddWithValue("@empid", SqlDbType.Int).Value = empid.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@fname", SqlDbType.VarChar).Value = fname.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@lname", SqlDbType.VarChar).Value = lname.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@phone", SqlDbType.VarChar).Value = phone.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = email.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@dob", SqlDbType.Date).Value = dob.Text.Trim(); // dob format = mm/dd/yyyy
                    cmdInsert.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = address.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@state", SqlDbType.VarChar).Value = state.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@designation", SqlDbType.VarChar).Value = designation.Text.Trim();
                    cmdInsert.ExecuteNonQuery();
                    empid.Text = string.Empty;
                    fname.Text = string.Empty;
                    lname.Text = string.Empty;
                    phone.Text = string.Empty;
                    email.Text = string.Empty;
                    password.Text = string.Empty;
                    dob.Text = string.Empty;
                    address.Text = string.Empty;
                    state.Text = string.Empty;
                    designation.Text = string.Empty;
                    string message = "Registered Successfully !!!";
                    MessageBox.Show(message);
                }
                else
                {
                    string message = "All fields are required !!!";
                    MessageBox.Show(message);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}