using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.BlockDiagramHierarchy")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("A3DF3E97-B490-11D3-8A29-00A0247767D8")]
public class BlockDiagramHierarchy : BlockDiagramElement, IBlockDiagramHierarchy, IBlockDiagramElement, IAbstractBlockDiagramElement, BlockDiagramHierarchy_Dispatch
{
	public BlockDiagramHierarchy(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public BlockDiagramElementPin AddInputPin(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addInputPin:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new BlockDiagramElementPin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddInputPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElementPin AddOutputPin(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addOutputPin:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new BlockDiagramElementPin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddOutputPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramComment[] GetAllDiagramComments()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllDiagramComments");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				if (performIsMethod(remoteObjectsFromCollection[i], "BlockDiagramComment"))
				{
					arrayList.Add(new BlockDiagramComment(diagram, remoteObjectsFromCollection[i]));
				}
			}
			BlockDiagramComment[] array = new BlockDiagramComment[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDiagramComments(): failed -> APIError: " + ex);
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
				array[i] = new BlockDiagramConnection(diagram, remoteObjectsFromCollection[i]);
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

	public BlockDiagramHierarchyPin[] GetAllInternalPins()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllInternalPins");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			BlockDiagramHierarchyPin[] array = new BlockDiagramHierarchyPin[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new BlockDiagramHierarchyPin(diagram, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllInternalPins(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramHierarchyPin GetInternalPin(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getInternalPin:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new BlockDiagramHierarchyPin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetInternalPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetName()
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

	public override bool IsBlockDiagramHierarchy()
	{
		return true;
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

	public bool SetName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SwitchSequenceVisibilityOff()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("sequenceVisibilityOff");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SwitchSequenceVisibilityOff(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SwitchSequenceVisibilityOn()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("sequenceVisibilityOn");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SwitchSequenceVisibilityOn(): failed -> APIError: " + ex);
		}
		return false;
	}

	object BlockDiagramHierarchy_Dispatch.AddInputPin(string aName)
	{
		return AddInputPin(aName);
	}

	object BlockDiagramHierarchy_Dispatch.AddOutputPin(string aName)
	{
		return AddOutputPin(aName);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllDiagramConnections()
	{
		BlockDiagramConnection[] allDiagramConnections = GetAllDiagramConnections();
		return Adapter.ToObject(allDiagramConnections);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllDiagramElements()
	{
		BlockDiagramElement[] allDiagramElements = GetAllDiagramElements();
		return Adapter.ToObject(allDiagramElements);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllInternalPins()
	{
		BlockDiagramHierarchyPin[] allInternalPins = GetAllInternalPins();
		return Adapter.ToObject(allInternalPins);
	}

	object BlockDiagramHierarchy_Dispatch.GetInternalPin(string aName)
	{
		return GetInternalPin(aName);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramHierarchy_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramHierarchy_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramHierarchy_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramHierarchy_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramHierarchy_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramHierarchy_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramHierarchy_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramHierarchy_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
