using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public sealed class DHCSerializationWrapper : ISerializable
{
	public string uniqueName;

	public string strName;

	public string strLabel = string.Empty;

	public DockInfo dockInfoPrevious = DockInfo.NullInfo;

	public DockInfo dockInfoCurrent = DockInfo.NullInfo;

	public ArrayList alDockDCR = new ArrayList();

	public ArrayList alFloatDCR = new ArrayList();

	public ArrayList tabSiblings = new ArrayList();

	public bool bDockVisibility;

	public bool bAutoHideMode;

	public bool bFloatOnly;

	public bool bInMDIMode;

	public bool bSelectedPage;

	public Size ctrlSize = Size.Empty;

	public Size layoutSize = Size.Empty;

	public int autoHideIndex = -1;

	public DockingStyle dockEdge = DockingStyle.Fill;

	public Point ctrlLocation = Point.Empty;

	public bool previousFloat;

	public FloatingForm sharedForm;

	public bool maximized;

	public int imageIndex = -1;

	public int dockAbility = -1;

	public int outerDockAbility = -1;

	public DockingStyle prevAHStyle = DockingStyle.None;

	public bool bFreezeResize;

	public bool bAllowFloating = true;

	public Rectangle transientRect = Rectangle.Empty;

	public FormWindowState windowState;

	public ArrayList m_storedDockSizes = new ArrayList();

	public ArrayList m_storedFloatSizes = new ArrayList();

	private DHCSerializationWrapper()
	{
	}

	public DHCSerializationWrapper(DockHostController dhc)
	{
		bool flag = false;
		Control control;
		if (dhc.HostControl.Controls.Count > 0)
		{
			control = dhc.HostControl.Controls[0];
		}
		else
		{
			control = dhc.ctrlReference;
			flag = true;
		}
		if (dhc.DockingManager.DesignMode)
		{
			strName = TypeDescriptor.GetComponentName(control);
		}
		else
		{
			strName = control.Name;
		}
		strLabel = dhc.HostControl.Text;
		alDockDCR = dhc.DockDCRList;
		alFloatDCR = dhc.FloatDCRList;
		bDockVisibility = dhc.DockVisibility;
		bAutoHideMode = dhc.AutoHideMode;
		if (!bDockVisibility)
		{
			bAutoHideMode = bAutoHideMode || dhc.AutoHiddedBeforeHide;
		}
		bFloatOnly = dhc.FloatOnly;
		bInMDIMode = dhc.MdiChildState || dhc.bInMDIMode;
		if (dhc.PrevWrapper != null && (!dhc.DockVisibility || dhc.bInMDIMode))
		{
			previousFloat = dhc.PrevWrapper.Floating;
		}
		sharedForm = dhc.SharedForm;
		prevAHStyle = dhc.PrevAutohideStyle;
		transientRect = dhc.DITransient.rcDockArea;
		if (!dhc.DockVisibility || dhc.bInMDIMode)
		{
			if (dhc.PrevWrapper != null && dhc.PrevWrapper.DockRelationControllers.Count > 0)
			{
				foreach (DockHostController dockRelationController in dhc.PrevWrapper.DockRelationControllers)
				{
					tabSiblings.Add(dockRelationController.UniqueName);
				}
			}
		}
		else if (dhc.AutoHideMode && !(dhc.ParentController is DockTabController) && dhc.InternalDockWrapper != null && dhc.InternalDockWrapper.DockRelationControllers.Count > 0)
		{
			foreach (DockHostController dockRelationController2 in dhc.InternalDockWrapper.DockRelationControllers)
			{
				if ((!dockRelationController2.AutoHideMode && dockRelationController2.DockVisibility && !dockRelationController2.Floating) || dockRelationController2 == dhc)
				{
					tabSiblings.Add(dockRelationController2.UniqueName);
				}
			}
		}
		if (dhc.bInAutoHide)
		{
			layoutSize = dhc.DINew.rcDockArea.Size;
		}
		else
		{
			layoutSize = dhc.LayoutRect.Size;
		}
		if (flag)
		{
			ctrlSize = control.Parent.Size;
			ctrlLocation = control.Parent.Location;
		}
		else if (dhc.MdiChildState)
		{
			ctrlSize = dhc.MdiChildBounds.Size;
			ctrlLocation = dhc.MdiChildBounds.Location;
		}
		else
		{
			ctrlSize = control.Size;
			ctrlLocation = Point.Empty;
		}
		autoHideIndex = dhc.AutoHideIndex;
		bSelectedPage = dhc.IsSelectedTabPage;
		uniqueName = dhc.UniqueName;
		dockEdge = dhc.DockEdge;
		maximized = dhc.Maximized;
		imageIndex = dhc.ImageIndex;
		windowState = dhc.MdiWindowState;
		Control control2 = dhc.ctrlReference;
		if (control2 == null && dhc.HostControl.Controls.Count > 0)
		{
			control2 = dhc.HostControl.Controls[0];
		}
		dockAbility = (int)dhc.DockingManager.GetDockAbility(control2);
		outerDockAbility = (int)dhc.DockingManager.GetOuterDockAbility(control2);
		bFreezeResize = dhc.FreezeResize;
		bAllowFloating = dhc.AllowFloating;
		m_storedDockSizes = dhc.StoredDockSizes.Clone() as ArrayList;
		m_storedFloatSizes = dhc.StoredFloatSizes.Clone() as ArrayList;
	}

	private bool GetBoolean(Hashtable hashtable, string key)
	{
		object obj = hashtable[key];
		if (obj.GetType() == typeof(bool))
		{
			return (bool)obj;
		}
		string text = (string)obj;
		if (!(text == "true"))
		{
			return false;
		}
		return true;
	}

	private int GetInterger(Hashtable hashtable, string key)
	{
		object obj = hashtable[key];
		if (obj.GetType() == typeof(int))
		{
			return (int)obj;
		}
		string s = (string)obj;
		return int.Parse(s);
	}

	private DHCSerializationWrapper(SerializationInfo info, StreamingContext context)
	{
		strName = info.GetString("DHCName");
		try
		{
			Hashtable hashtable = new Hashtable();
			SerializationInfoEnumerator enumerator = info.GetEnumerator();
			while (enumerator.MoveNext())
			{
				hashtable.Add(enumerator.Name, enumerator.Value);
			}
			strLabel = (string)hashtable["DHCLabel"];
			dockInfoPrevious = (DockInfo)hashtable["PreviousDI"];
			dockInfoCurrent = (DockInfo)hashtable["CurrentDI"];
			alDockDCR = (ArrayList)hashtable["DockDCRList"];
			alFloatDCR = (ArrayList)hashtable["FloatDCRList"];
			bDockVisibility = GetBoolean(hashtable, "DockVisibility");
			bAutoHideMode = GetBoolean(hashtable, "AutoHideMode");
			bFloatOnly = GetBoolean(hashtable, "FloatOnly");
			bInMDIMode = GetBoolean(hashtable, "MDIMode");
			ctrlSize = (Size)hashtable["ControlSize"];
			layoutSize = (Size)hashtable["LayoutSize"];
			if (hashtable.Contains("PreviousFloat"))
			{
				previousFloat = GetBoolean(hashtable, "PreviousFloat");
			}
			if (hashtable.Contains("AutoHideIndex"))
			{
				autoHideIndex = GetInterger(hashtable, "AutoHideIndex");
			}
			else
			{
				autoHideIndex = -1;
			}
			if (hashtable.Contains("IsSelectedPage"))
			{
				bSelectedPage = GetBoolean(hashtable, "IsSelectedPage");
			}
			if (hashtable.Contains("UniqueName"))
			{
				uniqueName = (string)hashtable["UniqueName"];
			}
			else
			{
				uniqueName = strName;
			}
			if (hashtable.Contains("DockEdge"))
			{
				dockEdge = (DockingStyle)hashtable["DockEdge"];
			}
			if (hashtable.Contains("ControlLocation"))
			{
				ctrlLocation = (Point)hashtable["ControlLocation"];
			}
			if (hashtable.Contains("Maximized"))
			{
				maximized = GetBoolean(hashtable, "Maximized");
			}
			if (hashtable.Contains("ImageIndex"))
			{
				imageIndex = GetInterger(hashtable, "ImageIndex");
			}
			else
			{
				imageIndex = -2;
			}
			if (hashtable.Contains("DockAbility"))
			{
				dockAbility = Convert.ToInt32(hashtable["DockAbility"]);
			}
			if (hashtable.Contains("OuterDockAbility"))
			{
				outerDockAbility = Convert.ToInt32(hashtable["OuterDockAbility"]);
			}
			if (hashtable.Contains("PrevAHStyle"))
			{
				prevAHStyle = (DockingStyle)hashtable["PrevAHStyle"];
			}
			if (hashtable.Contains("FreezeResize"))
			{
				bFreezeResize = GetBoolean(hashtable, "FreezeResize");
			}
			if (hashtable.Contains("TabSiblings"))
			{
				tabSiblings = (ArrayList)hashtable["TabSiblings"];
			}
			if (hashtable.Contains("AllowFloating"))
			{
				bAllowFloating = GetBoolean(hashtable, "AllowFloating");
			}
			if (hashtable.Contains("TransientRectangle"))
			{
				transientRect = (Rectangle)hashtable["TransientRectangle"];
			}
			if (hashtable.Contains("FormWindowState"))
			{
				windowState = (FormWindowState)hashtable["FormWindowState"];
			}
			if (hashtable.Contains("StoredDockSizes"))
			{
				m_storedDockSizes = (ArrayList)hashtable["StoredDockSizes"];
			}
			if (hashtable.Contains("StoredFloatSizes"))
			{
				m_storedFloatSizes = (ArrayList)hashtable["StoredFloatSizes"];
			}
		}
		catch (Exception)
		{
		}
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("DHCName", strName);
		info.AddValue("DHCLabel", strLabel);
		info.AddValue("PreviousDI", dockInfoPrevious, typeof(DockInfo));
		info.AddValue("CurrentDI", dockInfoCurrent, typeof(DockInfo));
		info.AddValue("DockDCRList", alDockDCR, typeof(ArrayList));
		info.AddValue("FloatDCRList", alFloatDCR, typeof(ArrayList));
		info.AddValue("DockVisibility", bDockVisibility);
		info.AddValue("AutoHideMode", bAutoHideMode);
		info.AddValue("FloatOnly", bFloatOnly);
		info.AddValue("MDIMode", bInMDIMode);
		info.AddValue("ControlSize", ctrlSize, typeof(Size));
		info.AddValue("ControlLocation", ctrlLocation, typeof(Point));
		info.AddValue("LayoutSize", layoutSize, typeof(Size));
		info.AddValue("AutoHideIndex", autoHideIndex);
		info.AddValue("IsSelectedPage", bSelectedPage);
		info.AddValue("UniqueName", uniqueName);
		info.AddValue("DockEdge", dockEdge);
		info.AddValue("PreviousFloat", previousFloat);
		info.AddValue("Maximized", maximized);
		info.AddValue("ImageIndex", imageIndex);
		info.AddValue("DockAbility", dockAbility);
		info.AddValue("OuterDockAbility", outerDockAbility);
		info.AddValue("PrevAHStyle", prevAHStyle);
		info.AddValue("FreezeResize", bFreezeResize);
		info.AddValue("TabSiblings", tabSiblings);
		info.AddValue("AllowFloating", bAllowFloating);
		info.AddValue("TransientRectangle", transientRect);
		info.AddValue("FormWindowState", windowState);
		info.AddValue("StoredDockSizes", m_storedDockSizes, typeof(ArrayList));
		info.AddValue("StoredFloatSizes", m_storedFloatSizes, typeof(ArrayList));
	}

	internal static DHCSerializationWrapper CloneByReflection(object objthis)
	{
		DHCSerializationWrapper dHCSerializationWrapper = new DHCSerializationWrapper();
		FieldInfo[] fields = objthis.GetType().GetFields();
		FieldInfo[] array = fields;
		foreach (FieldInfo fieldInfo in array)
		{
			switch (fieldInfo.Name)
			{
			case "strName":
				dHCSerializationWrapper.strName = fieldInfo.GetValue(objthis) as string;
				break;
			case "strLabel":
				dHCSerializationWrapper.strLabel = fieldInfo.GetValue(objthis) as string;
				break;
			case "dockInfoPrevious":
				dHCSerializationWrapper.dockInfoPrevious = DockInfo.CloneByReflection(fieldInfo.GetValue(objthis));
				break;
			case "dockInfoCurrent":
				dHCSerializationWrapper.dockInfoCurrent = DockInfo.CloneByReflection(fieldInfo.GetValue(objthis));
				break;
			case "alDockDCR":
			{
				dHCSerializationWrapper.alDockDCR = new ArrayList();
				ArrayList arrayList3 = fieldInfo.GetValue(objthis) as ArrayList;
				foreach (object item in arrayList3)
				{
					DCRelationship value3 = DCRelationship.CloneByReflection(item);
					dHCSerializationWrapper.alDockDCR.Add(value3);
				}
				break;
			}
			case "alFloatDCR":
			{
				dHCSerializationWrapper.alFloatDCR = new ArrayList();
				ArrayList arrayList2 = fieldInfo.GetValue(objthis) as ArrayList;
				foreach (object item2 in arrayList2)
				{
					DCRelationship value2 = DCRelationship.CloneByReflection(item2);
					dHCSerializationWrapper.alFloatDCR.Add(value2);
				}
				break;
			}
			case "bDockVisibility":
				dHCSerializationWrapper.bDockVisibility = (bool)fieldInfo.GetValue(objthis);
				break;
			case "bAutoHideMode":
				dHCSerializationWrapper.bAutoHideMode = (bool)fieldInfo.GetValue(objthis);
				break;
			case "bFloatOnly":
				dHCSerializationWrapper.bFloatOnly = (bool)fieldInfo.GetValue(objthis);
				break;
			case "bInMDIMode":
				dHCSerializationWrapper.bInMDIMode = (bool)fieldInfo.GetValue(objthis);
				break;
			case "ctrlSize":
				dHCSerializationWrapper.ctrlSize = (Size)fieldInfo.GetValue(objthis);
				break;
			case "layoutSize":
				dHCSerializationWrapper.layoutSize = (Size)fieldInfo.GetValue(objthis);
				break;
			case "autoHideIndex":
				dHCSerializationWrapper.autoHideIndex = (int)fieldInfo.GetValue(objthis);
				break;
			case "bSelectedPage":
				dHCSerializationWrapper.bSelectedPage = (bool)fieldInfo.GetValue(objthis);
				break;
			case "uniqueName":
				dHCSerializationWrapper.uniqueName = (string)fieldInfo.GetValue(objthis);
				break;
			case "DockEdge":
				dHCSerializationWrapper.dockEdge = (DockingStyle)fieldInfo.GetValue(objthis);
				break;
			case "previousFloat":
				dHCSerializationWrapper.previousFloat = (bool)fieldInfo.GetValue(objthis);
				break;
			case "maximized":
				dHCSerializationWrapper.maximized = (bool)fieldInfo.GetValue(objthis);
				break;
			case "imageIndex":
				dHCSerializationWrapper.imageIndex = (int)fieldInfo.GetValue(objthis);
				break;
			case "dockAbility":
				dHCSerializationWrapper.dockAbility = (int)fieldInfo.GetValue(objthis);
				break;
			case "outerDockAbility":
				dHCSerializationWrapper.outerDockAbility = (int)fieldInfo.GetValue(objthis);
				break;
			case "prevAHStyle":
				dHCSerializationWrapper.prevAHStyle = (DockingStyle)fieldInfo.GetValue(objthis);
				break;
			case "FreezeResize":
				dHCSerializationWrapper.bFreezeResize = (bool)fieldInfo.GetValue(objthis);
				break;
			case "FormWindowState":
				dHCSerializationWrapper.windowState = (FormWindowState)fieldInfo.GetValue(objthis);
				break;
			case "TabSiblings":
			{
				dHCSerializationWrapper.tabSiblings.Clear();
				ArrayList arrayList = fieldInfo.GetValue(objthis) as ArrayList;
				foreach (string item3 in arrayList)
				{
					string value = item3.Clone() as string;
					dHCSerializationWrapper.tabSiblings.Add(value);
				}
				break;
			}
			case "AllowFloating":
				dHCSerializationWrapper.bAllowFloating = (bool)fieldInfo.GetValue(objthis);
				break;
			case "TransientRectangle":
				dHCSerializationWrapper.transientRect = (Rectangle)fieldInfo.GetValue(objthis);
				break;
			case "StoredDockSizes":
				dHCSerializationWrapper.m_storedDockSizes = (ArrayList)fieldInfo.GetValue(objthis);
				break;
			case "StoredFloatSizes":
				dHCSerializationWrapper.m_storedFloatSizes = (ArrayList)fieldInfo.GetValue(objthis);
				break;
			}
		}
		return dHCSerializationWrapper;
	}
}
