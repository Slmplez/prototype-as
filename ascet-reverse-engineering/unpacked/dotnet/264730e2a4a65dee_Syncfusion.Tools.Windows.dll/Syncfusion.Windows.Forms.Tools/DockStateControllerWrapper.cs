using System.Collections;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DockStateControllerWrapper : DockStateControllerBase, IResizable
{
	private DockStateControllerBase m_ctrlRef;

	private Rectangle m_layoutRect = Rectangle.Empty;

	protected DockInfo m_dockRelation;

	protected ArrayList m_dockRelControllers = new ArrayList();

	protected Hashtable m_relations = new Hashtable();

	protected Minimization m_minimized = Minimization.None;

	protected Size m_controlSize = Size.Empty;

	internal Size ControlSize
	{
		get
		{
			return m_controlSize;
		}
		set
		{
			if (m_controlSize != value)
			{
				m_controlSize = value;
			}
		}
	}

	public DockStateControllerBase InternalControl
	{
		get
		{
			return m_ctrlRef;
		}
		set
		{
			if (m_ctrlRef != value)
			{
				m_ctrlRef = value;
				m_minimized = m_ctrlRef.Minimized;
			}
		}
	}

	public Hashtable Relations
	{
		get
		{
			return m_relations;
		}
		set
		{
			if (m_relations != value)
			{
				m_relations = value;
			}
		}
	}

	internal override Minimization Minimized
	{
		get
		{
			return m_minimized;
		}
		set
		{
			m_minimized = value;
		}
	}

	internal bool Valid
	{
		get
		{
			bool result = false;
			if (ParentController != null && ParentController.ChildControllers.Contains(this))
			{
				result = true;
			}
			return result;
		}
	}

	internal virtual ArrayList DockRelationControllers
	{
		get
		{
			return m_dockRelControllers;
		}
		set
		{
			if (m_dockRelControllers != value)
			{
				m_dockRelControllers = value;
			}
		}
	}

	public override bool Floating
	{
		get
		{
			bool result = false;
			if (dcParent != null)
			{
				result = dcParent.Floating;
			}
			return result;
		}
		set
		{
		}
	}

	public override Rectangle LayoutRect
	{
		get
		{
			return m_layoutRect;
		}
		set
		{
		}
	}

	public override Control HostControl => null;

	public override bool AutoHideMode
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	internal override bool FreezeResize
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	internal override Direction MustResize => Direction.Both;

	public override DockControllerBase RedockController(DockInfo di, bool bforcenew)
	{
		return null;
	}

	public override void CloseController()
	{
	}

	public DockStateControllerWrapper(DockingManager manager, DockStateControllerBase intControl)
		: base(manager)
	{
		InternalControl = intControl;
		if (intControl != null)
		{
			m_controlSize = intControl.LayoutRect.Size;
			m_minimized = intControl.Minimized;
			if (intControl.DICurrent.DP == DockPreference.Vertical)
			{
				m_layoutRect.Width = intControl.DICurrent.rcDockArea.Width;
			}
			else
			{
				m_layoutRect.Height = intControl.DICurrent.rcDockArea.Height;
			}
		}
	}

	protected internal override DockControllerBase QueryController(string uniqueName)
	{
		return null;
	}

	internal void RefreshSize()
	{
		if (ParentController is SizingController sizingController)
		{
			if (sizingController.DockingOrder == DockPreference.Vertical)
			{
				m_layoutRect.Size = new Size(sizingController.LayoutRect.Width, 0);
			}
			else
			{
				m_layoutRect.Size = new Size(0, sizingController.LayoutRect.Height);
			}
		}
	}

	public override void Refresh()
	{
	}

	internal override void AddWrapper(ControllerWrapper cw)
	{
		DockStateWrapper dockStateWrapper = new DockStateWrapper();
		Hashtable hashtable = new Hashtable();
		ArrayList arrayList = new ArrayList();
		if (InternalControl is DockHostController && m_dockRelControllers.Count < 2)
		{
			arrayList.Add((InternalControl as DockHostController).UniqueName);
		}
		else
		{
			foreach (DockHostController dockRelController in m_dockRelControllers)
			{
				if (dockRelController != null)
				{
					string uniqueName = dockRelController.UniqueName;
					arrayList.Add(uniqueName);
					if (m_relations.ContainsKey(dockRelController.UniqueName))
					{
						hashtable.Add(dockRelController.UniqueName, m_relations[dockRelController.UniqueName]);
					}
				}
			}
		}
		dockStateWrapper.InternalController = arrayList;
		dockStateWrapper.Relations = hashtable;
		dockStateWrapper.StoredLayoutSize = m_controlSize;
		cw.Children.Add(dockStateWrapper);
	}

	internal InternalDockStateWrapper GetDockStateWrapper()
	{
		InternalDockStateWrapper internalDockStateWrapper = new InternalDockStateWrapper();
		ArrayList arrayList = new ArrayList();
		if (InternalControl is DockHostController)
		{
			arrayList.Add((InternalControl as DockHostController).UniqueName);
		}
		else
		{
			foreach (string key in m_relations.Keys)
			{
				arrayList.Add(key);
			}
		}
		internalDockStateWrapper.InternalController = arrayList;
		internalDockStateWrapper.Relations = m_relations;
		return internalDockStateWrapper;
	}

	internal override void StoreControllers(ArrayList controllers)
	{
		base.StoreControllers(controllers);
		ParentController.RemoveChild(this);
	}

	public override bool IsTargetController(Point ptscreen)
	{
		return false;
	}

	public override void UpdateControl()
	{
	}

	public override void DockAsMDIChild()
	{
	}

	internal override bool IsFloatOnly()
	{
		return false;
	}

	public override void GetDockInfo(Control ctrl, Point pt, DockInfo di)
	{
	}

	public override void EnterAutoHideMode()
	{
	}

	public override void ExitAutoHideMode(bool bcloseonexit)
	{
	}

	internal override void SetAutohiddenControlSize(Size size)
	{
	}

	public Size CalculateSize(Size parentSize, Size newParentSize)
	{
		return Size.Empty;
	}

	public bool IsVerticallyResizable()
	{
		return false;
	}

	public bool IsHorizontallyResizable()
	{
		return false;
	}
}
