using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
public class MDITabPanel : TabControlAdv, ITabbedMDIBarItemEvents
{
	private class TabbedMDIBarItem : BarItem
	{
		private ITabbedMDIBarItemEvents m_events;

		protected TabbedMDIBarItem()
		{
		}

		public TabbedMDIBarItem(ITabbedMDIBarItemEvents events, string pText, ImageList pImageList, int pImageIndex, bool pEnabled, TabPageAdv pTabPage)
		{
			Text = pText;
			ImageList = pImageList;
			ImageIndex = pImageIndex;
			Enabled = pEnabled;
			Tag = pTabPage;
			m_events = events;
		}

		protected override void OnItemClicked(EventArgs args)
		{
			m_events.OnClick(this);
			base.OnItemClicked(args);
		}
	}

	private const int DEF_LOCATION_OFFSET = 2;

	[DocumentationExclude]
	public const int CLOSE_BUTTON_AREA_WIDTH = 20;

	[DocumentationExclude]
	public const int CLOSE_BUTTON_AREA_HEIGHT = 16;

	private TabbedMDIManager m_MDIManager;

	private int dragovercount;

	private bool m_bSuspendChildActivation;

	private MdiDropDownButton m_DropDownButton;

	private bool m_bCloseButtonHit;

	private bool m_bCloseButtonClicked;

	private MdiDropDownPopupMenu m_pmDropDownPopup;

	private bool m_bNeedScroll;

	private ArrayList m_lstMDIChildForms;

	private Hashtable m_htMDIChildrenState;

	public MdiDropDownButton DropDownButton
	{
		get
		{
			if (m_DropDownButton == null)
			{
				m_DropDownButton = new MdiDropDownButton();
				m_DropDownButton.RightToLeft = RightToLeft == RightToLeft.Yes;
				m_DropDownButton.TabAlignment = Alignment;
				m_DropDownButton.Click += DropDownButton_Click;
			}
			return m_DropDownButton;
		}
	}

	private bool DropDownButtonVisible
	{
		get
		{
			if (m_MDIManager != null)
			{
				return m_MDIManager.DropDownButtonVisible;
			}
			return false;
		}
	}

	[Obsolete("Please, use ShowTabCloseButton property instead.")]
	public bool ShowCloseButton
	{
		get
		{
			return base.ShowTabCloseButton;
		}
		set
		{
			base.ShowTabCloseButton = value;
		}
	}

	public bool IsVerticalAlignment
	{
		get
		{
			if (Alignment != TabAlignment.Left)
			{
				return Alignment == TabAlignment.Right;
			}
			return true;
		}
	}

	[DocumentationExclude]
	protected virtual bool CloseButtonHit
	{
		get
		{
			return m_bCloseButtonHit;
		}
		set
		{
			if (m_bCloseButtonHit != value)
			{
				m_bCloseButtonHit = value;
				if (m_MDIManager.CloseButtonVisible)
				{
					Invalidate(GetCloseButtonBounds(), invalidateChildren: false);
				}
			}
		}
	}

	[DocumentationExclude]
	protected virtual bool CloseButtonClicked
	{
		get
		{
			return m_bCloseButtonClicked;
		}
		set
		{
			if (m_bCloseButtonClicked != value)
			{
				m_bCloseButtonClicked = value;
				Invalidate(GetCloseButtonBounds(), invalidateChildren: false);
			}
		}
	}

	public override Font ActiveTabFont
	{
		get
		{
			return base.ActiveTabFont;
		}
		set
		{
			if (TabPanelData.ActiveTabFont != value)
			{
				TabPanelData.ActiveTabFont = value;
				UpdateActiveTabFont();
			}
		}
	}

	protected override void OnSelectedIndexChanged(EventArgs e)
	{
		base.OnSelectedIndexChanged(e);
		UpdateActiveTabFont();
		if (SelectedIndex != -1 && SelectedTab != null && !m_bSuspendChildActivation)
		{
			Form form = (Form)SelectedTab.Tag;
			m_MDIManager.LockHostFormUpdate();
			form.Activate();
			m_MDIManager.UnlockHostFormUpdate();
			Invalidate();
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		if (DropDownButtonVisible)
		{
			DropDownButton.RightToLeft = RightToLeft == RightToLeft.Yes;
		}
		base.OnRightToLeftChanged(e);
	}

	private void DropDownButton_Click(object sender, EventArgs e)
	{
		bool flag = true;
		if (m_pmDropDownPopup == null)
		{
			InitDropDownButtonPopupMenu();
		}
		else if (m_pmDropDownPopup.IsShowing())
		{
			m_pmDropDownPopup.Hide();
			flag = false;
		}
		if (!flag)
		{
			return;
		}
		FillDropDownButtonPopupMenu();
		Point location = DropDownButton.Location;
		if (!IsVerticalAlignment)
		{
			location.Y = DropDownButton.Bounds.Bottom + 1;
			if (base.IsMirrored)
			{
				location.X += DropDownButton.Size.Width;
			}
		}
		else
		{
			location.X = DropDownButton.Bounds.Right + 1;
			if (base.IsMirrored)
			{
				location.Y += DropDownButton.Size.Height;
			}
		}
		DropDownPopupEventArgs e2 = new DropDownPopupEventArgs(m_pmDropDownPopup.ParentBarItem, location);
		m_MDIManager.OnDropDownPopup(e2);
		if (!e2.Cancel)
		{
			m_pmDropDownPopup.Show(this, e2.Location);
		}
		else if (DropDownButton.IsPushed)
		{
			DropDownButton.IsPushed = false;
		}
	}

	private void DropDown_PopupClosed(object sender, EventArgs e)
	{
		if (DropDownButton.IsPushed)
		{
			DropDownButton.IsPushed = false;
			Invalidate(DropDownButton.Bounds);
		}
	}

	private void MDIChild_Clicked(object sender, EventArgs e)
	{
		if (sender is Form)
		{
			BringSelectedTabToView();
		}
	}

	[DocumentationExclude]
	public bool IsCloseButtonActive()
	{
		return GetSelectedForm()?.ControlBox ?? false;
	}

	public MDITabPanel(TabbedMDIManager manager)
	{
		m_MDIManager = manager;
		m_lstMDIChildForms = new ArrayList();
		m_htMDIChildrenState = new Hashtable();
		TabStyle = typeof(TabRenderer2D);
		UserMoveTabs = true;
		AllowDrop = true;
		ShowToolTips = true;
		FocusOnTabClick = false;
		base.ShowTabCloseButton = manager.ShowCloseButton;
		base.ShowCloseButtonForActiveTabOnly = manager.ShowCloseButtonForActiveTabOnly;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_DropDownButton != null)
			{
				m_DropDownButton.Click -= DropDownButton_Click;
			}
			if (m_pmDropDownPopup != null && m_pmDropDownPopup.ParentBarItem != null)
			{
				m_pmDropDownPopup.ParentBarItem.PopupClosed -= DropDown_PopupClosed;
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnDragLeave(EventArgs e)
	{
		dragovercount = 0;
		base.OnDragLeave(e);
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		dragovercount++;
		Point p = new Point(drgevent.X, drgevent.Y);
		p = PointToClient(p);
		if (dragovercount > 10)
		{
			int num = HitTestTabs(p);
			if (num != -1)
			{
				if (SelectedIndex != num)
				{
					SelectedIndex = num;
				}
				else
				{
					ActivateAndFocusSeletedChildForm();
				}
			}
		}
		base.OnDragOver(drgevent);
	}

	[DocumentationExclude]
	protected override void RendererChanged(TabPanelRenderer rendererNew)
	{
		base.RendererChanged(rendererNew);
		if (base.Renderer is SingleLineTabPanelRenderer singleLineTabPanelRenderer)
		{
			singleLineTabPanelRenderer.PadX = 5f;
			singleLineTabPanelRenderer.PadY = 2f;
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (DropDownButtonVisible && DropDownButton.HandleOnMouseMove(e))
		{
			Invalidate(DropDownButton.Bounds);
		}
		if (GetCloseButtonBounds().Contains(new Point(e.X, e.Y)) && IsCloseButtonActive())
		{
			CloseButtonHit = true;
		}
		else
		{
			CloseButtonHit = false;
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if ((m_MDIManager == null || m_MDIManager.MdiParent == null || !m_MDIManager.MdiParent.Validate()) && m_MDIManager.CausesFormValidation)
		{
			return;
		}
		if (e.Button == MouseButtons.Left && GetCloseButtonBounds().Contains(new Point(e.X, e.Y)) && IsCloseButtonActive() && m_MDIManager.CloseButtonVisible)
		{
			CloseButtonClicked = true;
			return;
		}
		if (DropDownButtonVisible && DropDownButton.HandleOnMouseDown(e))
		{
			Invalidate(DropDownButton.Bounds);
		}
		int selectedIndex = SelectedIndex;
		base.OnMouseDown(e);
		if (selectedIndex == SelectedIndex && m_MDIManager.MdiParent.ActiveMdiChild != (Form)SelectedTab.Tag && (!m_MDIManager.CausesFormValidation || m_MDIManager.ValidateFocusedChildForm()))
		{
			ActivateAndFocusSeletedChildForm();
		}
		m_sbScrollButtons.Visible = !m_MDIManager.DropDownButtonVisible && m_bNeedScroll;
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		CloseButtonHit = false;
		if (DropDownButtonVisible)
		{
			DropDownButton.HandleOnMouseLeave(e);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (base.IsHandleCreated)
		{
			bool closeButtonClicked = CloseButtonClicked;
			CloseButtonClicked = false;
			if (DropDownButtonVisible && DropDownButton.HandleOnMouseUp(e))
			{
				Invalidate(DropDownButton.Bounds);
			}
			if ((closeButtonClicked && GetCloseButtonBounds().Contains(new Point(e.X, e.Y))) || (m_MDIManager.CloseOnMiddleButtonClick && e.Button == MouseButtons.Middle && GetTabRect(SelectedIndex).Contains(e.X, e.Y)))
			{
				Form f = (Form)SelectedTab.Tag;
				m_MDIManager.LockHostFormUpdate();
				m_MDIManager.CloseChildForm(f);
				m_MDIManager.UnlockHostFormUpdate();
			}
		}
	}

	public override bool ValidateFocusedTab()
	{
		if (!m_MDIManager.CausesFormValidation)
		{
			return true;
		}
		return m_MDIManager.ValidateFocusedChildForm();
	}

	[DocumentationExclude]
	protected override RectangleF AdjustTabPanelBounds(RectangleF tabPanelBounds)
	{
		if (m_MDIManager.CloseButtonVisible)
		{
			if (IsVerticalAlignment)
			{
				tabPanelBounds.Height -= 20f;
				if (GetIsMirroredForVerticalAlignment())
				{
					tabPanelBounds.Offset(0f, 20f);
				}
			}
			else
			{
				tabPanelBounds.Width -= 20f;
				if (GetIsMirroredForVerticalAlignment())
				{
					tabPanelBounds.Offset(20f, 0f);
				}
			}
		}
		if (DropDownButtonVisible)
		{
			tabPanelBounds = DropDownButton.HandleAdjustTabPanelBounds(tabPanelBounds);
		}
		return base.AdjustTabPanelBounds(tabPanelBounds);
	}

	protected override void AdjustScrollButtonDimensions(ref RectangleF tabPanelBounds, bool scrollNeeded)
	{
		if (DropDownButtonVisible)
		{
			DropDownButton.IsScrollNeeded = scrollNeeded;
			scrollNeeded = false;
		}
		m_bNeedScroll = scrollNeeded;
		base.AdjustScrollButtonDimensions(ref tabPanelBounds, scrollNeeded);
	}

	[DocumentationExclude]
	protected override void Layout(Graphics g, bool fromPaint)
	{
		SetNeedLayout(value: false);
		if (DropDownButtonVisible)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			if (m_MDIManager.CloseButtonVisible)
			{
				if (!IsVerticalAlignment)
				{
					clientRectangle.Width -= 20;
				}
				else
				{
					clientRectangle.Height -= 20;
				}
			}
			DropDownButton.Layout(clientRectangle);
		}
		base.Renderer.Layout(g, fromPaint);
		switch (Alignment)
		{
		case TabAlignment.Bottom:
			if (!base.BorderVisible)
			{
				base.Location = new Point(0, 2);
			}
			break;
		case TabAlignment.Right:
			if (!base.BorderVisible)
			{
				base.Location = new Point(2, 0);
			}
			break;
		default:
			base.Location = Point.Empty;
			break;
		}
		ComputeTabPanelBounds();
		UpdateSelectedTabPage(setBounds: true);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (m_MDIManager.CloseButtonVisible)
		{
			PaintCloseButton(e, m_MDIManager.CloseButtonColor);
		}
		if (DropDownButtonVisible)
		{
			DropDownButton.HandleOnPaint(e);
		}
	}

	protected override void SetRegion()
	{
	}

	internal SizeF GetMDITabPanelPreferredSize()
	{
		SizeF size = SizeF.Empty;
		using Graphics g = CreateGraphics();
		base.Renderer.GetPreferredSize(g, ref size);
		return size;
	}

	[DocumentationExclude]
	public void ForceLayout()
	{
		if (NeedLayout && base.IsHandleCreated)
		{
			Graphics graphics = CreateGraphics();
			Layout(graphics, fromPaint: false);
			graphics.Dispose();
		}
	}

	public bool IsHosting(Form mdiChild)
	{
		foreach (TabPageAdv tabPage in TabPages)
		{
			if (tabPage.Tag == mdiChild)
			{
				return true;
			}
		}
		return false;
	}

	public void UpdateCloseAndDropDownButtons()
	{
		ComputeTabPositions();
		ComputeTabPanelBounds();
		InvalidatePanel();
	}

	[DocumentationExclude]
	protected virtual Rectangle GetCloseButtonBounds()
	{
		Rectangle empty = Rectangle.Empty;
		bool isMirroredForVerticalAlignment = GetIsMirroredForVerticalAlignment();
		Rectangle clientRectangle = base.ClientRectangle;
		Rectangle rectangle = ((base.ScrollButtons == null || !base.ScrollButtons.Visible) ? Rectangle.Empty : base.ScrollButtons.Bounds);
		if (IsVerticalAlignment)
		{
			clientRectangle.Size = new Size(clientRectangle.Height, clientRectangle.Width);
		}
		int num = 0;
		if (isMirroredForVerticalAlignment)
		{
			int right = rectangle.Right;
			num = clientRectangle.Left + right;
		}
		else
		{
			num = clientRectangle.Right - 20;
		}
		empty = new Rectangle(num, clientRectangle.Top, 20, clientRectangle.Height);
		empty.Offset(2, 0);
		empty.Width -= 4;
		empty.Offset(0, (empty.Height - 16) / 2);
		empty.Height -= empty.Height - 16;
		if (IsVerticalAlignment)
		{
			empty = new Rectangle(empty.Y, empty.X, empty.Height, empty.Width);
		}
		if (empty.Width < 0)
		{
			empty.Width = 0;
		}
		if (empty.Height < 0)
		{
			empty.Height = 0;
		}
		return empty;
	}

	[DocumentationExclude]
	protected virtual void PaintCloseButton(PaintEventArgs e, Color buttonColor)
	{
		if (!IsCloseButtonActive())
		{
			return;
		}
		Graphics graphics = e.Graphics;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		Rectangle closeButtonBounds = GetCloseButtonBounds();
		using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(graphics, closeButtonBounds, GetIsMirroredForVerticalAlignment());
		Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
		Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
		if (closeButtonBounds.Height > 0 && closeButtonBounds.Width > 0 && !IsOffice2003Style && !base.IsOneNoteStyle && !base.IsOneNoteStyleFlatTabs)
		{
			virtualGfx.FillRectangle(new SolidBrush(TabPanelBackColor), virtualBounds);
		}
		if (CloseButtonHit && ((closeButtonBounds.Width != 0) & (closeButtonBounds.Height != 0)))
		{
			Color empty = Color.Empty;
			Color empty2 = Color.Empty;
			Color empty3 = Color.Empty;
			Color empty4 = Color.Empty;
			if (CloseButtonClicked)
			{
				empty = SystemColors.ControlDarkDark;
				empty2 = SystemColors.ControlDark;
				empty3 = SystemColors.ControlLight;
				empty4 = SystemColors.ControlLightLight;
			}
			else
			{
				empty = SystemColors.ControlLightLight;
				empty2 = SystemColors.ControlLight;
				empty3 = SystemColors.ControlDark;
				empty4 = SystemColors.ControlDarkDark;
			}
			using (Pen pen = new Pen(empty))
			{
				virtualGfx.DrawLine(pen, new Point(virtualBounds.X, virtualBounds.Y), new Point(virtualBounds.Right - 2, virtualBounds.Y));
				virtualGfx.DrawLine(pen, new Point(virtualBounds.X, virtualBounds.Y), new Point(virtualBounds.X, virtualBounds.Bottom - 2));
			}
			using (Pen pen2 = new Pen(empty2))
			{
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.X + 1, virtualBounds.Y + 1), new Point(virtualBounds.Right - 3, virtualBounds.Y + 1));
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.X + 1, virtualBounds.Y + 1), new Point(virtualBounds.X + 1, virtualBounds.Bottom - 3));
			}
			using (Pen pen3 = new Pen(empty3))
			{
				virtualGfx.DrawLine(pen3, new Point(virtualBounds.X + 1, virtualBounds.Bottom - 2), new Point(virtualBounds.Right - 2, virtualBounds.Bottom - 2));
				virtualGfx.DrawLine(pen3, new Point(virtualBounds.Right - 2, virtualBounds.Y + 1), new Point(virtualBounds.Right - 2, virtualBounds.Bottom - 2));
			}
			using (Pen pen4 = new Pen(empty4))
			{
				virtualGfx.DrawLine(pen4, new Point(virtualBounds.X, virtualBounds.Bottom - 1), new Point(virtualBounds.Right - 1, virtualBounds.Bottom - 1));
				virtualGfx.DrawLine(pen4, new Point(virtualBounds.Right - 1, virtualBounds.Y), new Point(virtualBounds.Right - 1, virtualBounds.Bottom - 1));
			}
			if (CloseButtonClicked)
			{
				virtualBounds.Offset(1, 1);
			}
		}
		Color black = Color.Black;
		black = (IsCloseButtonActive() ? buttonColor : SystemColors.GrayText);
		if (closeButtonBounds.Width != 0 && closeButtonBounds.Height != 0)
		{
			Pen pen5 = new Pen(black, 1f);
			virtualGfx.DrawLine(pen5, virtualBounds.Left + 4, virtualBounds.Top + 4, virtualBounds.Right - 5, virtualBounds.Bottom - 5);
			virtualGfx.DrawLine(pen5, virtualBounds.Right - 5, virtualBounds.Top + 4, virtualBounds.Left + 4, virtualBounds.Bottom - 5);
		}
	}

	private void ActivateAndFocusSeletedChildForm()
	{
		Form form = (Form)SelectedTab.Tag;
		form.Activate();
		if (!form.ContainsFocus && form.IsHandleCreated)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetFocus(form.Handle);
		}
	}

	internal void UpdateTabBasedOnFormOnFront()
	{
		if (base.TabCount == 0 || m_MDIManager.m_mdiClient == null)
		{
			return;
		}
		TabPageAdv tabPageAdv = null;
		int num = int.MaxValue;
		foreach (TabPageAdv tabPage in TabPages)
		{
			Form control = (Form)tabPage.Tag;
			int num2 = m_MDIManager.m_mdiClient.Controls.IndexOf(control);
			if (num2 < num)
			{
				num = num2;
				tabPageAdv = tabPage;
			}
		}
		if (tabPageAdv != null)
		{
			SuspendChildActivation();
			SelectedTab = tabPageAdv;
			ResumeChildActivation();
		}
	}

	[DocumentationExclude]
	protected internal virtual void SuspendChildActivation()
	{
		m_bSuspendChildActivation = true;
	}

	[DocumentationExclude]
	protected internal virtual void ResumeChildActivation()
	{
		m_bSuspendChildActivation = false;
	}

	[DocumentationExclude]
	protected internal virtual void DetachMdiChildren()
	{
		foreach (Form lstMDIChildForm in m_lstMDIChildForms)
		{
			RemoveMdiChild(lstMDIChildForm, pRemoveFromHashtable: false);
			m_MDIManager.RemoveMDIChildFromHash(lstMDIChildForm, bIsRemoved: false);
		}
		m_lstMDIChildForms.Clear();
		m_htMDIChildrenState.Clear();
	}

	protected internal virtual void AddMdiChild(Form mdiChild, MDIChildTabData prevTabData)
	{
		if (!m_lstMDIChildForms.Contains(mdiChild))
		{
			MDIChildTabData mDIChildTabData = new MDIChildTabData(TabPanelData, mdiChild, m_MDIManager, prevTabData);
			if (mdiChild.Icon != null)
			{
				mDIChildTabData.Icon = mdiChild.Icon;
			}
			TabPageAdv tabPageAdv = CreateTab(mDIChildTabData, base.CurDefaultTabPanelProperties);
			tabPageAdv.Tag = mdiChild;
			mdiChild.Click += MDIChild_Clicked;
			TabPages.Add(tabPageAdv);
			ChangeFormStyles(mdiChild, bSet: true);
			m_lstMDIChildForms.Add(mdiChild);
			SelectedTab = tabPageAdv;
		}
	}

	protected virtual TabPageAdv CreateTab(MDIChildTabData tabData, ITabPanelDefaultProperties defaultProps)
	{
		return new TabPageAdv(tabData, defaultProps);
	}

	protected internal virtual bool RemoveMdiChild(Form mdiChild, bool pRemoveFromHashtable)
	{
		if (!m_lstMDIChildForms.Contains(mdiChild))
		{
			return false;
		}
		ChangeFormStyles(mdiChild, bSet: false);
		TabPageAdv tabPageAdvFromForm = GetTabPageAdvFromForm(mdiChild);
		if (tabPageAdvFromForm != null)
		{
			TabPages.Remove(tabPageAdvFromForm);
			tabPageAdvFromForm.Dispose();
		}
		if (pRemoveFromHashtable)
		{
			m_lstMDIChildForms.Remove(mdiChild);
			m_htMDIChildrenState.Remove(mdiChild);
		}
		mdiChild.Click -= MDIChild_Clicked;
		return true;
	}

	public TabPageAdv GetTabPageAdvFromForm(Form mdiChild)
	{
		foreach (TabPageAdv tabPage in TabPages)
		{
			if (tabPage.Tag == mdiChild)
			{
				return tabPage;
			}
		}
		return null;
	}

	public Form GetSelectedForm()
	{
		if (SelectedTab == null)
		{
			return null;
		}
		return SelectedTab.Tag as Form;
	}

	private void ChangeFormStyles(Form mdiChild, bool bSet)
	{
		if (bSet)
		{
			MDIChildState value = new MDIChildState(mdiChild.FormBorderStyle, mdiChild.ControlBox, mdiChild.HelpButton, mdiChild.MaximizeBox, mdiChild.MinimizeBox, mdiChild.SizeGripStyle, mdiChild.Dock, mdiChild.StartPosition);
			m_htMDIChildrenState[mdiChild] = value;
			mdiChild.SuspendLayout();
			mdiChild.StartPosition = FormStartPosition.Manual;
			mdiChild.FormBorderStyle = FormBorderStyle.None;
			mdiChild.HelpButton = false;
			mdiChild.MaximizeBox = false;
			mdiChild.MinimizeBox = false;
			mdiChild.SizeGripStyle = SizeGripStyle.Hide;
			mdiChild.Dock = DockStyle.None;
			mdiChild.ResumeLayout(performLayout: false);
		}
		else if (m_htMDIChildrenState[mdiChild] is MDIChildState mDIChildState)
		{
			mdiChild.StartPosition = mDIChildState.StartPosition;
			mdiChild.FormBorderStyle = mDIChildState.FormBorderStyle;
			mdiChild.ControlBox = mDIChildState.ControlBox;
			mdiChild.HelpButton = mDIChildState.HelpButton;
			mdiChild.MaximizeBox = mDIChildState.MaximizeBox;
			mdiChild.MinimizeBox = mDIChildState.MinimizeBox;
			mdiChild.SizeGripStyle = mDIChildState.SizeGripStyle;
			mdiChild.Dock = mDIChildState.Dock;
		}
	}

	private void InitDropDownButtonPopupMenu()
	{
		m_pmDropDownPopup = new MdiDropDownPopupMenu();
		m_pmDropDownPopup.MDITabPanel = this;
		ParentBarItem parentBarItem = new ParentBarItem();
		parentBarItem.PopupClosed += DropDown_PopupClosed;
		m_pmDropDownPopup.ParentBarItem = parentBarItem;
	}

	private void FillDropDownButtonPopupMenu()
	{
		ParentBarItem parentBarItem = m_pmDropDownPopup.ParentBarItem;
		if (parentBarItem == null)
		{
			parentBarItem = new ParentBarItem();
		}
		else
		{
			parentBarItem.Items.Clear();
		}
		foreach (TabPageAdv tabPage in TabPages)
		{
			TabbedMDIBarItem value = new TabbedMDIBarItem(this, tabPage.Text, ImageList, tabPage.ImageIndex, tabPage.Enabled, tabPage);
			parentBarItem.Items.Add(value);
		}
	}

	void ITabbedMDIBarItemEvents.OnClick(object sender)
	{
		if (sender is TabbedMDIBarItem { Tag: TabPageAdv tag })
		{
			SelectedTab = tag;
		}
	}
}
