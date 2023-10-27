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
    public partial class Men_s_PG : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        string str;
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet set = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_men_save_Click(object sender, EventArgs e)
        {
            con.ConnectionString= "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            string str = "";
            str = "insert into Men_PG_Table values('" + txt_men_area.Text + "','" + txt_men_name.Text + "','" + drp_men_food.Text + "','" + txt_men_rent.Text + "','" + txt_men_advance.Text + "','" + txt_men_number.Text + "','" + txt_men_address.Text + "','" + txt_men_about.Text + "','" + drp_men_avilability.Text + "','" + txt_men_extrs.Text + "')";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            clear();
        }
        void clear()
        {
            txt_men_area.Text = "";
            txt_men_name.Text = "";
            drp_men_food.SelectedIndex = 0;
            txt_men_rent.Text = "";
            txt_men_advance.Text = "";
            txt_men_number.Text = "";
            txt_men_address.Text = "";
            txt_men_about.Text = "";
            drp_men_avilability.SelectedIndex = 0;
            txt_men_extrs.Text = "";
            txt_men_area.Focus();
        }
        protected void btn_men_view_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            string str = "";
            str = "select * from Men_PG_Table";
            adap = new SqlDataAdapter(str,con);
            adap.Fill(set);
            GridView1.DataSource = set.Tables[0].DefaultView;
            GridView1.DataBind();
            con.Close();
        }
    }
}