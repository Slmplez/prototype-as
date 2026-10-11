using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E90-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.BlockDiagram")]
[ClassInterface(ClassInterfaceType.None)]
public class BlockDiagram : AscetDiagram, IBlockDiagram, IAscetDiagram, BlockDiagram_Dispatch
{
	public BlockDiagram(CodeComponent comp, Identifiable obj)
		: base(comp, obj)
	{
	}

	public virtual BlockDiagramConnection ConnectDiagramElementPins(BlockDiagramElementPin outputPin, BlockDiagramElementPin inputPin, int[] x, int[] y)
	{
		Identifiable[] array = null;
		try
		{
			OrderedCollection i = null;
			if (x != null && y != null)
			{
				if (x == null || y == null || x.Length != y.Length)
				{
					logEntry(GetType().FullName + ".ConnectDiagramElementPins(): failed");
					return null;
				}
				array = new Identifiable[x.Length];
				for (int j = 0; j < x.Length; j++)
				{
					array[j] = getPoint(x[j], y[j]);
				}
				i = setOrderedCollectionFromValues(array);
			}
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("connect:to:withPoints:");
			instanceMethodCall.appendParameter(outputPin);
			instanceMethodCall.appendParameter(inputPin);
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			return new BlockDiagramConnection(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ConnectDiagramElementPins(): failed -> APIError: " + ex);
		}
		finally
		{
			if (array != null)
			{
				for (int k = 0; k < array.Length; k++)
				{
					removeObject(array[k]);
				}
			}
		}
		return null;
	}

	public BlockDiagramConnection[] GetAllDiagramConnections()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllDiagramConnections");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			BlockDiagramConnection[] array = new BlockDiagramConnection[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new BlockDiagramConnection(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDiagramConnections(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElement[] GetAllDiagramElements()
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
				BlockDiagramElement blockDiagramElement = identifyBlockDiagramElement(remoteObjectsFromCollection[i]);
				if (blockDiagramElement != null)
				{
					arrayList.Add(blockDiagramElement);
				}
			}
			BlockDiagramElement[] array = new BlockDiagramElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDiagramElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElement[] GetAllOperatorsWithImplementation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOperatorsWithImplementation");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				BlockDiagramElement blockDiagramElement = identifyBlockDiagramElement(remoteObjectsFromCollection[i]);
				if (blockDiagramElement != null)
				{
					arrayList.Add(blockDiagramElement);
				}
			}
			BlockDiagramElement[] array = new BlockDiagramElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllOperatorsWithImplementation(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElement[] GetAllOperatorsWithImplementationIn(ImplConfiguration impl)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOperatorsWithImplementationForImplConfig:");
			instanceMethodCall.appendParameter(impl);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				BlockDiagramElement blockDiagramElement = identifyBlockDiagramElement(remoteObjectsFromCollection[i]);
				if (blockDiagramElement != null)
				{
					arrayList.Add(blockDiagramElement);
				}
			}
			BlockDiagramElement[] array = new BlockDiagramElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllOperatorsWithImplementationIn(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual BlockDiagramElement identifyBlockDiagramElement(Identifiable obj)
	{
		try
		{
			return getClassName(obj) switch
			{
				"EtasAPIBlockDiagramFunctionalElement" => new BlockDiagramFunctionalElement(this, obj), 
				"EtasAPIBlockDiagramHierarchy" => new BlockDiagramHierarchy(this, obj), 
				"EtasAPIBlockDiagramHierarchyPin" => new BlockDiagramHierarchyPin(this, obj), 
				"EtasAPIBlockDiagramOperator" => new BlockDiagramOperator(this, obj), 
				"EtasAPIBlockDiagramControl" => new BlockDiagramControlElement(this, obj), 
				"EtasAPIBlockDiagramLiteral" => new BlockDiagramLiteral(this, obj), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyBlockDiagramElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBlockDiagram()
	{
		return true;
	}

	public virtual BlockDiagramLiteral PlaceBooleanLiteral(bool b, int x, int y, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeLiteralBoolean:location:hierarchy:");
			instanceMethodCall.appendParameter(b);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new BlockDiagramLiteral(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceBooleanLiteralInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual BlockDiagramComment PlaceComment(string comment, int x, int y, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeComment:location:hierarchy:");
			instanceMethodCall.appendParameter(comment);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new BlockDiagramComment(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceComment(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual BlockDiagramControlElement PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeControl:location:hierarchy:numOfArgs:");
			instanceMethodCall.appendParameter(ctrl);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			instanceMethodCall.appendParameter(numberOfArguments);
			call(instanceMethodCall);
			return new BlockDiagramControlElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceOperatorInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual BlockDiagramLiteral PlaceDoubleLiteral(double b, int x, int y, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeLiteralNumber:location:hierarchy:");
			instanceMethodCall.appendParameter(b);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new BlockDiagramLiteral(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceDoubleLiteralInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public BlockDiagramHierarchy PlaceHierarchy(string name, int x, int y, string[] inputPins, string[] outputPins, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			OrderedCollection i = null;
			if (inputPins != null)
			{
				i = setOrderedCollectionFromValues(inputPins);
			}
			OrderedCollection i2 = null;
			if (outputPins != null)
			{
				i2 = setOrderedCollectionFromValues(outputPins);
			}
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeHierarchy:location:hierarchy:inputPins:outputPins:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			instanceMethodCall.appendParameter(i);
			instanceMethodCall.appendParameter(i2);
			call(instanceMethodCall);
			return new BlockDiagramHierarchy(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceHierarchyInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual BlockDiagramLiteral PlaceIntegerLiteral(int b, int x, int y, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeLiteralNumber:location:hierarchy:");
			instanceMethodCall.appendParameter(b);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new BlockDiagramLiteral(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceIntegerLiteralInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public BlockDiagramFunctionalElement PlaceModelElement(AscetModelElement element, int x, int y, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("place:location:hierarchy:");
			instanceMethodCall.appendParameter(element);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new BlockDiagramFunctionalElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceModelElementInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual BlockDiagramOperator PlaceOperator(string op, int x, int y, int numberOfArguments, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeOperator:location:hierarchy:numOfArgs:");
			instanceMethodCall.appendParameter(op);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			instanceMethodCall.appendParameter(numberOfArguments);
			call(instanceMethodCall);
			return new BlockDiagramOperator(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceOperatorInHierarchy(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual BlockDiagramLiteral PlaceStringLiteral(string contents, int x, int y, BlockDiagramHierarchy hierarchy)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(x, y);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("placeLiteralString:location:hierarchy:");
			instanceMethodCall.appendParameter(contents);
			instanceMethodCall.appendParameter(identifiable);
			instanceMethodCall.appendParameter(hierarchy);
			call(instanceMethodCall);
			return new BlockDiagramLiteral(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PlaceStringLiteral(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual bool RemoveDiagramComment(BlockDiagramComment diagComment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeDiagramObject:");
			instanceMethodCall.appendParameter(diagComment);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveDiagramComment(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveDiagramConnection(BlockDiagramConnection diagConnection)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeDiagramObject:");
			instanceMethodCall.appendParameter(diagConnection);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveDiagramConnection(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveDiagramElement(BlockDiagramElement diagElement)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeDiagramObject:");
			instanceMethodCall.appendParameter(diagElement);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveDiagramElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	object BlockDiagram_Dispatch.ConnectDiagramElementPins(object dispatch_outputPin, object dispatch_inputPin, object x, object y)
	{
		BlockDiagramElementPin outputPin = (BlockDiagramElementPin)dispatch_outputPin;
		BlockDiagramElementPin inputPin = (BlockDiagramElementPin)dispatch_inputPin;
		int[] x2 = Adapter.ToArray1Number<int>(x);
		int[] y2 = Adapter.ToArray1Number<int>(y);
		return ConnectDiagramElementPins(outputPin, inputPin, x2, y2);
	}

	object BlockDiagram_Dispatch.GetAllDiagramConnections()
	{
		BlockDiagramConnection[] allDiagramConnections = GetAllDiagramConnections();
		return Adapter.ToObject(allDiagramConnections);
	}

	object BlockDiagram_Dispatch.GetAllDiagramElements()
	{
		BlockDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object BlockDiagram_Dispatch.GetAllOperatorsWithImplementation()
	{
		BlockDiagramElement[] allOperatorsWithImplementation = GetAllOperatorsWithImplementation();
		return Adapter.ToObject(allOperatorsWithImplementation);
	}

	object BlockDiagram_Dispatch.GetAllOperatorsWithImplementationIn(object dispatch_impl)
	{
		ImplConfiguration impl = (ImplConfiguration)dispatch_impl;
		BlockDiagramElement[] allOperatorsWithImplementationIn = GetAllOperatorsWithImplementationIn(impl);
		return Adapter.ToObject(allOperatorsWithImplementationIn);
	}

	object BlockDiagram_Dispatch.PlaceBooleanLiteral(bool b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceBooleanLiteral(b, x, y, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceComment(string comment, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceComment(comment, x, y, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceControlElement(ctrl, x, y, numberOfArguments, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceDoubleLiteral(double b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceDoubleLiteral(b, x, y, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceHierarchy(string name, int x, int y, object inputPins, object outputPins, object dispatch_hierarchy)
	{
		string[] inputPins2 = Adapter.ToArray1Object<string>(inputPins);
		string[] outputPins2 = Adapter.ToArray1Object<string>(outputPins);
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceHierarchy(name, x, y, inputPins2, outputPins2, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceIntegerLiteral(int b, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceIntegerLiteral(b, x, y, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceModelElement(object dispatch_element, int x, int y, object dispatch_hierarchy)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceModelElement(element, x, y, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceOperator(string op, int x, int y, int numberOfArguments, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceOperator(op, x, y, numberOfArguments, hierarchy);
	}

	object BlockDiagram_Dispatch.PlaceStringLiteral(string contents, int x, int y, object dispatch_hierarchy)
	{
		BlockDiagramHierarchy hierarchy = (BlockDiagramHierarchy)dispatch_hierarchy;
		return PlaceStringLiteral(contents, x, y, hierarchy);
	}

	bool BlockDiagram_Dispatch.RemoveDiagramComment(object dispatch_diagComment)
	{
		BlockDiagramComment diagComment = (BlockDiagramComment)dispatch_diagComment;
		return RemoveDiagramComment(diagComment);
	}

	bool BlockDiagram_Dispatch.RemoveDiagramConnection(object dispatch_diagConnection)
	{
		BlockDiagramConnection diagConnection = (BlockDiagramConnection)dispatch_diagConnection;
		return RemoveDiagramConnection(diagConnection);
	}

	bool BlockDiagram_Dispatch.RemoveDiagramElement(object dispatch_diagElement)
	{
		BlockDiagramElement diagElement = (BlockDiagramElement)dispatch_diagElement;
		return RemoveDiagramElement(diagElement);
	}

	object BlockDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object BlockDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
