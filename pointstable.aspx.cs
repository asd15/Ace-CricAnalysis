using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security;
using MySql.Data.MySqlClient;
using System.Data;

namespace CricketAnalysis2
{
    public partial class pointstable : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=cricdb;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        public string gettbl()
        {
            string data = "";
            string qu = "select * from teams order by points desc";
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                string tn = read["teamname"].ToString();
                string pl = read["played"].ToString();
                string won = read["won"].ToString();
                string ls = read["lost"].ToString();
                string tie = read["tie"].ToString();
                string rr = read["netrr"].ToString();
                string pts = read["points"].ToString();
                data += " <div class='rca-row teamm'><div class='rca-table'><div class='rca-col rca-player al'>"+tn+"</div><div class='rca-col small'>"+pl+"</div><div class='rca-col small'>"+won+"</div><div class='rca-col small'>"+ls+"</div><div class='rca-col small rca-hide-mobile tt'>"+tie+"</div><div class='rca-col small rca-hide-mobile rr'>"+rr+"</div><div class='rca-col small points'>"+pts+"</div></div></div>";
            }
            read.Close();
            con.Close();
            return data;
        }
    }
}