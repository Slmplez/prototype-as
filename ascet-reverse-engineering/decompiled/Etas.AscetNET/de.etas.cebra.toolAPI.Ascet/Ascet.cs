using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A199DF60-E2AF-4a56-BFFF-10D987B5CF1E")]
[ComVisible(true)]
[ProgId("Ascet.Ascet")]
public class Ascet : EtasTool, IAscet, IEtasTool, Ascet_Dispatch
{
	public Ascet()
		: base(getToolName(), getBaseToolName())
	{
	}

	public Ascet(string toolName, string baseToolName)
		: base(toolName, baseToolName)
	{
	}

	public override string APIVersion()
	{
		return "6";
	}

	public bool AddCodeGenMessages(string aXmlString)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addCodeGenMessages:");
			instanceMethodCall.appendParameter(aXmlString);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddCodeGenMessages(): failed.");
		}
		return false;
	}

	public bool AscetLink(string ascetLink)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("ascetLink:");
			instanceMethodCall.appendParameter(ascetLink);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AscetLink(): failed.");
		}
		return false;
	}

	public bool AsdLink(string asdLink)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("asdLink:");
			instanceMethodCall.appendParameter(asdLink);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AsdLink(): failed.");
		}
		return false;
	}

	public bool ClearCodeGenMessages()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearCodeGenMessages");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ClearCodeGenMessages(): failed.");
		}
		return false;
	}

	public virtual bool CloseAllOpenWindows()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("closeAllOpenWindows");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".CloseAllOpenWindows(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + "CloseAllOpenWindows(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".CloseAllOpenWindows(): failed.");
		}
		return false;
	}

	public virtual bool FileOutLoadedTargets(string filePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("fileOutLoadedTargets:");
			instanceMethodCall.appendParameter(filePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + ".LoadedTargets(): failed. -> APIError: " + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".LoadedTargets(): failed.");
		}
		return false;
	}

	public virtual bool GenerateDokument(DataBaseItem item, bool recursive, string destinationPath, string fileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateDocumentFor:recursive:workingDir:fileName:");
			instanceMethodCall.appendParameter(item);
			instanceMethodCall.appendParameter(recursive);
			instanceMethodCall.appendParameter(destinationPath);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GenerateDokument(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GenerateDokument(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GenerateDokument(): failed.");
		}
		return false;
	}

	public virtual View[] GetAllEditorsWithUnsavedChanges()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllEditorsWithUnsavedChanges");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				View value = new View(Sender, remoteObjectsFromCollection[i]);
				arrayList.Add(value);
			}
			View[] array = new View[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + "GetAllEditorsWithUnsavedChanges(): failed -> APIError" + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllEditorsWithUnsavedChanges(): failed.");
		}
		return null;
	}

	public virtual View[] GetAllOpenWindows()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllOpenWindows");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				View value = new View(Sender, remoteObjectsFromCollection[i]);
				arrayList.Add(value);
			}
			View[] array = new View[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllOpenWindows(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + "GetAllOpenWindows(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllOpenWindows(): failed.");
		}
		return null;
	}

	public virtual View GetComponentManagerWindow()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getComponentManagerWindow");
			call(instanceMethodCall);
			return new View(Sender, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetComponentManagerWindow(): failed.");
		}
		return null;
	}

	[ComVisible(false)]
	public virtual string[] GetAllViews()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllViews");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllViews(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + "GetAllViews(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllViews(): failed.");
		}
		return null;
	}

	public AscetDataBase GetCurrentDataBase()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("currentOpenedDatabase");
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			AscetDataBase ascetDataBase = new AscetDataBase(this);
			ascetDataBase.setIdentifier(resultRemoteObject);
			if (!ascetDataBase.checkForInstalledPassword())
			{
				return ascetDataBase;
			}
			ErrorHandle errorHandle = new ErrorHandle(922, "Password protected data storage");
			ToolError = errorHandle;
			logEntry(GetType().FullName + ".GetCurrentDatabase(): failed -> data base is protected");
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetCurrentDatabase(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + "GetCurrentDatabase(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetCurrentDatabase(): failed.");
		}
		return null;
	}

	public AscetDataBase GetCurrentProtectedDataBase(long key)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("currentOpenedDatabaseUsingKey:");
			instanceMethodCall.appendParameter(key);
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			AscetDataBase ascetDataBase = new AscetDataBase(this);
			ascetDataBase.setIdentifier(resultRemoteObject);
			return ascetDataBase;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetCurrentProtectedDataBase(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + "GetCurrentProtectedDataBase(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetCurrentProtectedDataBase(): failed.");
		}
		return null;
	}

	public virtual string GetCurrentUserDataKey()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("ASDCustomerDataInformation", "CurrentUserDataKey");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurrentUserDataKey(): failed -> APIError" + ex);
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

	public virtual string GetDocumentorAuthor()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDocumentAuthor");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDocumentAuthor(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDocumentAuthor(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDocumentAuthor(): failed.");
		}
		return null;
	}

	public virtual string GetDocumentorLanguage()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDocumentLanguage");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDocumentLanguage(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDocumentLanguage(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDocumentLanguage(): failed.");
		}
		return null;
	}

	public virtual string GetDocumentorOutputFormat()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDocumentOutputFormat");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDocumentOutputFormat(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDocumentOutputFormat(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDocumentOutputFormat(): failed.");
		}
		return null;
	}

	public virtual string GetDocumentorTitle()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDocumentTitle");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDocumentTitle(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDocumentTitle(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDocumentTitle(): failed.");
		}
		return null;
	}

	public virtual string GetDocumentorView()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDocumentView");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDocumentView(): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDocumentView(): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDocumentView(): failed.");
		}
		return null;
	}

	public AscetSCMInterface GetSCMInterface()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSCMInterface");
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			return new AscetSCMInterface(this, resultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetSCMInterface(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetSCMInterface(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetSCMInterface(): failed.");
		}
		return null;
	}

	private static string getToolName()
	{
		return "Ascet";
	}

	private static string getBaseToolName()
	{
		return getToolName();
	}

	public virtual bool InitializeUserDataKey()
	{
		try
		{
			ClassMethodCall mc = createClassMethodCall("ASDCustomerDataInformation", "InitializeUserDataKey");
			call(mc);
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + "Ascet.InitializeUserDataKey(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsDatabaseMode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isDatabaseMode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsDatabaseMode(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsExportForINCA()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isExportForINCA");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsExportForINCA(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsWorkspaceMode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isWorkspaceMode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsWorkspaceMode(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsXMLExportActive()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isXMLActive");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsXMLExportActive(): failed -> APIError" + ex);
		}
		return false;
	}

	[Obsolete]
	public virtual bool IsASCIIExportActive()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isASCIIActive");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsASCIIExportActive(): failed -> APIError" + ex);
		}
		return false;
	}

	public AscetDataBase OpenDataBase(string dataBase)
	{
		try
		{
			if (IsDatabaseLocked())
			{
				return null;
			}
			if (dataBase == null)
			{
				return null;
			}
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("openDatabase:");
			instanceMethodCall.appendParameter(dataBase);
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			logEntry("Data base " + dataBase + " opened.");
			AscetDataBase ascetDataBase = new AscetDataBase(this, dataBase);
			ascetDataBase.setIdentifier(resultRemoteObject);
			if (!ascetDataBase.checkForInstalledPassword())
			{
				return ascetDataBase;
			}
			ErrorHandle errorHandle = new ErrorHandle(922, "Password protected data storage");
			ToolError = errorHandle;
			logEntry(GetType().FullName + ".OpenDataBase(): failed -> data base is protected");
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "OpenDatabase :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".OpenDatabase(" + dataBase + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".OpenDatabase(" + dataBase + "): failed.");
		}
		return null;
	}

	public virtual View OpenListBrowserForItems(DataBaseItem[] items, string title)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("openBrowserForItems:title:");
			instanceMethodCall.appendParameter(items);
			instanceMethodCall.appendParameter(title);
			call(instanceMethodCall);
			return new View(Sender, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".OpenListBrowserForItems((DataBaseItem[] items" + title + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".OpenListBrowserForItems((DataBaseItem[] items" + title + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".OpenListBrowserForItems((DataBaseItem[] items" + title + "): failed.");
		}
		return null;
	}

	public virtual bool ReadToolOptionsFromXMLFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readToolOptionsFromXMLFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ReadToolOptionsFromXMLFile(" + xmlFilePathName + "): failed :)");
		}
		return false;
	}

	public AscetDataBase OpenProtectedDataBase(string dataBase, long key)
	{
		try
		{
			if (IsDatabaseLocked())
			{
				return null;
			}
			if (dataBase == null)
			{
				return null;
			}
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("openDatabase:usingKey:");
			instanceMethodCall.appendParameter(dataBase);
			instanceMethodCall.appendParameter(key);
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			logEntry("Data base " + dataBase + " opened.");
			AscetDataBase ascetDataBase = new AscetDataBase(this, dataBase);
			ascetDataBase.setIdentifier(resultRemoteObject);
			return ascetDataBase;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "OpenProtectedDataBase :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".OpenProtectedDataBase(" + dataBase + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".OpenProtectedDataBase(" + dataBase + "): failed.");
		}
		return null;
	}

	public virtual string SetCurrentUserDataKey(string userKey)
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("ASDCustomerDataInformation", "CurrentUserDataKey:");
			classMethodCall.appendParameter(userKey);
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + "Ascet.SetCurrentUserDataKey(): failed -> APIError" + ex);
		}
		return null;
	}

	public virtual bool SetDataBasePath(string newPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDataBasePath:");
			instanceMethodCall.appendParameter(newPath);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetDataBasePath(" + newPath + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetDataBasePath(" + newPath + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDataBasePath(" + newPath + "): failed.");
		}
		return false;
	}

	public virtual bool SetDocumentorAuthor(string author)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDocumentAuthor:");
			instanceMethodCall.appendParameter(author);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetDocumentAuthor(" + author + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetDocumentAuthor(" + author + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDocumentAuthor(" + author + "): failed.");
		}
		return false;
	}

	public virtual bool SetDocumentorLanguage(string language)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDocumentLanguage:");
			instanceMethodCall.appendParameter(language);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetDocumentLanguage(" + language + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetDocumentLanguage(" + language + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDocumentLanguage(" + language + "): failed.");
		}
		return false;
	}

	public virtual bool SetDocumentorOutputFormat(string outputFormat)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDocumentOutputFormat:");
			instanceMethodCall.appendParameter(outputFormat);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetDocumentOutputFormat(" + outputFormat + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetDocumentOutputFormat(" + outputFormat + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDocumentOutputFormat(" + outputFormat + "): failed.");
		}
		return false;
	}

	public virtual bool SetDocumentorTitle(string title)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDocumentTitle:");
			instanceMethodCall.appendParameter(title);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetDocumentTitle(" + title + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetDocumentTitle(" + title + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDocumentTitle(" + title + "): failed.");
		}
		return false;
	}

	public virtual bool SetDocumentorView(string view)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDocumentView:");
			instanceMethodCall.appendParameter(view);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetDocumentView(" + view + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetDocumentView(" + view + "): failed. -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDocumentView(" + view + "): failed.");
		}
		return false;
	}

	public virtual bool SetExportForINCA(bool flag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExportForINCA:");
			instanceMethodCall.appendParameter(flag);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetExportForINCA(" + flag + "): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool SetXMLExportActive(bool flag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXMLActive:");
			instanceMethodCall.appendParameter(flag);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXMLExportActive(" + flag + "): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool SaveChangesInAllEditors()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveChangesInAllEditors");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SaveChangesInAllEditors(): failed -> APIError" + ex);
		}
		return false;
	}

	[Obsolete]
	public virtual bool SetASCIIExportActive(bool flag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setASCIIActive:");
			instanceMethodCall.appendParameter(flag);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetASCIIExportActive(" + flag + "): failed -> APIError" + ex);
		}
		return false;
	}

	public override string ToolName()
	{
		return getToolName();
	}

	public virtual bool WriteCodeGenerationErrorsToPath(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveCodeGenerationErrorsToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteCodeGenerationErrorsToPath(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteCodeGenerationErrorsToPathUsingFileName(string pathName, string fileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveCodeGenerationErrorsToPath:fileName:");
			instanceMethodCall.appendParameter(pathName);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteCodeGenerationErrorsToPathUsingFileName(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteToolOptionsToXMLFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeToolOptionsToXMLFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteToolOptionsToXMLFile(" + xmlFilePathName + "): failed :)");
		}
		return false;
	}

	bool Ascet_Dispatch.GenerateDokument(object dispatch_item, bool recursive, string destinationPath, string fileName)
	{
		DataBaseItem item = (DataBaseItem)dispatch_item;
		return GenerateDokument(item, recursive, destinationPath, fileName);
	}

	object Ascet_Dispatch.GetAllEditorsWithUnsavedChanges()
	{
		View[] allEditorsWithUnsavedChanges = GetAllEditorsWithUnsavedChanges();
		return Adapter.ToObject(allEditorsWithUnsavedChanges);
	}

	object Ascet_Dispatch.GetAllOpenWindows()
	{
		View[] allOpenWindows = GetAllOpenWindows();
		return Adapter.ToObject(allOpenWindows);
	}

	object Ascet_Dispatch.GetComponentManagerWindow()
	{
		return GetComponentManagerWindow();
	}

	object Ascet_Dispatch.GetAllViews()
	{
		string[] allViews = GetAllViews();
		return Adapter.ToObject(allViews);
	}

	object Ascet_Dispatch.GetCurrentDataBase()
	{
		return GetCurrentDataBase();
	}

	object Ascet_Dispatch.GetCurrentProtectedDataBase(int key)
	{
		long key2 = key;
		return GetCurrentProtectedDataBase(key2);
	}

	object Ascet_Dispatch.GetSCMInterface()
	{
		return GetSCMInterface();
	}

	object Ascet_Dispatch.OpenDataBase(string dataBase)
	{
		return OpenDataBase(dataBase);
	}

	object Ascet_Dispatch.OpenListBrowserForItems(object items, string title)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return OpenListBrowserForItems(items2, title);
	}

	object Ascet_Dispatch.OpenProtectedDataBase(string dataBase, int key)
	{
		long key2 = key;
		return OpenProtectedDataBase(dataBase, key2);
	}

	object Ascet_Dispatch.GetAllToolboxNames()
	{
		string[] allToolboxNames = GetAllToolboxNames();
		return Adapter.ToObject(allToolboxNames);
	}

	object Ascet_Dispatch.GetLicenseManager()
	{
		return GetLicenseManager();
	}

	object Ascet_Dispatch.GetOpenedExperiment()
	{
		return GetOpenedExperiment();
	}

	object Ascet_Dispatch.WaitMessage(string text)
	{
		return WaitMessage(text);
	}
}
