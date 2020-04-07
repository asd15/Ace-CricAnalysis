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
    public partial class index : System.Web.UI.Page
    {
               
       MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=cricdb;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            int sixsum = 0;
            int foursum = 0;
            con.Open();
            string str = "select * from players";
            MySqlCommand cmd1 = new MySqlCommand(str, con);
            MySqlDataReader reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                sixsum = sixsum + int.Parse(reader["sixes"].ToString());
                foursum = foursum + int.Parse(reader["fours"].ToString());
            }
            Label1.Text = sixsum.ToString();
            Label2.Text = foursum.ToString();
            reader.Close();

            string str2 = "select * from players where score = (select MAX(score) from players)";
            MySqlCommand cmd2 = new MySqlCommand(str2, con);
            MySqlDataReader reader1 = cmd2.ExecuteReader();
            while (reader1.Read())
            {
                Label3.Text = reader1["pname"].ToString();
                Label4.Text = reader1["score"].ToString();
                string fours = reader1["fours"].ToString();
                string sixes = reader1["sixes"].ToString();
                Label5.Text = "4x" + fours + " , 6x" + sixes + " "; 
            }
            reader1.Close();
            string strbowler = "select * from players where wickets = (select MAX(wickets) from players)";
            MySqlCommand cmdb = new MySqlCommand(strbowler, con);
            MySqlDataReader reder = cmdb.ExecuteReader();
            while (reder.Read())
            {
                Label6.Text = reder["pname"].ToString();
                Label7.Text = reder["wickets"].ToString();
                Label8.Text = reder["bowlingaverage"].ToString();
            }
            reder.Close();
            string strsixes = "select * from players where sixes = (select MAX(sixes) from players)";
            MySqlCommand cmds = new MySqlCommand(strsixes, con);
            MySqlDataReader readers = cmds.ExecuteReader();
            while (readers.Read())
            {
                Label9.Text = readers["pname"].ToString();
                Label10.Text = readers["sixes"].ToString();
                Label11.Text = readers["strikerate"].ToString();
            }
            readers.Close();
            string strfours = "select * from players where fours = (select MAX(fours) from players)";
            MySqlCommand cmdf = new MySqlCommand(strfours, con);
            MySqlDataReader readerf = cmdf.ExecuteReader();
            while (readerf.Read())
            {
                Label12.Text = readerf["pname"].ToString();
                Label13.Text = readerf["fours"].ToString();
                Label14.Text = readerf["strikerate"].ToString();
            }
            readerf.Close();
            string strfif = "select * from players where fifties = (select MAX(fifties) from players)";
            MySqlCommand cmdfif = new MySqlCommand(strfif, con);
            MySqlDataReader readerfif = cmdfif.ExecuteReader();
            while (readerfif.Read())
            {
                Label15.Text = readerfif["pname"].ToString();
                Label16.Text = readerfif["fifties"].ToString();
                Label17.Text = readerfif["average"].ToString();
            }
            readerfif.Close();
        }
        public string getpls()
        {
            string data = "";
            string qu1 = "select * from players order by score desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu1, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string fours = read["fours"].ToString();
                string sixes = read["sixes"].ToString();
                string score = read["score"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>" + i++ +"</span> " + pn + "</div><div class='rca-col rca-tag-info'> 4x"+ fours+ ", 6x"+ sixes+"</div><div class='rca-col rca-name-score'>" +score +"</div></div>";
            }
            read.Close();
            return data;
        }
        public string getbowls()
        {
            string data = "";
            string qu1 = "select * from players order by wickets desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu1, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string avg = read["bowlingaverage"].ToString();
                string wickets = read["wickets"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>"+i+"</span>"+pn+"</div><div class='rca-col rca-tag-info'>"+avg+"</div><div class='rca-col rca-name-score'>"+wickets+"</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }
        public string getsixes()
        {
            string data = "";
            string qu = "select * from players order by sixes desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string sixes = read["sixes"].ToString();
                string sr = read["strikerate"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>"+i+"</span> "+pn+"</div><div class='rca-col rca-tag-info'>"+sr+"</div><div class='rca-col rca-name-score'>"+sixes+"</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }
        public string getfours()
        {
            string data = "";
            string qu = "select * from players order by fours desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string fours = read["fours"].ToString();
                string sr = read["strikerate"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>"+i+"</span> "+pn+"</div><div class='rca-col rca-tag-info'>"+sr+"</div><div class='rca-col rca-name-score'>"+fours+"</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }
        public string getfifty()
        {
            string data = "";
            string qu = "select * from players order by fifties desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string fifty = read["fifties"].ToString();
                string avg = read["average"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>" + i + "</span> " + pn + "</div><div class='rca-col rca-tag-info'>" + avg + "</div><div class='rca-col rca-name-score'>" + fifty + "</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }


        protected void loggedin_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from teams where teamuname='"+TextBox_user_name.Text+"' and teampassword='"+TextBox_password.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["teamuname"] = dr["teamuname"].ToString();
                Session["teamname"] = dr["teamname"].ToString();
                Session["tid"] = dr["tid"].ToString();
                Response.Redirect("index.aspx");
            }

            con.Close();

            Response.Redirect("analyze.aspx");
        }

    }
}