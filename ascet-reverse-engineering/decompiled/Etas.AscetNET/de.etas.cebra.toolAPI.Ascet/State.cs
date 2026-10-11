using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.State")]
[Guid("A0ED2D27-DCD6-11D4-9864-00105A36DC87")]
public class State : StateMachineDiagramElement, IState, IStateMachineDiagramElement, IAbstractStateMachineElement, State_Dispatch
{
	public State(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual bool ClearEntryAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearEntryAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearEntryAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ClearExitAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearExitAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearExitAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ClearStartState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearStartState");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearStartState(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ClearStaticAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearStaticAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearStaticAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual HierarchyState CreateHierarchyState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("asHierarchyState");
			call(instanceMethodCall);
			return new HierarchyState(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateHierarchyState(): failed -> APIError: " + ex);
		}
		return null;
	}

	public static State factory(PersistentItem sender, Identifiable handle)
	{
		AscetDiagram ascetDiagram = null;
		try
		{
			if (sender is AscetDiagram)
			{
				ascetDiagram = (AscetDiagram)sender;
			}
			else
			{
				InstanceMethodCall instanceMethodCall = new InstanceMethodCall(handle, "getDiagram", sender);
				sender.call(instanceMethodCall);
				ascetDiagram = AscetDiagram.factory(sender, instanceMethodCall.ResultRemoteObject);
			}
			if (sender.performIsMethod(handle, "State"))
			{
				return new State(ascetDiagram, handle);
			}
			if (sender.performIsMethod(handle, "HierarchyState"))
			{
				return new HierarchyState(ascetDiagram, handle);
			}
		}
		catch (Exception ex)
		{
			sender.logEntry("State.factory(): failed -> APIError: " + ex);
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

	public virtual string GetColor()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getNamedColor");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetColor(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AbstractMethod GetEntryAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEntryAction");
			call(instanceMethodCall);
			return AbstractMethod.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEntryAction(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetEntryActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getESDLEntryAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEntryActionESDL(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AbstractMethod GetExitAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getExitAction");
			call(instanceMethodCall);
			return AbstractMethod.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetExitAction(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetExitActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getESDLExitAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetExitActionESDL(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AbstractMethod GetStaticAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getStaticAction");
			call(instanceMethodCall);
			return AbstractMethod.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetStaticAction(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetStaticActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getESDLStaticAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetStaticActionESDL(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int Height()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getHeight");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Height(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public virtual bool IsEntryActionDefined()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasEntryAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsEntryActionDefined(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsEntryActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasESDLEntryAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsEntryActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsExitActionDefined()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasExitAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsExitActionDefined(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsExitActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasESDLExitAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsExitActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsStartState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isStartState");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsStartState(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsState()
	{
		return true;
	}

	public virtual bool IsStaticActionDefined()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasStaticAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsStaticActionDefined(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsStaticActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasESDLStaticAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsStaticActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetColor(string colorName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setNamedColor:");
			instanceMethodCall.appendParameter(colorName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetColor(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetColor(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetColor(): failed.");
		}
		return false;
	}

	public virtual bool SetEntryAction(AbstractMethod method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEntryAction:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetEntryAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetEntryActionESDL(string esdlCode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setESDLEntryAction:");
			instanceMethodCall.appendParameter(esdlCode);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetEntryActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetExitAction(AbstractMethod method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExitAction:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetExitAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetExitActionESDL(string esdlCode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setESDLExitAction:");
			instanceMethodCall.appendParameter(esdlCode);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetExitActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetSize(int width, int height)
	{
		Identifiable identifiable = null;
		try
		{
			identifiable = getPoint(width, height);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSize:");
			instanceMethodCall.appendParameter(identifiable);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetSize(): failed -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return false;
	}

	public virtual bool SetStartState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setStartState");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetStartState(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetStaticAction(AbstractMethod method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setStaticAction:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetStaticAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetStaticActionESDL(string esdlCode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setESDLStaticAction:");
			instanceMethodCall.appendParameter(esdlCode);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetStaticActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual int Width()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getWidth");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Width(): failed -> APIError: " + ex);
		}
		return 0;
	}

	object State_Dispatch.CreateHierarchyState()
	{
		return CreateHierarchyState();
	}

	object State_Dispatch.GetAllAvailableColors()
	{
		string[] allAvailableColors = GetAllAvailableColors();
		return Adapter.ToObject(allAvailableColors);
	}

	object State_Dispatch.GetEntryAction()
	{
		return GetEntryAction();
	}

	object State_Dispatch.GetExitAction()
	{
		return GetExitAction();
	}

	object State_Dispatch.GetStaticAction()
	{
		return GetStaticAction();
	}

	bool State_Dispatch.SetEntryAction(object dispatch_method)
	{
		AbstractMethod entryAction = (AbstractMethod)dispatch_method;
		return SetEntryAction(entryAction);
	}

	bool State_Dispatch.SetExitAction(object dispatch_method)
	{
		AbstractMethod exitAction = (AbstractMethod)dispatch_method;
		return SetExitAction(exitAction);
	}

	bool State_Dispatch.SetStaticAction(object dispatch_method)
	{
		AbstractMethod staticAction = (AbstractMethod)dispatch_method;
		return SetStaticAction(staticAction);
	}

	int State_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object State_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object State_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object State_Dispatch.GetHierarchyState()
	{
		return GetHierarchyState();
	}

	object State_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
