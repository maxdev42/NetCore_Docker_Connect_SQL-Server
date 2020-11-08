using System;
using System.Collections.Generic;
using System.Text;

namespace DockerConnectToSqlServer.Model
{
    public class CountryModel
    {
        public int Id { get; set; }
        public string Country { get; set; }
        public bool Active { get; set; }
    }
}
