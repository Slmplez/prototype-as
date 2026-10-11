using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Inca;

[ClassInterface(ClassInterfaceType.None)]
[ComVisible(false)]
public class Inca : EtasTool
{
	private static string COMClassName
	{
		get
		{
			string text = typeof(Inca).ToString();
			int num = text.LastIndexOf(".");
			return COMLibraryName + text.Substring(num, text.Length - num);
		}
	}

	private static string COMLibraryName => "Inca";

	private static string IncaToolName => "Inca";

	public Inca()
		: base(IncaToolName, IncaToolName)
	{
	}

	public override string APIVersion()
	{
		return "5";
	}

	public IncaDataBase GetCurrentDataBase()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("currentOpenedDatabase");
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			IncaDataBase incaDataBase = new IncaDataBase(this);
			incaDataBase.setIdentifier(resultRemoteObject);
			return incaDataBase;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetCurrentDatabase() failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetCurrentDatabase() failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetCurrentDatabase() failed.");
		}
		return null;
	}

	public string GetDataBasePath()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDataBasePath");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDataBasePath(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDataBasePath(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDataBasePath(): failed.");
		}
		return null;
	}

	public IncaDataBase OpenDataBase(string dataBase)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("openDatabase:");
			instanceMethodCall.appendParameter(dataBase);
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			logEntry("Data base " + dataBase + " opened.");
			IncaDataBase incaDataBase = new IncaDataBase(this, dataBase);
			incaDataBase.setIdentifier(resultRemoteObject);
			return incaDataBase;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".OpenDatabase failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".OpenDatabase() failed -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".OpenDatabase() failed.");
		}
		return null;
	}

	public override string ToolName()
	{
		return IncaToolName;
	}
}
