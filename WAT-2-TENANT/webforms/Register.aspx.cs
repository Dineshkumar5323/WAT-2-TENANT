using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WAT_2_TENANT.webforms
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        string str;
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet set = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_registrer_register_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            string str = "";
            str = "insert into Register_Table values('" + txt_register_name.Text + "','" + txt_register_pass.Text + "','" + txt_register_copass.Text + "','" + drp_register.Text + "','" + txt_register_email.Text + "','" + txt_register_mobile.Text + "','" + txt_register_website.Text + "')";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            clear();
        }
        void clear()
        {
            txt_register_name.Text = "";
            txt_register_pass.Text = "";
            txt_register_copass.Text ="";
            drp_register.SelectedIndex = 0;
            txt_register_email.Text = "";
            txt_register_mobile.Text = "";
            txt_register_website.Text = "";
            txt_register_name.Focus();
        }
    }
}