using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public class AbstractStateMachineElement : PersistentItem
{
	protected internal AscetDiagram diagram;

	public AbstractStateMachineElement(AscetDiagram diag, Identifiable h)
		: base(diag.GetDataBase(), h)
	{
		diagram = diag;
	}

	public virtual CodeComponent GetCodeComponent()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getClass");
			call(instanceMethodCall);
			return CodeComponent.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCodeComponent(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual StateMachineDiagram GetDiagram()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDiagram");
			call(instanceMethodCall);
			return (StateMachineDiagram)AscetDiagram.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDiagram(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual HierarchyState GetHierarchyState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getHierarchyState");
			call(instanceMethodCall);
			return new HierarchyState(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetHierarchyState(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool IsAbstractStateMachineElement()
	{
		return true;
	}

	public virtual bool IsHierarchyState()
	{
		return false;
	}

	public virtual bool IsState()
	{
		return false;
	}

	public virtual bool IsStateMachineDiagramElement()
	{
		return false;
	}

	public virtual bool IsStateMachinePin()
	{
		return false;
	}

	public virtual bool IsTransition()
	{
		return false;
	}
}
