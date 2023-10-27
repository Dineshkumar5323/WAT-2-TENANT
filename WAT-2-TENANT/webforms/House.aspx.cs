using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WAT_2_TENANT.webforms
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        String str;
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet set = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string conpath;

        protected void btn_house_save0_Click(object sender, EventArgs e)
        {
            conpath = ConfigurationSettings.AppSettings["Dinesh"];
            con.ConnectionString = conpath;
            con.Open();
            str = "";
            str = "insert into House_Table values('" + txt_house_area.Text + "','" + Drp_house_type.Text + "','" + txt_house_rent.Text + "','" + txt_house_advance.Text + "','" + txt_house_owner.Text + "','" + txt_house_number.Text + "','" + txt_house_address.Text + "','" + txt_house_about.Text + "','" + drp_house_availability.Text + "','" + txt_house_extra.Text + " ')";
            com = new SqlCommand(str,con);
            com.ExecuteNonQuery();
            con.Close();
            clear();
        }
        void clear()
        {
            txt_house_area.Text = "";
            Drp_house_type.SelectedIndex = 0;
            txt_house_rent.Text = "";
            txt_house_advance.Text = "";
            txt_house_owner.Text = "";
            txt_house_number.Text = "";
            txt_house_address.Text = "";
            txt_house_about.Text = "";
            drp_house_availability.SelectedIndex = 0;
            txt_house_extra.Text = "";
            txt_house_area.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            str = "";
            str = "select * from House_Table";
            adap = new SqlDataAdapter(str,con);
            adap.Fill(set);
            GridView1.DataSource = set.Tables[0].DefaultView;
            GridView1.DataBind();
            con.Close();
        }
        
    }
}