using System;
using System.Collections;
using System.ComponentModel;
using System.Reflection;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class DockingMgrSerializationWrapper : ISerializable
{
	public Hashtable htDHCWrapper = new Hashtable();

	internal ControllerWrapper controllerWrapper;

	public DockingMgrSerializationWrapper()
	{
	}

	private DockingMgrSerializationWrapper(SerializationInfo info, StreamingContext context)
	{
		Hashtable hashtable = new Hashtable();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			hashtable[enumerator.Current.Name] = null;
		}
		if (hashtable.Contains("HTDockingMgrSerializer"))
		{
			htDHCWrapper = info.GetValue("HTDockingMgrSerializer", typeof(Hashtable)) as Hashtable;
		}
		if (hashtable.Contains(SerializationConsts.WRAPPER))
		{
			controllerWrapper = info.GetValue(SerializationConsts.WRAPPER, typeof(ControllerWrapper)) as ControllerWrapper;
		}
		hashtable.Clear();
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("HTDockingMgrSerializer", htDHCWrapper);
		info.AddValue(SerializationConsts.WRAPPER, controllerWrapper, typeof(ControllerWrapper));
	}

	public DockingMgrSerializationWrapper(DockingManager dmgr)
	{
		ArrayList dockAreaControllers = dmgr.DockAreaControllers;
		foreach (DockControllerBase item in dockAreaControllers)
		{
			if (item is DockHostController)
			{
				string empty = string.Empty;
				if (dmgr.DesignMode)
				{
					empty = TypeDescriptor.GetComponentName(item.HostControl.Controls[0]);
				}
				else if (item.HostControl.Controls.Count > 0)
				{
					empty = item.HostControl.Controls[0].Name;
				}
				else
				{
					DockHostController dockHostController = item as DockHostController;
					empty = dockHostController.ctrlReference.Name;
				}
				if (empty == string.Empty)
				{
					throw new ApplicationException("Dockable controls must have an unique name for proper persistence.");
				}
				if (htDHCWrapper.Contains(empty))
				{
					htDHCWrapper.Remove(empty);
				}
				DHCSerializationWrapper value = new DHCSerializationWrapper(item as DockHostController);
				htDHCWrapper.Add(empty, value);
			}
		}
		controllerWrapper = dmgr.GetWrapper();
	}

	public DHCSerializationWrapper GetDHCSerializationWrapper(DockHostController dhc)
	{
		string empty = string.Empty;
		empty = (dhc.DockingManager.DesignMode ? TypeDescriptor.GetComponentName(dhc.HostControl.Controls[0]) : ((dhc.HostControl.Controls.Count <= 0) ? dhc.ctrlReference.Name : dhc.HostControl.Controls[0].Name));
		if (empty == string.Empty)
		{
			throw new ApplicationException("All dockable controls must have an unique name for proper persistence.");
		}
		if (htDHCWrapper.Contains(empty))
		{
			return htDHCWrapper[empty] as DHCSerializationWrapper;
		}
		return null;
	}

	public DHCSerializationWrapper GetDHCSerializationWrapper(string ctrlname)
	{
		if (htDHCWrapper.Contains(ctrlname))
		{
			return htDHCWrapper[ctrlname] as DHCSerializationWrapper;
		}
		return null;
	}

	internal static DockingMgrSerializationWrapper CloneByReflection(object objthis)
	{
		DockingMgrSerializationWrapper dockingMgrSerializationWrapper = new DockingMgrSerializationWrapper();
		FieldInfo field = objthis.GetType().GetField("htDHCWrapper");
		Hashtable hashtable = field.GetValue(objthis) as Hashtable;
		foreach (object value in hashtable.Values)
		{
			DHCSerializationWrapper dHCSerializationWrapper = DHCSerializationWrapper.CloneByReflection(value);
			if (dockingMgrSerializationWrapper.htDHCWrapper.Contains(dHCSerializationWrapper.strName))
			{
				dockingMgrSerializationWrapper.htDHCWrapper.Remove(dHCSerializationWrapper.strName);
			}
			dockingMgrSerializationWrapper.htDHCWrapper.Add(dHCSerializationWrapper.strName, dHCSerializationWrapper);
		}
		return dockingMgrSerializationWrapper;
	}
}
