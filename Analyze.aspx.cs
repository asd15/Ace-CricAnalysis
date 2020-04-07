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
    public partial class Analyze : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=cricdb;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        public string getteams()
        {
            int tid = int.Parse(Session["tid"].ToString());
            string data = "";
            string qu = "select * from teams where tid!=" + tid;
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                string tn = read["teamname"].ToString();
                string tp = read["teampic"].ToString();
                string tl = read["teamlogo"].ToString();
                string plyd = read["played"].ToString();
                string won = read["won"].ToString();
                string lost = read["lost"].ToString();
                string net = read["netrr"].ToString();
                string pts = read["points"].ToString();
                int tid2 = int.Parse(read["tid"].ToString());
                data += "<div class='col-md-3'><div class='card' style='width: 18rem;'><img style = 'height:175px' src ='img/"+tp+"' class='card-img-top'><center><div><img class='rounded-circle' src='img/"+tl+"' style='height:50px;width:50px;'></div></center><div class='card-body'><h5 class='card-title'>Team <b>"+tn+"</b></h5><p class='card-text'><b>Played:</b>"+plyd+"</p>  <b>Won:</b> "+won+"  <b>Lost:</b> "+lost+"  <b>Points:</b> "+pts+" <b>Net RR: </b>"+net+"<a href = 'teamgraph.aspx?value="+tid2+"' class='btn btn-primary'>Analyze Team</a></div></div></div><p></p>";
            }
            read.Close();
            con.Close();
            return data;
        }
    }
}