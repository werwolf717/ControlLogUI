using System;
using System.Collections.Generic;
using System.Linq;
using ControlLogUI.Controller;
using Qml.Net;
using System.IO;
using Qml.Net.Internal;
using Microsoft.Win32;
using Qml.Net.Runtimes;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using Microsoft.Extensions.DependencyInjection;

namespace ControlLogUI
{
    class Program
    {
        [STAThread]
        public static int Main(string[] args)
        {
            var serviceCollection = new ServiceCollection();
            
            RuntimeManager.DiscoverOrDownloadSuitableQtRuntime();
            QQuickStyle.SetStyle("Material");




            string tnsNamesContent = File.Exists("db/tnsnames.ora") ? File.ReadAllText("db/tnsnames.ora") : null;




            if (tnsNamesContent == null)
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
                    reg = Registry.LocalMachine.OpenSubKey("SOFTWARE")?.OpenSubKey("WOW6432Node")?.OpenSubKey("ORACLE");
                    oraSubKeyArray = reg?.GetSubKeyNames().ToList();
                    if (oraSubKeyArray != null)
                    {
                        folderName = oraSubKeyArray.Find(s => (reg?.OpenSubKey(s)?.GetValue("ORACLE_HOME") != null));
                    }
                }

                string oraHome = reg?.OpenSubKey(folderName)?.GetValue("ORACLE_HOME").ToString();
                Console.WriteLine(oraHome ?? "Unknown");
            }

            

            using (var app = new QGuiApplication(args))
            {
                using (var engine = new QQmlApplicationEngine())
                {
                    serviceCollection.AddSingleton<QCoreApplication>(app);
                    serviceCollection.AddSingleton<IDispatcher, QtDispatcher>();
                    serviceCollection.AddSingleton<UIController>();
                    var serviceProvider = serviceCollection.BuildServiceProvider();
                    
                    Qml.Net.Qml.RegisterType<UIController>("test");
                    TypeCreator.Current = TypeCreator.FromDelegate((type) => serviceProvider.GetRequiredService(type));
                    engine.Load("UI/View/Main.qml");
                    int res = app.Exec();

                    if (res == 1)
                    {
                        engine.Dispose();
                        var engineMain = new QQmlApplicationEngine();
                        engineMain.Load("UI/View/Page/Screen01.ui.qml");
                        res = app.Exec();
                    }
                    return res;
                }
            }
        }
    }
}