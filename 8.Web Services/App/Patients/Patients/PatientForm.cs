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
   public partial class PatientForm : Form
   {
      public testwebservice.Patient Patient
      {
         set
         {
            textBox1.DataBindings.Add("Text", value, "Name");
            textBox2.DataBindings.Add("Text", value, "SurName");
         }
      }

      public PatientForm()
      {
         InitializeComponent();
      }
   }
}
