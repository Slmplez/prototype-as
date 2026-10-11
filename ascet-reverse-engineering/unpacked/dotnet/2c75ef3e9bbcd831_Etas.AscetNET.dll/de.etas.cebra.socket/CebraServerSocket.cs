using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class CebraServerSocket : SupportClass.ThreadClass
{
	private TcpListener serverSocket;

	public CebraServerSocket(int port)
		: base("Cebra Server Socket")
	{
		try
		{
			IPAddress address = Dns.GetHostEntry("127.0.0.1").AddressList[0];
			TcpListener tcpListener = new TcpListener(new IPEndPoint(address, port));
			tcpListener.Start();
			serverSocket = tcpListener;
			Start();
		}
		catch (IOException ex)
		{
			Cebra.println("Exception in CebraServerSocket Constructor.\n\rPort: " + port + "\n\r" + ex);
			serverSocket = null;
		}
	}

	public override void Run()
	{
		try
		{
			while (true)
			{
				TcpClient sock = serverSocket.AcceptTcpClient();
				Cebra.println("Accept connection at port " + ((IPEndPoint)serverSocket.LocalEndpoint).Port);
				new CebraServer(sock).Start();
			}
		}
		catch (IOException ex)
		{
			Cebra.println("Run CebraServerSocket failed." + ex);
		}
	}

	public bool shutDown()
	{
		try
		{
			Abort();
			serverSocket.Stop();
		}
		catch (Exception)
		{
			return false;
		}
		return true;
	}
}
