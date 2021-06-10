using System;
using ControlLogUI.Controller;
using Qml.Net;
using Qml.Net.Internal;
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
                    return app.Exec();
                }
            }
        }
    }
}