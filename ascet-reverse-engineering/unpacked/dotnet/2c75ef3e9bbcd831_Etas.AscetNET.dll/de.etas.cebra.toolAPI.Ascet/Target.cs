using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("5F64D4E5-C9A8-11D3-8A31-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.Target")]
[ComVisible(true)]
public class Target : PersistentItem, ITarget, Target_Dispatch
{
	public Target(AscetProject prj, Identifiable h)
		: base(prj.GetDataBase(), h)
	{
	}

	public virtual string[] GetAllCompilers()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllCompilers");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllCompilers(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Do not use this method. Use substitution on project class instead", false)]
	public virtual string[] GetAllMemoryLocations()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocations");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocations(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Do not use this method. Use substitution on project class instead", false)]
	public virtual string[] GetAllMemoryLocationsFor(AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocationsFor:");
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocationsFor(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Do not use this method. Use substitution on project class instead", false)]
	public virtual string[] GetAllMemoryLocationsForParameter()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocationsForParameter");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocationsForParameter(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Do not use this method. Use substitution on project class instead", false)]
	public virtual string[] GetAllMemoryLocationsForVariable()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocationsForVariable");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocationsForVariable(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetCurrentCompiler()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentCompiler");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurrentCompiler(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetName()
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

	public override bool IsTarget()
	{
		return true;
	}

	public virtual bool SetCurrentCompiler(string aCompiler)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCurrentCompiler:");
			instanceMethodCall.appendParameter(aCompiler);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCurrentCompiler(): failed -> APIError: " + ex);
		}
		return false;
	}

	object Target_Dispatch.GetAllCompilers()
	{
		string[] allCompilers = GetAllCompilers();
		return Adapter.ToObject(allCompilers);
	}

	object Target_Dispatch.GetAllMemoryLocations()
	{
		string[] allMemoryLocations = GetAllMemoryLocations();
		return Adapter.ToObject(allMemoryLocations);
	}

	object Target_Dispatch.GetAllMemoryLocationsFor(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		string[] allMemoryLocationsFor = GetAllMemoryLocationsFor(element);
		return Adapter.ToObject(allMemoryLocationsFor);
	}

	object Target_Dispatch.GetAllMemoryLocationsForParameter()
	{
		string[] allMemoryLocationsForParameter = GetAllMemoryLocationsForParameter();
		return Adapter.ToObject(allMemoryLocationsForParameter);
	}

	object Target_Dispatch.GetAllMemoryLocationsForVariable()
	{
		string[] allMemoryLocationsForVariable = GetAllMemoryLocationsForVariable();
		return Adapter.ToObject(allMemoryLocationsForVariable);
	}

	object Target_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
