using System;
using System.Collections;
using System.Collections.Specialized;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class SizingController : DockControllerBase, IResizable
{
	private class LayoutResizer
	{
		private Point m_Location = Point.Empty;

		private SizingController m_Controller;

		private RectangleCollection rectangles = new RectangleCollection();

		private int ChildCount => m_Controller.ChildCount;

		private DockPreference Preference => m_Controller.DICurrent.DP;

		public Rectangle this[int index] => rectangles[index];

		public LayoutResizer(SizingController controller)
		{
			m_Controller = controller;
		}

		public void Calculate()
		{
			m_Location = m_Controller.LayoutRect.Location;
			Size redockSize = m_Controller.GetRedockSize();
			Size size = m_Controller.LayoutRect.Size;
			for (int i = 0; i < m_Controller.alChildren.Count; i++)
			{
				Rectangle value = new Rectangle(m_Location, (m_Controller.alChildren[i] as IResizable).CalculateSize(redockSize, m_Controller.LayoutRect.Size));
				if (m_Controller.DockingOrder == DockPreference.Vertical)
				{
					value.Width = size.Width;
				}
				else
				{
					value.Height = size.Height;
				}
				rectangles.Add(value);
				m_Location.Offset((Preference == DockPreference.Horizontal) ? value.Width : 0, (Preference == DockPreference.Vertical) ? value.Height : 0);
			}
			ProcessRemainderPixels();
			UpdateSplitterPositions();
		}

		private void ProcessRemainderPixels()
		{
			Point point = new Point((Preference == DockPreference.Horizontal) ? (m_Controller.LayoutRect.X + m_Controller.LayoutRect.Width - m_Location.X) : 0, (Preference == DockPreference.Vertical) ? (m_Controller.LayoutRect.Y + m_Controller.LayoutRect.Height - m_Location.Y) : 0);
			int count = m_Controller.alChildren.Count;
			if (point != Point.Empty)
			{
				IResizable resizable = (IResizable)m_Controller.alChildren[count - 1];
				Rectangle rectangle = rectangles[count - 1];
				if (resizable.IsHorizontallyResizable())
				{
					_ = rectangles[count - 1];
					rectangle.Inflate(point.X, 0);
				}
				else if (count > 1)
				{
					rectangles[count - 2].Inflate(point.X, 0);
					rectangle.Offset(point.X, 0);
				}
				if (resizable.IsVerticallyResizable())
				{
					_ = rectangles[count - 1];
					rectangle.Inflate(0, point.Y);
				}
				else if (count > 1)
				{
					rectangles[count - 2].Inflate(0, point.Y);
					rectangle.Offset(0, point.Y);
				}
			}
		}

		private void UpdateSplitterPositions()
		{
			if (m_Controller.alChildren[ChildCount - 1] is DragSplitterController && (m_Controller.DICurrent.dStyle == DockingStyle.Right || m_Controller.DICurrent.dStyle == DockingStyle.Bottom))
			{
				Rectangle value = rectangles[ChildCount - 1];
				Rectangle value2 = rectangles[ChildCount - 2];
				m_Location.X = value.X - value2.X;
				m_Location.Y = value.Y - value2.Y;
				value.X -= m_Location.X;
				value.Y -= m_Location.Y;
				if (Preference == DockPreference.Horizontal)
				{
					value2.X = value.X + value.Width;
				}
				if (Preference == DockPreference.Vertical)
				{
					value2.Y = value.Y + value.Height;
				}
				rectangles[ChildCount - 1] = value;
				rectangles[ChildCount - 2] = value2;
			}
		}
	}

	protected ArrayList alChildren = new ArrayList();

	protected DockPreference dpOrder = DockPreference.Horizontal;

	protected Control ctrlHost;

	protected DockControllerBase dcPriority;

	protected Rectangle rcLayout = Rectangle.Empty;

	protected DCRelationship currentRelationship;

	protected ArrayList alDCRShared = new ArrayList();

	protected IEnumerator ieSizing;

	public override ArrayList ChildControllers => alChildren;

	internal FloatingForm InternalForm
	{
		get
		{
			DockStateControllerBase dockStateControllerBase = null;
			ArrayList dockControllers = GetDockControllers();
			if (dockControllers.Count > 0)
			{
				dockStateControllerBase = dockControllers[0] as DockStateControllerBase;
			}
			return dockStateControllerBase?.InternalForm;
		}
		set
		{
			DockStateControllerBase dockStateControllerBase = null;
			ArrayList dockControllers = GetDockControllers();
			if (dockControllers.Count > 0)
			{
				dockStateControllerBase = dockControllers[0] as DockStateControllerBase;
			}
			if (dockStateControllerBase != null)
			{
				dockStateControllerBase.InternalForm = value;
			}
		}
	}

	public DockControllerBase PriorityController
	{
		get
		{
			return dcPriority;
		}
		set
		{
			dcPriority = value;
		}
	}

	public override Control HostControl => ctrlHost;

	public override Rectangle LayoutRect
	{
		get
		{
			return rcLayout;
		}
		set
		{
			if (Minimized == Minimization.Vertical)
			{
				value.Size = new Size(value.Size.Width, RefreshMinimizedHeight());
			}
			if (Minimized == Minimization.Horizontal)
			{
				value.Size = new Size(RefreshMinimizedHeight(), value.Size.Height);
			}
			Direction canResize = CanResize;
			if (canResize != Direction.Both && !IsHorizontallyResizable())
			{
				value.Size = new Size(LayoutRect.Width, value.Height);
			}
			if (canResize != Direction.Both && !IsVerticallyResizable())
			{
				value.Size = new Size(value.Width, LayoutRect.Height);
			}
			if (value.Width < 0)
			{
				value.Width = 0;
			}
			if (value.Height < 0)
			{
				value.Height = 0;
			}
			if (rcLayout != value)
			{
				rcLayout = value;
			}
			if (alChildren.Count > 0 && !base.DockingManager.LockUpdates)
			{
				AdjustLayout();
			}
		}
	}

	public override DockInfo DICurrent
	{
		get
		{
			return dockInfoCurrent;
		}
		set
		{
			dockInfoCurrent.dStyle = value.dStyle;
			dockInfoCurrent.dController = value.dController;
			dockInfoCurrent.nDockIndex = value.nDockIndex;
			dockInfoCurrent.DP = dpOrder;
			dockInfoCurrent.rcDockArea = value.rcDockArea;
		}
	}

	public override bool Floating
	{
		get
		{
			bool result = false;
			if (ParentController != null)
			{
				result = ParentController.Floating;
			}
			return result;
		}
		set
		{
		}
	}

	public override int ChildCount => alChildren.Count;

	public override int ChildHostCount
	{
		get
		{
			int num = 0;
			foreach (DockControllerBase alChild in alChildren)
			{
				if (!(alChild is DragSplitterController))
				{
					num++;
				}
			}
			return num;
		}
	}

	public override IEnumerator DCR => new IEnumWrapper(currentRelationship);

	public override IEnumerator ChildEnumerator => alChildren.GetEnumerator();

	public override DCRelationship DCRCurrent
	{
		get
		{
			return currentRelationship;
		}
		set
		{
			currentRelationship = value;
		}
	}

	public override IEnumerator ChildHostEnumerator
	{
		get
		{
			DockControllerBase[] array = new DockControllerBase[ChildHostCount];
			int num = 0;
			foreach (DockControllerBase alChild in alChildren)
			{
				if (!(alChild is DragSplitterController))
				{
					array[num++] = alChild;
				}
			}
			return array.GetEnumerator();
		}
	}

	public bool IsEmpty
	{
		get
		{
			bool result = true;
			foreach (DockControllerBase alChild in alChildren)
			{
				if (alChild is DockHostController || alChild is DockTabController)
				{
					result = false;
				}
				if (alChild is SizingController && !(alChild as SizingController).IsEmpty)
				{
					result = false;
				}
			}
			return result;
		}
	}

	internal override Minimization Minimized
	{
		get
		{
			return base.Minimized;
		}
		set
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.Minimized = value;
			}
			base.Minimized = value;
			if (value != Minimization.None)
			{
				int num = RefreshMinimizedHeight();
				if (value == Minimization.Vertical)
				{
					rcLayout.Height = num;
				}
				else
				{
					rcLayout.Width = num;
				}
				base.DITransient.rcDockArea = rcLayout;
			}
			bool flag = false;
			foreach (DockControllerBase alChild2 in alChildren)
			{
				if (alChild2.Maximized)
				{
					flag = true;
				}
			}
			if (flag)
			{
				return;
			}
			foreach (DockControllerBase alChild3 in alChildren)
			{
				if (alChild3 is DockTabController || alChild3 is DockHostController)
				{
					alChild3.Minimized = Minimization.None;
				}
			}
		}
	}

	public DockPreference DockingOrder => dpOrder;

	internal override bool Maximized
	{
		get
		{
			return base.Maximized;
		}
		set
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.Maximized = value;
			}
			base.Maximized = value;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			Size empty = Size.Empty;
			if (dpOrder == DockPreference.Horizontal)
			{
				foreach (DockControllerBase alChild in alChildren)
				{
					Size minimumSize = alChild.MinimumSize;
					empty.Width += minimumSize.Width;
					if (minimumSize.Height > empty.Height)
					{
						empty.Height = minimumSize.Height;
					}
				}
			}
			else
			{
				foreach (DockControllerBase alChild2 in alChildren)
				{
					Size minimumSize2 = alChild2.MinimumSize;
					empty.Height += minimumSize2.Height;
					if (minimumSize2.Width > empty.Width)
					{
						empty.Width = minimumSize2.Width;
					}
				}
			}
			return empty;
		}
	}

	internal Direction CanResize
	{
		get
		{
			Direction direction = Direction.Both;
			ArrayList arrayList = new ArrayList();
			foreach (DockControllerBase alChild in alChildren)
			{
				if (alChild is SizingController)
				{
					SizingController sizingController = alChild as SizingController;
					if (!sizingController.IsEmpty)
					{
						arrayList.Add(sizingController.CanResize);
					}
				}
				else if (alChild is DockStateControllerBase && !(alChild is DockStateControllerWrapper))
				{
					DockStateControllerBase dockStateControllerBase = alChild as DockStateControllerBase;
					if (dockStateControllerBase.FreezeResize)
					{
						arrayList.Add(dockStateControllerBase.MustResize);
					}
					else
					{
						arrayList.Add(Direction.Both);
					}
				}
			}
			if (IsEmpty)
			{
				direction = Direction.Both;
			}
			else
			{
				direction = Direction.None;
				bool flag = false;
				bool flag2 = false;
				if (arrayList.Count == 2)
				{
					for (int i = 0; i < arrayList.Count; i++)
					{
						Direction direction2 = (Direction)arrayList[i];
						if (DockingOrder == DockPreference.Horizontal)
						{
							if (direction2 == Direction.Both || direction2 == Direction.Horizontal)
							{
								flag2 = true;
							}
							if (direction2 == Direction.Both || direction2 == Direction.Vertical)
							{
								if (i == 0)
								{
									flag = true;
								}
							}
							else if (i == 1)
							{
								flag = false;
							}
							continue;
						}
						if (direction2 == Direction.Both || direction2 == Direction.Vertical)
						{
							flag = true;
						}
						if (direction2 == Direction.Both || direction2 == Direction.Horizontal)
						{
							if (i == 0)
							{
								flag2 = true;
							}
						}
						else if (i == 1)
						{
							flag2 = false;
						}
					}
					if (flag2)
					{
						direction |= Direction.Horizontal;
					}
					if (flag)
					{
						direction |= Direction.Vertical;
					}
				}
				else if (arrayList.Count == 1)
				{
					direction = (Direction)arrayList[0];
				}
			}
			if (ParentController == ToplevelController && !Floating)
			{
				direction = CorrectResizeDirection(direction);
			}
			return direction;
		}
	}

	internal override Direction MustResize
	{
		get
		{
			return Direction.Both;
		}
		set
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.MustResize = value;
			}
		}
	}

	protected internal ArrayList GetDockControllers()
	{
		ArrayList arrayList = new ArrayList();
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is SizingController)
			{
				arrayList.AddRange((alChild as SizingController).GetDockControllers());
			}
			else if ((alChild is DockHostController || alChild is DockTabController) && !alChild.Deleting)
			{
				arrayList.Add(alChild);
			}
		}
		if (arrayList.Contains(null))
		{
			arrayList.Remove(null);
		}
		return arrayList;
	}

	protected internal ArrayList GetResizableDockControllers()
	{
		ArrayList arrayList = new ArrayList();
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is SizingController)
			{
				arrayList.AddRange((alChild as SizingController).GetResizableDockControllers());
			}
			else if ((alChild is DockHostController || alChild is DockTabController) && !alChild.Deleting && !(alChild as DockStateControllerBase).FreezeResize)
			{
				arrayList.Add(alChild);
			}
		}
		if (arrayList.Contains(null))
		{
			arrayList.Remove(null);
		}
		return arrayList;
	}

	private int RefreshMinimizedHeight()
	{
		int num = 0;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (Minimized == Minimization.Vertical)
			{
				if (DockingOrder == DockPreference.Vertical)
				{
					num += alChild.LayoutRect.Height;
				}
				else if (alChild.LayoutRect.Height > num)
				{
					num = alChild.LayoutRect.Height;
				}
			}
			else if (Minimized == Minimization.Horizontal)
			{
				if (DockingOrder == DockPreference.Horizontal)
				{
					num += alChild.LayoutRect.Width;
				}
				else if (alChild.LayoutRect.Width > num)
				{
					num = alChild.LayoutRect.Width;
				}
			}
		}
		return num;
	}

	public SizingController(DockingManager mgr, Control ctrl, DockPreference dp)
		: base(mgr)
	{
		ctrlHost = ctrl;
		dpOrder = dp;
	}

	public void AddToDCRSharedList(DCRelationship dcr, bool baddtochildren)
	{
		foreach (DCRelationship item in alDCRShared)
		{
			if (item.nRelation == dcr.nRelation)
			{
				return;
			}
		}
		alDCRShared.Add(dcr);
		if (!baddtochildren)
		{
			return;
		}
		foreach (DockControllerBase alChild in alChildren)
		{
			alChild.AddToDCR(new DCRelationship(dcr.nRelation, child: true, dcr.DP, dcr.nIndex));
		}
	}

	public override void CloseController()
	{
		for (int i = 0; i < ChildCount; i++)
		{
			DockControllerBase dockControllerBase = alChildren[i] as DockControllerBase;
			if (!(dockControllerBase is DragSplitterController) && !(dockControllerBase is DockStateControllerWrapper))
			{
				dockControllerBase.CloseController();
			}
		}
	}

	public override void InvokeDocking(DockControllerBase dc)
	{
		DockStateControllerBase dockStateControllerBase = dc as DockStateControllerBase;
		dockingMgr.DockToSizingController(dockStateControllerBase);
		if (currentRelationship == null)
		{
			currentRelationship = new DCRelationship(GetHashCode(), child: false, dockInfoCurrent.DP, -1);
		}
		dockStateControllerBase.DCRCurrent = new DCRelationship(currentRelationship.nRelation, child: true, dockInfoCurrent.DP, GetChildHostIndex(dockStateControllerBase));
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is DockStateControllerBase dockStateControllerBase2 && dockStateControllerBase2 != dockStateControllerBase)
			{
				DCRelationship dcrs = new DCRelationship(currentRelationship.nRelation, child: true, dockInfoCurrent.DP, GetChildHostIndex(dockStateControllerBase2));
				dockStateControllerBase2.UpdateDCRIndex(dcrs);
			}
		}
		if (dc.DockingManager != dockingMgr)
		{
			dockingMgr.ImportControl(dc);
		}
	}

	public override bool QueryRelationship(DCRelationship dcr)
	{
		if (currentRelationship != null && currentRelationship.nRelation == dcr.nRelation && currentRelationship.DP == dcr.DP && currentRelationship.bChild != dcr.bChild)
		{
			return true;
		}
		if (alDCRShared.Count > 0)
		{
			foreach (DCRelationship item in alDCRShared)
			{
				if (item.nRelation == dcr.nRelation && item.DP == dcr.DP && item.bChild == dcr.bChild)
				{
					return true;
				}
			}
		}
		return false;
	}

	protected internal void GetChildDockHosts(ref ArrayList alDockHosts)
	{
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is SizingController sizingController)
			{
				sizingController.GetChildDockHosts(ref alDockHosts);
			}
			else if (alChild is DockTabController dockTabController)
			{
				foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
				{
					alDockHosts.Add(tabPage.dhcClient.HostControl);
				}
			}
			else if (alChild is DockHostController dockHostController)
			{
				alDockHosts.Add(dockHostController.HostControl);
			}
		}
	}

	public override bool AttemptDCRDocking(DockControllerBase ctrl, IEnumerator iedcr)
	{
		DockHostController dockHostController = ctrl as DockHostController;
		ControllerDCRPair controllerDCRPair = null;
		iedcr.Reset();
		while (iedcr.MoveNext())
		{
			controllerDCRPair = IterChildControllers(this, iedcr.Current as DCRelationship);
			if (controllerDCRPair != null)
			{
				dockHostController.DINew.dController = controllerDCRPair.Controller;
				dockHostController.DINew.DP = controllerDCRPair.DCR.DP;
				dockHostController.DINew.nDockIndex = controllerDCRPair.DCR.nIndex;
				dockHostController.DINew.dController.InvokeDCRDocking(dockHostController, controllerDCRPair.DCR);
				return true;
			}
		}
		if (!ParentController.MainFormController)
		{
			IEnumerator childHostEnumerator = ParentController.ChildHostEnumerator;
			while (childHostEnumerator.MoveNext())
			{
				DockControllerBase dockControllerBase = childHostEnumerator.Current as DockControllerBase;
				if (dockControllerBase != this && dockControllerBase.AttemptDCRDocking(ctrl, iedcr))
				{
					return true;
				}
			}
		}
		return false;
	}

	public override void InvokeDCRDocking(DockControllerBase dc, DCRelationship dcr)
	{
		DockHostController dockHostController = dc as DockHostController;
		if (currentRelationship.nRelation == dcr.nRelation && currentRelationship.DP == dcr.DP && dcr.bChild)
		{
			int num = 0;
			foreach (DockControllerBase alChild in alChildren)
			{
				IEnumerator dCR = alChild.DCR;
				DCRelationship dCRelationship = null;
				while (dCR.MoveNext())
				{
					dCRelationship = dCR.Current as DCRelationship;
					if (dCRelationship.nRelation == dcr.nRelation)
					{
						break;
					}
				}
				if (dCRelationship == null || dCRelationship.nIndex < dockHostController.DINew.nDockIndex)
				{
					num++;
					continue;
				}
				break;
			}
			dockHostController.DINew.nDockIndex = num;
			int num2 = ChildHostCount + 1;
			if (dockHostController.DINew.DP == DockPreference.Horizontal && dockHostController.DINew.rcDockArea.Width >= LayoutRect.Width / num2)
			{
				dockHostController.DINew.rcDockArea = new Rectangle(0, 0, LayoutRect.Width / num2, LayoutRect.Height);
			}
			else if (dockHostController.DINew.DP == DockPreference.Vertical && dockHostController.DINew.rcDockArea.Height >= LayoutRect.Height / num2)
			{
				dockHostController.DINew.rcDockArea = new Rectangle(0, 0, LayoutRect.Width, LayoutRect.Height / num2);
			}
			dockingMgr.DockToSizingController(dockHostController);
			return;
		}
		if (dcr.nIndex == 0)
		{
			dockHostController.DINew.dStyle = ((dockHostController.DINew.DP != DockPreference.Horizontal) ? DockingStyle.Top : DockingStyle.Left);
		}
		else
		{
			dockHostController.DINew.dStyle = ((dockHostController.DINew.DP == DockPreference.Horizontal) ? DockingStyle.Right : DockingStyle.Bottom);
		}
		int num3 = LayoutRect.Width - LayoutRect.Width / dockingMgr.MaxRedockFactor;
		int num4 = LayoutRect.Height - LayoutRect.Height / dockingMgr.MaxRedockFactor;
		if (dockHostController.DINew.DP == DockPreference.Horizontal && dockHostController.DINew.rcDockArea.Width > num3)
		{
			dockHostController.DINew.rcDockArea = new Rectangle(0, 0, num3, LayoutRect.Height);
		}
		else if (dockHostController.DINew.DP == DockPreference.Vertical && dockHostController.DINew.rcDockArea.Height > num4)
		{
			dockHostController.DINew.rcDockArea = new Rectangle(0, 0, LayoutRect.Width, num4);
		}
		dockingMgr.DockToNewSizingController(dockHostController);
		SizingController sizingController = ParentController as SizingController;
		sizingController.DCRCurrent = new DCRelationship(dcr.nRelation, child: false, sizingController.DICurrent.DP, -1);
		foreach (DCRelationship item in alDCRShared)
		{
			if (item.nRelation == sizingController.DCRCurrent.nRelation)
			{
				continue;
			}
			IEnumerator dCR2 = dockHostController.DCR;
			while (dCR2.MoveNext())
			{
				DCRelationship dCRelationship3 = dCR2.Current as DCRelationship;
				if (item.nRelation == dCRelationship3.nRelation && item.DP == dCRelationship3.DP && item.bChild == dCRelationship3.bChild)
				{
					sizingController.AddToDCRSharedList(new DCRelationship(item.nRelation, child: true, item.DP, -1), baddtochildren: false);
					break;
				}
			}
		}
	}

	public override void AddChild(DockControllerBase dcinternal, DockingStyle db)
	{
		if (db == DockingStyle.Left || db == DockingStyle.Top || db == DockingStyle.Fill)
		{
			InsertChild(dcinternal, alChildren.Count, db);
		}
		else
		{
			InsertChild(dcinternal, 0, db);
		}
	}

	private void RemoveRespectiveWrapper(DockControllerBase dhc)
	{
		if (!(dhc is DockHostController))
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is DockStateControllerWrapper)
			{
				arrayList.Add(alChild);
			}
		}
		foreach (DockStateControllerWrapper item in arrayList)
		{
			if (item.InternalControl == dhc)
			{
				alChildren.Remove(item);
			}
		}
	}

	public override void InsertChild(DockControllerBase dc, int index, DockingStyle db)
	{
		RemoveRespectiveWrapper(dc);
		ieSizing = null;
		if (index > alChildren.Count)
		{
			index = alChildren.Count;
		}
		if (!alChildren.Contains(dc))
		{
			bool flag = GetDockControllers().Count > 0;
			if (flag && dc is SizingController && (dc as SizingController).GetDockControllers().Count == 0 && db == DockingStyle.Fill)
			{
				flag = false;
			}
			alChildren.Insert(index, dc);
			dc.ParentController = this;
			if (flag || (ParentController == ToplevelController && (!IsEmpty || dockingMgr.ForbidWrapperLogic)))
			{
				InsertSplitter(dc, db);
			}
		}
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is DockStateControllerWrapper)
			{
				HideRelatedSplitter(alChild);
				break;
			}
		}
		int index2 = alChildren.IndexOf(dc);
		dc.DICurrent = new DockInfo(this, db, 0, index2, dpOrder, Rectangle.Empty);
		UpdateControlList();
	}

	private void InsertSplitter(DockControllerBase dc, DockingStyle db)
	{
		int num = alChildren.IndexOf(dc);
		DragSplitter dragSplitter = null;
		int index = 0;
		if (!(ParentController is MainFormController))
		{
			if (alChildren.Count == 2)
			{
				dragSplitter = CreateNewSplitter();
				if (num > 0)
				{
					DockControllerBase dockControllerBase = alChildren[num - 1] as DockControllerBase;
					index = ((!(dockControllerBase is DragSplitterController)) ? num : (num + 1));
				}
				else
				{
					index = 1;
				}
			}
		}
		else
		{
			index = num + 1;
			if (!dockingMgr.DockToFill)
			{
				dragSplitter = CreateNewSplitter();
			}
			else
			{
				bool flag = true;
				if (num == alChildren.Count - 1)
				{
					if (num == 0)
					{
						flag = false;
					}
					else
					{
						index = num;
					}
				}
				if (dc is DockStateControllerBase && (dc as DockStateControllerBase).bInAutoHide)
				{
					flag = true;
				}
				if (flag)
				{
					dragSplitter = CreateNewSplitter();
				}
			}
		}
		if (dragSplitter != null)
		{
			alChildren.Insert(index, dragSplitter.InternalController);
			dragSplitter.InternalController.DICurrent = new DockInfo(null, db, 0, index, dpOrder, ctrlHost.RectangleToScreen(dragSplitter.InternalController.LayoutRect));
			dockingMgr.AddController(dragSplitter.InternalController);
		}
	}

	protected DragSplitter CreateNewSplitter()
	{
		DragSplitter dragSplitter = new DragSplitter(dockingMgr);
		ctrlHost.Controls.Add(dragSplitter);
		dragSplitter.InternalController.ParentController = this;
		if (dpOrder == DockPreference.Horizontal)
		{
			if (!dockingMgr.FreezeResizing)
			{
				dragSplitter.Cursor = Cursors.VSplit;
			}
			dragSplitter.InternalController.LayoutRect = new Rectangle(0, 0, dockingMgr.SplitterWidth, rcLayout.Height);
		}
		else
		{
			if (!dockingMgr.FreezeResizing)
			{
				dragSplitter.Cursor = Cursors.HSplit;
			}
			dragSplitter.InternalController.LayoutRect = new Rectangle(0, 0, rcLayout.Width, dockingMgr.SplitterWidth);
		}
		return dragSplitter;
	}

	public override void RemoveChild(DockControllerBase dcinternal)
	{
		ieSizing = null;
		if (alChildren.Count > 1)
		{
			DragSplitterController neighborSplitter = GetNeighborSplitter(dcinternal);
			if (neighborSplitter != null)
			{
				dockingMgr.RemoveController(neighborSplitter);
				alChildren.Remove(neighborSplitter);
				DragSplitter dragSplitter = neighborSplitter.HostControl as DragSplitter;
				dragSplitter.Visible = false;
				ctrlHost.Controls.Remove(dragSplitter);
				dragSplitter.Dispose();
			}
		}
		try
		{
			alChildren.Remove(dcinternal);
			dcinternal.ParentController = null;
		}
		catch (ArgumentException)
		{
			return;
		}
		SizingController sizingController = ParentController as SizingController;
		bool flag = true;
		if (sizingController != null && sizingController.ChildControllers.Count > 2 && sizingController.ChildControllers[2] is DockTabController)
		{
			flag = false;
		}
		if (sizingController != null && alChildren.Count == 0 && !(dcinternal is DockTabController) && dcinternal.ParentController != null && flag)
		{
			sizingController.HideRelatedSplitter(this);
		}
		UpdateControlList();
	}

	private DragSplitterController GetNeighborSplitter(DockControllerBase dcinternal)
	{
		DragSplitterController result = null;
		int num = alChildren.IndexOf(dcinternal);
		if (alChildren.Count != 1)
		{
			num = ((ParentController is MainFormController) ? ((!dockingMgr.DockToFill) ? (num + 1) : ((num + 1 > alChildren.Count - 1) ? (num - 1) : (num + 1))) : ((num != alChildren.Count - 1) ? (num + 1) : (num - 1)));
			if (num + 1 <= alChildren.Count)
			{
				result = alChildren[num] as DragSplitterController;
			}
		}
		return result;
	}

	public override void ReplaceChild(DockControllerBase dccurrent, DockControllerBase dcnew)
	{
		ieSizing = null;
		int num = alChildren.IndexOf(dccurrent);
		if (num < 0)
		{
			return;
		}
		bool isEmpty = IsEmpty;
		dcnew.DICurrent = new DockInfo(dccurrent.DICurrent);
		alChildren[num] = dcnew;
		dcnew.ParentController = this;
		SizingController sizingController = ParentController as SizingController;
		while (sizingController != null && sizingController.IsEmpty)
		{
			sizingController = sizingController.ParentController as SizingController;
		}
		ToggleSplitterVisibility(dccurrent, dcnew, isEmpty);
		if (sizingController != null && !isEmpty && IsEmpty)
		{
			sizingController.AdjustLayout();
		}
		if (dcnew is DockStateControllerWrapper)
		{
			return;
		}
		if (LayoutRect.Height != 0 && LayoutRect.Width != 0)
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.DITransient.rcDockArea = alChild.LayoutRect;
			}
			return;
		}
		dcnew.DITransient.rcDockArea = dcnew.LayoutRect;
	}

	protected internal void ToggleSplitterVisibility(DockControllerBase dccurrent, DockControllerBase dcnew, bool empty)
	{
		if (dcnew is DockStateControllerWrapper && !(dccurrent is DockStateControllerWrapper))
		{
			HideRelatedSplitter(dcnew);
			if (IsEmpty)
			{
				SizingController sizingController = ParentController as SizingController;
				SizingController dcnew2 = this;
				while (sizingController != null && sizingController.ParentController is SizingController && sizingController.IsEmpty)
				{
					dcnew2 = sizingController;
					sizingController = sizingController.ParentController as SizingController;
				}
				sizingController?.HideRelatedSplitter(dcnew2);
			}
		}
		if ((!(dcnew is DockHostController) && !(dcnew is DockTabController)) || !(dccurrent is DockStateControllerWrapper))
		{
			return;
		}
		if (ParentController is MainFormController || !empty)
		{
			ShowRelatedSplitter(dcnew);
		}
		SizingController sizingController2 = this;
		SizingController dcnew3 = null;
		if (GetDockControllers().Count > 1)
		{
			sizingController2 = null;
		}
		while (sizingController2 != null)
		{
			if (!(sizingController2.ParentController is SizingController sizingController3))
			{
				if (base.DockingManager.DockToFill || Floating)
				{
					sizingController2 = null;
				}
				break;
			}
			dcnew3 = sizingController2;
			sizingController2 = sizingController3;
			if (sizingController3.GetDockControllers().Count > 1)
			{
				break;
			}
		}
		sizingController2?.ShowRelatedSplitter(dcnew3);
	}

	internal void ShowRelatedSplitter(DockControllerBase dcnew)
	{
		DragSplitterController neighborSplitter = GetNeighborSplitter(dcnew);
		if (neighborSplitter != null)
		{
			if (dpOrder == DockPreference.Vertical)
			{
				if (neighborSplitter.LayoutRect.Height == 0)
				{
					neighborSplitter.LayoutRect = new Rectangle(neighborSplitter.LayoutRect.Location, new Size(LayoutRect.Width, base.DockingManager.SplitterWidth));
					rcLayout.Height += base.DockingManager.SplitterWidth;
				}
			}
			else if (neighborSplitter.LayoutRect.Width == 0)
			{
				neighborSplitter.LayoutRect = new Rectangle(neighborSplitter.LayoutRect.Location, new Size(base.DockingManager.SplitterWidth, LayoutRect.Height));
				rcLayout.Width += base.DockingManager.SplitterWidth;
			}
		}
		else if (dcnew != null)
		{
			InsertSplitter(dcnew, dcnew.DICurrent.dStyle);
		}
	}

	internal void HideRelatedSplitter(DockControllerBase dcnew)
	{
		DragSplitterController neighborSplitter = GetNeighborSplitter(dcnew);
		if (neighborSplitter != null)
		{
			dockingMgr.RemoveController(neighborSplitter);
			alChildren.Remove(neighborSplitter);
			DragSplitter dragSplitter = neighborSplitter.HostControl as DragSplitter;
			dragSplitter.Visible = false;
			ctrlHost.Controls.Remove(dragSplitter);
			dragSplitter.Dispose();
		}
	}

	public override DockControllerBase GetChildAt(int index)
	{
		try
		{
			return alChildren[index] as DockControllerBase;
		}
		catch (ArgumentException)
		{
			return null;
		}
	}

	public override int GetChildHostIndex(DockControllerBase child)
	{
		int num = -1;
		if (!alChildren.Contains(child))
		{
			return num;
		}
		foreach (DockControllerBase alChild in alChildren)
		{
			if (!(alChild is DragSplitterController))
			{
				num++;
			}
			if (alChild.Equals(child))
			{
				break;
			}
		}
		return num;
	}

	protected void UpdateControlList()
	{
		int num = 0;
		foreach (DockControllerBase alChild in alChildren)
		{
			alChild.DICurrent.nDockIndex = num++;
			if (!base.DockingManager.m_bLoadingDockState)
			{
				alChild.DITransient.rcDockArea = Rectangle.Empty;
			}
		}
	}

	public override void GetDockInfo(Control ctrl, Point pt, DockInfo di)
	{
	}

	public override bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.HostControl != ctrldrop && !(alChild is DragSplitterController))
			{
				return alChild.QueryDropProceedWithDock(ctrldrop, style);
			}
		}
		return true;
	}

	public override void UpdateControl()
	{
	}

	public override void AdjustLayout()
	{
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.DITransient.rcDockArea == Rectangle.Empty)
			{
				alChild.DITransient.rcDockArea = alChild.LayoutRect;
			}
		}
		for (int i = 0; i < alChildren.Count; i++)
		{
			if (alChildren[i] is DockStateControllerWrapper dockStateControllerWrapper)
			{
				dockStateControllerWrapper.RefreshSize();
			}
		}
		LayoutResizer layoutResizer = new LayoutResizer(this);
		layoutResizer.Calculate();
		for (int j = 0; j < alChildren.Count; j++)
		{
			DockControllerBase dockControllerBase2 = (DockControllerBase)alChildren[j];
			dockControllerBase2.LayoutRect = layoutResizer[j];
		}
		if (dcPriority != null)
		{
			foreach (DockControllerBase alChild2 in alChildren)
			{
				bool flag = true;
				if ((alChild2.LayoutRect.Width == 0 || alChild2.LayoutRect.Height == 0) && (alChild2 is SizingController { IsEmpty: false } || (alChild2 is DockStateControllerBase && !(alChild2 is DockStateControllerWrapper))))
				{
					flag = false;
				}
				if (flag)
				{
					alChild2.DITransient.rcDockArea = Rectangle.Empty;
				}
			}
		}
		MustResize = Direction.None;
	}

	protected void AdjustLRLayout()
	{
		int count = alChildren.Count;
		int num = 0;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.DITransient.rcDockArea == Rectangle.Empty)
			{
				alChild.DITransient.rcDockArea = alChild.LayoutRect;
			}
			num += alChild.DITransient.rcDockArea.Width;
		}
		if (count > 0)
		{
			if (count > 1)
			{
				int num2 = LayoutRect.Width;
				if (dcPriority != null)
				{
					num2 -= dcPriority.LayoutRect.Width;
					num -= dcPriority.LayoutRect.Width;
				}
				int num3 = Math.Abs(num2 - num);
				if (ieSizing == null)
				{
					ieSizing = alChildren.GetEnumerator();
					ieSizing.MoveNext();
				}
				int num4 = 0;
				DockControllerBase dockControllerBase2 = null;
				bool flag = true;
				int num5 = 0;
				do
				{
					if (!ieSizing.MoveNext())
					{
						ieSizing.Reset();
						ieSizing.MoveNext();
					}
					while (ieSizing.Current is DragSplitterController)
					{
						if (!ieSizing.MoveNext())
						{
							ieSizing.Reset();
							ieSizing.MoveNext();
						}
					}
					DockControllerBase dockControllerBase3 = ieSizing.Current as DockControllerBase;
					if (dockControllerBase2 == null)
					{
						dockControllerBase2 = dockControllerBase3;
					}
					else if (dockControllerBase2 == dockControllerBase3)
					{
						if (!flag || num5 == 0)
						{
							break;
						}
						flag = false;
					}
					if (dcPriority == null || !dockControllerBase3.HostControl.Equals(dcPriority.HostControl))
					{
						int num6 = (int)((float)dockControllerBase3.DITransient.rcDockArea.Width / (float)num * (float)num2) + num5;
						if (dockControllerBase3.MinimumSize.Width != 0 && num6 <= dockControllerBase3.MinimumSize.Width && dockControllerBase3.LayoutRect.Width >= dockControllerBase3.MinimumSize.Width)
						{
							dockControllerBase3.LayoutRect = new Rectangle(dockControllerBase3.LayoutRect.X, dockControllerBase3.LayoutRect.Y, dockControllerBase3.MinimumSize.Width, dockControllerBase3.LayoutRect.Height);
							num5 += num6 - dockControllerBase3.LayoutRect.Width;
						}
						else
						{
							num5 = 0;
							num4 += Math.Abs(dockControllerBase3.LayoutRect.Width - num6);
							dockControllerBase3.LayoutRect = new Rectangle(dockControllerBase3.LayoutRect.X, dockControllerBase3.LayoutRect.Y, num6, dockControllerBase3.LayoutRect.Height);
						}
					}
				}
				while (num4 != num3 && (flag || num5 != 0));
				int num7 = 0;
				foreach (DockControllerBase alChild2 in alChildren)
				{
					num7 += alChild2.LayoutRect.Width;
				}
				if (num7 != LayoutRect.Width)
				{
					int num8 = LayoutRect.Width - num7;
					DockControllerBase dockControllerBase5 = alChildren[count - 1] as DockControllerBase;
					if (dockControllerBase5 is DragSplitterController)
					{
						dockControllerBase5 = alChildren[count - 2] as DockControllerBase;
					}
					int num9 = dockControllerBase5.LayoutRect.Width + num8;
					if (dockControllerBase5.MinimumSize.Width != 0 && num9 < dockControllerBase5.MinimumSize.Width)
					{
						foreach (DockControllerBase alChild3 in alChildren)
						{
							if (alChild3 == dockControllerBase5)
							{
								break;
							}
							if (!(alChild3 is DragSplitterController))
							{
								int num10 = alChild3.LayoutRect.Width + num8;
								if (alChild3.MinimumSize.Width == 0 || num10 >= alChild3.MinimumSize.Width)
								{
									dockControllerBase5 = alChild3;
									num9 = num10;
									break;
								}
							}
						}
					}
					dockControllerBase5.LayoutRect = new Rectangle(dockControllerBase5.LayoutRect.X, dockControllerBase5.LayoutRect.Y, num9, dockControllerBase5.LayoutRect.Height);
				}
			}
			else
			{
				DockControllerBase dockControllerBase7 = alChildren[0] as DockControllerBase;
				dockControllerBase7.LayoutRect = new Rectangle(dockControllerBase7.LayoutRect.X, dockControllerBase7.LayoutRect.Y, LayoutRect.Width, dockControllerBase7.LayoutRect.Height);
			}
		}
		int num11 = 0;
		for (int i = 0; i < count; i++)
		{
			DockControllerBase dockControllerBase8 = alChildren[i] as DockControllerBase;
			if (ParentController.MainFormController)
			{
				if (dockInfoCurrent.dStyle == DockingStyle.Right)
				{
					dockControllerBase8.LayoutRect = new Rectangle(LayoutRect.Right - num11 - dockControllerBase8.LayoutRect.Width, LayoutRect.Top, dockControllerBase8.LayoutRect.Width, LayoutRect.Height);
				}
				else
				{
					dockControllerBase8.LayoutRect = new Rectangle(LayoutRect.Left + num11, LayoutRect.Top, dockControllerBase8.LayoutRect.Width, LayoutRect.Height);
				}
			}
			else
			{
				dockControllerBase8.LayoutRect = new Rectangle(LayoutRect.Left + num11, LayoutRect.Top, dockControllerBase8.LayoutRect.Width, LayoutRect.Height);
			}
			num11 += dockControllerBase8.LayoutRect.Width;
		}
		if (dcPriority == null)
		{
			return;
		}
		foreach (DockControllerBase alChild4 in alChildren)
		{
			alChild4.DITransient.rcDockArea = Rectangle.Empty;
		}
	}

	protected void AdjustTBLayout()
	{
		int count = alChildren.Count;
		int num = 0;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.DITransient.rcDockArea == Rectangle.Empty)
			{
				alChild.DITransient.rcDockArea = alChild.LayoutRect;
			}
			num += alChild.DITransient.rcDockArea.Height;
		}
		if (count > 0)
		{
			if (count > 1)
			{
				int num2 = LayoutRect.Height;
				if (dcPriority != null)
				{
					num2 -= dcPriority.LayoutRect.Height;
					num -= dcPriority.LayoutRect.Height;
				}
				int num3 = Math.Abs(num2 - num);
				if (ieSizing == null)
				{
					ieSizing = alChildren.GetEnumerator();
					ieSizing.MoveNext();
				}
				int num4 = 0;
				DockControllerBase dockControllerBase2 = null;
				bool flag = true;
				int num5 = 0;
				do
				{
					if (!ieSizing.MoveNext())
					{
						ieSizing.Reset();
						ieSizing.MoveNext();
					}
					while (ieSizing.Current is DragSplitterController)
					{
						if (!ieSizing.MoveNext())
						{
							ieSizing.Reset();
							ieSizing.MoveNext();
						}
					}
					DockControllerBase dockControllerBase3 = ieSizing.Current as DockControllerBase;
					if (dockControllerBase2 == null)
					{
						dockControllerBase2 = dockControllerBase3;
					}
					else if (dockControllerBase2 == dockControllerBase3)
					{
						if (!flag || num5 == 0)
						{
							break;
						}
						flag = false;
					}
					if (dcPriority == null || !dockControllerBase3.HostControl.Equals(dcPriority.HostControl))
					{
						int num6 = (int)((float)dockControllerBase3.DITransient.rcDockArea.Height / (float)num * (float)num2);
						if (dockControllerBase3.MinimumSize.Height != 0 && num6 <= dockControllerBase3.MinimumSize.Height && dockControllerBase3.LayoutRect.Height >= dockControllerBase3.MinimumSize.Height)
						{
							dockControllerBase3.LayoutRect = new Rectangle(dockControllerBase3.LayoutRect.X, dockControllerBase3.LayoutRect.Y, dockControllerBase3.LayoutRect.Width, dockControllerBase3.MinimumSize.Height);
							num5 += num6 - dockControllerBase3.LayoutRect.Height;
						}
						else
						{
							num5 = 0;
							num4 += Math.Abs(dockControllerBase3.LayoutRect.Height - num6);
							dockControllerBase3.LayoutRect = new Rectangle(dockControllerBase3.LayoutRect.X, dockControllerBase3.LayoutRect.Y, dockControllerBase3.LayoutRect.Width, num6);
						}
					}
				}
				while (num4 != num3 && (flag || num5 != 0));
				int num7 = 0;
				foreach (DockControllerBase alChild2 in alChildren)
				{
					num7 += alChild2.LayoutRect.Height;
				}
				if (num7 != LayoutRect.Height)
				{
					DockControllerBase dockControllerBase5 = alChildren[count - 1] as DockControllerBase;
					if (dockControllerBase5 is DragSplitterController)
					{
						dockControllerBase5 = alChildren[count - 2] as DockControllerBase;
					}
					int num8 = LayoutRect.Height - num7;
					int num9 = dockControllerBase5.LayoutRect.Height + num8;
					if (dockControllerBase5.MinimumSize.Height != 0 && num9 < dockControllerBase5.MinimumSize.Height)
					{
						foreach (DockControllerBase alChild3 in alChildren)
						{
							if (alChild3 == dockControllerBase5)
							{
								break;
							}
							if (!(alChild3 is DragSplitterController))
							{
								int num10 = alChild3.LayoutRect.Height + num8;
								if (alChild3.MinimumSize.Height == 0 || num10 >= alChild3.MinimumSize.Height)
								{
									dockControllerBase5 = alChild3;
									num9 = num10;
									break;
								}
							}
						}
					}
					dockControllerBase5.LayoutRect = new Rectangle(dockControllerBase5.LayoutRect.X, dockControllerBase5.LayoutRect.Y, dockControllerBase5.LayoutRect.Width, num9);
				}
			}
			else
			{
				DockControllerBase dockControllerBase7 = alChildren[0] as DockControllerBase;
				dockControllerBase7.LayoutRect = new Rectangle(dockControllerBase7.LayoutRect.X, dockControllerBase7.LayoutRect.Y, dockControllerBase7.LayoutRect.Width, LayoutRect.Height);
			}
		}
		int num11 = 0;
		for (int i = 0; i < count; i++)
		{
			DockControllerBase dockControllerBase8 = alChildren[i] as DockControllerBase;
			if (ParentController.MainFormController)
			{
				if (dockInfoCurrent.dStyle == DockingStyle.Bottom)
				{
					dockControllerBase8.LayoutRect = new Rectangle(LayoutRect.Left, LayoutRect.Bottom - num11 - dockControllerBase8.LayoutRect.Height, LayoutRect.Width, dockControllerBase8.LayoutRect.Height);
				}
				else
				{
					dockControllerBase8.LayoutRect = new Rectangle(LayoutRect.Left, LayoutRect.Top + num11, LayoutRect.Width, dockControllerBase8.LayoutRect.Height);
				}
			}
			else
			{
				dockControllerBase8.LayoutRect = new Rectangle(LayoutRect.Left, LayoutRect.Top + num11, LayoutRect.Width, dockControllerBase8.LayoutRect.Height);
			}
			num11 += dockControllerBase8.LayoutRect.Height;
		}
		if (dcPriority == null)
		{
			return;
		}
		foreach (DockControllerBase alChild4 in alChildren)
		{
			alChild4.DITransient.rcDockArea = Rectangle.Empty;
		}
	}

	public override DockControllerBase RedockController(DockInfo di, bool bforcenew)
	{
		if (IsEmpty)
		{
			return null;
		}
		if (di.DP == DockPreference.Tabbed)
		{
			return DoRecTabbedRedocking(this, di);
		}
		Rectangle[] array = new Rectangle[ChildHostCount];
		int num = 0;
		for (int i = 0; i < alChildren.Count; i++)
		{
			ref Rectangle reference = ref array[num++];
			reference = (alChildren[i++] as DockControllerBase).LayoutRect;
		}
		num = 0;
		DockControllerBase dockControllerBase = alChildren[0] as DockControllerBase;
		DockControllerBase dockControllerBase2 = null;
		DockInfo di2 = new DockInfo(di);
		for (int j = 0; j < 2; j++)
		{
			dockControllerBase2 = ((alChildren.Count == 2) ? (alChildren[1] as DockControllerBase) : ((alChildren.Count <= 2) ? null : (alChildren[2] as DockControllerBase)));
			if (dockControllerBase == null)
			{
				break;
			}
			DockControllerBase dockControllerBase3 = dockControllerBase.RedockController(di2, bforcenew);
			if (j == 1)
			{
				return dockControllerBase3?.ParentController;
			}
			bforcenew = dockControllerBase3 is SizingController;
			num++;
			if (dockControllerBase3 != null)
			{
				Rectangle rc = Rectangle.Empty;
				if (!(dockControllerBase is SizingController) || !(dockControllerBase as SizingController).IsEmpty)
				{
					float num2 = (float)dockControllerBase3.LayoutRect.Width / (float)(array[num - 1].Width + array[num].Width);
					float num3 = (float)dockControllerBase3.LayoutRect.Height / (float)(array[num - 1].Height + array[num].Height);
					rc = new Rectangle(array[num].Left, array[num].Top, (int)((float)array[num].Width * num2), (int)((float)array[num].Height * num3));
				}
				if (num < 2)
				{
					DockingStyle ds = ((DICurrent.DP == DockPreference.Horizontal) ? DockingStyle.Right : DockingStyle.Bottom);
					di2 = new DockInfo(dockControllerBase3, ds, DICurrent.nPriority, num * 2 + 1, DICurrent.DP, rc);
				}
				else
				{
					di2 = new DockInfo(dockControllerBase3.ParentController, dockControllerBase2.DICurrent.dStyle, DICurrent.nPriority, num * 2 + 1, DICurrent.DP, rc);
				}
			}
			dockControllerBase = dockControllerBase2;
		}
		return null;
	}

	protected DockControllerBase DoRecTabbedRedocking(DockControllerBase dc, DockInfo di)
	{
		DockControllerBase dockControllerBase = null;
		DockControllerBase dockControllerBase2 = null;
		IEnumerator childHostEnumerator = dc.ChildHostEnumerator;
		if (childHostEnumerator == null)
		{
			return dc.RedockController(di, bforcenew: false);
		}
		if (childHostEnumerator.MoveNext())
		{
			dockControllerBase = childHostEnumerator.Current as DockControllerBase;
		}
		while (dockControllerBase != null)
		{
			if (childHostEnumerator.MoveNext())
			{
				dockControllerBase2 = childHostEnumerator.Current as DockControllerBase;
			}
			di.dController = DoRecTabbedRedocking(dockControllerBase, di);
			dockControllerBase = dockControllerBase2;
			dockControllerBase2 = null;
		}
		return di.dController;
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && alChildren.Count > 0)
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.Dispose();
			}
			alChildren.Clear();
		}
		base.Dispose(bdisposing);
	}

	internal override void AddWrapper(ControllerWrapper cw)
	{
		SizingControllerWrapper sizingControllerWrapper = new SizingControllerWrapper();
		sizingControllerWrapper.LayoutRect = LayoutRect;
		sizingControllerWrapper.Orientation = dpOrder;
		sizingControllerWrapper.TransientRect = base.DITransient.rcDockArea;
		sizingControllerWrapper.Style = DICurrent.dStyle;
		sizingControllerWrapper.Priority = DICurrent.nPriority;
		bool flag = false;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild is DockHostController { bInMDIMode: not false })
			{
				flag = true;
			}
			else if (flag)
			{
				flag = false;
			}
			else
			{
				alChild.AddWrapper(sizingControllerWrapper);
			}
		}
		if (sizingControllerWrapper.Children.Count > 0)
		{
			cw.Children.Add(sizingControllerWrapper);
		}
	}

	internal override void StoreControllers(ArrayList controllers)
	{
		base.StoreControllers(controllers);
		ArrayList arrayList = new ArrayList(alChildren.ToArray(typeof(DockControllerBase)));
		foreach (DockControllerBase item in arrayList)
		{
			item.StoreControllers(controllers);
		}
		if (ParentController != null)
		{
			ParentController.RemoveChild(this);
		}
		controllers.Add(this);
	}

	internal override void ApplyWrapper(ControllerWrapper cw)
	{
		base.ApplyWrapper(cw);
		_ = (SizingControllerWrapper)cw;
		foreach (ControllerWrapper child in cw.Children)
		{
			if (child is DragSplitterControllerWrapper)
			{
				continue;
			}
			DockControllerBase dockControllerBase = base.DockingManager.LocateController(child);
			if (dockControllerBase != null)
			{
				InsertChild(dockControllerBase, ChildCount, dockControllerBase.DICurrent.dStyle);
				dockControllerBase.ApplyWrapper(child);
			}
			else
			{
				if (!(child is DockTabControllerWrapper dockTabControllerWrapper))
				{
					continue;
				}
				DockHostController dockHostController = null;
				int num = 0;
				StringEnumerator enumerator2 = dockTabControllerWrapper.Controls.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current = enumerator2.Current;
						foreach (DockControllerBase alDockAreaController in dockingMgr.alDockAreaControllers)
						{
							if (alDockAreaController is DockHostController dockHostController2)
							{
								string text = current;
								if (text.StartsWith("DockHost_"))
								{
									text = text.Remove(0, "DockHost_".Length);
								}
								if (dockHostController2.UniqueName == text)
								{
									dockHostController = dockHostController2;
									num++;
								}
							}
						}
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
				if (num == 1)
				{
					DockingStyle dStyle = dockHostController.DICurrent.dStyle;
					InsertChild(dockHostController, ChildCount, dStyle);
					dockHostController.ApplyWrapper(child);
				}
			}
		}
		if (alChildren.Count == 0)
		{
			ParentController.RemoveChild(this);
		}
	}

	internal override bool IsEqual(ControllerWrapper cw)
	{
		if (cw is SizingControllerWrapper && (cw as SizingControllerWrapper).Orientation == dpOrder)
		{
			return true;
		}
		return false;
	}

	private Direction CorrectResizeDirection(Direction resizeDirection)
	{
		if (DICurrent.dStyle == DockingStyle.Bottom || DICurrent.dStyle == DockingStyle.Top)
		{
			if (resizeDirection != Direction.Both && resizeDirection != Direction.Horizontal)
			{
				MustResize = Direction.Horizontal;
			}
			resizeDirection |= Direction.Horizontal;
		}
		else if (DICurrent.dStyle == DockingStyle.Left || DICurrent.dStyle == DockingStyle.Right)
		{
			if (resizeDirection != Direction.Both && resizeDirection != Direction.Vertical)
			{
				MustResize = Direction.Vertical;
			}
			resizeDirection |= Direction.Vertical;
		}
		else if (DICurrent.dStyle == DockingStyle.Fill)
		{
			switch (resizeDirection)
			{
			case Direction.Vertical:
				MustResize = Direction.Horizontal;
				break;
			case Direction.Horizontal:
				MustResize = Direction.Vertical;
				break;
			case Direction.None:
				MustResize = Direction.Both;
				break;
			}
			resizeDirection = Direction.Both;
		}
		return resizeDirection;
	}

	internal override void ResizeControllers(ControllerWrapper cw)
	{
		SizingControllerWrapper sizingControllerWrapper = (SizingControllerWrapper)cw;
		rcLayout = sizingControllerWrapper.LayoutRect;
		base.DITransient.rcDockArea = Rectangle.Empty;
		dpOrder = sizingControllerWrapper.Orientation;
		DICurrent.dStyle = sizingControllerWrapper.Style;
		int num = Math.Min(ChildCount, cw.Children.Count);
		for (int i = 0; i < num; i++)
		{
			(alChildren[i] as DockControllerBase).ResizeControllers((ControllerWrapper)cw.Children[i]);
		}
	}

	private Size GetRedockSize()
	{
		DockControllerBase dockControllerBase = (DockControllerBase)alChildren[0];
		Size size = dockControllerBase.DITransient.rcDockArea.Size;
		int num = 0;
		int num2 = 0;
		if (PriorityController != null)
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				IResizable resizable = (IResizable)alChild;
				if (resizable.IsHorizontallyResizable())
				{
					num += alChild.LayoutRect.Width;
				}
				if (resizable.IsVerticallyResizable())
				{
					num2 += alChild.LayoutRect.Height;
				}
			}
		}
		else
		{
			foreach (DockControllerBase alChild2 in alChildren)
			{
				IResizable resizable2 = (IResizable)alChild2;
				if (resizable2.IsHorizontallyResizable())
				{
					num += alChild2.DITransient.rcDockArea.Width;
				}
				if (resizable2.IsVerticallyResizable())
				{
					num2 += alChild2.DITransient.rcDockArea.Height;
				}
			}
		}
		if (PriorityController != null)
		{
			num -= PriorityController.LayoutRect.Width;
			num2 -= PriorityController.LayoutRect.Height;
		}
		num = ((DICurrent.DP == DockPreference.Vertical) ? size.Width : num);
		num2 = ((DICurrent.DP == DockPreference.Horizontal) ? size.Height : num2);
		return new Size(num, num2);
	}

	internal override bool IsFloatOnly()
	{
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.IsFloatOnly())
			{
				return true;
			}
		}
		return false;
	}

	public Size CalculateSize(Size parentSize, Size newParentSize)
	{
		SizingController sizingController = ParentController as SizingController;
		if (IsEmpty && sizingController != null)
		{
			Size size = default(Size);
			size = ((sizingController.DockingOrder != DockPreference.Vertical) ? new Size(0, sizingController.LayoutRect.Height) : new Size(sizingController.LayoutRect.Width, 0));
			if (size != LayoutRect.Size)
			{
				sizingController.HideRelatedSplitter(this);
				rcLayout.Size = size;
				ParentController.AdjustLayout();
			}
			return size;
		}
		return ControllerSizeCalculator.CalculateSize(this, parentSize, newParentSize);
	}

	public bool IsVerticallyResizable()
	{
		Direction canResize = CanResize;
		if (Minimized == Minimization.None && !IsEmpty)
		{
			if (canResize != Direction.Vertical)
			{
				return canResize == Direction.Both;
			}
			return true;
		}
		return false;
	}

	public bool IsHorizontallyResizable()
	{
		Direction canResize = CanResize;
		if (Minimized == Minimization.None && !IsEmpty)
		{
			if (canResize != Direction.Horizontal)
			{
				return canResize == Direction.Both;
			}
			return true;
		}
		return false;
	}

	public override void DockAsMDIChild()
	{
		Array array = alChildren.ToArray(typeof(DockControllerBase));
		foreach (DockControllerBase item in array)
		{
			item.DockAsMDIChild();
		}
	}
}
