using System;
using System.Collections;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using de.etas.util;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public class ToolClient
{
	private static Hashtable allToolClients;

	private static Hashtable tableOfClients;

	private static Hashtable tableOfTools;

	private static LogFile toolClientLog;

	protected internal LogFile lf;

	protected internal TcpClient clientSocket;

	protected internal Stream responseStream;

	protected internal Stream sendStream;

	protected internal Hashtable orderTable;

	protected internal ClientSender sender;

	protected internal ClientReceiver receiver;

	protected internal ToolEntry hostEntry;

	private readonly string toolName;

	public static string[] AllRegisteredTools => Utilities.sortStrings(tableOfTools.Keys.GetEnumerator());

	public virtual string ToolName => toolName;

	internal ToolClient()
	{
	}

	internal ToolClient(string name, ToolEntry toolEntry)
	{
		allToolClients[name.ToUpper()] = this;
		toolName = name;
		new SupportClass.Tokenizer(toolEntry.host, ".");
		lf = new LogFile(Cebra.cebraLogPath + Cebra.FS + "ClientAt" + new StringBuilder(toolEntry.host).ToString().Replace('.', '_') + "_" + toolEntry.port + ".log");
		if (!init(toolEntry.host, toolEntry.port))
		{
			lf.logMessage("Initialization of client socket failed.");
			return;
		}
		orderTable = Hashtable.Synchronized(new Hashtable(32));
		hostEntry = toolEntry;
		sender = new ClientSender(this);
		tableOfClients[hostEntry] = sender;
		receiver = new ClientReceiver(this, "Receiver for " + toolEntry.host + ":" + toolEntry.port);
		receiver.Start();
		lf.logMessage("Tool client [" + toolEntry.host + ":" + toolEntry.port + "] started.");
	}

	internal void addOrder(ClientOrder order)
	{
		lock (this)
		{
			orderTable[order.answer.getIdentifier()] = order;
		}
	}

	internal void answerOrder(CebraMessage msg)
	{
		object obj = orderTable[msg.getIdentifier()];
		orderTable.Remove(msg.getIdentifier());
		ClientOrder clientOrder = (ClientOrder)obj;
		if (clientOrder != null)
		{
			clientOrder.answer.copy(msg);
			clientOrder.answer.release();
		}
	}

	internal void answerAllOpenOrders()
	{
		Hashtable hashtable = (Hashtable)orderTable.Clone();
		foreach (object key in hashtable.Keys)
		{
			ClientOrder clientOrder = (ClientOrder)orderTable[key];
			if (clientOrder != null)
			{
				clientOrder.answer.release();
				orderTable.Remove((long)key);
			}
		}
	}

	public static ToolEntry getEntryForTool(string tool)
	{
		return (ToolEntry)tableOfTools[tool];
	}

	internal virtual bool init(string hostName, int port)
	{
		try
		{
			lf.logMessage("Try Init with " + hostName + " and " + port);
			clientSocket = new TcpClient(hostName, port);
			responseStream = clientSocket.GetStream();
			sendStream = clientSocket.GetStream();
			lf.logMessage("Init " + hostName + " at port " + port);
		}
		catch (Exception ex)
		{
			lf.logMessage("Exception in " + GetType().FullName + ".init:" + ex);
			return false;
		}
		return true;
	}

	public static ClientSender initToolSocket()
	{
		return initToolSocket("undefined Tool Name");
	}

	public static ClientSender initToolSocket(string toolName)
	{
		ToolEntry toolEntry;
		if ((toolEntry = getEntryForTool(toolName)) == null)
		{
			toolEntry = new ToolEntry();
			toolEntry.host0 = null;
			toolEntry.port0 = null;
			toolEntry.host = IPAddress.Loopback.ToString();
			string lastUsedVersion = EtasGeneralDll.GetLastUsedVersion(toolName, "");
			toolEntry.port = (int)EtasGeneralDll.GetCommunicationPortNumberForVersion(toolName, lastUsedVersion);
			if (!registerTool(toolName, toolEntry))
			{
				Cebra.println("Could not register " + toolName);
			}
		}
		ClientSender clientSender;
		if ((clientSender = (ClientSender)tableOfClients[toolEntry]) != null)
		{
			clientSender.addUser();
			return clientSender;
		}
		clientSender = ((!Cebra.debug) ? new ToolClient(toolName, toolEntry).sender : new ToolClientDebug(toolName, toolEntry).sender);
		if (clientSender == null)
		{
			tableOfTools.Remove(toolName);
		}
		return clientSender;
	}

	internal virtual CebraMessage receiveCebraMessage()
	{
		CebraMessage cebraMessage = null;
		int num = 0;
		int i = 0;
		sbyte[] array = new sbyte[8];
		try
		{
			if (!responseStream.CanRead)
			{
				return null;
			}
			if (SupportClass.ReadInput(responseStream, array, 0, 8) == -1)
			{
				return null;
			}
			long num2 = 0L;
			for (int num3 = 7; num3 > 0; num3--)
			{
				num2 |= array[num3] & 0xFF;
				num2 <<= 8;
			}
			num2 |= array[0] & 0xFF;
			cebraMessage = new CebraMessage();
			cebraMessage.setIdentifier(num2);
			SupportClass.ReadInput(responseStream, array, 0, 4);
			int num4 = CebraMessage.convertBytesToInt(array, 0);
			SupportClass.ReadInput(responseStream, array, 0, 4);
			num = 0;
			for (int num5 = 3; num5 > 0; num5--)
			{
				num |= array[num5] & 0xFF;
				num <<= 8;
			}
			num |= array[0] & 0xFF;
			for (int j = 0; j < num4; j++)
			{
				SupportClass.ReadInput(responseStream, array, 0, 5);
				int num6 = 0;
				for (int num7 = 4; num7 > 1; num7--)
				{
					num6 |= array[num7] & 0xFF;
					num6 <<= 8;
				}
				num6 |= array[1] & 0xFF;
				cebraMessage.buildHeader((char)array[0], num6);
			}
			if (num > 0)
			{
				int num8 = 256;
				if (num > 255)
				{
					num8 = 2048;
				}
				if (num > 2047)
				{
					num8 = 40960;
				}
				sbyte[] array2 = new sbyte[num];
				sbyte[] array3 = new sbyte[num8];
				int num9;
				for (; i < num; i += num9)
				{
					num9 = num - i;
					if (num9 > num8)
					{
						num9 = num8;
					}
					if ((num9 = SupportClass.ReadInput(responseStream, array3, 0, num9)) < 1)
					{
						break;
					}
					Array.Copy(array3, 0, array2, i, num9);
				}
				cebraMessage.buildBody(array2);
			}
			else
			{
				i = 0;
				cebraMessage.buildBody(new sbyte[0]);
			}
		}
		catch (SocketException ex)
		{
			bool t = LogFile.loggingEnabled();
			LogFile.enableLogging(t: true);
			lf.logMessage("Socket Error: " + ex);
			LogFile.enableLogging(t);
			return null;
		}
		catch (OutOfMemoryException ex2)
		{
			bool t2 = LogFile.loggingEnabled();
			LogFile.enableLogging(t: true);
			lf.logMessage("Error Receive CebraMessage:: " + ex2);
			LogFile.enableLogging(t2);
			return null;
		}
		catch (Exception ex3)
		{
			bool t3 = LogFile.loggingEnabled();
			LogFile.enableLogging(t: true);
			lf.logMessage("Error Receive CebraMessage: " + ex3);
			LogFile.enableLogging(t3);
			return null;
		}
		if (i != num)
		{
			bool t4 = LogFile.loggingEnabled();
			LogFile.enableLogging(t: true);
			lf.logMessage("Error Receive CebraMessage: Only read " + i + " Bytes instead of " + num);
			LogFile.enableLogging(t4);
			return null;
		}
		return cebraMessage;
	}

	public static bool registerTool(string tool, ToolEntry entry)
	{
		if (tableOfTools[tool] != null)
		{
			return false;
		}
		ToolEntry toolEntry = new ToolEntry();
		bool flag = false;
		if (entry.host == null)
		{
			flag = true;
			toolEntry.host0 = entry.host0;
			if (toolEntry.host0 == null)
			{
				try
				{
					toolEntry.host = Cebra.getDefaultHost();
				}
				catch (Exception)
				{
					return false;
				}
			}
			else if ((toolEntry.host = Utilities.checkHostName(entry.host0)) == null)
			{
				return false;
			}
		}
		if (entry.port == 0)
		{
			flag = true;
			toolEntry.port0 = entry.port0;
			try
			{
				toolEntry.port = ((toolEntry.port0 == null) ? Cebra.DefaultToolPort : int.Parse(toolEntry.port0));
			}
			catch (Exception)
			{
				return false;
			}
		}
		tableOfTools[tool] = (flag ? toolEntry : entry);
		return true;
	}

	internal virtual bool sendCebraMessage(CebraMessage msg)
	{
		if (msg == null)
		{
			lf.logMessage("sendCebraMessage: Cannot send NULL-message");
		}
		else
		{
			try
			{
				byte[] array = SupportClass.ToByteArray(msg.asByteStream());
				if (sendStream == null || !sendStream.CanWrite)
				{
					return false;
				}
				sendStream.Write(array, 0, array.Length);
				return true;
			}
			catch (Exception ex)
			{
				lf.logMessage("sendCebraMessage: " + ex);
			}
		}
		return false;
	}

	private bool shutDown()
	{
		lf.logMessage("Shut down");
		if (clientSocket == null)
		{
			allToolClients.Remove(toolName.ToUpper());
			return false;
		}
		try
		{
			lf.logMessage("Shut down");
			responseStream.Close();
			responseStream = null;
			sendStream.Close();
			sendStream = null;
			clientSocket.Close();
			tableOfClients.Remove(hostEntry);
			allToolClients.Remove(toolName.ToUpper());
			tableOfTools.Remove(toolName);
			clientSocket = null;
			sender = null;
			receiver = null;
			orderTable.Clear();
			return true;
		}
		catch (Exception ex)
		{
			lf.logMessage("Closing Tool Client: " + ex);
		}
		return false;
	}

	public static void shutDownAllToolClients(long timeOut)
	{
		IEnumerator enumerator = allToolClients.Keys.GetEnumerator();
		while (enumerator.MoveNext())
		{
			string text = (string)enumerator.Current;
			shutDownToolClient(text, timeOut);
		}
	}

	public static bool shutDownToolClient(string toolName, long timeOut)
	{
		ToolClient toolClient = (ToolClient)allToolClients[toolName.ToUpper()];
		if (toolClient == null)
		{
			return false;
		}
		long num = DateTime.Now.Ticks / 10000;
		if (toolClient.orderTable != null)
		{
			while (toolClient.orderTable.Count > 0 && DateTime.Now.Ticks / 10000 - num > timeOut)
			{
				Thread.Sleep(20);
			}
		}
		return toolClient.shutDown();
	}

	public virtual void SwitchLoggingOff()
	{
	}

	public virtual void SwitchLoggingOn()
	{
	}

	public override string ToString()
	{
		return string.Concat("<Tool Client #", hostEntry, ">");
	}

	static ToolClient()
	{
		allToolClients = Hashtable.Synchronized(new Hashtable());
		tableOfClients = Hashtable.Synchronized(new Hashtable());
		tableOfTools = Hashtable.Synchronized(new Hashtable());
		toolClientLog = new LogFile(Cebra.cebraLogPath + Cebra.FS + "EtasToolClient.log");
	}
}
