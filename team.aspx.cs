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
    public partial class team : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=cricdb;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            int tid = int.Parse(Session["tid"].ToString());
            int sixsum = 0;
            int foursum = 0;
            con.Open();
            string qu = "select * from players where tid="+tid;
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                sixsum = sixsum + int.Parse(read["sixes"].ToString());
                foursum = foursum + int.Parse(read["fours"].ToString());
            }
            Label1.Text = sixsum.ToString();
            Label2.Text = foursum.ToString();
            read.Close();
            string str2 = "select * from players where score = (select MAX(score) from players) and tid="+tid;
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
            string strbowler = "select * from players where wickets = (select MAX(wickets) from players) and tid="+tid;
            MySqlCommand cmdb = new MySqlCommand(strbowler, con);
            MySqlDataReader reder = cmdb.ExecuteReader();
            while (reder.Read())
            {
                Label6.Text = reder["pname"].ToString();
                Label7.Text = reder["wickets"].ToString();
                Label8.Text = reder["bowlingaverage"].ToString();
            }
            reder.Close();
            string strsixes = "select * from players where sixes = (select MAX(sixes) from players) and tid="+tid;
            MySqlCommand cmds = new MySqlCommand(strsixes, con);
            MySqlDataReader readers = cmds.ExecuteReader();
            while (readers.Read())
            {
                Label9.Text = readers["pname"].ToString();
                Label10.Text = readers["sixes"].ToString();
                Label11.Text = readers["strikerate"].ToString();
            }
            readers.Close();
            string strfours = "select * from players where fours = (select MAX(fours) from players) and tid="+tid;
            MySqlCommand cmdf = new MySqlCommand(strfours, con);
            MySqlDataReader readerf = cmdf.ExecuteReader();
            while (readerf.Read())
            {
                Label12.Text = readerf["pname"].ToString();
                Label13.Text = readerf["fours"].ToString();
                Label14.Text = readerf["strikerate"].ToString();
            }
            readerf.Close();
            string strfif = "select * from players where fifties = (select MAX(fifties) from players) and tid="+tid;
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
            int tid = int.Parse(Session["tid"].ToString());
            string data = "";
            string qu1 = "select * from players where tid="+tid+" order by score desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu1, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string fours = read["fours"].ToString();
                string sixes = read["sixes"].ToString();
                string score = read["score"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>" + i++ + "</span> " + pn + "</div><div class='rca-col rca-tag-info'> 4x" + fours + ", 6x" + sixes + "</div><div class='rca-col rca-name-score'>" + score + "</div></div>";
            }
            read.Close();
            return data;
        }
        public string getbowls()
        {
            int tid = int.Parse(Session["tid"].ToString());
            string data = "";
            string qu1 = "select * from players where tid="+tid+" order by wickets desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu1, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string avg = read["bowlingaverage"].ToString();
                string wickets = read["wickets"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>" + i + "</span>" + pn + "</div><div class='rca-col rca-tag-info'>" + avg + "</div><div class='rca-col rca-name-score'>" + wickets + "</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }
        public string getsixes()
        {
            int tid = int.Parse(Session["tid"].ToString());
            string data = "";
            string qu = "select * from players where tid="+tid+" order by sixes desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string sixes = read["sixes"].ToString();
                string sr = read["strikerate"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>" + i + "</span> " + pn + "</div><div class='rca-col rca-tag-info'>" + sr + "</div><div class='rca-col rca-name-score'>" + sixes + "</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }
        public string getfours()
        {
            int tid = int.Parse(Session["tid"].ToString());
            string data = "";
            string qu = "select * from players where tid="+tid+" order by fours desc limit 5";
            MySqlCommand cmd = new MySqlCommand(qu, con);
            MySqlDataReader read = cmd.ExecuteReader();
            int i = 1;
            while (read.Read())
            {
                string pn = read["pname"].ToString();
                string fours = read["fours"].ToString();
                string sr = read["strikerate"].ToString();
                data += "<div class='rca-table'><div class='rca-col rca-name-info'><span class='rca-tag-info'>" + i + "</span> " + pn + "</div><div class='rca-col rca-tag-info'>" + sr + "</div><div class='rca-col rca-name-score'>" + fours + "</div></div>";
                i = i + 1;
            }
            read.Close();
            return data;
        }
        public string getfifty()
        {
            int tid = int.Parse(Session["tid"].ToString());
            string data = "";
            string qu = "select * from players where tid="+tid+" order by fifties desc limit 5";
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
            con.Close();
            return data;
        }
    }
}