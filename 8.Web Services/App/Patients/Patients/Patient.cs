using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1.testwebservice
{
   public partial class Patient : ICloneable
   {
      public object Clone()
      {
         return this.MemberwiseClone();
      }
   }
}
