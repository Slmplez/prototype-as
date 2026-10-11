using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3EAD-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.ProcessDiagram")]
public class ProcessDiagram : BlockDiagram, ProcessDiagram_Dispatch, IProcessDiagram, IBlockDiagram, IAscetDiagram
{
	object ProcessDiagram_Dispatch.AddMethod(string methodName)
	{
		return AddMethod(methodName);
	}

	object ProcessDiagram_Dispatch.AddProcess(string processName)
	{
		return AddProcess(processName);
	}

	object ProcessDiagram_Dispatch.GetAllMethods()
	{
		DiscreteMethod[] allMethods = GetAllMethods();
		return Adapter.ToObject(allMethods);
	}

	object ProcessDiagram_Dispatch.GetAllProcesses()
	{
		Process[] allProcesses = GetAllProcesses();
		return Adapter.ToObject(allProcesses);
	}

	object ProcessDiagram_Dispatch.GetMethod(string methodName)
	{
		return GetMethod(methodName);
	}

	object ProcessDiagram_Dispatch.GetProcess(string processName)
	{
		return GetProcess(processName);
	}

	bool ProcessDiagram_Dispatch.RemoveMethod(object dispatch_method)
	{
		DiscreteMethod method = (DiscreteMethod)dispatch_method;
		return RemoveMethod(method);
	}

	bool ProcessDiagram_Dispatch.RemoveProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return RemoveProcess(proc);
	}

	object ProcessDiagram_Dispatch.ConnectDiagramElementPins(object dispatch_outputPin, object dispatch_inputPin, object x, object y)
	{
		BlockDiagramElementPin outputPin = (BlockDiagramElementPin)dispatch_outputPin;
		BlockDiagramElementPin inputPin = (BlockDiagramElementPin)dispatch_inputPin;
		int[] x2 = Adapter.ToArray1Number<int>(x);
		int[] y2 = Adapter.ToArray1Number<int>(y);
		return ConnectDiagramElementPins(outputPin, inputPin, x2, y2);
	}

	object ProcessDiagram_Dispatch.GetAllDiagramConnections()
	{
		BlockDiagramConnection[] allDiagramConnections = GetAllDiagramConnections();
		return Adapter.ToObject(allDiagramConnections);
	}

	object ProcessDiagram_Dispatch.GetAllDiagramElements()
	{
		BlockDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object ProcessDiagram_Dispatch.GetAllOperatorsWithImplementation()
	{
		BlockDiagramElement[] allOperatorsWithImplementation = GetAllOperatorsWithImplementation();
		return Adapter.ToObject(allOperatorsWithImplementation);
	}

	object ProcessDiagram_Dispatch.GetAllOperatorsWithImplementationIn(object dispatch_impl)
	{
		ImplConfiguration impl = (ImplConfiguration)dispatch_impl;
		BlockDiagramElement[] allOperatorsWithImplementationIn = GetAllOperatorsWithImplementationIn(impl);
		return Adapter.ToObject(allOperatorsWithImplementationIn);
	}

	object ProcessDiagram_Dispatch.PlaceBooleanLiteral(bool b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceBooleanLiteral(b, x, y, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceComment(string comment, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceComment(comment, x, y, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceControlElement(ctrl, x, y, numberOfArguments, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceDoubleLiteral(double b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceDoubleLiteral(b, x, y, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceHierarchy(string name, int x, int y, object inputPins, object outputPins, object dispatch_hierarchy)
	{
		string[] inputPins2 = Adapter.ToArray1Object<string>(inputPins);
		string[] outputPins2 = Adapter.ToArray1Object<string>(outputPins);
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceHierarchy(name, x, y, inputPins2, outputPins2, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceIntegerLiteral(int b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceIntegerLiteral(b, x, y, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceModelElement(object dispatch_element, int x, int y, object dispatch_hierarchy)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceModelElement(element, x, y, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceOperator(string op, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceOperator(op, x, y, numberOfArguments, hierarchy);
	}

	object ProcessDiagram_Dispatch.PlaceStringLiteral(string contents, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceStringLiteral(contents, x, y, hierarchy);
	}

	bool ProcessDiagram_Dispatch.RemoveDiagramComment(object dispatch_diagComment)
	{
		BlockDiagramComment diagComment = (BlockDiagramComment)dispatch_diagComment;
		return RemoveDiagramComment(diagComment);
	}

	bool ProcessDiagram_Dispatch.RemoveDiagramConnection(object dispatch_diagConnection)
	{
		BlockDiagramConnection diagConnection = (BlockDiagramConnection)dispatch_diagConnection;
		return RemoveDiagramConnection(diagConnection);
	}

	bool ProcessDiagram_Dispatch.RemoveDiagramElement(object dispatch_diagElement)
	{
		BlockDiagramElement diagElement = (BlockDiagramElement)dispatch_diagElement;
		return RemoveDiagramElement(diagElement);
	}

	object ProcessDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object ProcessDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object ProcessDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ProcessDiagram(CodeComponent comp, Identifiable obj)
		: base(comp, obj)
	{
	}

	public DiscreteMethod AddMethod(string methodName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addMethod:");
			instanceMethodCall.appendParameter(methodName);
			call(instanceMethodCall);
			return new DiscreteMethod(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddMethod(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Process AddProcess(string processName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addProcess:");
			instanceMethodCall.appendParameter(processName);
			call(instanceMethodCall);
			return new Process(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddProcess(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DiscreteMethod[] GetAllMethods()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMethods");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			DiscreteMethod[] array = new DiscreteMethod[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new DiscreteMethod(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMethods(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Process[] GetAllProcesses()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllProcesses");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Process[] array = new Process[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Process(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllProcesses(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DiscreteMethod GetMethod(string methodName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMethod:");
			instanceMethodCall.appendParameter(methodName);
			call(instanceMethodCall);
			return new DiscreteMethod(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMethod(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Process GetProcess(string processName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getProcess:");
			instanceMethodCall.appendParameter(processName);
			call(instanceMethodCall);
			return new Process(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetProcess(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsProcessDiagram()
	{
		return true;
	}

	public bool RemoveMethod(DiscreteMethod method)
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
			logEntry(GetType().FullName + ".RemoveMethod(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool RemoveProcess(Process proc)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("delete:");
			instanceMethodCall.appendParameter(proc);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveProcess(): failed -> APIError: " + ex);
		}
		return false;
	}
}
