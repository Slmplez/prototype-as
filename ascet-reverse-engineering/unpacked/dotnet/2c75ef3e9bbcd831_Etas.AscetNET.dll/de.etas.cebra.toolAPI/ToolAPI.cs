using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;
using de.etas.util;

namespace de.etas.cebra.toolAPI;

[ClassInterface(ClassInterfaceType.None)]
public abstract class ToolAPI : RemoteHandle, IToolAPI
{
	protected internal ClientSender sender;

	private static readonly LogFile LogData;

	private ErrorHandle toolError;

	public virtual ClientSender Sender => sender;

	public virtual ErrorHandle ToolError
	{
		set
		{
			toolError = value;
		}
	}

	protected internal ToolAPI()
	{
	}

	protected internal ToolAPI(ClientSender s)
		: this()
	{
		if (s != null)
		{
			sender = s;
			sender.addUser();
		}
	}

	protected internal ToolAPI(string toolName)
		: this()
	{
		sender = ToolClient.initToolSocket(toolName);
	}

	public void call(MethodCall mc)
	{
		call(mc, block: true);
	}

	public void call(MethodCall mc, bool block)
	{
		if (sender == null || mc == null || mc.Message == null)
		{
			return;
		}
		if (block)
		{
			if (sender.sendMessage(this, mc.Message, mc.Result))
			{
				mc.Result.block();
			}
		}
		else
		{
			sender.sendMessage(mc.Message);
		}
	}

	public void callQuit(MethodCall mc)
	{
		if (sender != null && mc != null && mc.Message != null && sender.sendQuitMessage(this, mc.Message, mc.Result))
		{
			mc.Result.block();
		}
	}

	protected internal void close()
	{
		sender = null;
	}

	public ClassMethodCall createClassMethodCall(string clazz, string method)
	{
		if (method == null)
		{
			throw new NullHandleException("Cannot create method call for method 'null'.");
		}
		return new ClassMethodCall(clazz, method, this);
	}

	public ControlMessageCall createControlMessageCall(string method)
	{
		if (method == null)
		{
			throw new NullHandleException("Cannot create method call for method 'null'.");
		}
		return new ControlMessageCall(method, this);
	}

	public ControlMessageCall createControlMessageCall(string method, bool b)
	{
		if (method == null)
		{
			throw new NullHandleException("Cannot create method call for method 'null'.");
		}
		return new ControlMessageCall(method, b, this);
	}

	public InstanceMethodCall createInstanceMethodCall(string method)
	{
		if (nullHandle())
		{
			throw new NullHandleException("Cannot create method call " + method + " with null handle in tool API");
		}
		if (method == null)
		{
			throw new NullHandleException("Cannot create method call for method 'null'.");
		}
		return new InstanceMethodCall(this, method, this);
	}

	public abstract bool[] getBooleanFromCollection(Collection coll);

	public abstract sbyte[] getBytesFromCollection(Collection coll);

	public abstract char[] getCharacterFromCollection(Collection coll);

	public abstract double[] getDoubleFromCollection(Collection coll);

	public abstract float[] getFloatFromCollection(Collection coll);

	public abstract int[] getIntegerFromCollection(Collection coll);

	public abstract object[] getLocalObjectsFromCollection(Collection coll);

	public abstract long[] getLongFromCollection(Collection coll);

	public abstract object[] getObjectsFromCollection(Collection coll);

	protected internal abstract Identifiable[] getRemoteObjectsFromCollection(Collection coll);

	public abstract short[] getShortFromCollection(Collection coll);

	public abstract string[] getStringsFromCollection(Collection coll);

	public virtual void CreateApplicationError()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("error:");
			instanceMethodCall.appendParameter("Intentially created Tool API error.");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateApplicationError(): failed -> APIError :" + ex);
		}
	}

	public virtual int GetToolErrorCode()
	{
		if (IsToolErrorAvailable())
		{
			return toolError.errorCode();
		}
		return 0;
	}

	public virtual string GetToolErrorMessage()
	{
		if (IsToolErrorAvailable())
		{
			return toolError.errorMessage();
		}
		return "";
	}

	public void handleException(Exception ex)
	{
		logEntry(ex.ToString());
		Cebra.println(GetType().FullName + ":" + ex);
	}

	protected internal virtual void init()
	{
	}

	protected internal virtual void init(ClientSender s)
	{
		init();
		if (s != null)
		{
			sender = s;
			sender.addUser();
		}
	}

	public virtual bool IsToolErrorAvailable()
	{
		return toolError != null;
	}

	public void logEntry(string msg)
	{
		LogData.logMessage(msg);
		if (Cebra.debug)
		{
			Cebra.println(msg);
		}
	}

	protected internal bool removeObject(Identifiable obj)
	{
		if (obj == null)
		{
			return false;
		}
		if (obj.getIdentifier() == 0)
		{
			return false;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("destroyObjectForId:");
			controlMessageCall.appendParameter(obj.getIdentifier());
			call(controlMessageCall);
			controlMessageCall.getResultVoid();
			return true;
		}
		catch (Exception)
		{
			return false;
		}
	}

	public abstract ETASArray setArrayFromValues(sbyte[] v);

	public abstract ETASArray setArrayFromValues(char[] v);

	public abstract ETASArray setArrayFromValues(double[] v);

	public abstract ETASArray setArrayFromValues(float[] v);

	public abstract ETASArray setArrayFromValues(int[] v);

	public abstract ETASArray setArrayFromValues(long[] v);

	public abstract ETASArray setArrayFromValues(Identifiable[] v);

	public abstract ETASArray setArrayFromValues(object[] v);

	public abstract ETASArray setArrayFromValues(string[] v);

	public abstract ETASArray setArrayFromValues(short[] v);

	public abstract ETASArray setArrayFromValues(bool[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(sbyte[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(char[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(double[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(float[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(int[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(long[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(Identifiable[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(object[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(string[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(short[] v);

	public abstract OrderedCollection setOrderedCollectionFromValues(bool[] v);

	static ToolAPI()
	{
		Cebra.initCebraToolIndependent(debugParam: true, visible: false, null, null);
		LogData = new LogFile(Cebra.cebraLogPath + Cebra.FS + "ToolAPI.log");
	}
}
