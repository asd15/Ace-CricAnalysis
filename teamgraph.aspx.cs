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
    public partial class teamgraph : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=cricdb;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        public string getteamplyrs()
        {
            int tid = int.Parse(Request.QueryString["value"].ToString()); 
            string data = "";
            string qu = "select * from players where tid=" + tid;
            string qu1 = "select * from teams where tid=" + tid;
            MySqlCommand cmd1 = new MySqlCommand(qu1, con);
            MySqlDataReader read1 = cmd1.ExecuteReader();
            read1.Read();
            string tmname = read1["teamuname"].ToString();
            read1.Close();

            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                string pid = read["pid"].ToString();
                string pn = read["pname"].ToString();
                string sc = read["scoreall"].ToString();
                string wc = read["wicketsall"].ToString();
                string pic = read["pic"].ToString();
                data += "<div class='col-md-3' style='border:10px solid white'><div class='card' style='width: 15rem; background-color:black'><img style = 'height:200px' src='img/"+tmname+"/"+pic+"' class='card-img-top'><div class='card-body'><h5 class='card-title'><b>"+pn+"</b></h5><p class='card-text' style='text-align:center'><small class='text-muted'>Runs: "+sc+". Wickets: "+wc+"</small></p><a href = 'playeranalyze.aspx?value="+pid+"' class='btn btn-primary btn-sm btn-block'>Analyze Player</a></div></div></div><br>";
            }
            read.Close();
            return data;
        }

        public string predictioncall()
        {
            string predict = "";
            int tid = int.Parse(Request.QueryString["value"].ToString());
            if (tid == 1 || tid == 2)
            {
                predict = "<div class='tableauPlaceholder' id='viz1586244993855' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;MI&#47;MIvsRCB&#47;Sheet11&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='MIvsRCB&#47;Sheet11' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;MI&#47;MIvsRCB&#47;Sheet11&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>               <br>";
            }
            return predict;
        }

        public string teamanalyzecall()
        {
            string graphs = "";
            int tid = int.Parse(Request.QueryString["value"].ToString());
            if (tid == 1)
            {
                graphs = "<div class='tableauPlaceholder' id='viz1586243296795' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBfifties&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='RCBfifties&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBfifties&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div> <br> <div class='tableauPlaceholder' id='viz1586243425324' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBwickets&#47;Sheet2&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='RCBwickets&#47;Sheet2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBwickets&#47;Sheet2&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div><br><div class='tableauPlaceholder' id='viz1586243506393' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBrunsscored&#47;Sheet4&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='RCBrunsscored&#47;Sheet4' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBrunsscored&#47;Sheet4&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <br> <div class='tableauPlaceholder' id='viz1586243544086' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBfourssixes&#47;Sheet3&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='RCBfourssixes&#47;Sheet3' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;RC&#47;RCBfourssixes&#47;Sheet3&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>               ";
            }
            else if (tid == 2)
            {
                graphs = "little things";
            }
            con.Close();
            return graphs;
        }
    }
}