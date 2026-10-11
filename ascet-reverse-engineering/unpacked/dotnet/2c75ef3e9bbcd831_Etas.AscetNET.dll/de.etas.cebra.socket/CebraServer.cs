using System;
using System.Collections;
using System.IO;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using de.etas.util;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class CebraServer : SupportClass.ThreadClass
{
	private static LogFile lf;

	private static ArrayList allCebraServer;

	private TcpClient aktSock;

	private Stream orderStream;

	private Stream resultStream;

	internal CebraServer(TcpClient sock)
		: this(sock, "Cebra Server")
	{
	}

	internal CebraServer(TcpClient sock, string threadName)
		: base(threadName)
	{
		try
		{
			aktSock = sock;
			orderStream = sock.GetStream();
			resultStream = sock.GetStream();
		}
		catch (IOException ex)
		{
			Cebra.println(ex.ToString());
		}
		allCebraServer.Add(this);
		logEntry("Creation");
	}

	public bool close()
	{
		try
		{
			aktSock.Close();
			orderStream.Close();
			resultStream.Close();
		}
		catch (Exception)
		{
			return false;
		}
		return true;
	}

	internal void logEntry(string msg)
	{
		lf.logMessage(msg);
	}

	internal CebraMessage receive()
	{
		sbyte[] array = new sbyte[8];
		try
		{
			SupportClass.ReadInput(orderStream, array, 0, 8);
		}
		catch (IOException)
		{
			return null;
		}
		CebraMessage cebraMessage = new CebraMessage();
		cebraMessage.messageID = CebraMessage.convertBytesToLong(array, 0);
		try
		{
			SupportClass.ReadInput(orderStream, array, 0, 4);
		}
		catch (IOException)
		{
			return null;
		}
		int num = CebraMessage.convertBytesToInt(array, 0);
		try
		{
			SupportClass.ReadInput(orderStream, array, 0, 4);
		}
		catch (IOException)
		{
			return null;
		}
		int num2 = CebraMessage.convertBytesToInt(array, 0);
		try
		{
			for (int i = 0; i < num; i++)
			{
				SupportClass.ReadInput(orderStream, array, 0, 5);
				int num3 = 0;
				for (int num4 = 4; num4 > 1; num4--)
				{
					num3 |= array[num4] & 0xFF;
					num3 <<= 8;
				}
				num3 |= array[1] & 0xFF;
				cebraMessage.buildHeader((char)array[0], num3);
			}
		}
		catch (IOException)
		{
			return null;
		}
		int j;
		if (num2 != 0)
		{
			j = 0;
			sbyte[] array2 = new sbyte[num2];
			try
			{
				sbyte[] array3 = new sbyte[102400];
				int num5;
				for (; j < num2; j += num5)
				{
					if ((num5 = SupportClass.ReadInput(orderStream, array3, 0, array3.Length)) < 1)
					{
						break;
					}
					Array.Copy(array3, 0, array2, j, num5);
				}
			}
			catch (IOException)
			{
				return null;
			}
			cebraMessage.buildBody(array2);
		}
		else
		{
			j = 0;
			cebraMessage.buildBody(new sbyte[0]);
		}
		if (j != num2)
		{
			return null;
		}
		if (Cebra.debug)
		{
			logEntry("Receive:" + Cebra.LF + cebraMessage);
		}
		return cebraMessage;
	}

	public override void Run()
	{
		while (true)
		{
			CebraMessage cebraMessage;
			try
			{
				cebraMessage = receive();
			}
			catch (Exception ex)
			{
				lf.logMessage("Socket Server message loop: " + ex);
				break;
			}
			if (cebraMessage != null)
			{
				if (cebraMessage.EmptyMessage)
				{
					lf.logMessage("Cebra Server: Received empty message.");
					break;
				}
				if (cebraMessage.ErrorMessage)
				{
					CebraMessage cebraMessage2 = cebraMessage.answer();
					cebraMessage.reset();
					ErrorHandle errorHandle = (ErrorHandle)cebraMessage.readNext().oHandle;
					lf.logMessage("Received error message #" + errorHandle.errcode + ":'" + errorHandle.errmsg + "'");
					cebraMessage2.setQuitMessage();
					if (cebraMessage2.HandshakeMessage)
					{
						send(cebraMessage2);
					}
					break;
				}
				new ServerScript(cebraMessage, this);
				continue;
			}
			lf.logMessage("Cebra Server: Client socket not connected.");
			break;
		}
		try
		{
			aktSock.Close();
		}
		catch (IOException)
		{
		}
	}

	internal void send(CebraMessage msg)
	{
		if (!msg.HandshakeMessage)
		{
			return;
		}
		if (Cebra.debug)
		{
			logEntry("Send:" + Cebra.LF + msg);
		}
		try
		{
			sbyte[] array = msg.asByteStream();
			resultStream.Write(SupportClass.ToByteArray(array), 0, array.Length);
		}
		catch (Exception ex)
		{
			lf.logMessage("CebraServerSocket: " + ex);
		}
	}

	private bool shutDown(bool check, long timeOut)
	{
		long num = (DateTime.Now.Ticks - 621355968000000000L) / 10000;
		while (ServerScript.hasInstances() && check)
		{
			if ((DateTime.Now.Ticks - 621355968000000000L) / 10000 - num > timeOut)
			{
				return false;
			}
		}
		try
		{
			close();
		}
		catch (Exception)
		{
			return false;
		}
		return true;
	}

	public static void shutDownAllCebraServers(bool check, long timeOut)
	{
		IEnumerator enumerator = allCebraServer.GetEnumerator();
		while (enumerator.MoveNext())
		{
			CebraServer cebraServer = (CebraServer)enumerator.Current;
			shutDownCebraServer(cebraServer, check, timeOut);
		}
	}

	public static void shutDownCebraServer(CebraServer cebraServer, bool check, long timeOut)
	{
		cebraServer.shutDown(check, timeOut);
		cebraServer.Abort();
	}

	static CebraServer()
	{
		allCebraServer = ArrayList.Synchronized(new ArrayList(10));
		lf = new LogFile(Cebra.cebraLogPath + Cebra.FS + "CebraServer.log");
	}
}
