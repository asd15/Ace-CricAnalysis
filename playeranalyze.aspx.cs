using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using MySql.Data.MySqlClient;
using System.Data;


namespace CricketAnalysis2
{
    public partial class playeranalyze : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=cricdb;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        public string getplr()
        {
            int pid = int.Parse(Request.QueryString["value"].ToString());
            string data = "";
            string qu = "select * from players where pid=" + pid;
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            read.Read();
            string pname = read["pname"].ToString();
            string pic = read["pic"].ToString();
            string role = read["role"].ToString();
            string ssn = read["seasonplayed"].ToString();
            string mat = read["matchesall"].ToString();
            string score = read["scoreall"].ToString();
            string balls = read["ballsdelivered"].ToString();
            string wics = read["wicketsall"].ToString();
            data = "<h2 class='rca-stats-title'>"+pname+ "</h2><center><div class='card' style='width: 18rem; background-color: black;'><img src = 'img/RCB/" + pic+"' class='card-img-top'><div class='card-body'><p class='card-text'><b>Role: </b>"+role+" <b>Seasons Played:</b> "+ssn+" <b>Matches: </b> "+score+" <b>Balls Delivered: </b> "+balls+" <b>Wickets: </b> "+wics+"</p></div></div></center><br>";
            return data;
        }
        



        public string getplayerstats()
        {
            int pid = int.Parse(Request.QueryString["value"].ToString());
            string graph = "";
            if (pid == 1)
            {
                graph = "<div class='tableauPlaceholder' id='viz1586273382260' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vk&#47;Vkrecords&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Vkrecords&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vk&#47;Vkrecords&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <br>";
            }
            return graph;
        }

        public string getplayerpredict()
        {
            int pid = int.Parse(Request.QueryString["value"].ToString());
            string prediction = "";
            if (pid == 1)
            {
                prediction = "<div class='tableauPlaceholder' id='viz1586273398536' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vk&#47;VkPredictions&#47;Sheet2&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='VkPredictions&#47;Sheet2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vk&#47;VkPredictions&#47;Sheet2&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>               ";
            }
            return prediction;
        }
    }
}