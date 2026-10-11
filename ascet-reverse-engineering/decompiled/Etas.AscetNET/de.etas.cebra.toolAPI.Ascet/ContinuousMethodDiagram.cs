using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E9E-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.ContinuousMethodDiagram")]
[ClassInterface(ClassInterfaceType.None)]
public class ContinuousMethodDiagram : BlockDiagram, ContinuousMethodDiagram_Dispatch, IContinuousMethodDiagram, IBlockDiagram, IAscetDiagram
{
	public const string INIT = "init";

	public const string DERIVATIVES = "derivatives";

	public const string UPDATE = "update";

	public const string DIRECTOUTPUTS = "directOutputs";

	public const string NONDIRECTOUTPUTS = "nondirectOutputs";

	public const string TERMINATE = "terminate";

	public const string STATEEVENTS = "stateEvents";

	public const string EVENTS = "events";

	public const string DEPENDENTPARAMETERS = "dependentParameters";

	object ContinuousMethodDiagram_Dispatch.GetAllMethods()
	{
		ContinuousMethod[] allMethods = GetAllMethods();
		return Adapter.ToObject(allMethods);
	}

	object ContinuousMethodDiagram_Dispatch.GetMethod(string name)
	{
		return GetMethod(name);
	}

	object ContinuousMethodDiagram_Dispatch.ConnectDiagramElementPins(object dispatch_outputPin, object dispatch_inputPin, object x, object y)
	{
		BlockDiagramElementPin outputPin = (BlockDiagramElementPin)dispatch_outputPin;
		BlockDiagramElementPin inputPin = (BlockDiagramElementPin)dispatch_inputPin;
		int[] x2 = Adapter.ToArray1Number<int>(x);
		int[] y2 = Adapter.ToArray1Number<int>(y);
		return ConnectDiagramElementPins(outputPin, inputPin, x2, y2);
	}

	object ContinuousMethodDiagram_Dispatch.GetAllDiagramConnections()
	{
		BlockDiagramConnection[] allDiagramConnections = GetAllDiagramConnections();
		return Adapter.ToObject(allDiagramConnections);
	}

	object ContinuousMethodDiagram_Dispatch.GetAllDiagramElements()
	{
		BlockDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object ContinuousMethodDiagram_Dispatch.GetAllOperatorsWithImplementation()
	{
		BlockDiagramElement[] allOperatorsWithImplementation = GetAllOperatorsWithImplementation();
		return Adapter.ToObject(allOperatorsWithImplementation);
	}

	object ContinuousMethodDiagram_Dispatch.GetAllOperatorsWithImplementationIn(object dispatch_impl)
	{
		ImplConfiguration impl = (ImplConfiguration)dispatch_impl;
		BlockDiagramElement[] allOperatorsWithImplementationIn = GetAllOperatorsWithImplementationIn(impl);
		return Adapter.ToObject(allOperatorsWithImplementationIn);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceBooleanLiteral(bool b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceBooleanLiteral(b, x, y, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceComment(string comment, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceComment(comment, x, y, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceControlElement(ctrl, x, y, numberOfArguments, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceDoubleLiteral(double b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceDoubleLiteral(b, x, y, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceHierarchy(string name, int x, int y, object inputPins, object outputPins, object dispatch_hierarchy)
	{
		string[] inputPins2 = Adapter.ToArray1Object<string>(inputPins);
		string[] outputPins2 = Adapter.ToArray1Object<string>(outputPins);
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceHierarchy(name, x, y, inputPins2, outputPins2, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceIntegerLiteral(int b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceIntegerLiteral(b, x, y, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceModelElement(object dispatch_element, int x, int y, object dispatch_hierarchy)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceModelElement(element, x, y, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceOperator(string op, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceOperator(op, x, y, numberOfArguments, hierarchy);
	}

	object ContinuousMethodDiagram_Dispatch.PlaceStringLiteral(string contents, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceStringLiteral(contents, x, y, hierarchy);
	}

	bool ContinuousMethodDiagram_Dispatch.RemoveDiagramComment(object dispatch_diagComment)
	{
		BlockDiagramComment diagComment = (BlockDiagramComment)dispatch_diagComment;
		return RemoveDiagramComment(diagComment);
	}

	bool ContinuousMethodDiagram_Dispatch.RemoveDiagramConnection(object dispatch_diagConnection)
	{
		BlockDiagramConnection diagConnection = (BlockDiagramConnection)dispatch_diagConnection;
		return RemoveDiagramConnection(diagConnection);
	}

	bool ContinuousMethodDiagram_Dispatch.RemoveDiagramElement(object dispatch_diagElement)
	{
		BlockDiagramElement diagElement = (BlockDiagramElement)dispatch_diagElement;
		return RemoveDiagramElement(diagElement);
	}

	object ContinuousMethodDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object ContinuousMethodDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object ContinuousMethodDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ContinuousMethodDiagram(CodeComponent comp, Identifiable obj)
		: base(comp, obj)
	{
	}

	public ContinuousMethod[] GetAllMethods()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMethods");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ContinuousMethod[] array = new ContinuousMethod[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new ContinuousMethod(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMethods(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ContinuousMethod GetMethod(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMethod:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new ContinuousMethod(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMethod(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsContinuousMethodDiagram()
	{
		return true;
	}
}
