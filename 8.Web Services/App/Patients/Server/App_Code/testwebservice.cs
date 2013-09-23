using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data.MySqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for testwebservice
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class testwebservice : System.Web.Services.WebService {

   static string connectionString = WebConfigurationManager.ConnectionStrings["mysqlConnection"].ConnectionString;

   [WebMethod]
   public List<Patient> GetPatients()
   {
      MySqlConnection c = new MySqlConnection(connectionString);
      c.Open();
      string sqlText = "SELECT * FROM PATIENTS";
      MySqlCommand cmd = new MySqlCommand(sqlText, c);
      MySqlDataReader r = cmd.ExecuteReader();

      List<Patient> pats = new List<Patient>();
      while (r.Read())
      {
         Patient p = new Patient();
         p.ID = (int)r["ID"];
         p.Name = (string)r["NAME"];
         p.SurName = (string)r["SUR_NAME"];
         pats.Add(p);
      }
      r.Close();
      c.Clone();
      return pats;
   }

   [WebMethod]
   public void AddPatient(Patient p)
   {
      MySqlConnection c = new MySqlConnection(connectionString);
      c.Open();
      string sqlText = "INSERT INTO PATIENTS (NAME, SUR_NAME) VALUES(@NAME, @SUR_NAME)";
      MySqlCommand cmd = new MySqlCommand(sqlText, c);
      cmd.Parameters.AddWithValue("NAME", p.Name);
      cmd.Parameters.AddWithValue("SUR_NAME", p.SurName);
      cmd.ExecuteNonQuery();
      c.Close();
   }

   [WebMethod]
   public void UpdatePatient(Patient p)
   {
      MySqlConnection c = new MySqlConnection(connectionString);
      c.Open();
      string sqlText = "UPDATE PATIENTS set NAME = @NAME, SUR_NAME = @SUR_NAME WHERE ID = @ID";
      MySqlCommand cmd = new MySqlCommand(sqlText, c);
      cmd.Parameters.AddWithValue("ID", p.ID);
      cmd.Parameters.AddWithValue("NAME", p.Name);
      cmd.Parameters.AddWithValue("SUR_NAME", p.SurName);
      cmd.ExecuteNonQuery();
      c.Close();
   }

   [WebMethod]
   public void DeletePatient(int id)
   {
      MySqlConnection c = new MySqlConnection(connectionString);
      c.Open();
      string sqlText = "DELETE FROM PATIENTS WHERE ID = @ID";
      MySqlCommand cmd = new MySqlCommand(sqlText, c);
      cmd.Parameters.AddWithValue("ID", id);
      cmd.ExecuteNonQuery();
      c.Close();
   }
}
