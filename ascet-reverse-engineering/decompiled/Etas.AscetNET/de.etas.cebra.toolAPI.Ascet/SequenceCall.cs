using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EB2-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.SequenceCall")]
public class SequenceCall : BlockDiagramFlowElement, ISequenceCall, IBlockDiagramFlowElement, IAbstractBlockDiagramElement, SequenceCall_Dispatch
{
	public SequenceCall(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public BlockDiagramElementPin[] GetAllPins()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllPins");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			BlockDiagramElementPin[] array = new BlockDiagramElementPin[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new BlockDiagramElementPin(diagram, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllPins(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElementPin GetConnectionPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getConnectionPin");
			call(instanceMethodCall);
			return new BlockDiagramElementPin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetConnectionPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[] GetPosition()
	{
		long[] array = new long[2];
		Identifiable identifiable = null;
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPosition");
			call(instanceMethodCall);
			identifiable = instanceMethodCall.ResultRemoteObject;
			int[] pointInteger = getPointInteger(identifiable);
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = pointInteger[i];
			}
			return array;
		}
		catch (WrongResultTypeException)
		{
			Identifiable identifiable2 = null;
			try
			{
				InstanceMethodCall instanceMethodCall2 = createInstanceMethodCall("getPosition");
				call(instanceMethodCall2);
				identifiable2 = instanceMethodCall2.ResultRemoteObject;
				return getPointLong(identifiable2);
			}
			catch (Exception ex2)
			{
				logEntry(GetType().FullName + ".GetPosition(): failed -> APIError: " + ex2);
			}
			finally
			{
				removeObject(identifiable2);
			}
		}
		catch (Exception ex3)
		{
			logEntry(GetType().FullName + ".GetPosition(): failed -> APIError: " + ex3);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public AbstractMethod GetSequenceActivator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSequenceActivator");
			call(instanceMethodCall);
			return identifyAbstractMethod(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSequenceActivator(): failed -> APIError: " + ex);
		}
		return null;
	}

	public int GetSequenceNumber()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSequenceNumber");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSequenceNumber(): failed -> APIError: " + ex);
		}
		return -1;
	}

	protected internal virtual AbstractMethod identifyAbstractMethod(Identifiable obj)
	{
		try
		{
			return getClassName(obj) switch
			{
				"EtasAPIDiscreteMethod" => new DiscreteMethod((DiscreteMethodDiagram)diagram, obj), 
				"EtasAPIProcess" => new Process((ProcessDiagram)diagram, obj), 
				"EtasAPIActionMethod" => new Action((ActionConditionDiagram)diagram, obj), 
				"EtasAPIConditionMethod" => new Condition((ActionConditionDiagram)diagram, obj), 
				"EtasAPITrigger" => new Trigger((StateMachineDiagram)diagram, obj), 
				"EtasAPIContinuousMethod" => new ContinuousMethod((ContinuousMethodDiagram)diagram, obj), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAbstractMethod(): failed -> APIError: " + ex);
		}
		return null;
	}

	public bool IsConnectable()
	{
		return base.isXXX("Connectable");
	}

	public override bool IsSequenceCall()
	{
		return true;
	}

	public bool SetConnection(bool connect)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setConnection:");
			instanceMethodCall.appendParameter(connect);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetConnection(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetSequenceActivator(AbstractMethod m)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSequenceActivator:");
			instanceMethodCall.appendParameter(m);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetSequenceActivator(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetSequenceNumber(int number)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSequenceNumber:");
			instanceMethodCall.appendParameter(number);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetSequenceNumber(): failed -> APIError: " + ex);
		}
		return false;
	}

	object SequenceCall_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	object SequenceCall_Dispatch.GetConnectionPin()
	{
		return GetConnectionPin();
	}

	object SequenceCall_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object SequenceCall_Dispatch.GetSequenceActivator()
	{
		return GetSequenceActivator();
	}

	bool SequenceCall_Dispatch.SetSequenceActivator(object dispatch_m)
	{
		AbstractMethod sequenceActivator = (AbstractMethod)dispatch_m;
		return SetSequenceActivator(sequenceActivator);
	}

	object SequenceCall_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object SequenceCall_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object SequenceCall_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object SequenceCall_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object SequenceCall_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object SequenceCall_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
