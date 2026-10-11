using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A0ED2D2A-DCD6-11D4-9864-00105A36DC87")]
[ProgId("Ascet.StateMachinePin")]
[ComVisible(true)]
public class StateMachinePin : StateMachineDiagramElement, IStateMachinePin, IStateMachineDiagramElement, IAbstractStateMachineElement, StateMachinePin_Dispatch
{
	public StateMachinePin(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual Transition[] GetConnectedTransitions()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllTransitions");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				Transition transition = new Transition(diagram, remoteObjectsFromCollection[i]);
				if (transition != null)
				{
					arrayList.Add(transition);
				}
			}
			Transition[] array = new Transition[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetConnectedTransitions(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual HierarchyState GetHierarchy()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getHierarchy");
			call(instanceMethodCall);
			return new HierarchyState(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetHierarchy(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsStateMachinePin()
	{
		return true;
	}

	object StateMachinePin_Dispatch.GetConnectedTransitions()
	{
		Transition[] connectedTransitions = GetConnectedTransitions();
		return Adapter.ToObject(connectedTransitions);
	}

	object StateMachinePin_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	int StateMachinePin_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object StateMachinePin_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object StateMachinePin_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object StateMachinePin_Dispatch.GetHierarchyState()
	{
		return GetHierarchyState();
	}

	object StateMachinePin_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
