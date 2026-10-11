using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ProgId("Ascet.MessageBox")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("AC36C2B3-0C2B-11D6-996E-00105A36DC87")]
public class MessageBox : Dialog, MessageBox_Dispatch, IMessageBox, IDialog, IUserInterface, ITransientItem
{
	public MessageBox(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public virtual bool Close()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("close");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Close(): failed -> APIError: " + ex);
		}
		return false;
	}
}
