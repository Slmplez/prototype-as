using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("FE116C68-AC8A-11D3-9138-02FEFE0102B6")]
[ProgId("Ascet.View")]
public class View : UserInterface, View_Dispatch, IView, IUserInterface, ITransientItem
{
	public View(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public virtual bool BringToFront()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("bringToFront");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".BringToFront(): failed -> APIError: " + ex);
		}
		return false;
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

	public virtual bool IsExperimentView()
	{
		return false;
	}

	public override bool IsView()
	{
		return true;
	}

	public bool PerformMenuAction(string menuEntry)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("perforMenuEntry:");
			instanceMethodCall.appendParameter(menuEntry);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PerformMenuAction(): failed -> APIError: " + ex);
		}
		return false;
	}
}
