using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ClientReceiver : SupportClass.ThreadClass
{
	private readonly ToolClient client;

	private readonly bool debug;

	internal ClientReceiver(ToolClient c)
		: this(c, "Client Receiver")
	{
	}

	internal ClientReceiver(ToolClient c, string threadName)
		: base(threadName)
	{
		client = c;
		debug = false;
	}

	internal ClientReceiver(ToolClientDebug c)
		: this(c, "Client Receiver Debug")
	{
	}

	internal ClientReceiver(ToolClientDebug c, string threadName)
		: base(threadName)
	{
		client = c;
		debug = true;
	}

	public override void Run()
	{
		if (debug)
		{
			CebraMessage cebraMessage;
			do
			{
				cebraMessage = client.receiveCebraMessage();
				if (cebraMessage != null)
				{
					client.answerOrder(cebraMessage);
					if (cebraMessage.isQuitMessage())
					{
						cebraMessage = null;
					}
				}
			}
			while (cebraMessage != null);
		}
		else
		{
			CebraMessage cebraMessage;
			do
			{
				cebraMessage = client.receiveCebraMessage();
				if (cebraMessage != null)
				{
					client.answerOrder(cebraMessage);
					if (cebraMessage.isQuitMessage())
					{
						cebraMessage = null;
					}
				}
			}
			while (cebraMessage != null);
		}
		client.answerAllOpenOrders();
	}
}
