using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[Description("A splitter control provides support for dynamic splitting of the viewable area.")]
[ToolboxBitmap(typeof(SplitterControl), "ToolboxIcons.SplitterControl.bmp")]
[ToolboxItem(true)]
public class SplitterControl : ContainerControl, IControlToolTipProvider, IInternalSplitterParent, IScrollBarFrame, IDynamicSplitterFrame, IThemedControl, IContainerControl
{
	internal const int SWP_NOSIZE = 1;

	internal const int SWP_NOMOVE = 2;

	internal const int SWP_NOZORDER = 4;

	internal const int SWP_NOACTIVATE = 16;

	internal const int SWP_NOREDRAW = 32;

	internal const int SWP_SHOWWINDOW = 64;

	internal const int SWP_HIDEWINDOW = 128;

	internal const int SWP_DRAWFRAME = 32;

	internal ControlToolTip toolTipProvider;

	private bool showToolTips;

	private ButtonLook buttonLook = ButtonLook.Flat;

	private bool supportsFlatScrollBars;

	private bool office2007ScrollBars;

	private bool themesEnabled;

	internal SplitterInfo splitterInfo;

	internal SplitterInfo oSplitterInfo;

	internal ISplitterPaneFactory splitterPaneFactory = new SplitterPaneFactory();

	private Cursor overrideSplitCursor;

	internal Control[] vScrollBars = new Control[2];

	internal Control[] hScrollBars = new Control[2];

	internal InternalSplitter horizontalSplitterBar;

	internal InternalSplitter verticalSplitterBar;

	private ThemedWindowDrawing themedDrawing;

	private FlatScrollBarStyle scrollBarAppearance = FlatScrollBarStyle.Flat;

	private Office2007ColorScheme office2007ScrollBarsColorScheme;

	private Color scrollBarColor = SystemColors.ScrollBar;

	private Rectangle oldHSplitRect = Rectangle.Empty;

	private Rectangle oldVSplitRect = Rectangle.Empty;

	private int relativeSplitBarWidth;

	private int relativeSplitBarHeight;

	private Control disposePane;

	private BorderStyle borderStyle = BorderStyle.Fixed3D;

	internal bool validatingFailed;

	private Form parentForm;

	private int inActivateControl;

	private bool isActiveControl;

	private bool isValidating;

	private bool isDeactivatedCalled;

	private bool hasControlFocus;

	private bool isValidated;

	private ThemedScrollBarDrawing _themedScrollBarDrawing;

	private bool showSizeGrip;

	private bool showVerticalScrollBar = true;

	private bool showHorizontalScrollBar = true;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int RowCount
	{
		get
		{
			if (VSplitPos == 100)
			{
				return 1;
			}
			return 2;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int ColumnCount
	{
		get
		{
			if (HSplitPos == 100)
			{
				return 1;
			}
			return 2;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Behavior")]
	[Browsable(false)]
	[Description("The currently active control.")]
	public Control ActivePane
	{
		get
		{
			return GetPane(splitterInfo.activeRow, splitterInfo.activeColumn);
		}
		set
		{
			if (FindPane(value, out var row, out var column))
			{
				SetActivePane(row, column);
			}
		}
	}

	protected override Size DefaultSize => new Size(130, 80);

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.Style |= 33554432;
			switch (borderStyle)
			{
			case BorderStyle.Fixed3D:
				createParams.ExStyle |= 512;
				break;
			case BorderStyle.FixedSingle:
				createParams.Style |= 8388608;
				break;
			}
			if (RightToLeft == RightToLeft.Yes)
			{
				createParams.ExStyle |= 8192;
			}
			else
			{
				createParams.ExStyle &= -8193;
			}
			return createParams;
		}
	}

	[Description("The border style of the control.")]
	[DefaultValue(BorderStyle.Fixed3D)]
	[Category("Appearance")]
	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (borderStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				borderStyle = value;
				UpdateStyles();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether themes are enabled for this control.")]
	public virtual bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether ToolTips are being shown for tabs that have ToolTips set on them.")]
	public bool ShowToolTips
	{
		get
		{
			return showToolTips;
		}
		set
		{
			if (showToolTips != value)
			{
				showToolTips = value;
				if (!value && toolTipProvider != null)
				{
					toolTipProvider.Destroy();
					toolTipProvider = null;
				}
				OnShowToolTipsChanged(EventArgs.Empty);
				PerformLayout();
			}
		}
	}

	internal ControlToolTip ToolTipProvider => toolTipProvider;

	[Description("Indicates if arrow buttons should be drawn flat or raised.")]
	[DefaultValue(ButtonLook.Flat)]
	public ButtonLook ButtonLook
	{
		get
		{
			return buttonLook;
		}
		set
		{
			if (buttonLook != value)
			{
				buttonLook = value;
				OnButtonLookChanged(EventArgs.Empty);
				Refresh();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public SplitterLayout CurrentLayout
	{
		get
		{
			if (splitterInfo.splitterLayout == null)
			{
				splitterInfo.splitterLayout = new SplitterLayout();
			}
			return splitterInfo.splitterLayout;
		}
	}

	Control IContainerControl.ActiveControl
	{
		get
		{
			return base.ActiveControl;
		}
		set
		{
			ActivateControl(value);
		}
	}

	public new Control ActiveControl
	{
		get
		{
			return base.ActiveControl;
		}
		set
		{
			ActivateControl(value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsValidating => isValidating;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsValidated => isValidated;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsActiveControl => isActiveControl;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsDeactivated => isDeactivatedCalled;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasControlFocus => hasControlFocus;

	DynamicSplitBars IDynamicSplitterFrame.SplitBars => SplitBars;

	int IDynamicSplitterFrame.RowCount => RowCount;

	int IDynamicSplitterFrame.ColumnCount => ColumnCount;

	Control IDynamicSplitterFrame.ActivePane
	{
		get
		{
			return ActivePane;
		}
		set
		{
			ActivePane = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates the splitter behavior that should be supported.")]
	public DynamicSplitBars SplitBars
	{
		get
		{
			if (splitterInfo == null)
			{
				return DynamicSplitBars.None;
			}
			return splitterInfo.splitBars;
		}
		set
		{
			if (SplitBars != value)
			{
				splitterInfo.splitBars = value;
				UpdateSplitter();
				OnSplitBarsChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(100)]
	[Description("The horizontal splitter position in percentages of the width.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int HSplitPos
	{
		get
		{
			if ((SplitBars & DynamicSplitBars.SplitColumns) == 0)
			{
				return 100;
			}
			SplitterLayout splitterLayout = SplitterLayout;
			int num = splitterLayout._hSplitPos;
			if (num < 5 || num > 98)
			{
				num = 100;
			}
			return num;
		}
		set
		{
			if (value < 5)
			{
				value = 0;
			}
			else if (value > 98)
			{
				value = 100;
			}
			if (value != HSplitPos)
			{
				SplitterLayout splitterLayout = SplitterLayout;
				UpdateSplitter(value, splitterLayout._vSplitPos);
				OnHSplitPosChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(100)]
	[Description("The horizontal splitter position in percentages of the height.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int VSplitPos
	{
		get
		{
			if ((SplitBars & DynamicSplitBars.SplitRows) == 0)
			{
				return 100;
			}
			SplitterLayout splitterLayout = SplitterLayout;
			int num = splitterLayout._vSplitPos;
			if (num < 5 || num > 98)
			{
				num = 100;
			}
			return num;
		}
		set
		{
			if (value < 5)
			{
				value = 0;
			}
			else if (value > 98)
			{
				value = 100;
			}
			if (value != VSplitPos)
			{
				SplitterLayout splitterLayout = SplitterLayout;
				UpdateSplitter(splitterLayout._hSplitPos, value);
				OnVSplitPosChanged(EventArgs.Empty);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual SplitterLayout SplitterLayout
	{
		get
		{
			if (splitterInfo.splitterLayout == null)
			{
				splitterInfo.splitterLayout = new SplitterLayout();
			}
			return splitterInfo.splitterLayout;
		}
		set
		{
			if (splitterInfo.splitterLayout != value)
			{
				splitterInfo.splitterLayout = value;
				UpdateSplitter();
				OnSplitterLayoutChanged(EventArgs.Empty);
			}
		}
	}

	Cursor IInternalSplitterParent.OverrideCursor
	{
		get
		{
			return overrideSplitCursor;
		}
		set
		{
			if (overrideSplitCursor != value)
			{
				overrideSplitCursor = value;
				if (base.IsHandleCreated)
				{
					NativeMethods.SendMessage(base.Handle, 32, base.Handle, 1);
				}
			}
		}
	}

	private ThemedScrollBarDrawing themedScrollBarDrawing
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && _themedScrollBarDrawing == null)
			{
				_themedScrollBarDrawing = new ThemedScrollBarDrawing();
			}
			return _themedScrollBarDrawing;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Gets or sets if a size grip box should be shown.")]
	public bool ShowSizeGrip
	{
		get
		{
			return showSizeGrip;
		}
		set
		{
			if (showSizeGrip != value)
			{
				showSizeGrip = value;
				Refresh();
				OnShowSizeGripChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[Description("Toggle between standard and flat scrollbars.")]
	[DefaultValue(false)]
	[Obsolete("Use Office2007ScrollBars instead.")]
	public bool SupportsFlatScrollBars
	{
		get
		{
			return supportsFlatScrollBars;
		}
		set
		{
			if (supportsFlatScrollBars != value)
			{
				SuspendLayout();
				supportsFlatScrollBars = value;
				for (int i = 0; i < 2; i++)
				{
					if (hScrollBars[i] is IScrollBarContainer)
					{
						if (hScrollBars[i] is IScrollBarContainer scrollBarContainer)
						{
							scrollBarContainer.ScrollBar = CreateScrollBar(ScrollBars.Horizontal, i);
						}
					}
					else if (hScrollBars[i] != null)
					{
						base.Controls.Remove(hScrollBars[i]);
						hScrollBars[i] = CreateScrollBar(ScrollBars.Horizontal, i);
						base.Controls.Add(hScrollBars[i]);
					}
				}
				for (int i = 0; i < 2; i++)
				{
					if (vScrollBars[i] is IScrollBarContainer)
					{
						if (vScrollBars[i] is IScrollBarContainer scrollBarContainer2)
						{
							scrollBarContainer2.ScrollBar = CreateScrollBar(ScrollBars.Horizontal, i) as ScrollBar;
						}
					}
					else if (vScrollBars[i] != null)
					{
						base.Controls.Remove(vScrollBars[i]);
						vScrollBars[i] = CreateScrollBar(ScrollBars.Vertical, i);
						base.Controls.Add(vScrollBars[i]);
					}
				}
				ResumeLayout(performLayout: false);
				Refresh();
			}
			OnSupportsFlatScrollBarsChanged(EventArgs.Empty);
		}
	}

	[Obsolete("Use Office2007ScrollBarsColorScheme instead.")]
	[Description("Style of flat scrollbars.")]
	[DefaultValue(FlatScrollBarStyle.Flat)]
	[Browsable(false)]
	public FlatScrollBarStyle ScrollBarAppearance
	{
		get
		{
			return scrollBarAppearance;
		}
		set
		{
			if (scrollBarAppearance == value)
			{
				return;
			}
			scrollBarAppearance = value;
			if (SupportsFlatScrollBars)
			{
				for (int i = 0; i < 2; i++)
				{
					if (GetContainedScrollBar(hScrollBars[i]) is FlatScrollBar flatScrollBar)
					{
						flatScrollBar.Appearance = scrollBarAppearance;
					}
				}
				for (int j = 0; j < 2; j++)
				{
					if (GetContainedScrollBar(vScrollBars[j]) is FlatScrollBar flatScrollBar2)
					{
						flatScrollBar2.Appearance = scrollBarAppearance;
					}
				}
			}
			OnScrollBarAppearanceChanged(EventArgs.Empty);
		}
	}

	[Obsolete("Use Office2007ScrollBarsColorScheme instead.")]
	[Browsable(false)]
	[Description("Backcolor for flat scrollbars.")]
	public Color ScrollBarColor
	{
		get
		{
			return scrollBarColor;
		}
		set
		{
			if (!(scrollBarColor != value))
			{
				return;
			}
			SuspendLayout();
			scrollBarColor = value;
			if (SupportsFlatScrollBars)
			{
				for (int i = 0; i < 2; i++)
				{
					if (hScrollBars[i] is FlatScrollBar)
					{
						base.Controls.Remove(hScrollBars[i]);
						hScrollBars[i] = CreateScrollBar(ScrollBars.Horizontal, i);
						base.Controls.Add(hScrollBars[i]);
					}
					else if (hScrollBars[i] is IScrollBarContainer scrollBarContainer && scrollBarContainer.ScrollBar is FlatScrollBar)
					{
						scrollBarContainer.ScrollBar = CreateScrollBar(ScrollBars.Horizontal, i);
					}
				}
				for (int i = 0; i < 2; i++)
				{
					if (vScrollBars[i] is FlatScrollBar)
					{
						base.Controls.Remove(vScrollBars[i]);
						vScrollBars[i] = CreateScrollBar(ScrollBars.Vertical, i);
						base.Controls.Add(vScrollBars[i]);
					}
					else if (vScrollBars[i] is IScrollBarContainer scrollBarContainer2 && scrollBarContainer2.ScrollBar is FlatScrollBar)
					{
						scrollBarContainer2.ScrollBar = CreateScrollBar(ScrollBars.Horizontal, i) as ScrollBar;
					}
				}
			}
			OnScrollBarColorChanged(EventArgs.Empty);
			ResumeLayout();
			Refresh();
		}
	}

	[Description("Toggle between standard and Office2007 scrollbars.")]
	[DefaultValue(false)]
	public virtual bool Office2007ScrollBars
	{
		get
		{
			return office2007ScrollBars;
		}
		set
		{
			if (office2007ScrollBars != value)
			{
				SuspendLayout();
				office2007ScrollBars = value;
				for (int i = 0; i < 2; i++)
				{
					if (hScrollBars[i] is IScrollBarContainer)
					{
						if (hScrollBars[i] is IScrollBarContainer scrollBarContainer)
						{
							scrollBarContainer.ScrollBar = CreateScrollBar(ScrollBars.Horizontal, i);
						}
					}
					else if (hScrollBars[i] != null)
					{
						base.Controls.Remove(hScrollBars[i]);
						hScrollBars[i].Dispose();
						hScrollBars[i] = CreateScrollBar(ScrollBars.Horizontal, i);
						base.Controls.Add(hScrollBars[i]);
					}
				}
				for (int i = 0; i < 2; i++)
				{
					if (vScrollBars[i] is IScrollBarContainer)
					{
						if (vScrollBars[i] is IScrollBarContainer scrollBarContainer2)
						{
							scrollBarContainer2.ScrollBar = CreateScrollBar(ScrollBars.Horizontal, i) as ScrollBar;
						}
					}
					else if (vScrollBars[i] != null)
					{
						base.Controls.Remove(vScrollBars[i]);
						vScrollBars[i].Dispose();
						vScrollBars[i] = CreateScrollBar(ScrollBars.Vertical, i);
						base.Controls.Add(vScrollBars[i]);
					}
				}
				ResumeLayout(performLayout: false);
				Refresh();
			}
			OnOffice2007ScrollBarsChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	[Description("Office 2007 style scrollbars")]
	[DefaultValue(Office2007ColorScheme.Blue)]
	public virtual Office2007ColorScheme Office2007ScrollBarsColorScheme
	{
		get
		{
			return office2007ScrollBarsColorScheme;
		}
		set
		{
			if (office2007ScrollBarsColorScheme == value)
			{
				return;
			}
			office2007ScrollBarsColorScheme = value;
			if (Office2007ScrollBars)
			{
				for (int i = 0; i < 2; i++)
				{
					if (GetContainedScrollBar(hScrollBars[i]) is ScrollBarCustomDraw scrollBarCustomDraw)
					{
						scrollBarCustomDraw.OfficeColorScheme = office2007ScrollBarsColorScheme;
					}
				}
				for (int j = 0; j < 2; j++)
				{
					if (GetContainedScrollBar(vScrollBars[j]) is ScrollBarCustomDraw scrollBarCustomDraw2)
					{
						scrollBarCustomDraw2.OfficeColorScheme = office2007ScrollBarsColorScheme;
					}
				}
				OnOffice2007ScrollBarsColorSchemeChanged(EventArgs.Empty);
			}
			if (base.DesignMode)
			{
				Office2007ScrollBars = true;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ISplitterPaneFactory SplitterPaneFactory
	{
		get
		{
			return splitterPaneFactory;
		}
		set
		{
			splitterPaneFactory = value;
		}
	}

	internal Rectangle InnerBounds => splitterInfo.innerBounds;

	[Description("Toggles visibility of the vertical scrollbar.")]
	[DefaultValue(true)]
	public bool ShowVerticalScrollBar
	{
		get
		{
			return showVerticalScrollBar;
		}
		set
		{
			if (showVerticalScrollBar != value)
			{
				showVerticalScrollBar = value;
				OnShowVerticalScrollBarChanged(EventArgs.Empty);
				PerformLayout();
			}
		}
	}

	[Description("Toggles visibility of the Horizontal scrollbar.")]
	[DefaultValue(true)]
	public bool ShowHorizontalScrollBar
	{
		get
		{
			return showHorizontalScrollBar;
		}
		set
		{
			if (showHorizontalScrollBar != value)
			{
				showHorizontalScrollBar = value;
				OnShowHorizontalScrollBarChanged(EventArgs.Empty);
				PerformLayout();
			}
		}
	}

	[Description("Occurs when the window receives a WM_CANCELMODE message.")]
	public event EventHandler CancelMode;

	[Description("Occurs when the SplitBars property has changed.")]
	public event EventHandler SplitBarsChanged;

	[Description("Occurs when the vertical splitter position has changed.")]
	public event EventHandler VSplitPosChanged;

	[Description("Occurs when the horizontal splitter position has changed.")]
	public event EventHandler HSplitPosChanged;

	[Description("Occurs when the splitter layout has changed.")]
	public event EventHandler SplitterLayoutChanged;

	[Description("Occurs when the ButtonLook property has changed.")]
	public event EventHandler ButtonLookChanged;

	[Description("Occurs when the ScrollBarAppearance property has changed.")]
	public event EventHandler ScrollBarAppearanceChanged;

	[Description("Occurs when the Office2007ColorScheme property has changed.")]
	public event EventHandler Office2007ScrollBarsColorSchemeChanged;

	[Description("Occurs when the ScrollBarColor property has changed.")]
	public event EventHandler ScrollBarColorChanged;

	[Description("Occurs when the ShowToolTips property has changed.")]
	public event EventHandler ShowToolTipsChanged;

	[Description("Occurs when the SupportsFlatScrollBars property has changed.")]
	public event EventHandler SupportsFlatScrollBarsChanged;

	[Description("Occurs when the SupportsOffice2007FlatScrollBars property has changed.")]
	public event EventHandler Office2007ScrollBarsChanged;

	[Description("Occurs when the ThemesEnabled property has changed.")]
	public event EventHandler ThemeChanged;

	[Description("Occurs after the control to be displayed in a new pane has been created.")]
	public event SplitterPaneEventHandler PaneCreated;

	[Description("Occurs after a row or column is hidden and before the control that is displayed in the pane is disposed.")]
	public event SplitterPaneEventHandler PaneClosing;

	[Description("Occurs when both OnControlLostFocus and OnLeave occur.")]
	public event EventHandler Deactivated;

	[Description("Occurs when the ShowSizeGrip property has changed.")]
	public event EventHandler ShowSizeGripChanged;

	[Description("Occurs when the ShowVerticalScrollBar property has changed.")]
	public event EventHandler ShowVerticalScrollBarChanged;

	[Description("Occurs when the ShowHorizontalScrollBar property has changed.")]
	public event EventHandler ShowHorizontalScrollBarChanged;

	public SplitterControl()
	{
		oSplitterInfo = (splitterInfo = new SplitterInfo(this));
		horizontalSplitterBar = new InternalSplitter(this, InternalSplitterKind.HorizontalBar);
		verticalSplitterBar = new InternalSplitter(this, InternalSplitterKind.VerticalBar);
		SetStyle(ControlStyles.ResizeRedraw, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.Selectable, value: true);
		SetStyle(ControlStyles.ContainerControl, value: true);
		ButtonLook = ButtonLook.Flat;
		if (XPThemes.IsThemedOS && themedDrawing == null)
		{
			themedDrawing = new ThemedWindowDrawing();
		}
	}

	public bool SplitRow(int cy)
	{
		if (cy >= splitterInfo.innerBounds.Height || cy <= 0)
		{
			return false;
		}
		CurrentLayout._vSplitPos = cy * 100 / (splitterInfo.verticalBarBounds.Height - 14);
		PerformLayout();
		return true;
	}

	public bool SplitColumn(int cx)
	{
		if (cx >= splitterInfo.innerBounds.Width || cx < 0)
		{
			return false;
		}
		CurrentLayout._hSplitPos = cx * 100 / (splitterInfo.horizontalBarBounds.Width - 14);
		PerformLayout();
		return true;
	}

	public void DeleteRow(int row)
	{
		if (RowCount != 2 || row >= 2)
		{
			return;
		}
		SuspendLayout();
		for (int i = 0; i <= 1; i++)
		{
			DisposePane(row, i);
			if (row == 0)
			{
				splitterInfo.splitterPanes[0, i] = splitterInfo.splitterPanes[1, i];
				splitterInfo.splitterPanes[1, i] = null;
			}
		}
		if (row == 0)
		{
			CopyScrollBarSettings(vScrollBars[0], vScrollBars[1]);
		}
		CurrentLayout._vSplitPos = 100;
		splitterInfo.activeRow = 0;
		relativeSplitBarHeight = 0;
		Control pane = GetPane(splitterInfo.activeRow, splitterInfo.activeColumn);
		((IContainerControl)splitterInfo.splitterControl).ActivateControl(pane);
		ResumeLayout();
		Invalidate();
	}

	public void DeleteColumn(int column)
	{
		if (ColumnCount != 2 || column >= 2)
		{
			return;
		}
		SuspendLayout();
		for (int i = 0; i <= 1; i++)
		{
			DisposePane(i, column);
			if (column == 0)
			{
				splitterInfo.splitterPanes[i, 0] = splitterInfo.splitterPanes[i, 1];
				splitterInfo.splitterPanes[i, 1] = null;
			}
		}
		if (column == 0)
		{
			CopyScrollBarSettings(hScrollBars[0], hScrollBars[1]);
		}
		CurrentLayout._hSplitPos = 100;
		splitterInfo.activeColumn = 0;
		relativeSplitBarWidth = 0;
		Control pane = GetPane(splitterInfo.activeRow, splitterInfo.activeColumn);
		((IContainerControl)splitterInfo.splitterControl).ActivateControl(pane);
		ResumeLayout();
		Invalidate();
	}

	private void CopyScrollBarSettings(Control target, Control source)
	{
		ScrollBarAdapter scrollBarAdapter = new ScrollBarAdapter(GetContainedScrollBar(source));
		ScrollBarAdapter scrollBarAdapter2 = new ScrollBarAdapter(GetContainedScrollBar(target));
		try
		{
			if (scrollBarAdapter2 != null && scrollBarAdapter != null)
			{
				scrollBarAdapter2.Minimum = scrollBarAdapter.Minimum;
				scrollBarAdapter2.Maximum = scrollBarAdapter.Maximum;
				scrollBarAdapter2.SmallChange = scrollBarAdapter.SmallChange;
				scrollBarAdapter2.LargeChange = scrollBarAdapter.LargeChange;
				scrollBarAdapter2.Value = scrollBarAdapter.Value;
				scrollBarAdapter2.Enabled = scrollBarAdapter.Enabled;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public virtual Control GetPane(int row, int column)
	{
		row %= 2;
		column %= 2;
		if (row == 0 && column == 0 && splitterInfo.splitterPanes[0, 0] == null && splitterInfo.splitterControl.Controls.Count > 0)
		{
			foreach (Control control3 in splitterInfo.splitterControl.Controls)
			{
				if (!(control3 is ScrollBar) && !(control3 is IScrollBarContainer) && !(control3 is TabBarPage) && !(control3 is ScrollBarCustomDraw))
				{
					splitterInfo.splitterPanes[row, column] = control3;
					control3.GotFocus += OnChildControlGotFocus;
					control3.Enter += OnChildControlEnter;
					control3.Dock = DockStyle.None;
					break;
				}
			}
		}
		if (splitterInfo.splitterPanes[row, column] == null)
		{
			splitterInfo.splitterControl.SuspendLayout();
			Control mainControl = null;
			if (column > 0)
			{
				mainControl = splitterInfo.splitterPanes[row, 0];
			}
			else if (row > 0)
			{
				mainControl = splitterInfo.splitterPanes[0, column];
			}
			Control control2 = OnCreateNewControl(row, column, mainControl);
			if (control2 != null)
			{
				splitterInfo.splitterPanes[row, column] = control2;
				control2.GotFocus += OnChildControlGotFocus;
				control2.Enter += OnChildControlEnter;
			}
			splitterInfo.splitterControl.ResumeLayout(performLayout: false);
		}
		return splitterInfo.splitterPanes[row, column];
	}

	public virtual Control GetPaneInternal(int row, int column)
	{
		return splitterInfo.splitterPanes[row, column];
	}

	public virtual void DisposePane(int row, int column)
	{
		Control control = splitterInfo.splitterPanes[row, column];
		if (control != null)
		{
			ISplitterPaneSupport splitterPaneSupport = control as ISplitterPaneSupport;
			splitterPaneSupport?.PaneClosing();
			control.GotFocus -= OnChildControlGotFocus;
			control.Enter -= OnChildControlEnter;
			OnPaneClosing(new SplitterPaneEventArgs(control, row, column, splitterInfo.splitterControl));
			splitterPaneFactory.DisposeControl(row, column, control, splitterInfo.splitterControl);
			splitterInfo.splitterPanes[row, column] = null;
			SuspendLayout();
			if (control.Parent != null)
			{
				disposePane = control;
				splitterInfo.splitterControl.Controls.Remove(control);
				disposePane = null;
				control.Dispose();
			}
			splitterPaneSupport?.PaneClosed();
			ResumeLayout(performLayout: false);
		}
	}

	private void OnChildControlGotFocus(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (inActivateControl == 0 && !validatingFailed && control != null && (ActiveControl == control || control.Contains(ActiveControl)) && FindPane(control, out var row, out var column))
		{
			splitterInfo.activeRow = row;
			splitterInfo.activeColumn = column;
		}
	}

	private void OnChildControlEnter(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (inActivateControl == 0 && FindPane(control, out var row, out var column))
		{
			splitterInfo.activeRow = row;
			splitterInfo.activeColumn = column;
		}
	}

	protected virtual Control OnCreateNewControl(int row, int column, Control mainControl)
	{
		SuspendLayout();
		splitterInfo.splitterControl.SuspendLayout();
		Control control = splitterPaneFactory.CreateNewControl(row, column, mainControl, splitterInfo.splitterControl);
		try
		{
			if (control == null)
			{
				return null;
			}
			control.Visible = false;
			ScrollControl scrollControl = mainControl as ScrollControl;
			ScrollControl scrollControl2 = control as ScrollControl;
			if (scrollControl != null && scrollControl2 != null)
			{
				scrollControl2.VScroll = false;
				scrollControl2.HScroll = false;
				scrollControl2.AccelerateScrolling = scrollControl.AccelerateScrolling;
				scrollControl2.AllowIncreaseSmallChange = scrollControl.AllowIncreaseSmallChange;
			}
			IScrollBarWrapperContainer scrollBarWrapperContainer = mainControl as IScrollBarWrapperContainer;
			if (control is IScrollBarWrapperContainer scrollBarWrapperContainer2)
			{
				if (scrollBarWrapperContainer != null)
				{
					scrollBarWrapperContainer2.HScrollBar.SupportsScrollTips = scrollBarWrapperContainer.HScrollBar.SupportsScrollTips;
					scrollBarWrapperContainer2.HScrollBar.SupportsThumbTrack = scrollBarWrapperContainer.HScrollBar.SupportsThumbTrack;
					scrollBarWrapperContainer2.VScrollBar.SupportsScrollTips = scrollBarWrapperContainer.VScrollBar.SupportsScrollTips;
					scrollBarWrapperContainer2.VScrollBar.SupportsThumbTrack = scrollBarWrapperContainer.VScrollBar.SupportsThumbTrack;
				}
				if (row > 0 && splitterInfo.splitterPanes[0, column] is IScrollBarWrapperContainer scrollBarWrapperContainer3)
				{
					scrollBarWrapperContainer3.HScrollBar.CopyTo(scrollBarWrapperContainer2.HScrollBar);
				}
				if (column > 0 && splitterInfo.splitterPanes[row, 0] is IScrollBarWrapperContainer scrollBarWrapperContainer4)
				{
					scrollBarWrapperContainer4.VScrollBar.CopyTo(scrollBarWrapperContainer2.VScrollBar);
				}
			}
			control.GotFocus += OnChildControlGotFocus;
			control.Enter += OnChildControlEnter;
			control.AllowDrop = mainControl.AllowDrop;
			control.CausesValidation = mainControl.CausesValidation;
			ISupportIntelliMouse supportIntelliMouse = mainControl as ISupportIntelliMouse;
			ISupportIntelliMouse supportIntelliMouse2 = control as ISupportIntelliMouse;
			if (supportIntelliMouse != null && supportIntelliMouse2 != null)
			{
				supportIntelliMouse2.EnableIntelliMouse = supportIntelliMouse.EnableIntelliMouse;
			}
			OnPaneCreated(new SplitterPaneEventArgs(control, row, column, mainControl));
			return control;
		}
		finally
		{
			splitterInfo.splitterControl.ResumeLayout(performLayout: false);
			ResumeLayout(performLayout: false);
		}
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		_ControlAdded(e);
		SuspendLayout();
		if (e.Control is IThemedControl themedControl)
		{
			themedControl.ThemesEnabled = ThemesEnabled;
		}
		ResumeLayout(performLayout: false);
	}

	protected virtual void OnPaneCreated(SplitterPaneEventArgs e)
	{
		if (this.PaneCreated != null)
		{
			this.PaneCreated(this, e);
		}
	}

	protected virtual void OnPaneClosing(SplitterPaneEventArgs e)
	{
		if (this.PaneClosing != null)
		{
			this.PaneClosing(this, e);
		}
	}

	public bool FindPane(Control control, out int row, out int column)
	{
		if (control != null)
		{
			for (row = 0; row <= 1; row++)
			{
				for (column = 0; column <= 1; column++)
				{
					if (splitterInfo.splitterPanes[row, column] == control)
					{
						return true;
					}
				}
			}
		}
		row = -1;
		column = -1;
		return false;
	}

	public void SetActivePane(int row, int column)
	{
		if (row != splitterInfo.activeRow || column != splitterInfo.activeColumn)
		{
			IContainerControl containerControl = (IContainerControl)splitterInfo.splitterControl;
			Control pane = GetPane(row, column);
			if (containerControl.ActivateControl(pane))
			{
				splitterInfo.activeRow = row;
				splitterInfo.activeColumn = column;
			}
			else
			{
				ActivePane.Focus();
			}
		}
	}

	public bool CanActivateNext(bool prev)
	{
		if (!prev)
		{
			if (splitterInfo.activeRow >= RowCount - 1)
			{
				return splitterInfo.activeRow < ColumnCount - 1;
			}
			return true;
		}
		if (splitterInfo.activeRow <= 0)
		{
			return splitterInfo.activeRow > 0;
		}
		return true;
	}

	protected override bool ProcessDialogKey(Keys key)
	{
		if (base.IsDisposed)
		{
			return true;
		}
		Keys keys = key & Keys.KeyCode;
		bool prev = (Control.ModifierKeys & Keys.Shift) != 0;
		_ = Control.ModifierKeys;
		Keys keys2 = keys;
		if (keys2 == Keys.F6)
		{
			ActivateNext(prev);
			return true;
		}
		return base.ProcessDialogKey(key);
	}

	public void ActivateNext(bool prev)
	{
		int num = splitterInfo.activeRow;
		int activeColumn = splitterInfo.activeColumn;
		if (!prev)
		{
			if (activeColumn < ColumnCount - 1)
			{
				activeColumn++;
			}
			else if (num < RowCount - 1)
			{
				num++;
				activeColumn = 0;
			}
			else
			{
				num = (activeColumn = 0);
			}
		}
		else if (activeColumn > 0)
		{
			activeColumn--;
		}
		else if (num > 0)
		{
			num--;
			activeColumn = ColumnCount - 1;
		}
		else
		{
			activeColumn = ColumnCount - 1;
			num = RowCount - 1;
		}
		SetActivePane(num, activeColumn);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			foreach (Control control in base.Controls)
			{
				control.GotFocus -= ChildGotFocus;
				control.LostFocus -= ChildLostFocus;
			}
			if (horizontalSplitterBar != null)
			{
				horizontalSplitterBar.Dispose();
				horizontalSplitterBar = null;
			}
			if (verticalSplitterBar != null)
			{
				verticalSplitterBar.Dispose();
				verticalSplitterBar = null;
			}
			if (toolTipProvider != null)
			{
				toolTipProvider.Destroy();
				toolTipProvider = null;
			}
			if (themedDrawing != null)
			{
				themedDrawing.Dispose();
				themedDrawing = null;
			}
			if (_themedScrollBarDrawing != null)
			{
				_themedScrollBarDrawing.Dispose();
				_themedScrollBarDrawing = null;
			}
			if (splitterInfo != null)
			{
				splitterInfo.Dispose();
				splitterInfo = null;
			}
			if (oSplitterInfo != null)
			{
				oSplitterInfo.Dispose();
				oSplitterInfo = null;
			}
			hScrollBars = null;
			vScrollBars = null;
		}
		base.Dispose(disposing);
	}

	public override string ToString()
	{
		string text = base.Name + $"P{splitterInfo.activeRow}.{splitterInfo.activeColumn}/{RowCount}.{ColumnCount} ";
		if (IsActiveControl)
		{
			text += "Act";
		}
		if (IsValidating)
		{
			text += "Val";
		}
		if (IsValidated)
		{
			text += "Vok";
		}
		if (HasControlFocus)
		{
			text += "Foh";
		}
		if (QueryFocusInside())
		{
			text += "Foi";
		}
		if (validatingFailed)
		{
			text += "Vfa";
		}
		if (base.CanFocus)
		{
			text += "Cfo";
		}
		text += ": ";
		return text + ((ActiveControl == null || ActiveControl.IsDisposed) ? "null" : ActiveControl.ToString());
	}

	internal static Control GetContainedScrollBar(Control c)
	{
		if (c is ScrollBar)
		{
			return c;
		}
		if (c is ScrollBarCustomDraw)
		{
			return c;
		}
		if (c is IScrollBarContainer)
		{
			return ((IScrollBarContainer)c).ScrollBar;
		}
		return null;
	}

	public bool IsActive(Control control, ScrollBars sbType)
	{
		if (FindPane(control, out var row, out var column))
		{
			if (sbType == ScrollBars.Vertical)
			{
				return column == splitterInfo.activeColumn;
			}
			return row == splitterInfo.activeRow;
		}
		return false;
	}

	public virtual Control GetHScrollBar(Control control)
	{
		if (!FindPane(control, out var _, out var column))
		{
			column = 0;
		}
		return GetContainedScrollBar(hScrollBars[column]);
	}

	public virtual Control GetVScrollBar(Control control)
	{
		if (!FindPane(control, out var row, out var _))
		{
			row = 0;
		}
		return GetContainedScrollBar(vScrollBars[row]);
	}

	[DocumentationExclude]
	protected virtual void OnSetCursor(ref Message m)
	{
		if (overrideSplitCursor != null)
		{
			Cursor.Current = overrideSplitCursor;
		}
		else
		{
			Cursor.Current = Cursor;
		}
	}

	protected virtual void OnCancelMode(EventArgs e)
	{
		if (this.CancelMode != null)
		{
			this.CancelMode(this, e);
		}
		if (horizontalSplitterBar != null)
		{
			horizontalSplitterBar.CancelMode();
		}
		if (verticalSplitterBar != null)
		{
			verticalSplitterBar.CancelMode();
		}
		if (toolTipProvider != null)
		{
			toolTipProvider.ActivateToolTip();
		}
		for (int i = 0; i < 5; i++)
		{
			ResumeLayout(performLayout: false);
		}
	}

	private void WmSetCursor(ref Message m)
	{
		if (m.WParam == base.Handle && ((int)m.LParam & 0xFFFF) == 1)
		{
			OnSetCursor(ref m);
		}
		else
		{
			DefWndProc(ref m);
		}
	}

	private void WmNcPaint(ref Message msg)
	{
		if (XPThemes.IsThemedOS && ThemesEnabled && themedDrawing != null)
		{
			themedDrawing.DrawThemedBorderColor(this, ref msg);
		}
		base.WndProc(ref msg);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (base.DesignMode)
		{
			base.WndProc(ref msg);
			return;
		}
		switch (msg.Msg)
		{
		case 133:
			WmNcPaint(ref msg);
			break;
		case 32:
			WmSetCursor(ref msg);
			break;
		case 31:
			OnCancelMode(EventArgs.Empty);
			break;
		default:
			base.WndProc(ref msg);
			break;
		}
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			try
			{
				this.ThemeChanged(this, e);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
			}
		}
		foreach (Control control in base.Controls)
		{
			if (control is IThemedControl themedControl)
			{
				themedControl.ThemesEnabled = ThemesEnabled;
			}
		}
	}

	protected virtual void OnShowToolTipsChanged(EventArgs e)
	{
		if (this.ShowToolTipsChanged != null)
		{
			this.ShowToolTipsChanged(this, e);
		}
	}

	ControlToolTip IControlToolTipProvider.GetControlToolTip()
	{
		if (showToolTips && !base.DesignMode && toolTipProvider == null)
		{
			toolTipProvider = new ControlToolTip(this);
			toolTipProvider.CreateToolTipHandle();
		}
		return toolTipProvider;
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		ResetToolTips();
		if (toolTipProvider != null)
		{
			toolTipProvider.Destroy();
			toolTipProvider = null;
		}
		base.OnHandleDestroyed(e);
	}

	public virtual void ResetToolTips()
	{
		if (horizontalSplitterBar != null)
		{
			horizontalSplitterBar.ResetToolTip();
		}
		if (verticalSplitterBar != null)
		{
			verticalSplitterBar.ResetToolTip();
		}
	}

	protected override void OnMouseDown(MouseEventArgs mevent)
	{
		base.OnMouseDown(mevent);
		if (toolTipProvider != null)
		{
			toolTipProvider.DeactivateToolTip();
		}
	}

	protected override void OnMouseUp(MouseEventArgs mevent)
	{
		base.OnMouseUp(mevent);
		if (base.IsHandleCreated && toolTipProvider != null)
		{
			toolTipProvider.ActivateToolTip();
		}
	}

	protected virtual void OnButtonLookChanged(EventArgs e)
	{
		if (this.ButtonLookChanged != null)
		{
			this.ButtonLookChanged(this, e);
		}
	}

	protected virtual Control CreateScrollBarContainer(ScrollBars sbType, int index)
	{
		return CreateScrollBar(sbType, index);
	}

	protected virtual Control CreateScrollBar(ScrollBars sbType, int index)
	{
		if (SupportsFlatScrollBars)
		{
			FlatScrollBar flatScrollBar = ((sbType != ScrollBars.Horizontal) ? ((FlatScrollBar)new FlatVScrollBar()) : ((FlatScrollBar)new FlatHScrollBar()));
			flatScrollBar.Appearance = scrollBarAppearance;
			flatScrollBar.BackColor = scrollBarColor;
			return flatScrollBar;
		}
		if (Office2007ScrollBars)
		{
			ScrollBarCustomDraw scrollBarCustomDraw = ((sbType != ScrollBars.Horizontal) ? ((ScrollBarCustomDraw)new VScrollBarCustomDraw()) : ((ScrollBarCustomDraw)new HScrollBarCustomDraw()));
			scrollBarCustomDraw.VisualStyle = ScrollBarCustomDrawStyles.Office2007;
			scrollBarCustomDraw.OfficeColorScheme = office2007ScrollBarsColorScheme;
			return scrollBarCustomDraw;
		}
		ScrollBar scrollBar = ((sbType != ScrollBars.Horizontal) ? ((ScrollBar)new VScrollBar()) : ((ScrollBar)new HScrollBar()));
		scrollBar.BackColor = scrollBarColor;
		return scrollBar;
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (base.Size.IsEmpty || base.Disposing || (parentForm != null && parentForm.Disposing))
		{
			return;
		}
		if (ToolTipProvider != null)
		{
			ResetToolTips();
		}
		for (int i = 0; i < ColumnCount; i++)
		{
			if (hScrollBars[i] == null)
			{
				hScrollBars[i] = CreateScrollBarContainer(ScrollBars.Horizontal, i);
				hScrollBars[i].TabStop = false;
			}
		}
		for (int j = 0; j < RowCount; j++)
		{
			if (vScrollBars[j] == null)
			{
				vScrollBars[j] = CreateScrollBarContainer(ScrollBars.Vertical, j);
				vScrollBars[j].TabStop = false;
			}
		}
		int num = (ShowHorizontalScrollBar ? SystemInformation.HorizontalScrollBarHeight : 0);
		int num2 = (ShowVerticalScrollBar ? SystemInformation.VerticalScrollBarWidth : 0);
		int num3 = 7;
		splitterInfo.innerBounds = base.ClientRectangle;
		splitterInfo.innerBounds.Width -= num2;
		splitterInfo.innerBounds.Height -= num;
		int bottom = splitterInfo.innerBounds.Bottom;
		splitterInfo.horizontalBarBounds = new Rectangle(splitterInfo.innerBounds.Left, bottom, splitterInfo.innerBounds.Width, num);
		splitterInfo.verticalBarBounds = new Rectangle(splitterInfo.innerBounds.Right, splitterInfo.innerBounds.Top, num2, splitterInfo.innerBounds.Height);
		splitterInfo.sizeGripBounds = new Rectangle(splitterInfo.innerBounds.Right, bottom, num2, num);
		if (!base.DesignMode && HSplitPos != 100)
		{
			int num4 = splitterInfo.horizontalBarBounds.Width * HSplitPos / 100 - num3;
			splitterInfo.hLeftBarBounds = new Rectangle(0, splitterInfo.horizontalBarBounds.Top, num4, num);
			splitterInfo.hSplitBarBounds = new Rectangle(num4, 0, num3, base.Height);
			num4 += num3;
			splitterInfo.hRightBarBounds = new Rectangle(num4, splitterInfo.horizontalBarBounds.Top, splitterInfo.innerBounds.Width - num4, num);
		}
		else
		{
			splitterInfo.hLeftBarBounds = splitterInfo.horizontalBarBounds;
			if ((SplitBars & DynamicSplitBars.SplitColumns) != DynamicSplitBars.None)
			{
				splitterInfo.hLeftBarBounds.Width -= num3;
				splitterInfo.hSplitBarBounds = new Rectangle(splitterInfo.hLeftBarBounds.Right, splitterInfo.horizontalBarBounds.Top, num3, num);
			}
			else
			{
				splitterInfo.hSplitBarBounds = Rectangle.Empty;
			}
			splitterInfo.hRightBarBounds = Rectangle.Empty;
		}
		if (!base.DesignMode && VSplitPos != 100)
		{
			int num5 = splitterInfo.verticalBarBounds.Height * VSplitPos / 100 - num3;
			splitterInfo.vTopBarBounds = new Rectangle(splitterInfo.verticalBarBounds.Left, 0, num2, num5);
			splitterInfo.vSplitBarBounds = new Rectangle(0, num5, base.Width, num3);
			num5 += num3;
			splitterInfo.vBottomBarBounds = new Rectangle(splitterInfo.verticalBarBounds.Left, num5, num2, splitterInfo.innerBounds.Height - num5);
		}
		else
		{
			splitterInfo.vTopBarBounds = splitterInfo.verticalBarBounds;
			if ((SplitBars & DynamicSplitBars.SplitRows) != DynamicSplitBars.None)
			{
				splitterInfo.vSplitBarBounds = new Rectangle(splitterInfo.vTopBarBounds.Left, splitterInfo.vTopBarBounds.Top, num2, num3);
				splitterInfo.vTopBarBounds.Height -= num3;
				splitterInfo.vTopBarBounds.Y += num3;
			}
			else
			{
				splitterInfo.vSplitBarBounds = Rectangle.Empty;
			}
			splitterInfo.vBottomBarBounds = Rectangle.Empty;
		}
		hScrollBars[0].Bounds = ReverseRectangleRTL(splitterInfo.hLeftBarBounds);
		if (splitterInfo.hRightBarBounds.IsEmpty)
		{
			if (hScrollBars[1] != null)
			{
				hScrollBars[1].Visible = false;
			}
		}
		else
		{
			hScrollBars[1].Bounds = ReverseRectangleRTL(splitterInfo.hRightBarBounds);
			hScrollBars[1].Visible = true;
		}
		if (horizontalSplitterBar != null)
		{
			horizontalSplitterBar.Bounds = ReverseRectangleRTL(splitterInfo.hSplitBarBounds);
		}
		vScrollBars[0].Bounds = ReverseRectangleRTL(splitterInfo.vTopBarBounds);
		if (splitterInfo.vBottomBarBounds.IsEmpty)
		{
			if (vScrollBars[1] != null)
			{
				vScrollBars[1].Visible = false;
			}
		}
		else
		{
			vScrollBars[1].Bounds = ReverseRectangleRTL(splitterInfo.vBottomBarBounds);
			vScrollBars[1].Visible = true;
		}
		if (verticalSplitterBar != null)
		{
			verticalSplitterBar.Bounds = ReverseRectangleRTL(splitterInfo.vSplitBarBounds);
		}
		oldHSplitRect = Rectangle.Empty;
		oldVSplitRect = Rectangle.Empty;
		for (int k = 0; k < ColumnCount; k++)
		{
			if (hScrollBars[k].Parent == null)
			{
				base.Controls.Add(hScrollBars[k]);
			}
		}
		for (int l = 0; l < RowCount; l++)
		{
			if (vScrollBars[l].Parent == null)
			{
				base.Controls.Add(vScrollBars[l]);
			}
		}
		SuspendLayout();
		Invalidate(ReverseRectangleRTL(splitterInfo.innerBounds));
		Invalidate(ReverseRectangleRTL(splitterInfo.hSplitBarBounds));
		Invalidate(ReverseRectangleRTL(splitterInfo.vSplitBarBounds));
		Invalidate(ReverseRectangleRTL(splitterInfo.sizeGripBounds));
		int num6 = (base.DesignMode ? 1 : RowCount);
		int num7 = (base.DesignMode ? 1 : ColumnCount);
		for (int m = 0; m < num6; m++)
		{
			for (int n = 0; n < num7; n++)
			{
				GetPane(m, n);
			}
		}
		for (int num8 = 0; num8 < num6; num8++)
		{
			int num9 = num6 - num8 - 1;
			Rectangle a;
			if (num6 == 1)
			{
				a = splitterInfo.innerBounds;
			}
			else
			{
				a = ((num9 != 0) ? splitterInfo.vBottomBarBounds : splitterInfo.vTopBarBounds);
				a.X = splitterInfo.innerBounds.Left;
				a.Width = splitterInfo.innerBounds.Width;
			}
			for (int num10 = 0; num10 < num7; num10++)
			{
				int num11 = num7 - num10 - 1;
				Rectangle b;
				if (num7 == 1)
				{
					b = splitterInfo.innerBounds;
				}
				else
				{
					b = ((num11 != 0) ? splitterInfo.hRightBarBounds : splitterInfo.hLeftBarBounds);
					b.Y = splitterInfo.innerBounds.Top;
					b.Height = splitterInfo.innerBounds.Height;
				}
				Rectangle r = Rectangle.Intersect(a, b);
				Control pane = GetPane(num9, num11);
				if (pane != null && pane is ISplitterPaneSupport { FillSplitterPane: not false })
				{
					if (pane.Parent == null)
					{
						pane.SuspendLayout();
					}
					if (pane.Parent == null)
					{
						Rectangle bounds = ReverseRectangleRTL(r);
						pane.Bounds = bounds;
					}
					else
					{
						Point location = ReverseRectangleRTL(r).Location;
						pane.Location = location;
						pane.Size = r.Size;
					}
					pane.TabStop = true;
					pane.TabIndex = num9 * 2 + num11;
					if (pane.Parent == null)
					{
						pane.ResumeLayout(performLayout: false);
					}
				}
			}
		}
		ResumeLayout();
		base.OnLayout(levent);
	}

	internal Rectangle ReverseRectangleRTL(Rectangle r)
	{
		if (RightToLeft == RightToLeft.Yes)
		{
			return new Rectangle(base.ClientRectangle.Width - r.Right, r.Top, r.Width, r.Height);
		}
		return r;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		Form form = ((base.Parent == null) ? null : FindForm());
		if (parentForm != form)
		{
			if (parentForm != null)
			{
				parentForm.Closing -= FormClosing;
			}
			parentForm = form;
			if (parentForm != null)
			{
				parentForm.Closing += FormClosing;
			}
		}
	}

	private void FormClosing(object sender, CancelEventArgs e)
	{
	}

	internal Control GetActiveControlFixPane()
	{
		if (disposePane != null)
		{
			return null;
		}
		Control activePane = ActiveControl;
		if (activePane != null && ActivePane != null && ActivePane.Contains(activePane))
		{
			activePane = ActivePane;
		}
		return activePane;
	}

	public bool ActivateControl(Control c)
	{
		try
		{
			inActivateControl++;
			validatingFailed = false;
			Control activeControlFixPane = GetActiveControlFixPane();
			if (c != activeControlFixPane)
			{
				bool flag = true;
				new CancelEventArgs();
				if (c != null && activeControlFixPane != null && c.CausesValidation)
				{
					flag = Validate();
				}
				if (!flag)
				{
					validatingFailed = true;
				}
				else
				{
					base.ActiveControl = null;
					if (c != null)
					{
						bool causesValidation = c.CausesValidation;
						c.CausesValidation = false;
						base.ActiveControl = c;
						c.CausesValidation = causesValidation;
					}
					if (ActiveControl != c && (c == null || !c.Contains(ActiveControl)))
					{
						validatingFailed = true;
					}
				}
			}
			if (FindPane(ActiveControl, out var row, out var column))
			{
				splitterInfo.activeRow = row;
				splitterInfo.activeColumn = column;
			}
			return !validatingFailed;
		}
		finally
		{
			inActivateControl--;
		}
	}

	protected override void OnEnter(EventArgs e)
	{
		isActiveControl = true;
		isValidating = false;
		isValidated = false;
		base.OnEnter(e);
	}

	protected override void OnLeave(EventArgs e)
	{
		isActiveControl = false;
		isValidating = false;
		base.OnLeave(e);
		if ((!base.CausesValidation || IsValidated) && !hasControlFocus)
		{
			OnDeactivated(e);
		}
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		isValidating = true;
		base.OnValidating(e);
		if (!e.Cancel)
		{
			Control activeControlFixPane = GetActiveControlFixPane();
			if (activeControlFixPane != null && !activeControlFixPane.CausesValidation)
			{
				e.Cancel = !Validate();
			}
		}
	}

	protected override void OnValidated(EventArgs e)
	{
		isValidating = false;
		isValidated = true;
		base.OnValidated(e);
		if (!isActiveControl && !hasControlFocus)
		{
			OnDeactivated(e);
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		RaiseControlLostFocus();
	}

	protected override void OnGotFocus(EventArgs e)
	{
		RaiseControlGotFocus();
	}

	protected virtual void OnDeactivated(EventArgs e)
	{
		isDeactivatedCalled = true;
		if (this.Deactivated != null)
		{
			this.Deactivated(this, e);
		}
		base.ActiveControl = null;
	}

	private void ChildGotFocus(object sender, EventArgs e)
	{
		RaiseControlGotFocus();
	}

	private void ChildLostFocus(object sender, EventArgs e)
	{
		RaiseControlLostFocus();
	}

	public virtual bool QueryFocusInside()
	{
		if (base.ContainsFocus)
		{
			return true;
		}
		if (ActiveControl is IQueryFocusInside queryFocusInside)
		{
			return queryFocusInside.QueryFocusInside();
		}
		return false;
	}

	protected virtual void OnControlGotFocus()
	{
		base.OnGotFocus(EventArgs.Empty);
		Control control = ActiveControl;
		if (control == null || control.ContainsFocus)
		{
			return;
		}
		if (control.CanFocus)
		{
			control.Focus();
			return;
		}
		if (control.Parent != null && control.Parent.CanFocus)
		{
			control.Parent.Focus();
			return;
		}
		control = ActivePane;
		if (control != null && control.CanFocus)
		{
			control.Focus();
		}
	}

	public void CancelUpdate()
	{
		foreach (Control control in base.Controls)
		{
			if (control is ISupportUpdating supportUpdating)
			{
				while (supportUpdating.Updating)
				{
					supportUpdating.EndUpdate();
				}
			}
		}
	}

	protected virtual void OnControlLostFocus()
	{
		base.OnLostFocus(EventArgs.Empty);
		if (!isActiveControl && !isValidating && (!base.CausesValidation || isValidated))
		{
			OnDeactivated(EventArgs.Empty);
			return;
		}
		CancelUpdate();
		if (isValidating)
		{
			OnValidatingLostFocus();
		}
	}

	protected virtual void OnValidatingLostFocus()
	{
	}

	private void RaiseControlGotFocus()
	{
		if (!hasControlFocus)
		{
			hasControlFocus = true;
			OnControlGotFocus();
		}
	}

	private void RaiseControlLostFocus()
	{
		if (hasControlFocus && !QueryFocusInside())
		{
			hasControlFocus = false;
			OnControlLostFocus();
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		e.Control.GotFocus -= ChildGotFocus;
		e.Control.LostFocus -= ChildLostFocus;
	}

	private void _ControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.GotFocus += ChildGotFocus;
		e.Control.LostFocus += ChildLostFocus;
	}

	private void DrawSplitHelper(Rectangle rect)
	{
		rect.Intersect(base.ClientRectangle);
		Rectangle rectangle = RectangleToScreen(rect);
		ControlPaint.FillReversibleRectangle(rectangle, SystemColors.Window);
	}

	protected virtual void OnSplitBarsChanged(EventArgs e)
	{
		try
		{
			if (this.SplitBarsChanged != null)
			{
				this.SplitBarsChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnHSplitPosChanged(EventArgs e)
	{
		try
		{
			if (this.HSplitPosChanged != null)
			{
				this.HSplitPosChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnVSplitPosChanged(EventArgs e)
	{
		try
		{
			if (this.VSplitPosChanged != null)
			{
				this.VSplitPosChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	private void UpdateSplitter()
	{
		SplitterLayout splitterLayout = SplitterLayout;
		UpdateSplitter(splitterLayout._hSplitPos, splitterLayout._vSplitPos);
	}

	private void UpdateSplitter(int hSplitPos, int vSplitPos)
	{
		SuspendLayout();
		if (hSplitPos == 100 && ColumnCount > 1)
		{
			DeleteColumn(1);
		}
		if (vSplitPos == 100 && RowCount > 1)
		{
			DeleteRow(1);
		}
		if (hSplitPos == 0 && ColumnCount > 1)
		{
			DeleteColumn(0);
			hSplitPos = 100;
		}
		if (vSplitPos == 0 && RowCount > 1)
		{
			DeleteRow(0);
			vSplitPos = 100;
		}
		SplitterLayout splitterLayout = SplitterLayout;
		splitterLayout._hSplitPos = hSplitPos;
		splitterLayout._vSplitPos = vSplitPos;
		ResumeLayout(performLayout: false);
		Refresh();
	}

	public override void Refresh()
	{
		if (!base.Created)
		{
			return;
		}
		PerformLayout();
		for (int i = 0; i < RowCount; i++)
		{
			for (int j = 0; j < ColumnCount; j++)
			{
				Control pane = GetPane(i, j);
				if (pane != null)
				{
					pane.Visible = true;
					if (!splitterInfo.splitterControl.Controls.Contains(pane))
					{
						splitterInfo.splitterControl.Controls.Add(pane);
					}
					if (pane is IScrollBarWrapperContainer scrollBarWrapperContainer)
					{
						scrollBarWrapperContainer.UpdateScrollBars();
					}
				}
			}
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Refresh();
	}

	protected virtual void OnSplitterLayoutChanged(EventArgs e)
	{
		try
		{
			if (this.SplitterLayoutChanged != null)
			{
				this.SplitterLayoutChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public virtual void OnMoveSplitter(object sender, int x, int y)
	{
		_ = SystemInformation.HorizontalScrollBarHeight;
		_ = SystemInformation.VerticalScrollBarWidth;
		Rectangle empty = Rectangle.Empty;
		if (sender == horizontalSplitterBar)
		{
			if (!oldHSplitRect.IsEmpty)
			{
				DrawSplitHelper(oldHSplitRect);
				oldHSplitRect = Rectangle.Empty;
			}
			int num = 0;
			if (RightToLeft == RightToLeft.Yes)
			{
				num = SystemInformation.VerticalScrollBarWidth;
			}
			int num2 = Math.Min(Math.Max(0, horizontalSplitterBar.Bounds.X - num + x), splitterInfo.horizontalBarBounds.Width - 1);
			relativeSplitBarWidth = num2 * 100 / (splitterInfo.horizontalBarBounds.Width - 14);
			empty = new Rectangle(relativeSplitBarWidth * splitterInfo.horizontalBarBounds.Width / 100 - 7 + num, 0, 7, base.Height);
			if (RightToLeft == RightToLeft.Yes)
			{
				relativeSplitBarWidth = 100 - num2 * 100 / (splitterInfo.horizontalBarBounds.Width + 14);
			}
			if (!empty.IsEmpty)
			{
				empty.Intersect(splitterInfo.innerBounds);
				DrawSplitHelper(empty);
				oldHSplitRect = empty;
			}
		}
		else if (sender == verticalSplitterBar)
		{
			if (!oldVSplitRect.IsEmpty)
			{
				DrawSplitHelper(oldVSplitRect);
				oldVSplitRect = Rectangle.Empty;
			}
			int num3 = Math.Min(Math.Max(0, verticalSplitterBar.Bounds.Y + y), splitterInfo.verticalBarBounds.Height - 1);
			relativeSplitBarHeight = num3 * 100 / (splitterInfo.verticalBarBounds.Height - 14);
			empty = new Rectangle(0, relativeSplitBarHeight * splitterInfo.verticalBarBounds.Height / 100 - 7, base.Width, 7);
			if (!empty.IsEmpty)
			{
				empty.Intersect(splitterInfo.innerBounds);
				DrawSplitHelper(empty);
				oldVSplitRect = empty;
			}
		}
	}

	public virtual void OnMovedSplitter(object sender)
	{
		if (sender != null)
		{
			if (!oldHSplitRect.IsEmpty)
			{
				DrawSplitHelper(oldHSplitRect);
				oldHSplitRect = Rectangle.Empty;
			}
			if (!oldVSplitRect.IsEmpty)
			{
				DrawSplitHelper(oldVSplitRect);
				oldVSplitRect = Rectangle.Empty;
			}
			if (sender == horizontalSplitterBar)
			{
				HSplitPos = relativeSplitBarWidth;
			}
			else if (sender == verticalSplitterBar)
			{
				VSplitPos = relativeSplitBarHeight;
			}
		}
		else
		{
			Refresh();
		}
	}

	void IInternalSplitterParent.InvalidateSplitter(object sender)
	{
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		lock (this)
		{
			if (!splitterInfo.innerBounds.IsEmpty)
			{
				pe.Graphics.FillRectangle(SystemBrushes.Window, ReverseRectangleRTL(splitterInfo.innerBounds));
			}
			Rectangle rectangle = Rectangle.Empty;
			if (horizontalSplitterBar != null && !horizontalSplitterBar.Bounds.IsEmpty)
			{
				horizontalSplitterBar.Paint(pe.Graphics, ButtonLook == ButtonLook.Flat);
				rectangle = ReverseRectangleRTL(horizontalSplitterBar.Bounds);
			}
			Rectangle rectangle2 = Rectangle.Empty;
			if (verticalSplitterBar != null && !verticalSplitterBar.Bounds.IsEmpty)
			{
				verticalSplitterBar.Paint(pe.Graphics, ButtonLook == ButtonLook.Flat);
				rectangle2 = ReverseRectangleRTL(verticalSplitterBar.Bounds);
				if (rectangle2.IntersectsWith(rectangle))
				{
					Rectangle r = Rectangle.Intersect(rectangle, rectangle2);
					r.Width -= 3;
					r.X++;
					pe.Graphics.FillRectangle(SystemBrushes.Control, ReverseRectangleRTL(r));
				}
			}
			pe.Graphics.ExcludeClip(ReverseRectangleRTL(rectangle));
			pe.Graphics.ExcludeClip(ReverseRectangleRTL(rectangle2));
			if (ShowSizeGrip)
			{
				if (!splitterInfo.sizeGripBounds.IsEmpty)
				{
					if (XPThemes.IsThemedOS && ((IThemedControl)this).ThemesEnabled)
					{
						themedScrollBarDrawing.DrawSizeBox(pe.Graphics, ReverseRectangleRTL(splitterInfo.sizeGripBounds));
					}
					else
					{
						ControlPaint.DrawSizeGrip(pe.Graphics, BackColor, ReverseRectangleRTL(splitterInfo.sizeGripBounds));
					}
					pe.Graphics.ExcludeClip(ReverseRectangleRTL(splitterInfo.sizeGripBounds));
				}
			}
			else if (!splitterInfo.sizeGripBounds.IsEmpty)
			{
				pe.Graphics.FillRectangle(SystemBrushes.Control, ReverseRectangleRTL(splitterInfo.sizeGripBounds));
				pe.Graphics.ExcludeClip(ReverseRectangleRTL(splitterInfo.sizeGripBounds));
			}
			base.OnPaint(pe);
		}
	}

	protected virtual void OnShowSizeGripChanged(EventArgs e)
	{
		if (this.ShowSizeGripChanged != null)
		{
			this.ShowSizeGripChanged(this, e);
		}
	}

	protected virtual void OnSupportsFlatScrollBarsChanged(EventArgs e)
	{
		if (this.SupportsFlatScrollBarsChanged != null)
		{
			this.SupportsFlatScrollBarsChanged(this, e);
		}
	}

	protected virtual void OnScrollBarAppearanceChanged(EventArgs e)
	{
		if (this.ScrollBarAppearanceChanged != null)
		{
			this.ScrollBarAppearanceChanged(this, e);
		}
	}

	protected virtual void OnScrollBarColorChanged(EventArgs e)
	{
		if (this.ScrollBarColorChanged != null)
		{
			this.ScrollBarColorChanged(this, e);
		}
	}

	private bool ShouldSerializeScrollBarColor()
	{
		if (scrollBarColor != SystemColors.ScrollBar && supportsFlatScrollBars)
		{
			return !Office2007ScrollBars;
		}
		return false;
	}

	public void ResetScrollBarColor()
	{
		scrollBarColor = SystemColors.ScrollBar;
	}

	protected virtual void OnOffice2007ScrollBarsChanged(EventArgs e)
	{
		if (this.Office2007ScrollBarsChanged != null)
		{
			this.Office2007ScrollBarsChanged(this, e);
		}
	}

	protected virtual void OnOffice2007ScrollBarsColorSchemeChanged(EventArgs e)
	{
		if (this.Office2007ScrollBarsColorSchemeChanged != null)
		{
			this.Office2007ScrollBarsColorSchemeChanged(this, e);
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
	}

	protected virtual void OnShowVerticalScrollBarChanged(EventArgs e)
	{
		if (this.ShowVerticalScrollBarChanged != null)
		{
			this.ShowVerticalScrollBarChanged(this, e);
		}
	}

	protected virtual void OnShowHorizontalScrollBarChanged(EventArgs e)
	{
		if (this.ShowHorizontalScrollBarChanged != null)
		{
			this.ShowHorizontalScrollBarChanged(this, e);
		}
	}
}
