using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.ImplItem")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EBA-B490-11D3-8A29-00A0247767D8")]
public class ImplItem : ConfigurationItem, ImplItem_Dispatch, IImplItem, IConfigurationItem
{
	public const string DEFAULT = "Default";

	public const string XRAM = "XRAM";

	public const string XROM = "XROM";

	public const string IRAM = "IRAM";

	public const string IROM = "IROM";

	public const string BITRAM = "BITRAM";

	public const string NVRAM = "NVRAM";

	public const string FLASH = "FLASH";

	public const string EEPROM = "EEPROM";

	public const string BIT = "bit";

	public const string INT8 = "int8";

	public const string INT16 = "int16";

	public const string INT32 = "int32";

	public const string UINT8 = "uint8";

	public const string UNIT16 = "uint16";

	public const string UNIT32 = "uint32";

	public const string FLOAT32 = "float32";

	public const string FLOAT64 = "float64";

	object ImplItem_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ImplItem(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public string GetMemoryLocation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMemoryLocation");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMemoryLocation(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool IsBoolImpl()
	{
		return false;
	}

	public override bool IsImplItem()
	{
		return true;
	}

	public virtual bool IsOneDTableImpl()
	{
		return false;
	}

	public virtual bool IsScalarImpl()
	{
		return false;
	}

	public virtual bool IsTwoDTableImpl()
	{
		return false;
	}

	protected internal virtual void setImpl()
	{
		if (configuration != null && !configuration.nullHandle() && primitiveModelElement != null && !primitiveModelElement.nullHandle())
		{
			configuration.SetItem(this, primitiveModelElement);
		}
	}

	public bool SetMemoryLocation(string memLoc)
	{
		if (memLoc == null)
		{
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMemoryLocation:");
			instanceMethodCall.appendParameter(memLoc);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMemoryLocation(): failed -> APIError: " + ex);
		}
		return false;
	}
}
