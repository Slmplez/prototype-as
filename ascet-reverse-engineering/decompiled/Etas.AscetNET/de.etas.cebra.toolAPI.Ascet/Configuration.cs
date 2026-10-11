using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public abstract class Configuration : PersistentItem, IConfiguration
{
	protected internal Component component;

	public Configuration(Component comp, Identifiable h)
		: base(comp.GetDataBase(), h)
	{
		component = comp;
	}

	[Obsolete("Since this method never worked because of missing implementation it is no longer supported", false)]
	public string GetAliasNameString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("aliasName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAliasNameString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetCustomerDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCustomerDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLabel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetOID()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOID");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOID(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Component GetReferencedClass()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getClass");
			call(instanceMethodCall);
			return (Component)GetDataBase().identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetReferencedClass(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetUserDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUserDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetCustomerDataStringForElement(AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerDataForElement:");
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCustomerDataStringForElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetUserDataStringForElement(AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userDataForElement:");
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUserDataStringForElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsConfiguration()
	{
		return true;
	}

	public virtual bool IsDataConfiguration()
	{
		return false;
	}

	public virtual bool IsImplConfiguration()
	{
		return false;
	}

	public abstract bool Set(Configuration data, PersistentItem comp);

	public bool SetCustomerDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCustomerDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetCustomerDataStringForElement(string newContents, AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData:forElement:");
			instanceMethodCall.appendParameter(newContents);
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCustomerDataStringForElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUserDataStringForElement(string newContents, AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData:forElement:");
			instanceMethodCall.appendParameter(newContents);
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUserDataStringForElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	public abstract bool SetItem(ConfigurationItem data, PersistentItem comp);

	public bool SetName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLabel:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUserDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUserDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
