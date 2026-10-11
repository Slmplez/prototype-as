using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[Guid("A3DF3EB8-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.Formula")]
public class Formula : PersistentItem, Formula_Dispatch, IFormula
{
	object Formula_Dispatch.AvailableFormulaTypes()
	{
		string[] oTypedArray = AvailableFormulaTypes();
		return Adapter.ToObject(oTypedArray);
	}

	object Formula_Dispatch.GetFormulaParameters()
	{
		double[] formulaParameters = GetFormulaParameters();
		return Adapter.ToObject(formulaParameters);
	}

	object Formula_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Formula(PersistentItem dbItem, Identifiable h)
		: base(dbItem.GetDataBase(), h)
	{
	}

	public string[] AvailableFormulaTypes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("allFormulaTypes");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AvailableFormulaTypes(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AvailableFormulaTypes(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AvailableFormulaTypes(): failed.");
		}
		return null;
	}

	public string GetComment()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getComment");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetComment(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetContents()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getContents");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetContents(): failed -> APIError: " + ex);
		}
		return null;
	}

	public double[] GetFormulaParameters()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getParameters");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetFormulaParameters(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetFormulaParameters(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetFormulaParameters(): failed.");
		}
		return null;
	}

	public string GetFormulaType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("formulaType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFormulaType(): failed." + ex);
		}
		return null;
	}

	public string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex);
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

	public bool Is5Parameters()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("is5Parameters");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Is5Parameters(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsFormula()
	{
		return true;
	}

	public bool IsIdentity()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isIdentity");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsIdentity(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool IsLinear()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isLinear");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsLinear(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool IsMoebius()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isMoebius");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsMoebius(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool Set5ParameterParameters(double p1, double p2, double p3, double p4, double p56)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("set5ParameterWith:with:with:with:with:");
			instanceMethodCall.appendParameter(p1);
			instanceMethodCall.appendParameter(p2);
			instanceMethodCall.appendParameter(p3);
			instanceMethodCall.appendParameter(p4);
			instanceMethodCall.appendParameter(p56);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Set5Parameter(" + p1 + "," + p2 + "," + p3 + "," + p4 + "," + p56 + "): failed." + ex);
		}
		return false;
	}

	public bool SetComment(string comment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setComment:");
			instanceMethodCall.appendParameter(comment);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetComment(" + comment + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetLinearParameters(double c0, double c1)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLinearParameterWith:with:");
			instanceMethodCall.appendParameter(c0);
			instanceMethodCall.appendParameter(c1);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetLinearParameter(" + c0 + "," + c1 + "): failed." + ex);
		}
		return false;
	}

	public bool SetMoebiusParameters(double c0, double c1, double d0, double d1)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMoebiusParameterWith:with:with:with:");
			instanceMethodCall.appendParameter(c0);
			instanceMethodCall.appendParameter(c1);
			instanceMethodCall.appendParameter(d0);
			instanceMethodCall.appendParameter(d1);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMoebiusParameters(" + c0 + "," + c1 + "," + d0 + "," + d1 + "): failed." + ex);
		}
		return false;
	}

	public bool SetName(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(" + name + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUnit(string unit)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setUnit:");
			instanceMethodCall.appendParameter(unit);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUnit(" + unit + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
