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
    public partial class EditDetails : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source = MOB-APP-LILA\CCTNSMSSQLSERVER;Initial Catalog = Task_1;  Persist Security Info=True;User ID = sa; Password=aai@123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "getEmployeeId";
            SqlDataAdapter sda = new SqlDataAdapter();
            DataTable dt = new DataTable();
            sda.SelectCommand = cmd;
            string em = Session["email"].ToString();
            cmd.Parameters.AddWithValue("@email", em);
            sda.Fill(dt);
            int id = 0;
            foreach (DataRow row in dt.Rows)
            {
                id = Convert.ToInt32(row[0]);
                //Response.Write(id);
                //Response.Write(" ");
            }
            SqlCommand cmdUpdate = new SqlCommand();
            cmdUpdate.Connection = conn;
            conn.Open();
            cmdUpdate.CommandType = System.Data.CommandType.StoredProcedure;
            cmdUpdate.CommandText = "updateEmployeeDetails";

            cmdUpdate.Parameters.AddWithValue("@empId", id);
            cmdUpdate.Parameters.AddWithValue("@fname", SqlDbType.VarChar).Value = fname.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@lname", SqlDbType.VarChar).Value = lname.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@phone", SqlDbType.VarChar).Value = phone.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = email.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = address.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@state", SqlDbType.VarChar).Value = state.Text.Trim();
            cmdUpdate.Parameters.AddWithValue("@designation", SqlDbType.VarChar).Value = designation.Text.Trim();
            cmdUpdate.ExecuteNonQuery();
            string message = "Details Updated Successfully !!!";
            MessageBox.Show(message);
            fname.Text = string.Empty;
            lname.Text = string.Empty;
            phone.Text = string.Empty;
            email.Text = string.Empty;
            password.Text = string.Empty;
            address.Text = string.Empty;
            state.Text = string.Empty;
            designation.Text = string.Empty;
        }
    }
}