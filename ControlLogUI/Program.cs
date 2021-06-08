using System;

using Qml.Net;
using Qml.Net.Internal;
using Qml.Net.Runtimes;
using Microsoft.Extensions.DependencyInjection;

namespace ControlLogUI
{
    class Program
    {
        [STAThread]
        public static void Main(string[] args)
        {
            var serviceCollection = new ServiceCollection();
            
            RuntimeManager.DiscoverOrDownloadSuitableQtRuntime();
            
            QQuickStyle.SetStyle("Material");

            using (var app = new QGuiApplication(args))
            {
                using (var engine = new QQmlApplicationEngine())
                {
                    serviceCollection.AddSingleton<QCoreApplication>(app);
                    engine.Load("UI/View/ControlLogUI.qml");
                    app.Exec();
                }
            }
        }
    }
}