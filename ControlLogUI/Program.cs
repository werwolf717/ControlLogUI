using System;
using System.ComponentModel;
using System.Data;
using System.Runtime.InteropServices;
using System.Xml.Xsl;
using ControlLogUI.Controller;
using Qml.Net;
using Qml.Net.Runtimes;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

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
            
            using (var app = new QGuiApplication(args))
            {
                using (var engine = new QQmlApplicationEngine())
                {
                    serviceCollection.AddSingleton<QCoreApplication>(app);
                    serviceCollection.AddSingleton<IDispatcher, QtDispatcher>();
                    serviceCollection.AddSingleton<UIControllerMain>();
                    serviceCollection.AddSingleton<UIController>();
                    var serviceProvider = serviceCollection.BuildServiceProvider();
                    
                    Qml.Net.Qml.RegisterType<UIControllerMain>("test");
                    Qml.Net.Qml.RegisterType<UIController>("test");
                    TypeCreator.Current = TypeCreator.FromDelegate((type) => serviceProvider.GetRequiredService(type));
                    engine.Load("UI/View/Main.qml");
                    int res = app.Exec();

                    if (res == 1)
                    {
                        engine.Dispose();
                        var engineMain = new QQmlApplicationEngine();
                        engineMain.Load("UI/View/Page/ScreenInput.ui.qml");
                        res = app.Exec();
                    }
                    return res;
                }
            }
        }
    }
}