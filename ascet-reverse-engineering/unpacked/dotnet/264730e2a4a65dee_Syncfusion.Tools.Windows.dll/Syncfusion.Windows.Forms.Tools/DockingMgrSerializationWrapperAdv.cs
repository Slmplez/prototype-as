using System;
using System.Collections;
using System.ComponentModel;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class DockingMgrSerializationWrapperAdv : DockingMgrSerializationWrapper
{
	private ArrayList ffControllerWrappers = new ArrayList();

	private ArrayList m_zOrderArray;

	private ArrayList m_autohideOnLoad = new ArrayList();

	internal ArrayList MdiZOrder
	{
		get
		{
			return m_zOrderArray;
		}
		set
		{
			if (m_zOrderArray != value)
			{
				m_zOrderArray = value;
			}
		}
	}

	internal ArrayList FloatingControllerWrappers
	{
		get
		{
			return ffControllerWrappers;
		}
		set
		{
			if (ffControllerWrappers != value)
			{
				ffControllerWrappers = value;
			}
		}
	}

	internal ArrayList AutohideOnLoad
	{
		get
		{
			return m_autohideOnLoad;
		}
		set
		{
			if (m_autohideOnLoad != value)
			{
				m_autohideOnLoad = value;
			}
		}
	}

	private DockingMgrSerializationWrapperAdv(SerializationInfo info, StreamingContext context)
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
		if (hashtable.Contains(SerializationConsts.FLOAT_WRAPPER))
		{
			ffControllerWrappers = info.GetValue(SerializationConsts.FLOAT_WRAPPER, typeof(ArrayList)) as ArrayList;
		}
		if (hashtable.Contains(SerializationConsts.MDIZORDER))
		{
			m_zOrderArray = info.GetValue(SerializationConsts.MDIZORDER, typeof(ArrayList)) as ArrayList;
		}
		if (hashtable.Contains(SerializationConsts.AHONLOAD))
		{
			m_autohideOnLoad = info.GetValue(SerializationConsts.AHONLOAD, typeof(ArrayList)) as ArrayList;
		}
		hashtable.Clear();
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("HTDockingMgrSerializer", htDHCWrapper);
		info.AddValue(SerializationConsts.WRAPPER, controllerWrapper, typeof(ControllerWrapper));
		info.AddValue(SerializationConsts.FLOAT_WRAPPER, ffControllerWrappers, typeof(ArrayList));
		info.AddValue(SerializationConsts.MDIZORDER, m_zOrderArray, typeof(ArrayList));
		info.AddValue(SerializationConsts.AHONLOAD, m_autohideOnLoad, typeof(ArrayList));
	}

	public DockingMgrSerializationWrapperAdv(DockingManager dmgr)
	{
		ArrayList dockAreaControllers = dmgr.DockAreaControllers;
		if (dmgr.MdiZOrder.Count == 0)
		{
			dmgr.SaveMdiZOrder();
		}
		m_zOrderArray = new ArrayList(dmgr.MdiZOrder);
		dmgr.MdiZOrder.Clear();
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
		ffControllerWrappers = dmgr.GetFloatingWrapper();
		m_autohideOnLoad = dmgr.GetAhOnLoadList();
	}
}
