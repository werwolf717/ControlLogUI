using System;
using System.Collections.Generic;

namespace ControlLogUI.Interfaces
{
    public interface ILogin
    {
        public Dictionary<string, ConnectionProperties> connProp { get; set; }

        struct ConnectionProperties
        {
            public string Name { get; set; }
            public string Host { get; set; }
            public int Port { get; set; }
            public string Server { get; set; }
            public string ServiceName { get; set; }

            public ConnectionProperties(string _name, string _host, int _port, string _server, string _serviceName)
            {
                Name = _name;
                Host = _host;
                Port = _port;
                Server = _server;
                ServiceName = _serviceName;
            }
            
        }
        List<string> GetProp();
        Dictionary<string, ConnectionProperties> ParseConfig(string _tnsname);

        public static void test()
        {
            Console.WriteLine("TEST!!!!!!!!!!!");
        }

    }
}