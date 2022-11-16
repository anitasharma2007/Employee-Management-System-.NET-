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
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source = MOB-APP-LILA\CCTNSMSSQLSERVER;Initial Catalog = Task_1;  Persist Security Info=True;User ID = sa; Password=aai@123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (email.Text != string.Empty || password.Text != string.Empty)
                {
                    conn.Open();
                    SqlCommand cmdInsert = new SqlCommand();
                    cmdInsert.Connection = conn;
                    cmdInsert.CommandType = System.Data.CommandType.StoredProcedure;
                    cmdInsert.CommandText = "login";

                    cmdInsert.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = email.Text.Trim();
                    cmdInsert.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text.Trim();

                    cmdInsert.ExecuteNonQuery();
                    SqlCommand getFirstName = new SqlCommand();
                    getFirstName.Connection = conn;
                    getFirstName.CommandType = System.Data.CommandType.StoredProcedure;
                    getFirstName.CommandText = "getEmployeeName";
                    SqlDataReader sdr = getFirstName.ExecuteReader();
                    while (sdr.Read())
                    {
                        String em = sdr.GetString(2);
                        String pwd = sdr.GetString(3);
                        if ((em.Trim() == email.Text.Trim()) && (pwd.Trim() == password.Text.Trim()))
                        {
                            string fn = sdr.GetString(0);
                            string ln = sdr.GetString(1);
                            Session["f1"] = fn.ToString();
                            Session["l1"] = ln.ToString();
                            Session["email"] = em.ToString();
                            string message = "Logged In Successfully!!!";
                            MessageBox.Show(message);

                            //storing email into cookie
                            HttpCookie cookie = new HttpCookie("store");
                            cookie["emailCookie"] = email.Text;
                            Response.Cookies.Add(cookie);
                            Response.Redirect("WelcomePage.aspx");
                            cookie.Expires = DateTime.Now.AddSeconds(10);
                        }
                    }
                    string message1 = "Incorrect Email or Password!!!";
                    MessageBox.Show(message1);
                    conn.Close();
                }
                else
                {
                    string message = "Email or Password should not be blank!!!";
                    MessageBox.Show(message);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}