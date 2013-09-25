using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patients : System.Web.UI.Page
{
   static List<Patient> pats = new List<Patient>();
   protected void Page_Load(object sender, EventArgs e)
    {
       GridView1.DataSource = pats;
       GridView1.DataBind();
    }

   protected void Button1_Click(object sender, EventArgs e)
   {
      Patient p = new Patient();
      p.Name = TextBox1.Text;
      p.SurName = TextBox2.Text;
      pats.Add(p);
      Page.Response.Redirect("Patients.aspx");
   }
}