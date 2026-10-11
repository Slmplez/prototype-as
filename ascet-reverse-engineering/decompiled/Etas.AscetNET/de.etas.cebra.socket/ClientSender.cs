using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ClientSender
{
	private ToolClient client;

	private int users;

	public ClientSender(ToolClient client)
	{
		this.client = client;
		users = 0;
	}

	public ClientSender(ToolClientDebug client)
	{
		this.client = client;
		users = 0;
	}

	public void addUser()
	{
		lock (this)
		{
			users++;
		}
	}

	public void close()
	{
		lock (this)
		{
			users--;
			if (users == 0)
			{
				Cebra.println("Closing client connection for " + client);
				sendMessage(CebraMessage.quitMessage());
			}
		}
	}

	public bool sendMessage(CebraMessage msg)
	{
		lock (this)
		{
			return client.sendCebraMessage(msg);
		}
	}

	public bool sendMessage(ToolAPI sender, CebraMessage msg, CebraMessage answer)
	{
		lock (this)
		{
			Cebra.getNewIdentifier(msg);
			answer.setIdentifier(msg.getIdentifier());
			client.addOrder(new ClientOrder(sender, answer));
			if (client.sendCebraMessage(msg))
			{
				return true;
			}
			client.orderTable.Remove(msg.getIdentifier());
			return false;
		}
	}

	public bool sendQuitMessage(ToolAPI sender, CebraMessage msg, CebraMessage answer)
	{
		lock (this)
		{
			client.addOrder(new ClientOrder(sender, answer));
			if (client.sendCebraMessage(msg))
			{
				return true;
			}
			client.orderTable.Remove(msg.getIdentifier());
			return false;
		}
	}

	public void SwitchLoggingOff()
	{
		client.SwitchLoggingOff();
	}

	public void SwitchLoggingOn()
	{
		client.SwitchLoggingOn();
	}
}
