using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace FBRPOS
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            Application.Run(new frmMain());

        }

        public static string sConnectionString =@"Data Source=.\SQLEXPRESS;Initial Catalog=POSDatabase2005;Integrated Security=True";
        //Data Source=(LocalDB)\v11.0;AttachDbFilename=c:\Projects\FBRPOS\FBRPOS\POSData.mdf;Integrated Security=True
    }
}
