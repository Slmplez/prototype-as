using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class UserInterface : TransientItem
{
	public UserInterface(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public virtual int ActivateMenuId(uint id)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateMenuID:");
			instanceMethodCall.appendParameter(id);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivateMenuId(" + id + "): failed -> APIError: " + ex);
		}
		return -2;
	}

	public virtual int ActivateMenuSelector(string selector)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateMenuID:");
			instanceMethodCall.appendParameter(selector);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivateMenuSelector(" + selector + "): failed -> APIError: " + ex);
		}
		return -2;
	}

	public virtual int ActivatePaletteId(uint id)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activatePaletteID:");
			instanceMethodCall.appendParameter(id);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivatePaletteId(" + id + "): failed -> APIError: " + ex);
		}
		return -2;
	}

	public virtual int ActivatePaletteSelector(string selector)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activatePaletteID:");
			instanceMethodCall.appendParameter(selector);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivatePaletteSelector(" + selector + "): failed -> APIError: " + ex);
		}
		return -2;
	}

	public virtual int ActivateToolbarId(uint id)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateToolbarID:");
			instanceMethodCall.appendParameter(id);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivateToolbarId(" + id + "): failed -> APIError: " + ex);
		}
		return -2;
	}

	public virtual int ActivateToolbarSelector(string selector)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateToolbarID:");
			instanceMethodCall.appendParameter(selector);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivateToolbarSelector(" + selector + "): failed -> APIError: " + ex);
		}
		return -2;
	}

	public virtual bool IsDialog()
	{
		return false;
	}

	public override bool IsUserInterface()
	{
		return true;
	}

	public virtual bool IsView()
	{
		return false;
	}
}
