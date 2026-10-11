using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EA6-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.ImplConfiguration")]
public class ImplConfiguration : Configuration, ImplConfiguration_Dispatch, IImplConfiguration, IConfiguration
{
	object ImplConfiguration_Dispatch.CopyRecursiveWithPrefix(string prefix)
	{
		return CopyRecursiveWithPrefix(prefix);
	}

	object ImplConfiguration_Dispatch.CopyWithName(string name)
	{
		return CopyWithName(name);
	}

	object ImplConfiguration_Dispatch.Get(object dispatch_comp)
	{
		ComplexModelElement comp = (ComplexModelElement)dispatch_comp;
		return Get(comp);
	}

	object ImplConfiguration_Dispatch.GetItem(object dispatch_comp)
	{
		AscetModelElement comp = (AscetModelElement)dispatch_comp;
		return GetItem(comp);
	}

	bool ImplConfiguration_Dispatch.Set(object dispatch_impl, object dispatch_comp)
	{
		Configuration data = (Configuration)dispatch_impl;
		PersistentItem comp = (PersistentItem)dispatch_comp;
		return Set(data, comp);
	}

	bool ImplConfiguration_Dispatch.SetItem(object dispatch_impl, object dispatch_comp)
	{
		ConfigurationItem data = (ConfigurationItem)dispatch_impl;
		PersistentItem comp = (PersistentItem)dispatch_comp;
		return SetItem(data, comp);
	}

	object ImplConfiguration_Dispatch.GetReferencedClass()
	{
		return GetReferencedClass();
	}

	string ImplConfiguration_Dispatch.GetCustomerDataStringForElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return GetCustomerDataStringForElement(element);
	}

	string ImplConfiguration_Dispatch.GetUserDataStringForElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return GetUserDataStringForElement(element);
	}

	bool ImplConfiguration_Dispatch.SetCustomerDataStringForElement(string newContents, object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return SetCustomerDataStringForElement(newContents, element);
	}

	bool ImplConfiguration_Dispatch.SetUserDataStringForElement(string newContents, object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return SetUserDataStringForElement(newContents, element);
	}

	object ImplConfiguration_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ImplConfiguration(Component comp, Identifiable h)
		: base(comp, h)
	{
	}

	public ImplConfiguration CopyRecursiveWithPrefix(string prefix)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyConfigRecursiveUsePrefix:");
			instanceMethodCall.appendParameter(prefix);
			call(instanceMethodCall);
			return new ImplConfiguration(component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CopyRecursiveWithPrefix(" + prefix + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplConfiguration CopyWithName(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyConfigNewName:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new ImplConfiguration(component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CopyWithName(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplConfiguration Get(ComplexModelElement comp)
	{
		if (comp == null)
		{
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEntryFor:");
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			return new ImplConfiguration(component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Get(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplItem GetItem(AscetModelElement comp)
	{
		if (comp == null)
		{
			return null;
		}
		if (comp.IsComplex())
		{
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEntryFor:");
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			return identifyImplItem(comp, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetItem(): failed -> APIError: " + ex);
		}
		return null;
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

	public bool GetOptionGenerateMethodBody()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOptionGenerateMethodBody");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOptionGenerateMethodBody(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool GetOptionOptimizeMethodCalls()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOptionOptimizeMethodCalls");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOptionOptimizeMethodCalls(): failed -> APIError: " + ex);
		}
		return false;
	}

	internal ImplItem identifyImplItem(AscetModelElement el, Identifiable id)
	{
		if (id == null)
		{
			return null;
		}
		if (el.IsComplex())
		{
			return null;
		}
		try
		{
			switch (getClassName(id))
			{
			case "EtasAPIOneDTableDataElement":
				return new OneDTableImpl(this, el, id);
			case "EtasAPITwoDTableDataElement":
				return new TwoDTableImpl(this, el, id);
			default:
				if (((PrimitiveModelElement)el).GetModelType().Equals("log"))
				{
					return new BoolImpl(this, el, id);
				}
				return new ScalarImpl(this, el, id);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyDataItem(): failed -> APIError: " + ex);
		}
		return null;
	}

	internal bool isBoolImpl()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModelType");
			call(instanceMethodCall);
			if (instanceMethodCall.ResultString.Equals("log"))
			{
				return true;
			}
			return false;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".isBoolImpl() failed: " + ex);
		}
		return false;
	}

	public bool IsChoicePrototypeImplementation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isChoicePrototypeImplementation");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsChoicePrototypeImplementation(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool IsChoiceServiceRoutine()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isChoiceServiceRoutine");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsChoiceServiceRoutine(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsImplConfiguration()
	{
		return true;
	}

	public override bool Set(Configuration impl, PersistentItem comp)
	{
		if (comp == null || comp.nullHandle() || impl == null || impl.nullHandle() || !(comp is ComplexModelElement))
		{
			logEntry(GetType().FullName + ".set(): failed -> invalid arguments");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEntry:for:");
			instanceMethodCall.appendParameter(impl);
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Set(): failed -> APIError" + ex);
		}
		return false;
	}

	public bool SetChoicePrototypeImplementation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setChoicePrototypeImplementation");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetChoicePrototypeImplementation(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetChoiceServiceRoutine()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setChoiceServiceRoutine");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetChoiceServiceRoutine(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool SetItem(ConfigurationItem impl, PersistentItem comp)
	{
		if (comp == null || comp.nullHandle() || impl == null || impl.nullHandle() || !(comp is PrimitiveModelElement) || !(impl is ImplItem))
		{
			logEntry(GetType().FullName + ".Set(): failed -> invalid arguments");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEntry:for:");
			instanceMethodCall.appendParameter(impl);
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".set(): failed -> APIError" + ex);
		}
		return false;
	}

	public bool SetMemoryLocation(string memoryLocation)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMemoryLocation:");
			instanceMethodCall.appendParameter(memoryLocation);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMemoryLocation(" + memoryLocation + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetOptionGenerateMethodBody(bool option)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setOptionGenerateMethodBody:");
			instanceMethodCall.appendParameter(option);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetOptionGenerateMethodBody(" + option + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetOptionOptimizeMethodCalls(bool option)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setOptionOptimizeMethodCalls:");
			instanceMethodCall.appendParameter(option);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetOptionOptimizeMethodCalls(" + option + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
