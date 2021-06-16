using System.Collections.Generic;
using ControlLogUI.Interfaces;
using System.IO;
using System.Linq;
using Microsoft.Win32;
using System;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;

namespace ControlLogUI.Classes
{
    public class Login : ILogin
    {
        public Dictionary<string, ILogin.ConnectionProperties> connProp { get; set; }

        public List<string> GetProp()
        {
            string tnsNamesContent = File.Exists("db/tnsnames.ora") ? File.ReadAllText("db/tnsnames.ora") : null;
            if (tnsNamesContent == null)
            {
                string oraHome = null;
                    
                if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
                {
                    RegistryKey reg = Registry.LocalMachine.OpenSubKey("SOFTWARE")?.OpenSubKey("ORACLE");
                    string folderName = null;
                    List<string> oraSubKeyArray = reg?.GetSubKeyNames().ToList();

                    if (oraSubKeyArray != null)
                    {
                        folderName = oraSubKeyArray.Find(s => (reg?.OpenSubKey(s)?.GetValue("ORACLE_HOME") != null));
                    }

                    if (folderName == null)
                    {
                        reg = Registry.LocalMachine.OpenSubKey("SOFTWARE")?.OpenSubKey("WOW6432Node")
                            ?.OpenSubKey("ORACLE");
                        oraSubKeyArray = reg?.GetSubKeyNames().ToList();
                        if (oraSubKeyArray != null)
                        {
                            folderName =
                                oraSubKeyArray.Find(s => (reg?.OpenSubKey(s)?.GetValue("ORACLE_HOME") != null));
                        }
                    }

                    oraHome = reg?.OpenSubKey(folderName)?.GetValue("ORACLE_HOME").ToString();
                    Console.WriteLine(oraHome ?? "Unknown");
                }

                tnsNamesContent = (oraHome == null) ? null : File.ReadAllText(oraHome + "/network/admin/tnsnames.ora");
            }

            if (tnsNamesContent != null)
            {
                connProp = ParseConfig(tnsNamesContent);
            }
            
            Console.WriteLine(connProp);

            return connProp.Keys.ToList();
        }

        public Dictionary<string, ILogin.ConnectionProperties> ParseConfig(string _tnsname)
        {
            string pattern = @"(?imsx)
                                ^(?<name>\S+)\s*=
                                (?=.*?\(HOST\s*=\s*(?<host>\S+?)\))
                                (?=.*?\(PORT\s*=\s*(?<port>\S+?)\))
                                (?=.*?\(SERVICE_NAME\s*=\s*(?<service_name>\S+?)\))
                                ";
            var res = new Dictionary<string, ILogin.ConnectionProperties>();
            
            foreach (Match match in Regex.Matches(_tnsname, pattern))
            {
                res.Add(match.Groups["name"].Value, new ILogin.ConnectionProperties(match.Groups["name"]
                        .Value,
                    match.Groups["host"]
                        .Value,
                    Convert.ToInt32(match.Groups["port"]
                        .Value),
                    "-",
                    match.Groups["service_name"]
                        .Value));
            }
            return res;
        }
    }
}