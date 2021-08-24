using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eCTD_Parser
{
    public class jsonOb
    {
        

        public string id { get; set; }
        public string parent { get; set; }
        public string text { get; set; }

        public string type { get; set; }
        
        public bool children { get; set; }       
        
    }
}