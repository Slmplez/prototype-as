using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("691BD6AE-DAFA-42de-B927-A1A7EEB2235C")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.EtasLicenseManager")]
public class EtasLicenseManager : SmalltalkToolAPI, EtasLicenseManager_Dispatch
{
	public EtasLicenseManager(EtasTool tool, Identifiable handle)
		: base(tool.Sender)
	{
		setIdentifier(handle);
	}

	public virtual EtasLicenseFeature CreateUserDefinedFeature(string name, string featureName, int majorVersion, int minorVersion)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("createUserDefinedLicense:featureName:majorVersion:minorVersion:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(featureName);
			instanceMethodCall.appendParameter(majorVersion);
			instanceMethodCall.appendParameter(minorVersion);
			call(instanceMethodCall);
			return new EtasLicenseFeature(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".CreateUserDefinedFeature(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".CreateUserDefinedFeature(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".CreateUserDefinedFeature(): failed.");
		}
		return null;
	}

	public virtual EtasLicenseFeature[] GetAllAvailableFeatures()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("allLicenses");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			EtasLicenseFeature[] array = new EtasLicenseFeature[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new EtasLicenseFeature(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllAvailableFeatures(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllAvailableFeatures(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllAvailableFeatures(): failed.");
		}
		return null;
	}

	public virtual EtasLicenseFeature GetFeatureNamed(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("licenseNamed:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new EtasLicenseFeature(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".IsActive(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".IsActive(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".IsActive(): failed.");
		}
		return null;
	}

	public virtual bool Heartbeat()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("heartbeat");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".Heartbeat(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".Heartbeat(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".Heartbeat(): failed.");
		}
		return false;
	}

	public virtual bool IsActive()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isActive");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".IsActive(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".IsActive(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".IsActive(): failed.");
		}
		return false;
	}

	public virtual bool WriteToLogFile(string text)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeToLogfile:");
			instanceMethodCall.appendParameter(text);
			call(instanceMethodCall);
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".WriteToLogFile(" + text + "): failed. :(");
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteToLogFile(" + text + "): failed.");
		}
		return false;
	}

	object EtasLicenseManager_Dispatch.CreateUserDefinedFeature(string name, string featureName, int majorVersion, int minorVersion)
	{
		return CreateUserDefinedFeature(name, featureName, majorVersion, minorVersion);
	}

	object EtasLicenseManager_Dispatch.GetAllAvailableFeatures()
	{
		EtasLicenseFeature[] allAvailableFeatures = GetAllAvailableFeatures();
		return Adapter.ToObject(allAvailableFeatures);
	}

	object EtasLicenseManager_Dispatch.GetFeatureNamed(string name)
	{
		return GetFeatureNamed(name);
	}
}
