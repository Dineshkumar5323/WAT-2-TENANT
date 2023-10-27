using System;
using System.Data;
using System.Data.SqlClient;

namespace WAT_2_TENANT.webforms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void drp_login_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_login_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select * from Login_Table where User_Name='" + txt_login_username.Text + "' and Password='" + txt_login_pass.Text + "' and User_Type='" + drp_login.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('you are logined as " + dt.Rows[0][2] + "')</script>");
                if (drp_login.SelectedIndex == 1)
                {
                    Response.Redirect("~/webforms/House.aspx");
                }
                else if (drp_login.SelectedIndex == 2)
                {
                    Response.Redirect("~/webforms/Apartment.aspx");
                }
            }
            else
            {
                Response.Write("error in your input");
            }
        }
    }
}