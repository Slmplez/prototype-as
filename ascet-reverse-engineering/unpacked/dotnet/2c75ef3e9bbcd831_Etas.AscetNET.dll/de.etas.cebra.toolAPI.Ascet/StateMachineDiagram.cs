using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EB4-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.StateMachineDiagram")]
public class StateMachineDiagram : AscetDiagram, StateMachineDiagram_Dispatch, IStateMachineDiagram, IAscetDiagram
{
	object StateMachineDiagram_Dispatch.AddTrigger(string name)
	{
		return AddTrigger(name);
	}

	object StateMachineDiagram_Dispatch.ConnectPinToPin(object dispatch_out_Renamed, object dispatch_in_Renamed)
	{
		StateMachinePin out_Renamed = (StateMachinePin)dispatch_out_Renamed;
		StateMachinePin in_Renamed = (StateMachinePin)dispatch_in_Renamed;
		return ConnectPinToPin(out_Renamed, in_Renamed);
	}

	object StateMachineDiagram_Dispatch.ConnectPinToState(object dispatch_out_Renamed, object dispatch_in_Renamed, int x, int y)
	{
		StateMachinePin out_Renamed = (StateMachinePin)dispatch_out_Renamed;
		State in_Renamed = (State)dispatch_in_Renamed;
		return ConnectPinToState(out_Renamed, in_Renamed, x, y);
	}

	object StateMachineDiagram_Dispatch.ConnectStateToPin(object dispatch_out_Renamed, int x, int y, object dispatch_in_Renamed)
	{
		State out_Renamed = (State)dispatch_out_Renamed;
		StateMachinePin in_Renamed = (StateMachinePin)dispatch_in_Renamed;
		return ConnectStateToPin(out_Renamed, x, y, in_Renamed);
	}

	object StateMachineDiagram_Dispatch.ConnectStateToState(object dispatch_out_Renamed, int xo, int yo, object dispatch_in_Renamed, int xi, int yi)
	{
		State out_Renamed = (State)dispatch_out_Renamed;
		State in_Renamed = (State)dispatch_in_Renamed;
		return ConnectStateToState(out_Renamed, xo, yo, in_Renamed, xi, yi);
	}

	object StateMachineDiagram_Dispatch.GetAllAvailableColors()
	{
		string[] allAvailableColors = GetAllAvailableColors();
		return Adapter.ToObject(allAvailableColors);
	}

	object StateMachineDiagram_Dispatch.GetAllDiagramElements()
	{
		StateMachineDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object StateMachineDiagram_Dispatch.GetAllStates()
	{
		State[] allStates = GetAllStates();
		return Adapter.ToObject(allStates);
	}

	object StateMachineDiagram_Dispatch.GetAllTransitions()
	{
		Transition[] allTransitions = GetAllTransitions();
		return Adapter.ToObject(allTransitions);
	}

	object StateMachineDiagram_Dispatch.GetAllTriggers()
	{
		Trigger[] allTriggers = GetAllTriggers();
		return Adapter.ToObject(allTriggers);
	}

	object StateMachineDiagram_Dispatch.GetState(string name)
	{
		return GetState(name);
	}

	object StateMachineDiagram_Dispatch.GetTrigger(string name)
	{
		return GetTrigger(name);
	}

	object StateMachineDiagram_Dispatch.PlaceHierarchyState(string aName, int x, int y, object dispatch_hierarchy)
	{
		HierarchyState hierarchy = (HierarchyState)dispatch_hierarchy;
		return PlaceHierarchyState(aName, x, y, hierarchy);
	}

	object StateMachineDiagram_Dispatch.PlaceState(string aName, int x, int y, object dispatch_hierarchy)
	{
		HierarchyState hierarchy = (HierarchyState)dispatch_hierarchy;
		return PlaceState(aName, x, y, hierarchy);
	}

	bool StateMachineDiagram_Dispatch.RemoveTrigger(object dispatch_trigger)
	{
		Trigger trigger = (Trigger)dispatch_trigger;
		return RemoveTrigger(trigger);
	}

	object StateMachineDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object StateMachineDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object StateMachineDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public StateMachineDiagram(CodeComponent comp, Identifiable obj)
		: base(comp, obj)
	{
	}

	public Trigger AddTrigger(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTrigger:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new Trigger(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddTrigger(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Transition ConnectPinToPin(StateMachinePin out_Renamed, StateMachinePin in_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("connectPin:toPin:");
			instanceMethodCall.appendParameter(out_Renamed);
			instanceMethodCall.appendParameter(in_Renamed);
			call(instanceMethodCall);
			return new Transition(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".ConnectStateToState(", out_Renamed, ",", in_Renamed, "): failed -> APIError: ", ex));
		}
		return null;
	}

	public virtual Transition ConnectPinToState(StateMachinePin out_Renamed, State in_Renamed, int x, int y)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("connectPin:to:atPos:");
			instanceMethodCall.appendParameter(out_Renamed);
			instanceMethodCall.appendParameter(in_Renamed);
			instanceMethodCall.appendParameter(identifiable);
			call(instanceMethodCall);
			return new Transition(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".ConnectStateToState(", out_Renamed, ",", in_Renamed, ",", x, ",", y, "): failed -> APIError: ", ex));
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual Transition ConnectStateToPin(State out_Renamed, int x, int y, StateMachinePin in_Renamed)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("connect:atPos:toPin:");
			instanceMethodCall.appendParameter(out_Renamed);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(in_Renamed);
			call(instanceMethodCall);
			return new Transition(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".ConnectStateToState(", out_Renamed, ",", x, ",", y, ",", in_Renamed, "): failed -> APIError: ", ex));
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual Transition ConnectStateToState(State out_Renamed, int xo, int yo, State in_Renamed, int xi, int yi)
	{
		Identifiable identifiable = null;
		Identifiable identifiable2 = null;
		try
		{
			identifiable = getPoint(xo, yo);
			identifiable2 = getPoint(xi, yi);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("connect:outPos:to:inPos:");
			instanceMethodCall.appendParameter(out_Renamed);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(in_Renamed);
			instanceMethodCall.appendParameter(identifiable2);
			call(instanceMethodCall);
			return new Transition(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".ConnectStateToState(", out_Renamed, ",", xo, ",", yo, ",", in_Renamed, ",", xi, ",", yi, "): failed -> APIError: ", ex));
		}
		finally
		{
			removeObject(identifiable);
			removeObject(identifiable2);
		}
		return null;
	}

	public virtual string[] GetAllAvailableColors()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAvailableNamedColors");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllAvailableColors(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllAvailableColors(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllAvailableColors(): failed.");
		}
		return null;
	}

	public StateMachineDiagramElement[] GetAllDiagramElements()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllDiagramElements");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				StateMachineDiagramElement stateMachineDiagramElement = identifyStateMachineDiagramElement(remoteObjectsFromCollection[i]);
				if (stateMachineDiagramElement != null)
				{
					arrayList.Add(stateMachineDiagramElement);
				}
			}
			StateMachineDiagramElement[] array = new StateMachineDiagramElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDiagramElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public State[] GetAllStates()
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
				State state = State.factory(this, remoteObjectsFromCollection[i]);
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

	public Transition[] GetAllTransitions()
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
				arrayList.Add(new Transition(this, remoteObjectsFromCollection[i]));
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

	public Trigger[] GetAllTriggers()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllTriggers");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				arrayList.Add(new Trigger(this, remoteObjectsFromCollection[i]));
			}
			Trigger[] array = new Trigger[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllTriggers(): failed -> APIError: " + ex);
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
			return State.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetState(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public Trigger GetTrigger(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTrigger:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new Trigger(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetTrigger(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual StateMachineDiagramElement identifyStateMachineDiagramElement(Identifiable obj)
	{
		try
		{
			return getClassName(obj) switch
			{
				"EtasAPIHierarchyState" => new HierarchyState(this, obj), 
				"EtasAPIState" => new State(this, obj), 
				"EtasAPIStateMachinePin" => new StateMachinePin(this, obj), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyStateMachineDiagramElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsStateMachineDiagram()
	{
		return true;
	}

	public virtual HierarchyState PlaceHierarchyState(string aName, int x, int y, HierarchyState hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeHierarchyState:location:hierarchy:");
			instanceMethodCall.appendParameter(aName);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new HierarchyState(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".PlaceHierarchyState(", aName, ",", x, ",", y, ",", hierarchy, "): failed -> APIError: ", ex));
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual State PlaceState(string aName, int x, int y, HierarchyState hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeState:location:hierarchy:");
			instanceMethodCall.appendParameter(aName);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new State(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".PlaceState(", aName, ",", x, ",", y, ",", hierarchy, "): failed -> APIError: ", ex));
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public bool RemoveTrigger(Trigger trigger)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("delete:");
			instanceMethodCall.appendParameter(trigger);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveTrigger(): failed -> APIError: " + ex);
		}
		return false;
	}
}
