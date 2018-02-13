using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;



public partial class contact : System.Web.UI.Page
{
    int j;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 /*   protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      /*  SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");

        connection.Open();
     //   TextBox1.Text =  GridView1.SelectedIndex.ToString();
        for (i = 0; i < GridView1.Rows.Count;i++ )
        {
            TextBox1.Text = GridView1.Rows[i].Cells[0].Text;

        }
        
    }*/

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
      
        // for (i = 0; i < GridView1.Rows.Count; i++)
        if (TextBox1.Text == "")
        {
            for (j = 0; j < GridView1.Columns.Count; j++)
            {

                TextBox1.Text += GridView1.Rows[GridView1.SelectedIndex].Cells[j].Text + "\n";

            }//+ "\n" + GridView1.Rows[i].Cells[1].Text + "\n" + GridView1.Rows[i].Cells[2].Text + "\n" + GridView1.Rows[i].Cells[3].Text + "\n" + GridView1.Rows[i].Cells[4].Text;
        }
        else
        {
            TextBox1.Text = string.Empty;
            for (j = 0; j < GridView1.Columns.Count; j++)
            {

                TextBox1.Text += GridView1.Rows[GridView1.SelectedIndex].Cells[j].Text + "\n";

            }
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}