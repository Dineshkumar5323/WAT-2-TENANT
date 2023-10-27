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
    public partial class Women_s_PG : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        string str;
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet set = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btn_women_save_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            string str = "";
            str = "insert into Women_PG_Table values('" + txt_women_area.Text + "','" + txt_women_name.Text + "','" + drp_women_food.Text + "','" + txt_women_rent.Text + "','" + txt_women_advance.Text + "','" + txt_women_number.Text + "','" + txt_women_address.Text + "','" + txt_women_about.Text + "','" + drp_women_availability.Text + "','" + txt_women_extra.Text + "')";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            clear();
        }
        void clear()
        {
            txt_women_area.Text = "";
            txt_women_name.Text = "";
            drp_women_food.SelectedIndex = 0;
            txt_women_rent.Text = "";
            txt_women_advance.Text = "";
            txt_women_number.Text = "";
            txt_women_address.Text = "";
            txt_women_about.Text = "";
            drp_women_availability.SelectedIndex = 0;
            txt_women_extra.Text = "";
            txt_women_area.Focus();
        }

        protected void btn_women_view_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            string str = "";
            str = "select * from Women_PG_Table";
            adap = new SqlDataAdapter(str, con);
            adap.Fill(set);
            GridView1.DataSource = set.Tables[0].DefaultView;
            GridView1.DataBind();
            con.Close();
        }
    }
}