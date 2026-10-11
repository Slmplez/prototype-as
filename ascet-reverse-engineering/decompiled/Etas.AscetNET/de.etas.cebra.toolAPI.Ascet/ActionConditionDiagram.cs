using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E80-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.ActionConditionDiagram")]
[ComVisible(true)]
public class ActionConditionDiagram : BlockDiagram, IActionConditionDiagram, IBlockDiagram, IAscetDiagram, ActionConditionDiagram_Dispatch
{
	public ActionConditionDiagram(CodeComponent comp, Identifiable obj)
		: base(comp, obj)
	{
	}

	public Action AddAction(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addAction:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new Action(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddAction(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Condition AddCondition(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addCondition:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new Condition(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddCondition(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Action GetAction(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAction:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new Action(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAction(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Action[] GetAllActions()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllActions");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Action[] array = new Action[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Action(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllActions(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Condition[] GetAllConditions()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllConditions");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Condition[] array = new Condition[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Condition(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllConditions(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Condition GetCondition(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCondition:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new Condition(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCondition(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsActionConditionDiagram()
	{
		return true;
	}

	public bool RemoveAction(Action method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("delete:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool RemoveCondition(Condition method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("delete:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	object ActionConditionDiagram_Dispatch.AddAction(string name)
	{
		return AddAction(name);
	}

	object ActionConditionDiagram_Dispatch.AddCondition(string name)
	{
		return AddCondition(name);
	}

	object ActionConditionDiagram_Dispatch.GetAction(string name)
	{
		return GetAction(name);
	}

	object ActionConditionDiagram_Dispatch.GetAllActions()
	{
		Action[] allActions = GetAllActions();
		return Adapter.ToObject(allActions);
	}

	object ActionConditionDiagram_Dispatch.GetAllConditions()
	{
		Condition[] allConditions = GetAllConditions();
		return Adapter.ToObject(allConditions);
	}

	object ActionConditionDiagram_Dispatch.GetCondition(string name)
	{
		return GetCondition(name);
	}

	bool ActionConditionDiagram_Dispatch.RemoveAction(object dispatch_method)
	{
		Action method = (Action)dispatch_method;
		return RemoveAction(method);
	}

	bool ActionConditionDiagram_Dispatch.RemoveCondition(object dispatch_method)
	{
		Condition method = (Condition)dispatch_method;
		return RemoveCondition(method);
	}

	object ActionConditionDiagram_Dispatch.ConnectDiagramElementPins(object dispatch_outputPin, object dispatch_inputPin, object x, object y)
	{
		BlockDiagramElementPin outputPin = (BlockDiagramElementPin)dispatch_outputPin;
		BlockDiagramElementPin inputPin = (BlockDiagramElementPin)dispatch_inputPin;
		int[] x2 = Adapter.ToArray1Number<int>(x);
		int[] y2 = Adapter.ToArray1Number<int>(y);
		return ConnectDiagramElementPins(outputPin, inputPin, x2, y2);
	}

	object ActionConditionDiagram_Dispatch.GetAllDiagramConnections()
	{
		BlockDiagramConnection[] allDiagramConnections = GetAllDiagramConnections();
		return Adapter.ToObject(allDiagramConnections);
	}

	object ActionConditionDiagram_Dispatch.GetAllDiagramElements()
	{
		BlockDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object ActionConditionDiagram_Dispatch.GetAllOperatorsWithImplementation()
	{
		BlockDiagramElement[] allOperatorsWithImplementation = GetAllOperatorsWithImplementation();
		return Adapter.ToObject(allOperatorsWithImplementation);
	}

	object ActionConditionDiagram_Dispatch.GetAllOperatorsWithImplementationIn(object dispatch_impl)
	{
		ImplConfiguration impl = (ImplConfiguration)dispatch_impl;
		BlockDiagramElement[] allOperatorsWithImplementationIn = GetAllOperatorsWithImplementationIn(impl);
		return Adapter.ToObject(allOperatorsWithImplementationIn);
	}

	object ActionConditionDiagram_Dispatch.PlaceBooleanLiteral(bool b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceBooleanLiteral(b, x, y, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceComment(string comment, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceComment(comment, x, y, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceControlElement(ctrl, x, y, numberOfArguments, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceDoubleLiteral(double b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceDoubleLiteral(b, x, y, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceHierarchy(string name, int x, int y, object inputPins, object outputPins, object dispatch_hierarchy)
	{
		string[] inputPins2 = Adapter.ToArray1Object<string>(inputPins);
		string[] outputPins2 = Adapter.ToArray1Object<string>(outputPins);
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceHierarchy(name, x, y, inputPins2, outputPins2, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceIntegerLiteral(int b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceIntegerLiteral(b, x, y, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceModelElement(object dispatch_element, int x, int y, object dispatch_hierarchy)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceModelElement(element, x, y, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceOperator(string op, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceOperator(op, x, y, numberOfArguments, hierarchy);
	}

	object ActionConditionDiagram_Dispatch.PlaceStringLiteral(string contents, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceStringLiteral(contents, x, y, hierarchy);
	}

	bool ActionConditionDiagram_Dispatch.RemoveDiagramComment(object dispatch_diagComment)
	{
		BlockDiagramComment diagComment = (BlockDiagramComment)dispatch_diagComment;
		return RemoveDiagramComment(diagComment);
	}

	bool ActionConditionDiagram_Dispatch.RemoveDiagramConnection(object dispatch_diagConnection)
	{
		BlockDiagramConnection diagConnection = (BlockDiagramConnection)dispatch_diagConnection;
		return RemoveDiagramConnection(diagConnection);
	}

	bool ActionConditionDiagram_Dispatch.RemoveDiagramElement(object dispatch_diagElement)
	{
		BlockDiagramElement diagElement = (BlockDiagramElement)dispatch_diagElement;
		return RemoveDiagramElement(diagElement);
	}

	object ActionConditionDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object ActionConditionDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object ActionConditionDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
