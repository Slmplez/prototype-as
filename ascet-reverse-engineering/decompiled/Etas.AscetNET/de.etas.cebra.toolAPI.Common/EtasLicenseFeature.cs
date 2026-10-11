using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.EtasLicenseFeature")]
[ComVisible(true)]
[Guid("D87F6BEA-4A4B-456b-8F5E-38D8109C290A")]
public class EtasLicenseFeature : SmalltalkToolAPI, IEtasLicenseFeature, EtasLicenseFeature_Dispatch
{
	public EtasLicenseFeature()
	{
	}

	public EtasLicenseFeature(ClientSender sender, Identifiable handle)
		: base(sender)
	{
		setIdentifier(handle);
	}

	public EtasLicenseFeature(EtasLicenseManager licenseManager, Identifiable handle)
		: this(licenseManager.Sender, handle)
	{
	}

	public virtual bool CheckIn()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("checkin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CheckIn(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool CheckOut()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("checkout");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CheckOut(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsCheckOut()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isCheckout");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsCheckOut(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsInGraceMode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isInGraceModePeriode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsInGraceMode(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsSystemDefined()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isSystemDefined");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsSystemDefined(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual string Name()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("name");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Name(): failed -> APIError" + ex);
		}
		return "";
	}

	public virtual string Version()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("version");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Version(): failed -> APIError" + ex);
		}
		return "";
	}
}
