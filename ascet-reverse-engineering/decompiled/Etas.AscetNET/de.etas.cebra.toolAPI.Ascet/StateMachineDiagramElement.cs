using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.StateMachineDiagramElement")]
[Guid("A0ED2D28-DCD6-11D4-9864-00105A36DC87")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class StateMachineDiagramElement : AbstractStateMachineElement, IStateMachineDiagramElement, IAbstractStateMachineElement, StateMachineDiagramElement_Dispatch
{
	public StateMachineDiagramElement(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public string GetCustomerDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCustomerDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long GetGraphicalObjectIdentifier()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("identifier");
			call(instanceMethodCall);
			return instanceMethodCall.ResultLong;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetGraphicalObjectIdentifier(): failed -> APIError: " + ex);
		}
		return -99L;
	}

	public virtual string GetName()
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

	public string GetUserDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUserDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsStateMachineDiagramElement()
	{
		return true;
	}

	public bool SetCustomerDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCustomerDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(" + aName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUserDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUserDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	int StateMachineDiagramElement_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object StateMachineDiagramElement_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object StateMachineDiagramElement_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object StateMachineDiagramElement_Dispatch.GetHierarchyState()
	{
		return GetHierarchyState();
	}

	object StateMachineDiagramElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
