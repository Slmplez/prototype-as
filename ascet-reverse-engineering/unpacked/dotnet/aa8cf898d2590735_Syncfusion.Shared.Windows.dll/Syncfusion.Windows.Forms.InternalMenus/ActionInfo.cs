#define TRACE
using System;
using System.Diagnostics;
using System.Reflection;

namespace Syncfusion.Windows.Forms.InternalMenus;

public class ActionInfo
{
	private EventHandler eventHandler;

	private object srcObj;

	private BasicAction action;

	private string actionName;

	public EventHandler EventHandler => eventHandler;

	public object SourceObject => srcObj;

	public string ActionName => actionName;

	public BasicAction Action => action;

	public ActionInfo(string eventName, object parentForm, object srcObject)
	{
		actionName = eventName;
		srcObj = srcObject;
		action = (BasicAction)parentForm.GetType().Module.Assembly.CreateInstance(eventName);
		if (action == null)
		{
			Trace.WriteLine("Can't create MenuAction " + eventName);
		}
		else
		{
			action.MainWindow = parentForm;
			eventHandler = action.InvokeAction;
		}
		RegisterAction(parentForm);
	}

	public void RegisterAction(object parentForm)
	{
		if (parentForm == null)
		{
			return;
		}
		MethodInfo method = parentForm.GetType().GetMethod("RegisterAction");
		if (!(method == null))
		{
			try
			{
				method.Invoke(parentForm, new object[1] { this });
			}
			catch (Exception ex)
			{
				Trace.WriteLine("Unable to invoke RegisterToggleAction on MainWindow");
				Trace.WriteLine(ex.ToString());
			}
		}
	}
}
