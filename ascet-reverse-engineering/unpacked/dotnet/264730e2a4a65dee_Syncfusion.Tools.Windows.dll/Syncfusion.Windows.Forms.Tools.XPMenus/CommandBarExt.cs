using System;
using System.Collections;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class CommandBarExt : CommandBar, IBarHost, ICanCancel
{
	internal const int DEF_HEIGHT_ADJUST = 2;

	private int suspendRecalc;

	private BarControlInternal barControl;

	private CommandBarManager manager;

	private bool updateAfterThemeChange;

	private Timer repaintTimer;

	private bool needRepaint;

	private bool needLayout;

	private int gripperWidth = 14;

	private Point clickPoint;

	private bool parentResizing;

	private Size parentSize = Size.Empty;

	private Size originalParentSize = Size.Empty;

	private CancelListener cancelListener;

	private ThemedStatusBarDrawing themedDrawing;

	private ArrayList interSizes = new ArrayList();

	private bool StatusBarOn
	{
		get
		{
			if (Bar != null && (Bar.BarStyle & BarStyle.IsStatusBar) > BarStyle.None && !base.DisableDocking)
			{
				Form form = FindForm();
				if (form != null && form.WindowState == FormWindowState.Maximized)
				{
					return false;
				}
				return true;
			}
			return false;
		}
	}

	private bool ParentResizing
	{
		get
		{
			return parentResizing;
		}
		set
		{
			if (parentResizing != value)
			{
				parentResizing = value;
				if (parentResizing)
				{
					base.Capture = true;
					Cursor.Current = Cursors.SizeNWSE;
					parentSize = FindForm().Size;
					originalParentSize = parentSize;
					cancelListener = new CancelListener(this);
				}
				else
				{
					base.Capture = false;
					Cursor.Current = Cursors.Default;
					parentSize = Size.Empty;
					originalParentSize = Size.Empty;
					cancelListener.Release();
					cancelListener = null;
				}
			}
		}
	}

	public BarControlInternal BarControl => barControl;

	public Bar Bar
	{
		get
		{
			if (barControl != null)
			{
				return barControl.Bar;
			}
			return null;
		}
		set
		{
			if (barControl == null || barControl.Bar == value)
			{
				return;
			}
			if (Bar != null && Bar.Manager != null && Bar.Manager.Form != null)
			{
				Bar.Manager.Form.Deactivate -= Form_Deactivate;
			}
			if (barControl.Bar != null)
			{
				Bar bar = barControl.Bar;
				bar.PropertyChanged -= BarPropertyChanged;
				if (bar.Manager != null && !bar.Manager.IsDummyManager())
				{
					bar.Manager.OnBarControlBindingChanged(new BarControlBindingChangedArgs(bar, this, BarControlBindingChangeType.Unparenting));
				}
			}
			barControl.Bar = value;
			if (barControl.Bar != null)
			{
				barControl.Bar.PropertyChanged += BarPropertyChanged;
			}
			if (Bar != null && Bar.Manager != null && Bar.Manager.Form != null)
			{
				Bar.Manager.Form.Deactivate += Form_Deactivate;
			}
			OnBarChanged();
			if (barControl.Bar != null)
			{
				Bar bar2 = barControl.Bar;
				if (bar2.Manager != null && !bar2.Manager.IsDummyManager())
				{
					bar2.Manager.OnBarControlBindingChanged(new BarControlBindingChangedArgs(bar2, this, BarControlBindingChangeType.Parented));
				}
				SynthesizeName();
			}
		}
	}

	internal string MdiChildrenFormName
	{
		get
		{
			string result = string.Empty;
			if (manager != null && manager.BarManager != null && manager.BarManager.MainFrameBarManager != null)
			{
				result = manager.BarManager.MainFrameBarManager.MdiChildrenFormName;
			}
			return result;
		}
	}

	private new Color DefaultBackColor
	{
		get
		{
			if (Bar != null && (Bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None && Bar.Manager is MainFrameBarManager)
			{
				return MenuColors.MainMenuBackColor;
			}
			if (Bar != null && (Bar.BarStyle & BarStyle.IsStatusBar) > BarStyle.None)
			{
				return MenuColors.StatusBarBackColor;
			}
			return MenuColors.CommandBarBackColor;
		}
	}

	protected bool IsMainMenu
	{
		get
		{
			bool result = false;
			Bar bar = Bar;
			if (bar != null)
			{
				result = (Bar.BarStyle & BarStyle.IsMainMenu) != 0;
			}
			return result;
		}
	}

	protected internal override bool AllowQuickCustomizing
	{
		get
		{
			bool flag = false;
			Bar bar = Bar;
			if (bar != null)
			{
				flag = (Bar.BarStyle & BarStyle.AllowQuickCustomizing) != BarStyle.None && (Bar.BarStyle & BarStyle.IsStatusBar) == 0;
			}
			if (flag)
			{
				return !IsMainMenu;
			}
			return false;
		}
	}

	protected internal override bool HasExternalPopupMenu => false;

	private bool ThemesActive
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && Bar != null && Bar.Manager != null && Bar.Manager.MainFrameBarManager != null && Bar.Manager.MainFrameBarManager.ThemesEnabled)
			{
				return true;
			}
			return false;
		}
	}

	public bool NeedLayout => needLayout;

	public override bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			if (!value && base.Floating && base.Parent is CommandBarForm commandBarForm)
			{
				rcFloat = commandBarForm.Bounds;
			}
			base.Visible = value;
		}
	}

	public CommandBarExt(CommandBarManager manager)
	{
		this.manager = manager;
		SetStyle(ControlStyles.ResizeRedraw, value: false);
		ShowDockModeText = false;
		BarManager barManager = this.manager.BarManager;
		MainFrameBarManager mainFrameBarManager = barManager.MainFrameBarManager;
		if (mainFrameBarManager != null)
		{
			mainFrameBarManager.PropertyChanged += Manager_PropertyChanged;
		}
		repaintTimer = new Timer();
		repaintTimer.Interval = 100;
		repaintTimer.Tick += Repaint_Tick;
		if (XPThemes.IsThemedOS)
		{
			themedDrawing = new ThemedStatusBarDrawing();
		}
		RightToLeft = mainFrameBarManager?.RightToLeft ?? RightToLeft.Inherit;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			repaintTimer.Tick -= Repaint_Tick;
			Bar = null;
			BarManager barManager = null;
			if (manager != null)
			{
				barManager = manager.BarManager;
			}
			if (barManager != null)
			{
				MainFrameBarManager mainFrameBarManager = barManager.MainFrameBarManager;
				if (mainFrameBarManager != null)
				{
					mainFrameBarManager.PropertyChanged -= Manager_PropertyChanged;
				}
			}
			manager = null;
			if (themedDrawing != null)
			{
				themedDrawing.Dispose();
				themedDrawing = null;
			}
			DetachCurBarControl();
			if (barControl != null)
			{
				barControl.Dispose();
			}
			barControl = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		bool flag = false;
		if (Bar != null)
		{
			flag = Bar.OnDrawBackground(pevent);
		}
		if (!flag)
		{
			base.OnPaintBackground(pevent);
		}
		if (StatusBarOn && IsLeadingStatusBar())
		{
			int num = base.Width - gripperWidth;
			if (ThemesActive)
			{
				themedDrawing.DrawStatusGripper(pevent.Graphics, new Rectangle(num, 0, gripperWidth, base.Height));
			}
			else
			{
				ControlPaint.DrawSizeGrip(pevent.Graphics, Color.Transparent, num, 0, gripperWidth, base.Height);
			}
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		if (StatusBarOn)
		{
			Invalidate();
		}
		UpdateDropdownButton(Bar);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (Bar != null && Bar.Manager != null && Bar.Manager.Form != null)
		{
			Bar.Manager.Form.Activate();
		}
		base.OnMouseDown(e);
		if (CommandBar.IsDragging && Bar != null && ThemesActive)
		{
			repaintTimer.Start();
		}
		else
		{
			if (e.Button != MouseButtons.Left || manager == null || manager.BarManager.DesignMode || !StatusBarOn || !IsLeadingStatusBar())
			{
				return;
			}
			Form form = FindForm();
			if (form.WindowState != FormWindowState.Maximized)
			{
				clickPoint = new Point(e.X, e.Y);
				if (new Rectangle(base.Width - gripperWidth, 0, gripperWidth, base.Height).Contains(clickPoint))
				{
					ParentResizing = true;
				}
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (!OccupyFullRow || manager.BarManager.DesignMode || !StatusBarOn || !IsLeadingStatusBar())
		{
			return;
		}
		Form form = FindForm();
		if (form.WindowState != FormWindowState.Maximized)
		{
			if (new Rectangle(base.Width - gripperWidth, 0, gripperWidth, base.Height).Contains(new Point(e.X, e.Y)))
			{
				Cursor.Current = Cursors.SizeNWSE;
			}
			else
			{
				Cursor.Current = Cursors.Default;
			}
			if (ParentResizing)
			{
				parentSize = new Size(parentSize.Width + e.X - clickPoint.X, parentSize.Height + e.Y - clickPoint.Y);
				form.Size = parentSize;
				clickPoint = new Point(e.X, clickPoint.Y);
				form.Update();
			}
		}
	}

	void ICanCancel.CancelOperation()
	{
		if (ParentResizing)
		{
			Size size = originalParentSize;
			ParentResizing = false;
			FindForm().Size = size;
		}
	}

	private bool IsLeadingStatusBar()
	{
		Form form = FindForm();
		if (form == null)
		{
			return false;
		}
		Rectangle rectangle = RectangleToScreen(base.ClientRectangle);
		Rectangle rectangle2 = form.RectangleToScreen(form.ClientRectangle);
		if (rectangle.Bottom == rectangle2.Bottom && rectangle.Right == rectangle2.Right)
		{
			return true;
		}
		return false;
	}

	protected override bool ShouldDrawThemed()
	{
		if (base.ShouldDrawThemed())
		{
			return !StatusBarOn;
		}
		return false;
	}

	protected override void OnCommandBarUserClosed(EventArgs arg)
	{
		base.OnCommandBarUserClosed(arg);
		manager.SetBarVisibility(Bar, visible: false);
		if (manager != null && manager.BarManager != null)
		{
			manager.BarManager.OnFloatingFormClosed(Bar);
		}
	}

	protected override void OnLocationChanged(EventArgs e)
	{
		if (needRepaint)
		{
			Invalidate(invalidateChildren: true);
			needRepaint = false;
		}
		base.OnLocationChanged(e);
	}

	private void Repaint_Tick(object sender, EventArgs e)
	{
		if (Control.MouseButtons != MouseButtons.Left)
		{
			repaintTimer.Stop();
		}
		if (base.DockState != CommandBarDockState.Float && Bar != null && ThemesActive)
		{
			needRepaint = true;
		}
	}

	protected override void OnPopupClosed(object sender, EventArgs e)
	{
		MainFrameBarManager mainManager = GetMainManager();
		if (mainManager != null)
		{
			mainManager.ShouldHidePopup = false;
		}
		base.OnPopupClosed(sender, e);
	}

	private MainFrameBarManager GetMainManager()
	{
		if (manager == null)
		{
			return null;
		}
		MainFrameBarManager mainFrameBarManager = manager.BarManager as MainFrameBarManager;
		if (mainFrameBarManager != null)
		{
			return mainFrameBarManager;
		}
		if (manager.BarManager is ChildFrameBarManager childFrameBarManager)
		{
			mainFrameBarManager = childFrameBarManager.MainFrameBarManager;
		}
		return mainFrameBarManager;
	}

	protected override bool ShowDropDown()
	{
		manager.InitQuickCustomizePopup(this);
		MainFrameBarManager mainManager = GetMainManager();
		if (mainManager != null)
		{
			mainManager.ShouldHidePopup = true;
		}
		return base.ShowDropDown();
	}

	private void SynthesizeName()
	{
		if (Bar != null)
		{
			base.Name = SynthesizeNameFromBar(Bar);
		}
	}

	internal static string SynthesizeNameFromBar(Bar bar)
	{
		string text = "ToolbarHost_" + bar.BarName;
		return text.Replace(' ', '_');
	}

	internal bool IsMainCommandBar()
	{
		bool result = false;
		if (manager != null && manager.BarManager != null && manager.BarManager.MainFrameBarManager != null)
		{
			result = manager.BarManager.MainFrameBarManager.IsMainCommandBar(this);
		}
		return result;
	}

	public bool ProcessShortcut(char c)
	{
		if (barControl != null)
		{
			return barControl.ProcessShortcut(c);
		}
		return false;
	}

	private void BarPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs args)
	{
		if (args.PropertyName == "BarStyle")
		{
			OnBarChanged();
		}
		else if (args.PropertyName == "BarName")
		{
			Text = Bar.BarName;
			Refresh();
			SynthesizeName();
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		OnBarBoundsChanged();
	}

	public void OnBarChanged()
	{
		if (Bar == null)
		{
			if (barControl != null)
			{
				barControl.ActLikeMainMenu(null, designTime: false);
			}
			return;
		}
		Bar bar = Bar;
		bar.CaptionChanged -= bar_CaptionChanged;
		bar.CaptionChanged += bar_CaptionChanged;
		Text = ((bar.Caption == null) ? bar.BarName : bar.Caption);
		DockModeWrapping = (bar.BarStyle & BarStyle.MultiLine) > BarStyle.None;
		FloatModeWrapping = true;
		OccupyFullRow = (bar.BarStyle & BarStyle.UseWholeRow) > BarStyle.None;
		base.HideGripper = (bar.BarStyle & BarStyle.DrawDragBorder) == 0;
		UpdateDropdownButton(bar);
		base.HideCloseButton = !bar.AllowHiding;
		bool visible = true;
		BarManager barManager = manager.BarManager;
		if (barManager == null || !barManager.DesignMode)
		{
			visible = BarStyle.Visible == (bar.BarStyle & BarStyle.Visible);
		}
		if (manager.IsUserPrefAvailable(bar))
		{
			visible = manager.GetUserVisibilityPrefOfBar(bar);
		}
		if (bar is MergedBar)
		{
			MergedBar mergedBar = bar as MergedBar;
			if (!mergedBar.CurrentVisibleStateDueToMerge)
			{
				visible = false;
			}
		}
		Visible = visible;
		if ((bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
		{
			if (bar.Manager is MainFrameBarManager)
			{
				barControl.ActLikeMainMenu(bar.Manager.Form, barManager?.DesignMode ?? false);
				OccupyFullRow = true;
			}
			base.AlwaysTrailingEdge = false;
			Visible = true;
			HideChevron = true;
			base.HideDropDownButton = true;
		}
		else if ((bar.BarStyle & BarStyle.IsStatusBar) > BarStyle.None)
		{
			if (bar.Manager is MainFrameBarManager)
			{
				barControl.ActLikeMainMenu(null, designTime: false);
			}
			base.AlwaysLeadingEdge = false;
			base.AlwaysTrailingEdge = true;
			OccupyFullRow = true;
			base.DisableFloating = true;
			Visible = true;
			base.HideGripper = true;
			HideChevron = true;
			base.HideDropDownButton = true;
			base.DockState = CommandBarDockState.Bottom;
		}
		else
		{
			if (bar.Manager is MainFrameBarManager)
			{
				barControl.ActLikeMainMenu(null, designTime: false);
			}
			base.AlwaysLeadingEdge = false;
			base.AlwaysTrailingEdge = false;
			UpdateFloatModeRenderer(forceMulitiline: false);
			HideChevron = false;
		}
		InitBackColor();
		if (base.DockState == CommandBarDockState.Float)
		{
			UpdateRenderer(todockmode: false);
		}
		else
		{
			UpdateRenderer(todockmode: true);
		}
	}

	private void UpdateDropdownButton(Bar bar)
	{
		base.HideDropDownButton = !AllowQuickCustomizing && !base.IsChevronVisible;
		Invalidate();
	}

	public override void MenuColorsChanged(object sender, EventArgs e)
	{
		InitBackColor();
		base.MenuColorsChanged(sender, e);
	}

	private void InitBackColor()
	{
		if (ThemesActive && base.Controller.Style != VisualStyle.Office2007 && base.Controller.Style != VisualStyle.Office2007Outlook)
		{
			ResetBackColor();
			return;
		}
		if (base.Controller != null && base.Controller.Style != VisualStyle.Office2003 && base.Controller.Style != VisualStyle.VS2005 && base.Controller.Style != VisualStyle.Office2007 && base.Controller.Style != VisualStyle.Office2007Outlook)
		{
			BackColor = DefaultBackColor;
			bBackColorSet = false;
			return;
		}
		if (base.Floating)
		{
			BackColor = base.Parent.BackColor;
		}
		else
		{
			BackColor = Color.Transparent;
		}
		bBackColorSet = false;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		if (base.Parent != null)
		{
			InitBackColor();
		}
	}

	private void Manager_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs args)
	{
		switch (args.PropertyName)
		{
		case "ThemesEnabled":
		case "LargeIcons":
			bUpdateOffsets = true;
			InitBackColor();
			Invalidate(invalidateChildren: true);
			break;
		case "RightToLeft":
			RightToLeft = (RightToLeft)args.NewValue;
			SetBoundsCore(base.Location.X, base.Location.Y, base.Width, base.Height, BoundsSpecified.All);
			Invalidate(invalidateChildren: true);
			break;
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 && FindForm() != null)
		{
			m.Result = (IntPtr)3;
			return;
		}
		if (m.Msg == 15 && updateAfterThemeChange)
		{
			updateAfterThemeChange = false;
			InitBackColor();
		}
		base.WndProc(ref m);
		if (m.Msg == 794)
		{
			updateAfterThemeChange = true;
		}
	}

	private void UpdateFloatModeRenderer(bool forceMulitiline)
	{
		if (forceMulitiline || (base.Floating && !(BarControl.barRenderer is MultilineBarRenderer)))
		{
			BarControl.forceMultiline = true;
			BarControl.RendererChanged(null);
			BarControl.forceMultiline = false;
		}
	}

	private void UpdateDockModeRenderer()
	{
		if ((BarControl.Bar.BarStyle & BarStyle.MultiLine) == 0 && BarControl.barRenderer is MultilineBarRenderer)
		{
			BarControl.RendererChanged(null);
		}
	}

	public void AttachBarControl(BarControlInternal barControl)
	{
		if (this.barControl != barControl)
		{
			DetachCurBarControl();
		}
		barControl.BarHost = this;
		barControl.Style = manager.GetCommandBarController().Style;
		base.Controls.Add(barControl);
		this.barControl = barControl;
		this.barControl.MouseUp += BarControl_MouseUp;
	}

	public void DetachCurBarControl()
	{
		if (barControl != null)
		{
			base.Controls.Remove(barControl);
			barControl.MouseUp -= BarControl_MouseUp;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (manager.SelectedCommandbar == this)
		{
			RectangleF value = base.ClientRectangle;
			e.Graphics.DrawRectangle(new Pen(SystemColors.ControlText, 2f), Rectangle.Ceiling(value));
		}
	}

	private void OnMouseUpDuringDesignTime(bool dragging)
	{
		IBarManagerDesigner designer = manager.BarManager.Designer;
		if (dragging)
		{
			designer.SetDirty();
		}
		if (Bar != null)
		{
			ISelectionService selectionService = designer.GetService(typeof(ISelectionService)) as ISelectionService;
			selectionService.SetSelectedComponents(new object[1] { Bar });
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		repaintTimer.Stop();
		bool isDragging = CommandBar.IsDragging;
		base.OnMouseUp(e);
		if (manager.BarManager.DesignMode)
		{
			OnMouseUpDuringDesignTime(isDragging);
		}
		ParentResizing = false;
	}

	private void BarControl_MouseUp(object sender, MouseEventArgs e)
	{
		if (Bar != null && Bar.DesignMode && BarControl.barRenderer.HitTestBarItems(new PointF(e.X, e.Y)) == -1 && (manager.BarManager.GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(manager.BarManager) is IBarManagerDesigner barManagerDesigner)
		{
			ISelectionService selectionService = barManagerDesigner.GetService(typeof(ISelectionService)) as ISelectionService;
			selectionService.SetSelectedComponents(new object[1] { Bar });
		}
	}

	private void FloatingFormMouseUp(object sender, MouseEventArgs e)
	{
		if (CommandBarForm.Sizing && manager.BarManager.DesignMode)
		{
			IBarManagerDesigner barManagerDesigner = (manager.BarManager.GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(manager.BarManager) as IBarManagerDesigner;
			barManagerDesigner.SetDirty();
		}
	}

	protected override void OnCommandBarStateChanged(EventArgs args)
	{
		if (base.DockState != CommandBarDockState.Float)
		{
			UpdateRenderer(todockmode: true);
		}
		base.OnCommandBarStateChanged(args);
	}

	private void UpdateRenderer(bool todockmode)
	{
		if (Bar != null && BarControl != null)
		{
			SuspendRecalc();
			if (todockmode)
			{
				UpdateDockModeRenderer();
				BarControl.Alignment = base.DockState;
			}
			else
			{
				UpdateFloatModeRenderer(forceMulitiline: true);
				BarControl.Alignment = CommandBarDockState.Float;
			}
			ResumeRecalc(recalcIfNecessary: false);
			RecalcBarLayout(forceRecalc: true, dontRecalc: false);
		}
	}

	protected internal override void EnterFloatMode(Point ptscreen)
	{
		UpdateRenderer(todockmode: false);
		base.EnterFloatMode(ptscreen);
	}

	public void SuspendRecalc()
	{
		suspendRecalc++;
	}

	public void ResumeRecalc(bool recalcIfNecessary)
	{
		suspendRecalc--;
		if (recalcIfNecessary && suspendRecalc == 0 && needLayout)
		{
			RecalcBarLayout(forceRecalc: false, dontRecalc: false);
		}
	}

	protected internal virtual void RecalcBarLayout(bool forceRecalc, bool dontRecalc)
	{
		if (barControl == null)
		{
			return;
		}
		CommandBarController commandBarController = manager.GetCommandBarController();
		if (commandBarController != null && commandBarController.FreezeLayout)
		{
			if (forceRecalc && !dontRecalc)
			{
				needLayout = true;
			}
			return;
		}
		if (suspendRecalc > 0)
		{
			needLayout = true;
			return;
		}
		needLayout = false;
		SizeF preferredSize = new SizeF(0f, 0f);
		UpdateDropdownButton(Bar);
		barControl.GetPreferredSize(ref preferredSize);
		int minLength = MinLength;
		int num = CalcCommandBarMaxLength((int)Math.Ceiling(preferredSize.Width));
		if (minLength != num)
		{
			MinLength = num;
		}
		SizeF sizeF = new SizeF(0f, 0f);
		sizeF = new SizeF(2.1474836E+09f, 2.1474836E+09f);
		barControl.GetPreferredSize(ref sizeF);
		int maxLength = MaxLength;
		int num2 = CalcCommandBarMaxLength((int)Math.Ceiling(sizeF.Width));
		if (num2 != maxLength)
		{
			MaxLength = num2;
		}
		int num3 = (int)sizeF.Height + 2;
		if (num3 != MinHeight)
		{
			MinHeight = num3;
		}
		if (maxLength != MaxLength || minLength != MinLength || forceRecalc)
		{
			DetermineIntermediateHeights(Size.Ceiling(preferredSize), Size.Ceiling(sizeF));
			if (!dontRecalc)
			{
				barControl.PerformLayout();
			}
		}
	}

	public override int CalcCommandBarMaxLength(int nctrlwidth)
	{
		int num = base.CalcCommandBarMaxLength(nctrlwidth);
		if (StatusBarOn)
		{
			num += gripperWidth;
		}
		return num;
	}

	protected override void AdjustChildControlBounds(ref Rectangle childBounds)
	{
		base.AdjustChildControlBounds(ref childBounds);
		if (StatusBarOn)
		{
			childBounds.Width -= gripperWidth;
		}
	}

	public void OnBarBoundsChanged()
	{
		Rectangle bounds = base.Bounds;
		RecalcBarLayout(forceRecalc: false, dontRecalc: false);
		if (base.Parent is CommandDockBar commandDockBar)
		{
			if ((base.Height == bounds.Height && (cbarDockState == CommandBarDockState.Top || cbarDockState == CommandBarDockState.Bottom)) || (base.Width == bounds.Width && (cbarDockState == CommandBarDockState.Left || cbarDockState == CommandBarDockState.Right)))
			{
				bRedockNeededInternal = false;
			}
			if (bRedockNeededInternal)
			{
				RedockIfNeeded();
				bRedockNeededInternal = false;
			}
			commandDockBar.LayoutDockBar();
		}
	}

	public void MoveMenuNavigation(bool forward)
	{
		manager.MoveMenuNavigation(this, forward);
	}

	protected internal override Size GetDockWrapSize(Size szbounds)
	{
		Size size = CalcChildControlBounds(szbounds).Size;
		SizeF preferredSize = size;
		if (barControl.Alignment == CommandBarDockState.Left || barControl.Alignment == CommandBarDockState.Right)
		{
			preferredSize = new SizeF(preferredSize.Height, preferredSize.Width);
		}
		else if (StatusBarOn)
		{
			preferredSize.Width -= gripperWidth;
		}
		barControl.GetPreferredSize(ref preferredSize);
		if (barControl.Alignment == CommandBarDockState.Left || barControl.Alignment == CommandBarDockState.Right)
		{
			preferredSize = new SizeF(preferredSize.Height, preferredSize.Width);
		}
		return GetAdjustedSize(size, Size.Ceiling(preferredSize));
	}

	protected virtual void DetermineIntermediateHeights(SizeF minSize, SizeF maxSize)
	{
		interSizes.Clear();
		interSizes.Add(minSize);
		interSizes.Add(maxSize);
		if (BarControl.barRenderer is SingleLineBarRenderer)
		{
			return;
		}
		int num = 1;
		SizeF sizeF = minSize;
		while (sizeF.Height != maxSize.Height)
		{
			sizeF.Width += 10f;
			SizeF preferredSize = sizeF;
			barControl.GetPreferredSize(ref preferredSize);
			if (preferredSize.Height < sizeF.Height)
			{
				if (preferredSize.Height != maxSize.Height)
				{
					interSizes.Insert(num++, preferredSize);
				}
				sizeF = preferredSize;
			}
		}
	}

	protected internal override Size GetFloatWrapSize(Size szbounds, CommandBarResizeType rtsize)
	{
		Size size = CalcChildControlBounds(szbounds).Size;
		SizeF preferredSize = size;
		if (rtsize == CommandBarResizeType.Bottom || rtsize == CommandBarResizeType.Top)
		{
			_ = szbounds.Height;
			_ = base.Bounds.Height;
			SizeF sizeF = SizeF.Empty;
			for (int num = interSizes.Count - 1; num >= 0; num--)
			{
				if (((SizeF)interSizes[num]).Height > preferredSize.Height)
				{
					if (num < interSizes.Count - 1)
					{
						num++;
					}
					sizeF = (SizeF)interSizes[num];
					break;
				}
			}
			if (sizeF == SizeF.Empty)
			{
				sizeF = (SizeF)interSizes[0];
			}
			preferredSize = sizeF;
		}
		else
		{
			SizeF sizeF2 = (SizeF)interSizes[0];
			if (preferredSize.Width < sizeF2.Width)
			{
				preferredSize.Width = sizeF2.Width;
			}
			barControl.GetPreferredSize(ref preferredSize);
		}
		return GetAdjustedSize(size, Size.Ceiling(preferredSize));
	}

	protected override CommandBarForm CreateFloatingForm()
	{
		CommandBarForm commandBarForm = base.CreateFloatingForm();
		manager.StartListeningForMousePress(commandBarForm);
		commandBarForm.MouseUp += FloatingFormMouseUp;
		if (Bar != null)
		{
			commandBarForm.Name = "commandBarForm" + Bar.BarName;
		}
		return commandBarForm;
	}

	private void Form_Deactivate(object sender, EventArgs e)
	{
		base.HideDropDown();
	}

	private void bar_CaptionChanged(object sender, TextChangedEventArgs e)
	{
		Text = ((e.Text == null) ? Bar.BarName : e.Text);
	}

	protected internal override Size CalculateFloatingSize()
	{
		if (Bar != null && (Bar.BarStyle & BarStyle.IsMainMenu) != BarStyle.None)
		{
			rcFloat.Size = Size.Empty;
		}
		return base.CalculateFloatingSize();
	}
}
