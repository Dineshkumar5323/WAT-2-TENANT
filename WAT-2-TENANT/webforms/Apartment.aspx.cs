using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WAT_2_TENANT.webforms
{
    public partial class Apartment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        String str;
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet set = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_apar_save_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            str = "";
            str = "insert into Apartment_Table values('" + txt_apar_area.Text + "','" + drp_apar_type.Text + "','" + txt_apar_rent.Text + "','" + txt_apar_adv.Text + "','" + txt_apar_apname.Text + "','" + txt_apar_number.Text + "','" + txt_apar_address.Text + "','" + txt_apar_about.Text + "','" + drp_apar_availability.Text + "','" + txt_apar_extra.Text + " ')";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            clear();
        }
        void clear()
        {
            txt_apar_area.Text = "";
            drp_apar_type.SelectedIndex = 0;
            txt_apar_rent.Text = "";
            txt_apar_adv.Text = "";
            txt_apar_apname.Text = "";
            txt_apar_number.Text = "";
            txt_apar_address.Text = "";
            txt_apar_about.Text = "";
            drp_apar_availability.SelectedIndex = 0;
            txt_apar_extra.Text = "";
            txt_apar_area.Focus();
        }

        protected void btn_apar_view_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            str = "";
            str = "select * from Apartment_Table";
            adap = new SqlDataAdapter(str, con);
            adap.Fill(set);
            GridView1.DataSource = set.Tables[0].DefaultView;
            GridView1.DataBind();
            con.Close();
        }
    }
}