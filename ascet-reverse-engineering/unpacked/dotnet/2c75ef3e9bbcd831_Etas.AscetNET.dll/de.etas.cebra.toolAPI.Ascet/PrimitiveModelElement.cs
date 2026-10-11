using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.PrimitiveModelElement")]
[Guid("A3DF3EAC-B490-11D3-8A29-00A0247767D8")]
public class PrimitiveModelElement : AscetModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, PrimitiveModelElement_Dispatch
{
	public const string CONT = "cont";

	public const string SDISC = "sdisc";

	public const string UDISC = "udisc";

	public const string LOG = "log";

	public const string ENUM = "enum";

	public const string ARRAYCONT = "array[cont]";

	public const string ARRAYSDISC = "array[sdisc]";

	public const string ARRAYUDSIC = "array[udisc]";

	public const string ARRAYLOG = "array[log]";

	public const string MATCONT = "mat[cont]";

	public const string MATSDISC = "mat[sdisc]";

	public const string MATUDSIC = "mat[udisc]";

	public const string MATLOG = "mat[log]";

	public PrimitiveModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public virtual bool ClearCalibration()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCalibration:");
			instanceMethodCall.appendParameter(i: false);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearCalibration() failed: " + ex);
		}
		return false;
	}

	public virtual bool ClearVariant()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setVariant:");
			instanceMethodCall.appendParameter(i: false);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearVariant() failed: " + ex);
		}
		return false;
	}

	public virtual bool ClearVolatile()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setVolatile:");
			instanceMethodCall.appendParameter(i: false);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearVolatile() failed: " + ex);
		}
		return false;
	}

	protected internal DataConfiguration getData()
	{
		if (component == null || component.nullHandle())
		{
			logEntry(GetType().FullName + ".getData(): failed -> component not available.");
			return null;
		}
		try
		{
			return ((CodeComponent)component).GetDefaultData();
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getData(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal ImplConfiguration getImpl()
	{
		if (component == null || component.nullHandle())
		{
			logEntry(GetType().FullName + ".getImpl(): failed -> component not available.");
			return null;
		}
		try
		{
			return ((CodeComponent)component).getDefaultImplementation();
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getImpl(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual ImplItem GetImplementation()
	{
		ImplConfiguration impl = getImpl();
		if (impl == null || impl.nullHandle())
		{
			logEntry(GetType().FullName + ".GetImplementation(): failed -> APIError: invalid data configuration");
			return null;
		}
		ImplItem item;
		if ((item = impl.GetItem(this)) == null || item.nullHandle())
		{
			logEntry(GetType().FullName + ".GetImplementation(): failed");
			return null;
		}
		return item;
	}

	public string GetModelType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModelType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException ex)
		{
			logEntry(GetType().FullName + ".GetModelType() failed: " + ex);
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetModelType() failed: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetModelType failed.");
		}
		return null;
	}

	public string GetUnit()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getUnit");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUnit(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual DataItem GetValue()
	{
		DataConfiguration data = getData();
		if (data == null || data.nullHandle())
		{
			logEntry(GetType().FullName + ".GetValue(): failed -> APIError: invalid data configuration");
			return null;
		}
		DataItem item;
		if ((item = data.GetItem(this)) == null || item.nullHandle())
		{
			logEntry(GetType().FullName + ".GetValue(): failed");
			return null;
		}
		return item;
	}

	public override bool IsPrimitive()
	{
		return true;
	}

	public virtual bool SetCalibration()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCalibration:");
			instanceMethodCall.appendParameter(i: true);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCalibration() failed: " + ex);
		}
		return false;
	}

	protected internal virtual bool setMaxSize(int maxSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxSize:");
			instanceMethodCall.appendParameter(maxSize);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	protected internal virtual bool setMaxXSize(int maxSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxXSize:");
			instanceMethodCall.appendParameter(maxSize);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	protected internal virtual bool setMaxYSize(int maxSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxYSize:");
			instanceMethodCall.appendParameter(maxSize);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	public bool SetModelType(string type)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setModelType:");
			instanceMethodCall.appendParameter(type);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetModelType(" + type + ") failed. Primitive handle is null");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetModelType(" + type + ") failed: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetModelType(" + type + ") failed.");
		}
		return false;
	}

	protected internal virtual bool setSize(int size)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSize:");
			instanceMethodCall.appendParameter(size);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	public bool SetUnit(string u)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setUnit:");
			instanceMethodCall.appendParameter(u);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUnit(" + u + "): failed -> APIError :" + ex);
		}
		return false;
	}

	public virtual bool SetVariant()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setVariant:");
			instanceMethodCall.appendParameter(i: true);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetVariant() failed: " + ex);
		}
		return false;
	}

	public virtual bool SetVolatile()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setVolatile:");
			instanceMethodCall.appendParameter(i: true);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetVolatile() failed: " + ex);
		}
		return false;
	}

	protected internal virtual bool setXSize(int size)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXSize:");
			instanceMethodCall.appendParameter(size);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	protected internal virtual bool setYSize(int size)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYSize:");
			instanceMethodCall.appendParameter(size);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	object PrimitiveModelElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object PrimitiveModelElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object PrimitiveModelElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object PrimitiveModelElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object PrimitiveModelElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
