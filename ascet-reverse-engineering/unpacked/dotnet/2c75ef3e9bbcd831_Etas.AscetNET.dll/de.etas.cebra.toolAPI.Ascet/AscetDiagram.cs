using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.AscetDiagram")]
[ComVisible(true)]
[Guid("A3DF3E87-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class AscetDiagram : PersistentItem, AscetDiagram_Dispatch, IAscetDiagram
{
	protected internal CodeComponent component;

	object AscetDiagram_Dispatch.GetAllDiagramComments()
	{
		BlockDiagramComment[] allDiagramComments = GetAllDiagramComments();
		return Adapter.ToObject(allDiagramComments);
	}

	object AscetDiagram_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object AscetDiagram_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetDiagram(CodeComponent comp, Identifiable obj)
		: base(comp.GetDataBase(), obj)
	{
		component = comp;
	}

	public static AscetDiagram factory(PersistentItem sender, Identifiable handle)
	{
		CodeComponent codeComponent = null;
		try
		{
			if (sender is CodeComponent)
			{
				codeComponent = (CodeComponent)sender;
			}
			else
			{
				InstanceMethodCall instanceMethodCall = new InstanceMethodCall(handle, "getClass", sender);
				sender.call(instanceMethodCall);
				codeComponent = CodeComponent.factory(sender, instanceMethodCall.ResultRemoteObject);
			}
			return codeComponent.getClassName(handle) switch
			{
				"EtasAPIDiscreteMethodDiagram" => new DiscreteMethodDiagram(codeComponent, handle), 
				"EtasAPIProcessDiagram" => new ProcessDiagram(codeComponent, handle), 
				"EtasAPIContinuousMethodDiagram" => new ContinuousMethodDiagram(codeComponent, handle), 
				"EtasAPIActionConditionDiagram" => new ActionConditionDiagram(codeComponent, handle), 
				"EtasAPIBlockDiagram" => new BlockDiagram(codeComponent, handle), 
				"EtasAPIStateMachineDiagram" => new StateMachineDiagram(codeComponent, handle), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			sender.logEntry("AscetDiagram.factory(" + sender.GetType().FullName + ", " + handle.GetType().FullName + "): failed -> APIError: " + ex);
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
					arrayList.Add(new BlockDiagramComment(this, remoteObjectsFromCollection[i]));
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

	public virtual CodeComponent GetCodeComponent()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getClass");
			call(instanceMethodCall);
			return CodeComponent.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCodeComponent(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetName()
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

	public string GetOID()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOID");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOID(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool IsActionConditionDiagram()
	{
		return false;
	}

	public override bool IsAscetDiagram()
	{
		return true;
	}

	public virtual bool IsBlockDiagram()
	{
		return false;
	}

	public virtual bool IsContinuousMethodDiagram()
	{
		return false;
	}

	public virtual bool IsDiscreteMethodDiagram()
	{
		return false;
	}

	public virtual bool IsProcessDiagram()
	{
		return false;
	}

	public virtual bool IsStateMachineDiagram()
	{
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

	public virtual bool SetName(string aName)
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

	public virtual bool StoreToCache()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("storeToCache");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".StoreToCache(): failed -> APIError: " + ex);
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
}
