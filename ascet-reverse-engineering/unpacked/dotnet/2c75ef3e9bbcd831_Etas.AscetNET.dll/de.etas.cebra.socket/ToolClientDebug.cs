using System.Runtime.InteropServices;
using de.etas.util;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public class ToolClientDebug : ToolClient
{
	internal ToolClientDebug(string name, ToolEntry entry)
		: base(name, entry)
	{
	}

	internal override CebraMessage receiveCebraMessage()
	{
		CebraMessage cebraMessage = base.receiveCebraMessage();
		if (cebraMessage != null)
		{
			lf.logMessage("Receive:\r\n" + cebraMessage);
		}
		return cebraMessage;
	}

	internal override bool sendCebraMessage(CebraMessage msg)
	{
		if (msg != null)
		{
			lf.logMessage("Send:\r\n" + msg);
		}
		return base.sendCebraMessage(msg);
	}

	public override void SwitchLoggingOff()
	{
		LogFile.enableLogging(t: false);
	}

	public override void SwitchLoggingOn()
	{
		LogFile.enableLogging(t: true);
	}
}
