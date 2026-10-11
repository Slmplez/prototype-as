using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A0ED2D2B-DCD6-11D4-9864-00105A36DC87")]
[ComVisible(true)]
[ProgId("Ascet.Transition")]
[ClassInterface(ClassInterfaceType.None)]
public class Transition : StateMachineDiagramFlowElement, Transition_Dispatch, ITransition, IStateMachineDiagramFlowElement, IAbstractStateMachineElement
{
	object Transition_Dispatch.GetAction()
	{
		return GetAction();
	}

	object Transition_Dispatch.GetCondition()
	{
		return GetCondition();
	}

	object Transition_Dispatch.GetEndPin()
	{
		return GetEndPin();
	}

	object Transition_Dispatch.GetEndState()
	{
		return GetEndState();
	}

	object Transition_Dispatch.GetStartPin()
	{
		return GetStartPin();
	}

	object Transition_Dispatch.GetStartState()
	{
		return GetStartState();
	}

	bool Transition_Dispatch.SetAction(object dispatch_method)
	{
		AbstractMethod action = (AbstractMethod)dispatch_method;
		return SetAction(action);
	}

	bool Transition_Dispatch.SetCondition(object dispatch_method)
	{
		AbstractMethod condition = (AbstractMethod)dispatch_method;
		return SetCondition(condition);
	}

	bool Transition_Dispatch.SetTrigger(object dispatch_trigger)
	{
		Trigger trigger = (Trigger)dispatch_trigger;
		return SetTrigger(trigger);
	}

	object Transition_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object Transition_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object Transition_Dispatch.GetHierarchyState()
	{
		return GetHierarchyState();
	}

	object Transition_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Transition(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual bool ClearAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ClearCondition()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearCondition");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearCondition(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ClearTrigger()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearTrigger");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearTrigger(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual AbstractMethod GetAction()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAction");
			call(instanceMethodCall);
			return AbstractMethod.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAction(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getESDLAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetActionESDL(): failed -> APIError: " + ex);
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

	public virtual AbstractMethod GetCondition()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCondition");
			call(instanceMethodCall);
			return AbstractMethod.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCondition(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetConditionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getESDLCondition");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetConditionESDL(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual StateMachinePin GetEndPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEndPin");
			call(instanceMethodCall);
			return new StateMachinePin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEndPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual State GetEndState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEndState");
			call(instanceMethodCall);
			return State.factory(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEndState(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int GetPriority()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPriority");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetPriority(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public virtual StateMachinePin GetStartPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getStartPin");
			call(instanceMethodCall);
			return new StateMachinePin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetStartPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual State GetStartState()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getStartState");
			call(instanceMethodCall);
			return State.factory(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetStartState(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int GetWidth()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getWidth");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetWidth(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public virtual bool HasEndPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasEndPin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".HasEndPin(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool HasStartPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasStartPin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".HasStartPin(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsActionDefined()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsActionDefined(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsActionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasESDLAction");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsActionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsConditionDefined()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasCondition");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsConditionDefined(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsConditionESDL()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasESDLCondition");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsConditionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsTransition()
	{
		return true;
	}

	public virtual bool SetAction(AbstractMethod method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAction:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAction(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetActionESDL(string esdlCode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setESDLAction:");
			instanceMethodCall.appendParameter(esdlCode);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetActionESDL(): failed -> APIError: " + ex);
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

	public virtual bool SetCondition(AbstractMethod method)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCondition:");
			instanceMethodCall.appendParameter(method);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCondition(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetConditionESDL(string esdlCode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setESDLCondition:");
			instanceMethodCall.appendParameter(esdlCode);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetConditionESDL(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetPriority(int prio)
	{
		try
		{
			if (prio < 0)
			{
				return false;
			}
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPriority:");
			instanceMethodCall.appendParameter(prio);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetPriority(" + prio + "): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetPriority(" + prio + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetPriority(" + prio + "): failed.");
		}
		return false;
	}

	public virtual bool SetTrigger(Trigger trigger)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setTrigger:");
			instanceMethodCall.appendParameter(trigger);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetTrigger(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetWidth(int width)
	{
		try
		{
			if (width < 1 || width > 5)
			{
				return false;
			}
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setWidth:");
			instanceMethodCall.appendParameter(width);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetWidth(" + width + "): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetWidth(" + width + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetWidth(" + width + "): failed.");
		}
		return false;
	}
}
