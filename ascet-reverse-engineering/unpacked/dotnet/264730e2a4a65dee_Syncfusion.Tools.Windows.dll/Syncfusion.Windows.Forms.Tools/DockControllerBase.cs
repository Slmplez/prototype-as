using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public abstract class DockControllerBase : IDisposable
{
	protected DockingManager m_PreviousDockingMgr;

	protected DockingManager dockingMgr;

	protected DockControllerBase dcParent;

	protected internal DockInfo dockInfoCurrent = DockInfo.NullInfo;

	protected int nDockBoundary = 15;

	protected bool bDeleting;

	protected DockControllerBase m_childWrapper;

	protected Minimization m_bMinimized = Minimization.None;

	protected bool m_bMaximized;

	private Direction m_mustResize = Direction.Both;

	protected DockInfo dockInfoTransient = DockInfo.NullInfo;

	protected Size minSize = new Size(0, 0);

	protected bool m_bAllowFloating = true;

	internal virtual bool AllowFloating
	{
		get
		{
			return m_bAllowFloating;
		}
		set
		{
			if (m_bAllowFloating != value)
			{
				m_bAllowFloating = value;
			}
		}
	}

	internal DockingManager PreviousDockingMgr
	{
		get
		{
			return m_PreviousDockingMgr;
		}
		set
		{
			if (m_PreviousDockingMgr != value)
			{
				m_PreviousDockingMgr = value;
			}
		}
	}

	public DockingManager DockingManager
	{
		get
		{
			return dockingMgr;
		}
		set
		{
			dockingMgr = value;
		}
	}

	internal virtual Minimization Minimized
	{
		get
		{
			return m_bMinimized;
		}
		set
		{
			m_bMinimized = value;
		}
	}

	internal virtual bool Maximized
	{
		get
		{
			return m_bMaximized;
		}
		set
		{
			m_bMaximized = value;
		}
	}

	public abstract Control HostControl { get; }

	public virtual bool Deleting
	{
		get
		{
			return bDeleting;
		}
		set
		{
			if (bDeleting != value)
			{
				bDeleting = value;
			}
		}
	}

	internal virtual DockControllerBase ChildWrapper
	{
		set
		{
			if (m_childWrapper != value)
			{
				m_childWrapper = value;
			}
		}
	}

	internal virtual ArrayList SiblingDCR => null;

	public virtual DockControllerBase ParentController
	{
		get
		{
			return dcParent;
		}
		set
		{
			dcParent = value;
		}
	}

	public virtual DockControllerBase ToplevelController
	{
		get
		{
			if (ParentController != null)
			{
				return ParentController.ToplevelController;
			}
			return this;
		}
	}

	internal virtual Direction MustResize
	{
		get
		{
			return m_mustResize;
		}
		set
		{
			if (m_mustResize != value)
			{
				m_mustResize = value;
			}
		}
	}

	public abstract Rectangle LayoutRect { get; set; }

	public virtual DockInfo DICurrent
	{
		get
		{
			return dockInfoCurrent;
		}
		set
		{
			dockInfoCurrent = value;
		}
	}

	public DockInfo DITransient
	{
		get
		{
			return dockInfoTransient;
		}
		set
		{
			dockInfoTransient = value;
		}
	}

	public int DockBoundary
	{
		get
		{
			return nDockBoundary;
		}
		set
		{
			nDockBoundary = value;
		}
	}

	public abstract bool Floating { get; set; }

	public virtual bool MainFormController
	{
		get
		{
			if (Floating || ParentController != null)
			{
				return false;
			}
			return true;
		}
	}

	public virtual int ChildCount => -1;

	public virtual int ChildHostCount => -1;

	public virtual IEnumerator DCR => null;

	public virtual DCRelationship DCRCurrent
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	public virtual IEnumerator ChildEnumerator => null;

	public virtual ArrayList ChildControllers => null;

	public virtual IEnumerator ChildHostEnumerator => null;

	public virtual Size MinimumSize
	{
		get
		{
			return minSize;
		}
		set
		{
			if (minSize != value)
			{
				minSize = value;
			}
		}
	}

	public event ControllerChangedEH ControllerChanged;

	public virtual void Refresh()
	{
		if (ParentController == null || dockingMgr.ForbidWrapperLogic)
		{
			return;
		}
		DockControllerBase parentController = ParentController;
		if (!parentController.ChildControllers.Contains(this))
		{
			return;
		}
		if (ChildCount == 0)
		{
			parentController.RemoveChild(this);
			parentController.Refresh();
		}
		else if (ChildCount == 1 && !(ToplevelController is SizingController) && !(ParentController is MainFormController))
		{
			DockControllerBase dockControllerBase = ChildControllers[0] as DockControllerBase;
			RemoveChild(dockControllerBase);
			parentController.ReplaceChild(this, dockControllerBase);
			if (m_childWrapper != null)
			{
				m_childWrapper.ParentController = parentController;
			}
			ParentController = null;
			parentController.Refresh();
		}
	}

	protected internal virtual DockControllerBase QueryController(string uniqueName)
	{
		DockControllerBase dockControllerBase = null;
		foreach (DockControllerBase childController in ChildControllers)
		{
			if (childController != null)
			{
				dockControllerBase = childController.QueryController(uniqueName);
			}
			if (dockControllerBase != null)
			{
				break;
			}
		}
		return dockControllerBase;
	}

	internal virtual void RemoveDockController()
	{
		if (HostControl != null)
		{
			ToplevelController.HostControl.Controls.Remove(HostControl);
		}
		if (ChildControllers != null)
		{
			ArrayList arrayList = new ArrayList(ChildControllers);
			foreach (DockControllerBase item in arrayList)
			{
				item.RemoveDockController();
			}
		}
		if (ParentController != null)
		{
			ParentController.RemoveChild(this);
		}
	}

	protected DockControllerBase(DockingManager mgr)
	{
		dockingMgr = mgr;
	}

	~DockControllerBase()
	{
		Dispose(bdispose: false);
	}

	public virtual void AddToDCR(DCRelationship dcr)
	{
	}

	public virtual void RemoveFromDCR(DCRelationship dcr)
	{
	}

	public virtual void InsertIntoDCR(ArrayList al, int nindex, DCRelationship dcr)
	{
	}

	public virtual void UpdateDCRIndex(DCRelationship dcrs)
	{
	}

	public virtual bool IsTargetController(Point ptscreen)
	{
		if (HostControl.Visible && HostControl.RectangleToScreen(HostControl.ClientRectangle).Contains(ptscreen))
		{
			return true;
		}
		return false;
	}

	public virtual bool IsTargetController(Control ctrl)
	{
		if (!HostControl.Equals(ctrl))
		{
			return false;
		}
		return true;
	}

	public virtual void AddChild(DockControllerBase dc, DockingStyle db)
	{
	}

	public virtual void InsertChild(DockControllerBase dc, int index, DockingStyle db)
	{
	}

	public virtual void RemoveChild(DockControllerBase dc)
	{
	}

	public virtual void ReplaceChild(DockControllerBase dccurrent, DockControllerBase dcnew)
	{
	}

	public virtual DockControllerBase GetChildAt(int index)
	{
		return null;
	}

	public virtual int GetChildHostIndex(DockControllerBase child)
	{
		return -1;
	}

	public virtual void AdjustLayout()
	{
	}

	public abstract void GetDockInfo(Control ctrl, Point pt, DockInfo di);

	public virtual bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		return false;
	}

	public virtual void CloseController()
	{
	}

	public void FireControllerChanged(DockInfo newdi, DCRelationship dcr)
	{
		OnControllerChanged(new ControllerChangedEventArgs(newdi, dcr));
	}

	public virtual void InvokeDocking(DockControllerBase dc)
	{
	}

	public virtual void InvokePrevDockFloatTransition(bool showFloating)
	{
	}

	public virtual DockControllerBase RedockController(DockInfo di, bool bforcenew)
	{
		return null;
	}

	public virtual bool AttemptDCRDocking(DockControllerBase dc, IEnumerator iedcr)
	{
		return false;
	}

	public virtual void InvokeDCRDocking(DockControllerBase dc, DCRelationship dcr)
	{
	}

	public virtual bool QueryRelationship(DCRelationship dcr)
	{
		return false;
	}

	protected ControllerDCRPair IterChildControllers(DockControllerBase dc, DCRelationship dcr)
	{
		if (dc.QueryRelationship(dcr))
		{
			return new ControllerDCRPair(dc, dcr);
		}
		if (dc.ChildCount <= 0)
		{
			return null;
		}
		for (int i = 0; i < dc.ChildCount; i++)
		{
			ControllerDCRPair controllerDCRPair = IterChildControllers(dc.GetChildAt(i), dcr);
			if (controllerDCRPair != null)
			{
				return controllerDCRPair;
			}
		}
		return null;
	}

	protected void ComputeLRTBBorders(Rectangle rcmain, int nboundary, ref Rectangle[] rc)
	{
		if (rc == null)
		{
			rc = new Rectangle[4];
		}
		ref Rectangle reference = ref rc[0];
		reference = new Rectangle(rcmain.Left, rcmain.Top, nboundary, rcmain.Height);
		ref Rectangle reference2 = ref rc[1];
		reference2 = new Rectangle(rcmain.Left, rcmain.Top, rcmain.Width, nboundary);
		ref Rectangle reference3 = ref rc[2];
		reference3 = new Rectangle(rcmain.Right - nboundary, rcmain.Top, nboundary, rcmain.Height);
		ref Rectangle reference4 = ref rc[3];
		reference4 = new Rectangle(rcmain.Left, rcmain.Bottom - nboundary, rcmain.Width, nboundary);
	}

	protected virtual void OnControllerChanged(ControllerChangedEventArgs args)
	{
		if (this.ControllerChanged != null)
		{
			this.ControllerChanged(this, args);
		}
	}

	public void Dispose()
	{
		Dispose(bdispose: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool bdispose)
	{
	}

	internal virtual void AddWrapper(ControllerWrapper cw)
	{
	}

	internal virtual void StoreControllers(ArrayList controllers)
	{
	}

	internal virtual void ApplyWrapper(ControllerWrapper cw)
	{
	}

	internal virtual bool IsEqual(ControllerWrapper cw)
	{
		return false;
	}

	internal virtual void ResizeControllers(ControllerWrapper cw)
	{
	}

	public virtual void ApplyDockInfo()
	{
	}

	public virtual void MoveController()
	{
	}

	internal virtual void DockAsMDIChild(DockInfo dockInfo)
	{
	}

	internal abstract bool IsFloatOnly();

	public abstract void DockAsMDIChild();

	public abstract void UpdateControl();
}
