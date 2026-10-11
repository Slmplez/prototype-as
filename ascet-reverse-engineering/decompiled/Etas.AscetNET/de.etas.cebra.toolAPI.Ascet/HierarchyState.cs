using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.HierarchyState")]
[Guid("A0ED2D23-DCD6-11D4-9864-00105A36DC87")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
public class HierarchyState : State, IHierarchyState, IState, IStateMachineDiagramElement, IAbstractStateMachineElement, HierarchyState_Dispatch
{
	public HierarchyState(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual StateMachinePin AddPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addPin");
			call(instanceMethodCall);
			return new StateMachinePin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual StateMachinePin AddPin(string aName, int x, int y)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addPinAt:named:");
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new StateMachinePin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddPin(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual State CreateNormalState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("asNormalState");
			call(instanceMethodCall);
			return new State(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateNormalState(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual StateMachinePin[] GetAllPins()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllPins");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				StateMachinePin stateMachinePin = new StateMachinePin(diagram, remoteObjectsFromCollection[i]);
				if (stateMachinePin != null)
				{
					arrayList.Add(stateMachinePin);
				}
			}
			StateMachinePin[] array = new StateMachinePin[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllPins(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual State[] GetAllStates()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllStates");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				State state = State.factory(diagram, remoteObjectsFromCollection[i]);
				if (state != null)
				{
					arrayList.Add(state);
				}
			}
			State[] array = new State[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllStates(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Transition[] GetAllTransitions()
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
			logEntry(GetType().FullName + ".GetAllTransitions(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual StateMachinePin GetPin(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPinNamed:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new StateMachinePin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual State GetState(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getState:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return State.factory(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetState(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsHierarchyState()
	{
		return true;
	}

	public virtual bool RemovePin(StateMachinePin pin)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removePin:");
			instanceMethodCall.appendParameter(pin);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemovePin(" + pin.GetType().FullName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SaveAsBitmap(string fileName, string view)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveAsBitmap:view:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(view);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SaveAsBitmap(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SaveAsGIF(string fileName, string view)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveAsGIF:view:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(view);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SaveAsGIF(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SaveAsPostscript(string fileName, string view)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveAsPostscript:view:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(view);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SaveAsPostscript(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SaveAsPostscriptAndRescale(string fileName, double scaleFactor, string view)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveAsPostscript:scale:view:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(scaleFactor);
			instanceMethodCall.appendParameter(view);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SaveAsPostscript(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SaveAsRTF(string fileName, string view)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveAsRTF:view:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(view);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SaveAsRTF(): failed -> APIError: " + ex);
		}
		return false;
	}

	object HierarchyState_Dispatch.AddPin()
	{
		return AddPin();
	}

	object HierarchyState_Dispatch.AddPin(string aName, int x, int y)
	{
		return AddPin(aName, x, y);
	}

	object HierarchyState_Dispatch.CreateNormalState()
	{
		return CreateNormalState();
	}

	object HierarchyState_Dispatch.GetAllPins()
	{
		StateMachinePin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	object HierarchyState_Dispatch.GetAllStates()
	{
		State[] allStates = GetAllStates();
		return Adapter.ToObject(allStates);
	}

	object HierarchyState_Dispatch.GetAllTransitions()
	{
		Transition[] allTransitions = GetAllTransitions();
		return Adapter.ToObject(allTransitions);
	}

	object HierarchyState_Dispatch.GetPin(string name)
	{
		return GetPin(name);
	}

	object HierarchyState_Dispatch.GetState(string name)
	{
		return GetState(name);
	}

	bool HierarchyState_Dispatch.RemovePin(object dispatch_pin)
	{
		StateMachinePin pin = (StateMachinePin)dispatch_pin;
		return RemovePin(pin);
	}

	object HierarchyState_Dispatch.CreateHierarchyState()
	{
		return CreateHierarchyState();
	}

	object HierarchyState_Dispatch.GetAllAvailableColors()
	{
		string[] allAvailableColors = GetAllAvailableColors();
		return Adapter.ToObject(allAvailableColors);
	}

	object HierarchyState_Dispatch.GetEntryAction()
	{
		return GetEntryAction();
	}

	object HierarchyState_Dispatch.GetExitAction()
	{
		return GetExitAction();
	}

	object HierarchyState_Dispatch.GetStaticAction()
	{
		return GetStaticAction();
	}

	bool HierarchyState_Dispatch.SetEntryAction(object dispatch_method)
	{
		AbstractMethod entryAction = (AbstractMethod)dispatch_method;
		return SetEntryAction(entryAction);
	}

	bool HierarchyState_Dispatch.SetExitAction(object dispatch_method)
	{
		AbstractMethod exitAction = (AbstractMethod)dispatch_method;
		return SetExitAction(exitAction);
	}

	bool HierarchyState_Dispatch.SetStaticAction(object dispatch_method)
	{
		AbstractMethod staticAction = (AbstractMethod)dispatch_method;
		return SetStaticAction(staticAction);
	}

	int HierarchyState_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object HierarchyState_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object HierarchyState_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object HierarchyState_Dispatch.GetHierarchyState()
	{
		return GetHierarchyState();
	}

	object HierarchyState_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
