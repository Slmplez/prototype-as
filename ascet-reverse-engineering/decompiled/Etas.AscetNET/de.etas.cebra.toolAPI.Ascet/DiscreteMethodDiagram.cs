using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3EA2-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.DiscreteMethodDiagram")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class DiscreteMethodDiagram : BlockDiagram, DiscreteMethodDiagram_Dispatch, IDiscreteMethodDiagram, IBlockDiagram, IAscetDiagram
{
	object DiscreteMethodDiagram_Dispatch.AddMethod(string name)
	{
		return AddMethod(name);
	}

	object DiscreteMethodDiagram_Dispatch.GetAllMethods()
	{
		DiscreteMethod[] allMethods = GetAllMethods();
		return Adapter.ToObject(allMethods);
	}

	object DiscreteMethodDiagram_Dispatch.GetMethod(string name)
	{
		return GetMethod(name);
	}

	bool DiscreteMethodDiagram_Dispatch.RemoveMethod(object dispatch_method)
	{
		DiscreteMethod method = (DiscreteMethod)dispatch_method;
		return RemoveMethod(method);
	}

	object DiscreteMethodDiagram_Dispatch.ConnectDiagramElementPins(object dispatch_outputPin, object dispatch_inputPin, object x, object y)
	{
		BlockDiagramElementPin outputPin = (BlockDiagramElementPin)dispatch_outputPin;
		BlockDiagramElementPin inputPin = (BlockDiagramElementPin)dispatch_inputPin;
		int[] x2 = Adapter.ToArray1Number<int>(x);
		int[] y2 = Adapter.ToArray1Number<int>(y);
		return ConnectDiagramElementPins(outputPin, inputPin, x2, y2);
	}

	object DiscreteMethodDiagram_Dispatch.GetAllDiagramConnections()
	{
		BlockDiagramConnection[] allDiagramConnections = GetAllDiagramConnections();
		return Adapter.ToObject(allDiagramConnections);
	}

	object DiscreteMethodDiagram_Dispatch.GetAllDiagramElements()
	{
		BlockDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object DiscreteMethodDiagram_Dispatch.GetAllOperatorsWithImplementation()
	{
		BlockDiagramElement[] allOperatorsWithImplementation = GetAllOperatorsWithImplementation();
		return Adapter.ToObject(allOperatorsWithImplementation);
	}

	object DiscreteMethodDiagram_Dispatch.GetAllOperatorsWithImplementationIn(object dispatch_impl)
	{
		ImplConfiguration impl = (ImplConfiguration)dispatch_impl;
		BlockDiagramElement[] allOperatorsWithImplementationIn = GetAllOperatorsWithImplementationIn(impl);
		return Adapter.ToObject(allOperatorsWithImplementationIn);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceBooleanLiteral(bool b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceBooleanLiteral(b, x, y, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceComment(string comment, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceComment(comment, x, y, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceControlElement(ctrl, x, y, numberOfArguments, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceDoubleLiteral(double b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceDoubleLiteral(b, x, y, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceHierarchy(string name, int x, int y, object inputPins, object outputPins, object dispatch_hierarchy)
	{
		string[] inputPins2 = Adapter.ToArray1Object<string>(inputPins);
		string[] outputPins2 = Adapter.ToArray1Object<string>(outputPins);
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceHierarchy(name, x, y, inputPins2, outputPins2, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceIntegerLiteral(int b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceIntegerLiteral(b, x, y, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceModelElement(object dispatch_element, int x, int y, object dispatch_hierarchy)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceModelElement(element, x, y, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceOperator(string op, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceOperator(op, x, y, numberOfArguments, hierarchy);
	}

	object DiscreteMethodDiagram_Dispatch.PlaceStringLiteral(string contents, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceStringLiteral(contents, x, y, hierarchy);
	}

	bool DiscreteMethodDiagram_Dispatch.RemoveDiagramComment(object dispatch_diagComment)
	{
		BlockDiagramComment diagComment = (BlockDiagramComment)dispatch_diagComment;
		return RemoveDiagramComment(diagComment);
	}

	bool DiscreteMethodDiagram_Dispatch.RemoveDiagramConnection(object dispatch_diagConnection)
	{
		BlockDiagramConnection diagConnection = (BlockDiagramConnection)dispatch_diagConnection;
		return RemoveDiagramConnection(diagConnection);
	}

	bool DiscreteMethodDiagram_Dispatch.RemoveDiagramElement(object dispatch_diagElement)
	{
		BlockDiagramElement diagElement = (BlockDiagramElement)dispatch_diagElement;
		return RemoveDiagramElement(diagElement);
	}

	object DiscreteMethodDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object DiscreteMethodDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object DiscreteMethodDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public DiscreteMethodDiagram(CodeComponent comp, Identifiable obj)
		: base(comp, obj)
	{
	}

	public DiscreteMethod AddMethod(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addMethod:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new DiscreteMethod(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddMethod(): failed -> APIError: " + ex);
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

	public DiscreteMethod GetMethod(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMethod:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new DiscreteMethod(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMethod(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsDiscreteMethodDiagram()
	{
		return true;
	}

	public virtual bool IsPrivate()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isPrivate");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsPrivate(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsPublic()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isPublic");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsPublic(): failed -> APIError: " + ex);
		}
		return false;
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
			logEntry(GetType().FullName + ".RemoveDiscreteMethod(): failed -> APIError: " + ex);
		}
		return false;
	}
}
