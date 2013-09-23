using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ConsoleApplication1
{
   public partial class Form1 : Form
   {
      testwebservice.testwebservice s = new testwebservice.testwebservice();

      public Form1()
      {
         InitializeComponent();
         dataGridView1.AutoGenerateColumns = false;
      }

      private void Form1_Load(object sender, EventArgs e)
      {
         LoadData();
      }

      void LoadData()
      {
         dataGridView1.DataSource = s.GetPatients(); ;
      }

      private void button2_Click(object sender, EventArgs e)
      {
         testwebservice.Patient p = new testwebservice.Patient();
         PatientForm f = new PatientForm();
         f.Patient = p;
         if (f.ShowDialog() == DialogResult.OK)
         {
            s.AddPatient(p);
            LoadData();
         }
      }

      private void button4_Click(object sender, EventArgs e)
      {
         if (dataGridView1.CurrentRow != null)
         {
            testwebservice.Patient p = (testwebservice.Patient)dataGridView1.CurrentRow.DataBoundItem;
            p = (testwebservice.Patient)p.Clone();
            PatientForm f = new PatientForm();
            f.Patient = p;
            if (f.ShowDialog() == DialogResult.OK)
            {
               s.UpdatePatient(p);
               LoadData();
            }
         }
      }

      private void button3_Click(object sender, EventArgs e)
      {
         if (dataGridView1.CurrentRow != null)
         {
            testwebservice.Patient p = (testwebservice.Patient)dataGridView1.CurrentRow.DataBoundItem;
            s.DeletePatient(p.ID);
            LoadData();
         }
      }
   }
}
