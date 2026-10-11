using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public abstract class AbstractBlockDiagramElement : PersistentItem
{
	protected internal AscetDiagram diagram;

	public virtual long[] Position
	{
		get
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
					return null;
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
	}

	public virtual long[] SizeBasic
	{
		get
		{
			long[] array = new long[2];
			Identifiable identifiable = null;
			try
			{
				InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSize");
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
					InstanceMethodCall instanceMethodCall2 = createInstanceMethodCall("getSize");
					call(instanceMethodCall2);
					identifiable2 = instanceMethodCall2.ResultRemoteObject;
					return getPointLong(identifiable2);
				}
				catch (Exception ex2)
				{
					logEntry(GetType().FullName + ".GetSize(): failed -> APIError: " + ex2);
					return null;
				}
				finally
				{
					removeObject(identifiable2);
				}
			}
			catch (Exception ex3)
			{
				logEntry(GetType().FullName + ".GetSize(): failed -> APIError: " + ex3);
			}
			finally
			{
				removeObject(identifiable);
			}
			return null;
		}
	}

	public AbstractBlockDiagramElement(AscetDiagram diag, Identifiable h)
		: base(diag.GetDataBase(), h)
	{
		diagram = diag;
	}

	public virtual string[] GetAllAvailableViews()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllAvailableViews");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllAvailableViews(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllAvailableViewTypes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllAvailableViewTypes");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllAvailableViewTypes(): failed -> APIError: " + ex);
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

	public string GetCustomerDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCustomerDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual BlockDiagram GetDiagram()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDiagram");
			call(instanceMethodCall);
			return (BlockDiagram)AscetDiagram.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDiagram(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual BlockDiagramHierarchy GetHierarchy()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getHierarchy");
			call(instanceMethodCall);
			return new BlockDiagramHierarchy(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetHierarchy(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual int[] getPointInteger(Identifiable h)
	{
		try
		{
			int[] array = new int[2];
			InstanceMethodCall instanceMethodCall = new InstanceMethodCall(h, "x", this);
			call(instanceMethodCall);
			array[0] = instanceMethodCall.ResultInteger;
			instanceMethodCall = new InstanceMethodCall(h, "y", this);
			call(instanceMethodCall);
			array[1] = instanceMethodCall.ResultInteger;
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getPointInteger(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual long[] getPointLong(Identifiable h)
	{
		try
		{
			long[] array = new long[2];
			InstanceMethodCall instanceMethodCall = new InstanceMethodCall(h, "x", this);
			call(instanceMethodCall);
			array[0] = instanceMethodCall.ResultLong;
			instanceMethodCall = new InstanceMethodCall(h, "y", this);
			call(instanceMethodCall);
			array[1] = instanceMethodCall.ResultLong;
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getPointLong(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetUserDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUserDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetViewTypeForViewNamed(string viewName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getViewTypeForViewNamed:");
			instanceMethodCall.appendParameter(viewName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetViewTypeForViewNamed(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual BlockDiagramElement identifyBlockDiagramElement(Identifiable obj)
	{
		try
		{
			return getClassName(obj) switch
			{
				"EtasAPIBlockDiagramFunctionalElement" => new BlockDiagramFunctionalElement(diagram, obj), 
				"EtasAPIBlockDiagramHierarchy" => new BlockDiagramHierarchy(diagram, obj), 
				"EtasAPIBlockDiagramHierarchyPin" => new BlockDiagramHierarchyPin(diagram, obj), 
				"EtasAPIBlockDiagramOperator" => new BlockDiagramOperator(diagram, obj), 
				"EtasAPIBlockDiagramControl" => new BlockDiagramControlElement(diagram, obj), 
				"EtasAPIBlockDiagramLiteral" => new BlockDiagramLiteral(diagram, obj), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyBlockDiagramElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual BlockDiagram identifyDiagram(Identifiable obj)
	{
		try
		{
			return (BlockDiagram)AscetDiagram.factory(GetCodeComponent(), obj);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyDiagram(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsAbstractBlockDiagramElement()
	{
		return true;
	}

	public virtual bool IsBlockDiagramComment()
	{
		return false;
	}

	public virtual bool IsBlockDiagramElement()
	{
		return false;
	}

	public virtual bool IsBlockDiagramFlowElement()
	{
		return false;
	}

	public bool SetCustomerDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCustomerDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUserDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUserDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual string SetViewTypeForViewNamed(string viewType, string viewName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setViewType:forViewNamed:");
			instanceMethodCall.appendParameter(viewType);
			instanceMethodCall.appendParameter(viewName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetViewTypeForViewNamed(): failed -> APIError: " + ex);
		}
		return null;
	}
}
