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
    public partial class Shop : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        String str;
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet set = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_shop_save_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            str = "";
            str = "insert into Shop_Table values('" + txt_shop_area.Text + "','" + txt_shop_size.Text + "','" + txt_shop_rent.Text + "','" + txt_shop_advance.Text + "','" + txt_shop_number.Text + "','" + txt_shop_address.Text + "','" + txt_shop_about.Text + "','" + drp_shop_availability.Text + "','" + txt_shop_extra.Text + " ')";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            clear();
        }
        void clear()
        {
            txt_shop_area.Text = "";
            txt_shop_size.Text = "";
            txt_shop_rent.Text = "";
            txt_shop_advance.Text = "";
            txt_shop_number.Text = "";
            txt_shop_address.Text = "";
            txt_shop_about.Text = "";
            drp_shop_availability.SelectedIndex = 0;
            txt_shop_extra.Text = "";
            txt_shop_area.Focus();
        }

        protected void btn_shop_view_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-P6TU3LE\\SQLEXPRESS01;Initial Catalog=Tenent;Integrated Security=True";
            con.Open();
            str = "";
            str = "select * from Shop_Table";
            adap = new SqlDataAdapter(str, con);
            adap.Fill(set);
            GridView1.DataSource = set.Tables[0].DefaultView;
            GridView1.DataBind();
            con.Close();
        }
    }
}