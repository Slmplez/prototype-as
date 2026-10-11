using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A7B68093-744D-11D5-98F0-00105A36DC87")]
[ComVisible(true)]
[ProgId("Ascet.CodeGenerator")]
[ClassInterface(ClassInterfaceType.None)]
public class CodeGenerator : PersistentItem, ICodeGenerator, CodeGenerator_Dispatch
{
	public CodeGenerator(AscetProject prj, Identifiable h)
		: base(prj.GetDataBase(), h)
	{
	}

	public virtual string[] GetAllCodeExpanders()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentCodeExpander");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllCodeExpanders(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllCodeGeneratorSettings()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllCodeGeneratorSettings");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllCodeGeneratorSettings(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetCodeGeneratorSettingFor(string settingName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCodeGeneratorSetting:");
			instanceMethodCall.appendParameter(settingName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCodeGeneratorSettingFor(" + settingName + ")" + ex);
		}
		return null;
	}

	public virtual string GetCurrentCodeExpander()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentCodeExpander");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurrentCodeExpander(): failed -> APIError: " + ex);
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

	public virtual string[] GetValuesForCodeGeneratorSetting(string settingName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getValuesForCodeGeneratorSetting:");
			instanceMethodCall.appendParameter(settingName);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetValuesForCodeGeneratorSetting(" + settingName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsCodeGenerator()
	{
		return true;
	}

	public virtual bool IsControllerCodeGenerator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isControllerCodeGenerator");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsControllerCodeGenerator(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsImplementationCodeGenerator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isImplementationCodeGenerator");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsImplementationCodeGenerator(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsPhysicalCodeGenerator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isPhysicalCodeGenerator");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsPhysicalCodeGenerator(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsQuantizedCodeGenerator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isQuantizedCodeGenerator");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsQuantizedCodeGenerator(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCodeGeneratorSetting(string settingName, string value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCodeGeneratorSetting:value:");
			instanceMethodCall.appendParameter(settingName);
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCodeGeneratorSetting(" + settingName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCurrentCodeExpander(string expander)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCurrentCodeExpander:");
			instanceMethodCall.appendParameter(expander);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCurrentCodeExpander(" + expander + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object CodeGenerator_Dispatch.GetAllCodeExpanders()
	{
		string[] allCodeExpanders = GetAllCodeExpanders();
		return Adapter.ToObject(allCodeExpanders);
	}

	object CodeGenerator_Dispatch.GetAllCodeGeneratorSettings()
	{
		string[] allCodeGeneratorSettings = GetAllCodeGeneratorSettings();
		return Adapter.ToObject(allCodeGeneratorSettings);
	}

	object CodeGenerator_Dispatch.GetValuesForCodeGeneratorSetting(string settingName)
	{
		string[] valuesForCodeGeneratorSetting = GetValuesForCodeGeneratorSetting(settingName);
		return Adapter.ToObject(valuesForCodeGeneratorSetting);
	}

	object CodeGenerator_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
