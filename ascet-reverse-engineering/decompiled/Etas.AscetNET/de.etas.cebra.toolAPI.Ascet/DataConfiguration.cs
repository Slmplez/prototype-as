using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EA0-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.DataConfiguration")]
public class DataConfiguration : Configuration, IDataConfiguration, IConfiguration, DataConfiguration_Dispatch
{
	public DataConfiguration(Component comp, Identifiable h)
		: base(comp, h)
	{
	}

	public DataConfiguration CopyRecursiveWithPrefix(string prefix)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyConfigRecursiveUsePrefix:");
			instanceMethodCall.appendParameter(prefix);
			call(instanceMethodCall);
			return new DataConfiguration(component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CopyRecursiveWithPrefix(" + prefix + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public DataConfiguration CopyWithName(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyConfigNewName:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new DataConfiguration(component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CopyWithName(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public DataConfiguration Get(ComplexModelElement comp)
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
			return new DataConfiguration(component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Get(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DataItem GetItem(PrimitiveModelElement comp)
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
			return identifyDataItem(comp, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetItem(): failed -> APIError: " + ex);
		}
		return null;
	}

	internal DataItem identifyDataItem(PrimitiveModelElement el, Identifiable obj)
	{
		if (obj == null)
		{
			return null;
		}
		try
		{
			switch (getClassName(obj))
			{
			case "EtasAPIScalarDataElement":
				return new ScalarData(this, el, obj);
			case "EtasAPIOneDTableDataElement":
				return new OneDTableData(this, el, obj);
			case "EtasAPITwoDTableDataElement":
				return new TwoDTableData(this, el, obj);
			case "EtasAPIArrayDataElement":
				return new ArrayData(this, el, obj);
			case "EtasAPIDistributionDataElement":
				return new DistributionData(this, el, obj);
			case "EtasAPIMatrixDataElement":
				return new MatrixData(this, el, obj);
			default:
				return null;
			case "EtasAPIRescaledOneDTableDataElement":
			case "EtasAPIRescaledTwoDTableDataElement":
			case "EtasAPIRescaledDistributionDataElement":
				break;
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyDataItem(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsDataConfiguration()
	{
		return true;
	}

	public override bool Set(Configuration data, PersistentItem comp)
	{
		if (comp == null || comp.nullHandle() || data == null || data.nullHandle() || !(comp is ComplexModelElement))
		{
			logEntry(GetType().FullName + ".set(): failed -> APIError: invalid arguments");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEntry:for:");
			instanceMethodCall.appendParameter(data);
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".set(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool SetItem(ConfigurationItem data, PersistentItem comp)
	{
		if (comp == null || comp.nullHandle() || data == null || data.nullHandle() || !(comp is PrimitiveModelElement) || !(data is DataItem))
		{
			logEntry(GetType().FullName + ".set(): failed -> APIError: invalid arguments");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEntry:for:");
			instanceMethodCall.appendParameter(data);
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".set(): failed -> APIError: " + ex);
		}
		return false;
	}

	object DataConfiguration_Dispatch.CopyRecursiveWithPrefix(string prefix)
	{
		return CopyRecursiveWithPrefix(prefix);
	}

	object DataConfiguration_Dispatch.CopyWithName(string name)
	{
		return CopyWithName(name);
	}

	object DataConfiguration_Dispatch.Get(object dispatch_comp)
	{
		ComplexModelElement comp = (ComplexModelElement)dispatch_comp;
		return Get(comp);
	}

	object DataConfiguration_Dispatch.GetItem(object dispatch_comp)
	{
		PrimitiveModelElement comp = (PrimitiveModelElement)dispatch_comp;
		return GetItem(comp);
	}

	bool DataConfiguration_Dispatch.Set(object dispatch_data, object dispatch_comp)
	{
		Configuration data = (Configuration)dispatch_data;
		PersistentItem comp = (PersistentItem)dispatch_comp;
		return Set(data, comp);
	}

	bool DataConfiguration_Dispatch.SetItem(object dispatch_data, object dispatch_comp)
	{
		ConfigurationItem data = (ConfigurationItem)dispatch_data;
		PersistentItem comp = (PersistentItem)dispatch_comp;
		return SetItem(data, comp);
	}

	object DataConfiguration_Dispatch.GetReferencedClass()
	{
		return GetReferencedClass();
	}

	string DataConfiguration_Dispatch.GetCustomerDataStringForElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return GetCustomerDataStringForElement(element);
	}

	string DataConfiguration_Dispatch.GetUserDataStringForElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return GetUserDataStringForElement(element);
	}

	bool DataConfiguration_Dispatch.SetCustomerDataStringForElement(string newContents, object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return SetCustomerDataStringForElement(newContents, element);
	}

	bool DataConfiguration_Dispatch.SetUserDataStringForElement(string newContents, object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return SetUserDataStringForElement(newContents, element);
	}

	object DataConfiguration_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
