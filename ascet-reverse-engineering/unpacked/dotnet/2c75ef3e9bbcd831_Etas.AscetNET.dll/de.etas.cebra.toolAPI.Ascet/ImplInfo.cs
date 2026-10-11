using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ProgId("Ascet.ImplInfo")]
[Guid("A3DF3EB9-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class ImplInfo : PersistentItem, IImplInfo, ImplInfo_Dispatch
{
	public const string VALUE = "value";

	public const string X = "x";

	public const string Y = "y";

	public const string CONT = "cont";

	public const string UDSIC = "udisc";

	public const string SDISC = "sdisc";

	public const string LOG = "log";

	protected internal ImplItem implItem;

	protected internal string direction;

	protected internal Configuration configuration;

	protected internal PersistentItem modelElement;

	public ImplInfo(Configuration config, PersistentItem el, ImplItem im, string dir, Identifiable h)
		: base(config.GetDataBase(), h)
	{
		configuration = config;
		modelElement = el;
		implItem = im;
		direction = dir;
	}

	public string GetAdditionalInfo()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAdditionalInfo");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAdditionalInfo(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[] GetDoubleImplRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			float[] floatImplRange = GetFloatImplRange();
			if (floatImplRange == null)
			{
				logEntry(GetType().FullName + ".GetDoubleImplRange(): failed");
				return null;
			}
			double[] array = new double[floatImplRange.Length];
			for (int i = 0; i < floatImplRange.Length; i++)
			{
				array[i] = floatImplRange[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetDoubleImplRange(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public virtual double[] GetDoublePhysicalRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			float[] floatPhysicalRange = GetFloatPhysicalRange();
			if (floatPhysicalRange == null)
			{
				logEntry(GetType().FullName + ".GetDoublePhysicalRange(): failed");
				return null;
			}
			double[] array = new double[floatPhysicalRange.Length];
			for (int i = 0; i < floatPhysicalRange.Length; i++)
			{
				array[i] = floatPhysicalRange[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetDoublePhysicalRange(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public virtual float[] GetFloatImplRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getFloatFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatImplRange(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual float[] GetFloatPhysicalRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getFloatFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatPhysicalRange(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Use GetFormulaName() instead and get the formula from the Ascet project by their name", false)]
	public Formula GetFormula()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getFormula");
			call(instanceMethodCall);
			return new Formula(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFormula(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetFormulaName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getFormulaName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFormulaName(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetImplType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[] GetIntegerImplRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getIntegerFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerImplRange(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[] GetIntegerPhysicalRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getIntegerFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerPhysicalRange(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[] GetLongImplRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getLongFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			int[] integerImplRange = GetIntegerImplRange();
			if (integerImplRange == null)
			{
				logEntry(GetType().FullName + ".GetLongImplRange(): failed");
				return null;
			}
			long[] array = new long[integerImplRange.Length];
			for (int i = 0; i < integerImplRange.Length; i++)
			{
				array[i] = integerImplRange[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetLongImplRange(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public virtual long[] GetLongPhysicalRange()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysInterval");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getLongFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			int[] integerPhysicalRange = GetIntegerPhysicalRange();
			if (integerPhysicalRange == null)
			{
				logEntry(GetType().FullName + ".GetLongPhysicalRange(): failed");
				return null;
			}
			long[] array = new long[integerPhysicalRange.Length];
			for (int i = 0; i < integerPhysicalRange.Length; i++)
			{
				array[i] = integerPhysicalRange[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetLongPhysicalRange(): failed -> APIError: " + ex2);
		}
		return null;
	}

	[Obsolete("Use PrimitiveModelElement.GetModelType() instead", false)]
	public string GetModelType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModelType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetModelType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public bool GetOptionLimitAssignment()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLimitAssignment");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOptionLimitAssignment(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool GetOptionLimitOverflow()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLimitOverflow");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOptionLimitOverflow(): failed -> APIError: " + ex);
		}
		return false;
	}

	public double GetQuantization()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysQuantization");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (WrongResultTypeException)
		{
			return getQuantizationFloat();
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetQuantization(): failed -> APIError: " + ex2);
		}
		throw new WrongResultTypeException();
	}

	private float getQuantizationFloat()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysQuantization");
			call(instanceMethodCall);
			return instanceMethodCall.ResultFloat;
		}
		catch (WrongResultTypeException)
		{
			return getQuantizationLong();
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".getQuantizationFloat(): failed -> APIError: " + ex2);
		}
		throw new WrongResultTypeException();
	}

	private int getQuantizationInteger()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysQuantization");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getQuantizationLong(): failed -> APIError: " + ex);
		}
		throw new WrongResultTypeException();
	}

	private long getQuantizationLong()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysQuantization");
			call(instanceMethodCall);
			return instanceMethodCall.ResultLong;
		}
		catch (WrongResultTypeException)
		{
			return getQuantizationInteger();
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".getQuantizationLong(): failed -> APIError: " + ex2);
		}
		throw new WrongResultTypeException();
	}

	public bool IsChoiceAutomaticResolution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isAutomaticResolution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsChoiceAutomaticResolution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool IsChoiceKeepResolution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isKeepResolution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsChoiceKeepResolution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool IsChoiceReduceResolution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isReduceResolution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsChoiceReduceResolution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool IsMasterModel()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMasterModel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsMasterModel(): failed -> APIError: " + ex);
		}
		throw new WrongResultTypeException();
	}

	public bool SetAdditionalInfo(string additionalInfo)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAdditionalInfo:");
			instanceMethodCall.appendParameter(additionalInfo);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAdditionalInfo(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetChoiceAutomaticResolution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAutomaticResolution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetChoiceAutomaticResolution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetChoiceKeepResolution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setKeepResolution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetChoiceKeepResolution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetChoiceReduceResolution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setReduceResolution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetChoiceReduceResolution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetDoubleImplRange(double[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDoubleImplRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetDoublePhysicalRange(double[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDoublePhysicalRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetFloatImplRange(float[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetFloatImplRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetFloatPhysicalRange(float[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetFloatPhysicalRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Use SetFormulaName() and get the formulas from the Ascet project by their names instead", false)]
	public bool SetFormula(Formula formula)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setFormula:");
			instanceMethodCall.appendParameter(formula);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetFormula(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetFormulaName(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setFormulaName:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFormulaName(): failed -> APIError: " + ex);
		}
		return false;
	}

	private void setImpl()
	{
		if (configuration != null && !configuration.nullHandle() && modelElement != null && !modelElement.nullHandle() && implItem != null && !implItem.nullHandle())
		{
			if (implItem.IsOneDTableImpl())
			{
				setOneDTableImpl();
			}
			else if (implItem.IsTwoDTableImpl())
			{
				setTwoDTableImpl();
			}
			else if (implItem.IsScalarImpl())
			{
				setScalarImpl();
			}
		}
	}

	public bool SetImplType(string implType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplType:");
			instanceMethodCall.appendParameter(implType);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplType(" + implType + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetIntegerImplRange(int[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetIntegerImplRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetIntegerPhysicalRange(int[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetIntegerPhysicalRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetLongImplRange(long[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetLongImplRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetLongPhysicalRange(long[] interval)
	{
		try
		{
			ETASArray i = setArrayFromValues(interval);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysInterval:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetLongPhysicalRange(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetMasterModel(bool masterModel)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMasterModel:");
			instanceMethodCall.appendParameter(masterModel);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMasterModel(" + masterModel + "): failed -> APIError: " + ex);
		}
		return false;
	}

	private void setOneDTableImpl()
	{
		if (direction.Equals("x"))
		{
			((OneDTableImpl)implItem).SetImplInfoForDistribution(this);
		}
		if (direction.Equals("value"))
		{
			((OneDTableImpl)implItem).SetImplInfoForValue(this);
		}
		configuration.SetItem(implItem, modelElement);
	}

	public bool SetOptionLimitAssignment(bool state)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLimitAssignment:");
			instanceMethodCall.appendParameter(state);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetOptionLimitAssignment(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetOptionLimitOverflow(bool state)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLimitOverflow:");
			instanceMethodCall.appendParameter(state);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetOptionLimitOverflow(): failed -> APIError: " + ex);
		}
		return false;
	}

	private void setScalarImpl()
	{
		((ScalarImpl)implItem).SetImplInfoForValue(this);
		configuration.SetItem(implItem, modelElement);
	}

	private void setTwoDTableImpl()
	{
		if (direction.Equals("x"))
		{
			((TwoDTableImpl)implItem).SetImplInfoForXDistribution(this);
		}
		if (direction.Equals("y"))
		{
			((TwoDTableImpl)implItem).SetImplInfoForYDistribution(this);
		}
		if (direction.Equals("value"))
		{
			((TwoDTableImpl)implItem).SetImplInfoForValue(this);
		}
		configuration.SetItem(implItem, modelElement);
	}

	object ImplInfo_Dispatch.GetDoubleImplRange()
	{
		double[] doubleImplRange = GetDoubleImplRange();
		return Adapter.ToObject(doubleImplRange);
	}

	object ImplInfo_Dispatch.GetDoublePhysicalRange()
	{
		double[] doublePhysicalRange = GetDoublePhysicalRange();
		return Adapter.ToObject(doublePhysicalRange);
	}

	object ImplInfo_Dispatch.GetFloatImplRange()
	{
		float[] floatImplRange = GetFloatImplRange();
		return Adapter.ToObject(floatImplRange);
	}

	object ImplInfo_Dispatch.GetFloatPhysicalRange()
	{
		float[] floatPhysicalRange = GetFloatPhysicalRange();
		return Adapter.ToObject(floatPhysicalRange);
	}

	object ImplInfo_Dispatch.GetFormula()
	{
		return GetFormula();
	}

	object ImplInfo_Dispatch.GetIntegerImplRange()
	{
		int[] integerImplRange = GetIntegerImplRange();
		return Adapter.ToObject(integerImplRange);
	}

	object ImplInfo_Dispatch.GetIntegerPhysicalRange()
	{
		int[] integerPhysicalRange = GetIntegerPhysicalRange();
		return Adapter.ToObject(integerPhysicalRange);
	}

	object ImplInfo_Dispatch.GetLongImplRange()
	{
		long[] longImplRange = GetLongImplRange();
		return Adapter.ToObject(longImplRange);
	}

	object ImplInfo_Dispatch.GetLongPhysicalRange()
	{
		long[] longPhysicalRange = GetLongPhysicalRange();
		return Adapter.ToObject(longPhysicalRange);
	}

	bool ImplInfo_Dispatch.SetDoubleImplRange(object interval)
	{
		double[] doubleImplRange = Adapter.ToArray1Number<double>(interval);
		return SetDoubleImplRange(doubleImplRange);
	}

	bool ImplInfo_Dispatch.SetDoublePhysicalRange(object interval)
	{
		double[] doublePhysicalRange = Adapter.ToArray1Number<double>(interval);
		return SetDoublePhysicalRange(doublePhysicalRange);
	}

	bool ImplInfo_Dispatch.SetFloatImplRange(object interval)
	{
		float[] floatImplRange = Adapter.ToArray1Number<float>(interval);
		return SetFloatImplRange(floatImplRange);
	}

	bool ImplInfo_Dispatch.SetFloatPhysicalRange(object interval)
	{
		float[] floatPhysicalRange = Adapter.ToArray1Number<float>(interval);
		return SetFloatPhysicalRange(floatPhysicalRange);
	}

	bool ImplInfo_Dispatch.SetFormula(object dispatch_formula)
	{
		Formula formula = (Formula)dispatch_formula;
		return SetFormula(formula);
	}

	bool ImplInfo_Dispatch.SetIntegerImplRange(object interval)
	{
		int[] integerImplRange = Adapter.ToArray1Number<int>(interval);
		return SetIntegerImplRange(integerImplRange);
	}

	bool ImplInfo_Dispatch.SetIntegerPhysicalRange(object interval)
	{
		int[] integerPhysicalRange = Adapter.ToArray1Number<int>(interval);
		return SetIntegerPhysicalRange(integerPhysicalRange);
	}

	bool ImplInfo_Dispatch.SetLongImplRange(object interval)
	{
		long[] longImplRange = Adapter.ToArray1Number<long>(interval);
		return SetLongImplRange(longImplRange);
	}

	bool ImplInfo_Dispatch.SetLongPhysicalRange(object interval)
	{
		long[] longPhysicalRange = Adapter.ToArray1Number<long>(interval);
		return SetLongPhysicalRange(longPhysicalRange);
	}

	object ImplInfo_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
