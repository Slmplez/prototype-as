using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("AscetServer.AscetServer")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("ABB4FCFD-E256-46d0-809B-43FC5D41231E")]
public class AscetServer : Ascet, IAscetServer, IAscet, IEtasTool, AscetServer_Dispatch
{
	public AscetServer()
		: base(getToolName(), getBaseToolName())
	{
	}

	public override string APIVersion()
	{
		return "6";
	}

	private static string getCOMClassName()
	{
		string text = typeof(AscetServer).ToString();
		int num = text.LastIndexOf(".");
		return getCOMLibraryName() + text.Substring(num, text.Length - num);
	}

	private static string getCOMLibraryName()
	{
		return "AscetServer";
	}

	private static string getToolName()
	{
		return "AscetServer";
	}

	private static string getBaseToolName()
	{
		return "Ascet";
	}

	public override string ToolName()
	{
		return getToolName();
	}

	public AscetGraphicGeneratorSetup GetGraphicGeneratorSetup()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getGraphicGeneratorSetup");
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			return new AscetGraphicGeneratorSetup(this, resultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetGraphicGeneratorSetup(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetGraphicGeneratorSetup(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetGraphicGeneratorSetup(): failed.");
		}
		return null;
	}

	object AscetServer_Dispatch.GetGraphicGeneratorSetup()
	{
		return GetGraphicGeneratorSetup();
	}

	bool AscetServer_Dispatch.GenerateDokument(object dispatch_item, bool recursive, string destinationPath, string fileName)
	{
		DataBaseItem item = (DataBaseItem)dispatch_item;
		return GenerateDokument(item, recursive, destinationPath, fileName);
	}

	object AscetServer_Dispatch.GetAllEditorsWithUnsavedChanges()
	{
		View[] allEditorsWithUnsavedChanges = GetAllEditorsWithUnsavedChanges();
		return Adapter.ToObject(allEditorsWithUnsavedChanges);
	}

	object AscetServer_Dispatch.GetAllOpenWindows()
	{
		View[] allOpenWindows = GetAllOpenWindows();
		return Adapter.ToObject(allOpenWindows);
	}

	object AscetServer_Dispatch.GetComponentManagerWindow()
	{
		return GetComponentManagerWindow();
	}

	object AscetServer_Dispatch.GetAllViews()
	{
		string[] allViews = GetAllViews();
		return Adapter.ToObject(allViews);
	}

	object AscetServer_Dispatch.GetCurrentDataBase()
	{
		return GetCurrentDataBase();
	}

	object AscetServer_Dispatch.GetCurrentProtectedDataBase(int key)
	{
		long key2 = key;
		return GetCurrentProtectedDataBase(key2);
	}

	object AscetServer_Dispatch.GetSCMInterface()
	{
		return GetSCMInterface();
	}

	object AscetServer_Dispatch.OpenDataBase(string dataBase)
	{
		return OpenDataBase(dataBase);
	}

	object AscetServer_Dispatch.OpenListBrowserForItems(object items, string title)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return OpenListBrowserForItems(items2, title);
	}

	object AscetServer_Dispatch.OpenProtectedDataBase(string dataBase, int key)
	{
		long key2 = key;
		return OpenProtectedDataBase(dataBase, key2);
	}

	object AscetServer_Dispatch.GetAllToolboxNames()
	{
		string[] allToolboxNames = GetAllToolboxNames();
		return Adapter.ToObject(allToolboxNames);
	}

	object AscetServer_Dispatch.GetLicenseManager()
	{
		return GetLicenseManager();
	}

	object AscetServer_Dispatch.GetOpenedExperiment()
	{
		return GetOpenedExperiment();
	}

	object AscetServer_Dispatch.WaitMessage(string text)
	{
		return WaitMessage(text);
	}
}
