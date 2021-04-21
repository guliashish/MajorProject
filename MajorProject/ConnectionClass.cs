using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace MajorProject
{
    public abstract class ConnectionClass
    {
        public abstract string Connection();
    }
    public class ConnectionChild : ConnectionClass
    {
        public override string Connection()
        {
            string conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            return conn;
        }
    }
}