using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public abstract class DockStateControllerBase : DockControllerBase
{
	private int autoHideIndex = -1;

	private int m_previousAutoHideIndex = -1;

	protected DockInfo dockInfoNew = DockInfo.NullInfo;

	protected DockInfo dockInfoPrevious = DockInfo.NullInfo;

	private DockingStyle m_dockEdge = DockingStyle.Fill;

	protected FloatingForm m_form;

	protected DockStateControllerWrapper m_prevWrapper;

	protected FloatingForm m_sharedForm;

	protected internal DockStateControllerWrapper m_tempWrapper;

	protected Size m_prevFloatSize = Size.Empty;

	protected Size m_prevDockSize = Size.Empty;

	protected Point m_prevFloatLocation = Point.Empty;

	protected DockingStyle m_prevAHStyle = DockingStyle.None;

	protected bool bFreezeResize;

	protected ArrayList m_storedDockSizes;

	protected ArrayList m_storedFloatSizes;

	protected DockStateControllerWrapper m_releasedWrapper;

	private DockStateControllerWrapper m_dockWrap;

	private bool m_bForceSetWrapper;

	private DockStateControllerWrapper m_floatWrap;

	public bool bInAutoHide;

	public bool bAutoHideSizing;

	protected ArrayList m_storedSizes = new ArrayList();

	protected Minimization m_siblingMinimization = Minimization.None;

	internal Point PreviousFloatLocation
	{
		get
		{
			return m_prevFloatLocation;
		}
		set
		{
			if (m_prevFloatLocation != value)
			{
				m_prevFloatLocation = value;
			}
		}
	}

	internal Size PreviousFloatSize
	{
		get
		{
			return m_prevFloatSize;
		}
		set
		{
			if (m_prevFloatSize != value)
			{
				m_prevFloatSize = value;
			}
		}
	}

	internal Size PreviousDockSize
	{
		get
		{
			return m_prevDockSize;
		}
		set
		{
			if (m_prevDockSize != value)
			{
				m_prevDockSize = value;
			}
		}
	}

	internal DockStateControllerWrapper PrevWrapper
	{
		get
		{
			return m_prevWrapper;
		}
		set
		{
			if (m_prevWrapper != value)
			{
				m_prevWrapper = value;
			}
		}
	}

	internal DockingStyle PrevAutohideStyle
	{
		get
		{
			return m_prevAHStyle;
		}
		set
		{
			if (m_prevAHStyle != value)
			{
				m_prevAHStyle = value;
			}
		}
	}

	internal virtual FloatingForm InternalForm
	{
		get
		{
			return m_form;
		}
		set
		{
			if (m_form != value)
			{
				m_form = value;
			}
		}
	}

	internal virtual DockStateControllerWrapper TempWrapper
	{
		get
		{
			return m_tempWrapper;
		}
		set
		{
			if (m_tempWrapper != value)
			{
				m_tempWrapper = value;
			}
		}
	}

	internal virtual FloatingForm SharedForm
	{
		get
		{
			return m_sharedForm;
		}
		set
		{
			m_sharedForm = value;
		}
	}

	internal bool ForceSetWrapper
	{
		get
		{
			return m_bForceSetWrapper;
		}
		set
		{
			if (m_bForceSetWrapper != value)
			{
				m_bForceSetWrapper = value;
			}
		}
	}

	internal virtual bool FreezeResize
	{
		get
		{
			if (bFreezeResize)
			{
				return !base.DockingManager.ForbidFreeze;
			}
			return false;
		}
		set
		{
			if (bFreezeResize == value)
			{
				return;
			}
			bFreezeResize = value;
			if (value)
			{
				MustResize = Direction.None;
				return;
			}
			MustResize = Direction.Both;
			if (ParentController == null)
			{
				return;
			}
			foreach (DockControllerBase childController in ParentController.ChildControllers)
			{
				childController.DITransient.rcDockArea = Rectangle.Empty;
			}
		}
	}

	internal virtual DockStateControllerWrapper InternalDockWrapper
	{
		get
		{
			return m_dockWrap;
		}
		set
		{
			if (m_dockWrap != value)
			{
				if (m_dockWrap != null)
				{
					if (m_dockWrap.DockRelationControllers.Count != 0)
					{
						if (value != null)
						{
							m_dockWrap.DockRelationControllers.Remove(this);
						}
						else
						{
							m_releasedWrapper = m_dockWrap;
						}
					}
					DockControllerBase parentController = m_dockWrap.ParentController;
					if (parentController != null)
					{
						if (m_dockWrap.DockRelationControllers.Count == 0)
						{
							parentController.RemoveChild(m_dockWrap);
						}
						if (value != null && m_dockWrap.Relations.Count != 0 && value.ParentController == m_dockWrap.ParentController && !ForceSetWrapper)
						{
							ArrayList arrayList = new ArrayList(m_dockWrap.DockRelationControllers);
							value.Relations = m_dockWrap.Relations;
							value.DockRelationControllers = arrayList;
							foreach (DockStateControllerBase item in arrayList)
							{
								item.InternalDockWrapper = null;
								item.InternalDockWrapper = value;
							}
						}
						if (parentController is SizingController)
						{
							parentController.Refresh();
						}
					}
				}
				if (m_releasedWrapper != null && m_releasedWrapper != m_dockWrap && m_releasedWrapper.DockRelationControllers.Count != 0)
				{
					if (m_releasedWrapper != value)
					{
						m_releasedWrapper.DockRelationControllers.Remove(this);
					}
					m_releasedWrapper = null;
				}
				PrevAutohideStyle = DockingStyle.None;
				m_dockWrap = value;
			}
			m_prevWrapper = value;
		}
	}

	protected bool CanMaximize
	{
		get
		{
			SizingController sizingController = null;
			sizingController = ((!(ParentController is DockTabController)) ? (ParentController as SizingController) : (ParentController.ParentController as SizingController));
			SizingController topSizingController = GetTopSizingController(sizingController);
			bool result = sizingController != null && topSizingController.GetDockControllers().Count > 1 && !FreezeResize;
			if (ParentController is DockTabController { FreezeResize: not false })
			{
				result = false;
			}
			return result;
		}
	}

	internal virtual DockStateControllerWrapper InternalFloatWrapper
	{
		get
		{
			return m_floatWrap;
		}
		set
		{
			if (m_floatWrap != value)
			{
				if (m_floatWrap != null)
				{
					if (value != null && m_floatWrap.DockRelationControllers.Count != 0 && m_floatWrap.ParentController != null && m_floatWrap.ParentController != value.ParentController)
					{
						m_floatWrap.DockRelationControllers.Remove(this);
					}
					DockControllerBase parentController = m_floatWrap.ParentController;
					if (parentController != null)
					{
						if (m_floatWrap.DockRelationControllers.Count == 0)
						{
							parentController.RemoveChild(m_floatWrap);
						}
						DockControllerBase toplevelController = parentController.ToplevelController;
						if (value != null && m_floatWrap.Relations.Count != 0 && value.ParentController == m_floatWrap.ParentController)
						{
							ArrayList arrayList = new ArrayList(m_floatWrap.DockRelationControllers);
							value.Relations = m_floatWrap.Relations;
							value.DockRelationControllers = arrayList;
							foreach (DockStateControllerBase item in arrayList)
							{
								item.InternalFloatWrapper = null;
								item.InternalFloatWrapper = value;
							}
						}
						if (parentController is SizingController)
						{
							parentController.Refresh();
						}
						if (!(toplevelController is SizingController))
						{
							toplevelController.AdjustLayout();
						}
					}
				}
				m_floatWrap = value;
			}
			m_prevWrapper = value;
		}
	}

	public DockingStyle DockEdge
	{
		get
		{
			return m_dockEdge;
		}
		set
		{
			m_dockEdge = value;
		}
	}

	public int AutoHideIndex
	{
		get
		{
			return autoHideIndex;
		}
		set
		{
			autoHideIndex = value;
		}
	}

	public int PreviousAutoHideIndex
	{
		get
		{
			return m_previousAutoHideIndex;
		}
		set
		{
			if (m_previousAutoHideIndex != value)
			{
				m_previousAutoHideIndex = value;
			}
		}
	}

	public virtual DockInfo DINew
	{
		get
		{
			return dockInfoNew;
		}
		set
		{
			dockInfoNew = value;
		}
	}

	public virtual DockInfo DIPrevious
	{
		get
		{
			return dockInfoPrevious;
		}
		set
		{
			dockInfoPrevious = value;
		}
	}

	public virtual bool AutoHideMode
	{
		get
		{
			return bInAutoHide;
		}
		set
		{
			bInAutoHide = value;
		}
	}

	internal ArrayList StoredDockSizes
	{
		get
		{
			return m_storedDockSizes;
		}
		set
		{
			if (m_storedDockSizes != value)
			{
				m_storedDockSizes = value;
			}
		}
	}

	internal ArrayList StoredFloatSizes
	{
		get
		{
			return m_storedFloatSizes;
		}
		set
		{
			if (m_storedFloatSizes != value)
			{
				m_storedFloatSizes = value;
			}
		}
	}

	internal ArrayList StoredSizes
	{
		get
		{
			return m_storedSizes;
		}
		set
		{
			if (m_storedSizes != value)
			{
				m_storedSizes = value;
			}
		}
	}

	internal override bool Maximized
	{
		get
		{
			return base.Maximized;
		}
		set
		{
			base.Maximized = value;
		}
	}

	internal override Minimization Minimized
	{
		get
		{
			return m_bMinimized;
		}
		set
		{
			if (m_bMinimized == value)
			{
				return;
			}
			if (value != Minimization.None)
			{
				int num = 3;
				int toolWindowCaptionHeight;
				if (base.DockingManager.VisualStyle == VisualStyle.Default || base.DockingManager.VisualStyle == VisualStyle.VS2005)
				{
					toolWindowCaptionHeight = SystemInformation.ToolWindowCaptionHeight;
					toolWindowCaptionHeight += num;
				}
				else
				{
					toolWindowCaptionHeight = base.DockingManager.Renderer.CaptionWidth;
				}
				Size size = new Size(LayoutRect.Width, LayoutRect.Height);
				if (value == Minimization.Vertical)
				{
					size.Height = toolWindowCaptionHeight;
				}
				else
				{
					size.Width = toolWindowCaptionHeight;
				}
				LayoutRect = new Rectangle(LayoutRect.Location, size);
				base.DITransient.rcDockArea = LayoutRect;
			}
			m_bMinimized = value;
		}
	}

	protected internal virtual void PerformSizeCorrection(SizingController sc)
	{
		if (sc != null)
		{
			PerformSizeCorrection(sc, sc.DockingOrder);
		}
	}

	protected internal virtual void PerformSizeCorrection(SizingController sc, DockPreference preference)
	{
		if (sc != null)
		{
			if (preference == DockPreference.Horizontal)
			{
				int height = ((sc.GetDockControllers().Count == 0) ? LayoutRect.Height : sc.LayoutRect.Height);
				sc.LayoutRect = new Rectangle(sc.LayoutRect.Left, sc.LayoutRect.Top, sc.LayoutRect.Width + LayoutRect.Width, height);
			}
			else
			{
				int width = ((sc.GetDockControllers().Count == 0) ? LayoutRect.Width : sc.LayoutRect.Width);
				sc.LayoutRect = new Rectangle(sc.LayoutRect.Left, sc.LayoutRect.Top, width, sc.LayoutRect.Height + LayoutRect.Height);
			}
			sc.DITransient.rcDockArea = sc.LayoutRect;
			SizingController sizingController = sc.ParentController as SizingController;
			if ((!dockingMgr.DockToFill || sizingController == null || sizingController.ChildCount != 1 || !(sizingController.ParentController is MainFormController)) && sizingController != null && (sc.DockingOrder == sizingController.DockingOrder || sizingController.GetDockControllers().Count == 1))
			{
				SizingController sc2 = sc.ParentController as SizingController;
				PerformSizeCorrection(sc2);
			}
		}
	}

	protected DockStateControllerBase(DockingManager mgr)
		: base(mgr)
	{
		m_storedDockSizes = new ArrayList();
		m_storedFloatSizes = new ArrayList();
	}

	public abstract void EnterAutoHideMode();

	public abstract void ExitAutoHideMode(bool bcloseonexit);

	public virtual void TransientControllerChanged(object sender, ControllerChangedEventArgs e)
	{
		if (!sender.Equals(dockInfoTransient.dController))
		{
			return;
		}
		if (dockInfoTransient.dController != null)
		{
			dockInfoTransient.dController.ControllerChanged -= TransientControllerChanged;
		}
		DockInfo newDockInfo = e.NewDockInfo;
		if (newDockInfo.dController != null)
		{
			if (base.DockingManager.DockToFill)
			{
				bool flag = false;
				IEnumerator dCR = DCR;
				dCR.Reset();
				while (dCR.MoveNext())
				{
					flag = e.NewDockInfo.dController.QueryRelationship(dCR.Current as DCRelationship);
					if (flag)
					{
						break;
					}
				}
				if (!flag)
				{
					int hashCode = GetHashCode();
					DCRelationship dcr = new DCRelationship(hashCode, child: false, e.NewDockInfo.DP, e.NewDockInfo.nPriority);
					AddToDCR(dcr);
					e.NewDockInfo.dController.AddToDCR(dcr);
				}
			}
			dockInfoTransient = new DockInfo(newDockInfo.dController, newDockInfo.dStyle, newDockInfo.nPriority, dockInfoTransient.nDockIndex, newDockInfo.DP, newDockInfo.rcDockArea);
			newDockInfo.dController.ControllerChanged += TransientControllerChanged;
		}
		else
		{
			dockInfoTransient.dController = null;
			if (newDockInfo.rcDockArea.Width > 0 && newDockInfo.rcDockArea.Height > 0)
			{
				dockInfoTransient.rcDockArea = newDockInfo.rcDockArea;
			}
		}
	}

	internal virtual void RestoreController()
	{
		RestoreControllerInternal();
		m_storedSizes.Clear();
		Maximized = false;
		ToplevelController.AdjustLayout();
	}

	protected void RestoreControllerInternal()
	{
		DockControllerBase dockControllerBase = null;
		dockControllerBase = ((!(ParentController is DockTabController)) ? this : ParentController);
		DockControllerBase dockControllerBase2 = null;
		Size empty = Size.Empty;
		Size empty2 = Size.Empty;
		for (int i = 0; i < m_storedSizes.Count - 1; i++)
		{
			dockControllerBase2 = null;
			int num = -1;
			empty = (Size)m_storedSizes[i];
			empty2 = (Size)m_storedSizes[i + 1];
			if (dockControllerBase.ParentController != null)
			{
				num = dockControllerBase.ParentController.GetChildHostIndex(dockControllerBase);
				foreach (DockControllerBase childController in dockControllerBase.ParentController.ChildControllers)
				{
					childController.Minimized = Minimization.None;
				}
			}
			dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Location, empty);
			dockControllerBase.DITransient.rcDockArea = dockControllerBase.LayoutRect;
			if (dockControllerBase.ParentController != null && dockControllerBase.ParentController.ChildCount == 3)
			{
				dockControllerBase2 = ((num != 0) ? dockControllerBase.ParentController.GetChildAt(0) : dockControllerBase.ParentController.GetChildAt(2));
			}
			int splitterWidth = dockingMgr.SplitterWidth;
			if (m_siblingMinimization == Minimization.Vertical)
			{
				empty.Height = empty2.Height - empty.Height - splitterWidth;
			}
			else if (m_siblingMinimization == Minimization.Horizontal)
			{
				empty.Width = empty2.Width - empty.Width - splitterWidth;
			}
			if (dockControllerBase2 != null)
			{
				dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Location, empty);
				dockControllerBase2.DITransient.rcDockArea = dockControllerBase2.LayoutRect;
			}
			if (dockControllerBase.ParentController != null)
			{
				dockControllerBase = dockControllerBase.ParentController as SizingController;
			}
			if (dockControllerBase.ParentController == null)
			{
				break;
			}
		}
	}

	internal virtual void MaximizeController()
	{
		if (!(ParentController is SizingController sc))
		{
			return;
		}
		m_storedSizes.Clear();
		SizingController topSizingController = GetTopSizingController(sc);
		if (topSizingController.DockingOrder == DockPreference.Vertical)
		{
			m_siblingMinimization = Minimization.Vertical;
		}
		else if (topSizingController.DockingOrder == DockPreference.Horizontal)
		{
			m_siblingMinimization = Minimization.Horizontal;
		}
		ArrayList dockControllers = topSizingController.GetDockControllers();
		foreach (DockStateControllerBase item in dockControllers)
		{
			if (item.Maximized)
			{
				item.RestoreController();
			}
		}
		topSizingController.Minimized = Minimization.None;
		Maximized = true;
		Rectangle layoutRect = LayoutRect;
		m_storedSizes.Add(LayoutRect.Size);
		Size size = new Size(LayoutRect.Width, LayoutRect.Height);
		if (m_siblingMinimization == Minimization.Vertical)
		{
			size.Height = topSizingController.LayoutRect.Height;
		}
		else if (m_siblingMinimization == Minimization.Horizontal)
		{
			size.Width = topSizingController.LayoutRect.Width;
		}
		LayoutRect = new Rectangle(LayoutRect.Location, size);
		MaximizeControllerInternal(LayoutRect.Size);
		int num = 0;
		foreach (DockControllerBase childController in ParentController.ChildControllers)
		{
			if (childController != this)
			{
				num += ((topSizingController.DockingOrder == DockPreference.Vertical) ? childController.LayoutRect.Height : childController.LayoutRect.Width);
			}
		}
		if (m_siblingMinimization == Minimization.Vertical)
		{
			layoutRect.Height = ParentController.LayoutRect.Height - num;
		}
		else if (m_siblingMinimization == Minimization.Horizontal)
		{
			layoutRect.Width = ParentController.LayoutRect.Width - num;
		}
		base.DITransient.rcDockArea = layoutRect;
		topSizingController.AdjustLayout();
		base.DITransient.rcDockArea = LayoutRect;
	}

	internal void ExitMaxMinState()
	{
		DockStateControllerBase dockStateControllerBase = this;
		if (dockStateControllerBase.ParentController is DockTabController)
		{
			dockStateControllerBase = dockStateControllerBase.ParentController as DockStateControllerBase;
		}
		if (Maximized)
		{
			SizingController topSizingController = GetTopSizingController(dockStateControllerBase.ParentController as SizingController);
			dockStateControllerBase.Maximized = false;
			if (topSizingController != null)
			{
				topSizingController.Minimized = Minimization.None;
				topSizingController.AdjustLayout();
			}
		}
		else
		{
			dockStateControllerBase.Minimized = Minimization.None;
		}
	}

	protected virtual void MaximizeControllerInternal(Size size)
	{
		SizingController sizingController = ParentController as SizingController;
		DockControllerBase dockControllerBase = this;
		while (sizingController != null)
		{
			sizingController.PriorityController = dockControllerBase;
			m_storedSizes.Add(sizingController.LayoutRect.Size);
			Size size2 = new Size(sizingController.LayoutRect.Width, sizingController.LayoutRect.Height);
			if (m_siblingMinimization == Minimization.Vertical)
			{
				size2.Height = size.Height;
			}
			else if (m_siblingMinimization == Minimization.Horizontal)
			{
				size2.Width = size.Width;
			}
			sizingController.LayoutRect = new Rectangle(sizingController.LayoutRect.Location, size2);
			sizingController.DITransient.rcDockArea = sizingController.LayoutRect;
			sizingController.PriorityController = null;
			foreach (DockControllerBase childController in sizingController.ChildControllers)
			{
				if (childController != dockControllerBase)
				{
					bool flag = false;
					if (childController.ParentController == ParentController && ((sizingController.DockingOrder == DockPreference.Vertical && m_siblingMinimization == Minimization.Horizontal) || (sizingController.DockingOrder == DockPreference.Horizontal && m_siblingMinimization == Minimization.Vertical)))
					{
						flag = true;
					}
					if (!flag)
					{
						childController.Minimized = m_siblingMinimization;
					}
				}
			}
			dockControllerBase = sizingController;
			sizingController = sizingController.ParentController as SizingController;
			if (sizingController != null && sizingController.DockingOrder != (dockControllerBase as SizingController).DockingOrder && (dockControllerBase as SizingController).GetDockControllers().Count > 1)
			{
				sizingController = null;
			}
		}
	}

	protected virtual SizingController GetTopSizingController(SizingController sc)
	{
		if (sc == null)
		{
			return null;
		}
		SizingController sizingController = null;
		if (sc.ParentController is SizingController sizingController2 && (sizingController2.DockingOrder == sc.DockingOrder || sc.GetDockControllers().Count == 1))
		{
			return GetTopSizingController(sizingController2);
		}
		return sc;
	}

	internal override void ApplyWrapper(ControllerWrapper cw)
	{
	}

	internal abstract void SetAutohiddenControlSize(Size size);
}
