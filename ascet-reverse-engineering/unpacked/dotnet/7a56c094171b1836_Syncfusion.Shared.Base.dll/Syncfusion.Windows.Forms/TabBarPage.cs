using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[Designer(typeof(TabBarPageDesigner), typeof(IDesigner))]
[DefaultProperty("Text")]
[ToolboxItem(false)]
[DefaultEvent("Click")]
public class TabBarPage : ContainerControl, IDynamicSplitterFrame, IInternalSplitterParent, IThemedControl, IContainerControl
{
	private class TabBarPageControlCollection : ControlCollection
	{
		public TabBarPageControlCollection(TabBarPage owner)
			: base(owner)
		{
		}

		public override void Add(Control value)
		{
			if (value is TabBarPage)
			{
				throw new SystemException(SR.GetString("TabBarPageOnTabBarPage"));
			}
			base.Add(value);
		}
	}

	private string toolTipText = "";

	private bool tabEnabled = true;

	internal SplitterInfo splitterInfo;

	private Icon icon;

	private Color m_tabBackColor = SystemColors.Control;

	private ISplitterPaneFactory splitterPaneFactory = new SplitterPaneFactory();

	internal InternalSplitter horizontalSplitterBar;

	internal InternalSplitter verticalSplitterBar;

	internal bool flatLook = true;

	private bool themesEnabled;

	internal bool validatingFailed;

	private int inActivateControl;

	private bool isActiveControl;

	private bool isValidating;

	private bool isDeactivatedCalled;

	private bool hasControlFocus;

	private bool isValidated;

	private IDynamicSplitterFrame SplitterParent => base.Parent as IDynamicSplitterFrame;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	[Browsable(false)]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	Cursor IInternalSplitterParent.OverrideCursor
	{
		get
		{
			if (base.Parent is IInternalSplitterParent internalSplitterParent)
			{
				return internalSplitterParent.OverrideCursor;
			}
			return null;
		}
		set
		{
			if (base.Parent is IInternalSplitterParent internalSplitterParent)
			{
				internalSplitterParent.OverrideCursor = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override AnchorStyles Anchor
	{
		get
		{
			return base.Anchor;
		}
		set
		{
			base.Anchor = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override DockStyle Dock
	{
		get
		{
			return base.Dock;
		}
		set
		{
			base.Dock = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			base.Enabled = value;
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Browsable(true)]
	[Description("Specifies whether the TabBarPage is enabled or not.")]
	[DefaultValue(true)]
	public bool TabEnabled
	{
		get
		{
			return tabEnabled;
		}
		set
		{
			if (tabEnabled != value)
			{
				tabEnabled = value;
				UpdateParent();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new int TabIndex
	{
		get
		{
			return base.TabIndex;
		}
		set
		{
			base.TabIndex = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool TabStop
	{
		get
		{
			return base.TabStop;
		}
		set
		{
			base.TabStop = value;
		}
	}

	[Browsable(true)]
	public new string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[DefaultValue("")]
	public string ToolTipText
	{
		get
		{
			return toolTipText;
		}
		set
		{
			if (value != null && !(value == toolTipText))
			{
				toolTipText = value;
				OnToolTipTextChanged(EventArgs.Empty);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
		}
	}

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
	public DynamicSplitBars SplitBars
	{
		get
		{
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
			if (value < 5 || value > 98)
			{
				value = 100;
			}
			if (value != HSplitPos)
			{
				SplitterLayout splitterLayout = SplitterLayout;
				splitterLayout._hSplitPos = value;
				UpdateSplitter();
				OnHSplitPosChanged(EventArgs.Empty);
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(100)]
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
			if (value < 5 || value > 98)
			{
				value = 100;
			}
			if (value != VSplitPos)
			{
				SplitterLayout splitterLayout = SplitterLayout;
				splitterLayout._vSplitPos = value;
				UpdateSplitter();
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

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new Size Size
	{
		get
		{
			if (base.DesignMode && base.Parent != null)
			{
				Size size = base.Parent.Size;
				int horizontalScrollBarHeight = SystemInformation.HorizontalScrollBarHeight;
				size.Height -= horizontalScrollBarHeight;
				return size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

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

	[Description("The icon displayed on the tab.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance")]
	[DefaultValue(null)]
	public Icon Icon
	{
		get
		{
			return icon;
		}
		set
		{
			if (icon != value)
			{
				icon = value;
				if (Visible && !base.Bounds.IsEmpty && base.Parent != null)
				{
					base.Parent.PerformLayout();
					base.Parent.Refresh();
				}
			}
		}
	}

	[Description("Gets or sets back color for TabBarPage Tab.")]
	[DefaultValue(typeof(SystemColors), "Control")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance")]
	public Color TabBackColor
	{
		get
		{
			return m_tabBackColor;
		}
		set
		{
			if (value != m_tabBackColor)
			{
				m_tabBackColor = value;
			}
		}
	}

	public event EventHandler ToolTipTextChanged;

	public event EventHandler SplitBarsChanged;

	public event EventHandler VSplitPosChanged;

	public event EventHandler HSplitPosChanged;

	public event EventHandler SplitterLayoutChanged;

	public event SplitterPaneEventHandler PaneCreated;

	public event SplitterPaneEventHandler PaneClosing;

	public event EventHandler ThemeChanged;

	public event EventHandler Deactivated;

	protected override void Dispose(bool disposing)
	{
		if (disposing && splitterInfo != null)
		{
			splitterInfo.Dispose();
		}
		base.Dispose(disposing);
	}

	public bool SplitRow(int cy)
	{
		if (cy >= base.Height || cy <= 0)
		{
			return false;
		}
		SplitterLayout._vSplitPos = cy * 100 / (base.Height - 14);
		UpdateSplitter();
		return true;
	}

	public bool SplitColumn(int cx)
	{
		if (cx >= base.Width || cx < 0)
		{
			return false;
		}
		SplitterLayout._hSplitPos = cx * 100 / (base.Width - 14);
		UpdateSplitter();
		return true;
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

	public virtual void DisposePane(int row, int column)
	{
		if (base.Parent is SplitterControl splitterControl)
		{
			splitterControl.DisposePane(row, column);
		}
	}

	public void DeleteRow(int row)
	{
		if (base.Parent is SplitterControl splitterControl)
		{
			splitterControl.DeleteRow(row);
		}
	}

	public void DeleteColumn(int column)
	{
		if (base.Parent is SplitterControl splitterControl)
		{
			splitterControl.DeleteColumn(column);
		}
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

	public Control GetPane(int row, int column)
	{
		if (base.Controls.Count == 0)
		{
			return null;
		}
		if (base.Parent is SplitterControl splitterControl)
		{
			return splitterControl.GetPane(row, column);
		}
		return null;
	}

	public virtual Control GetPaneInternal(int row, int column)
	{
		if (base.Controls.Count == 0)
		{
			return null;
		}
		if (base.Parent is SplitterControl splitterControl)
		{
			return splitterControl.GetPaneInternal(row, column);
		}
		return null;
	}

	public bool FindPane(Control control, out int row, out int column)
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
		row = -1;
		column = -1;
		return false;
	}

	public void SetActivePane(int row, int column)
	{
		if (base.Controls.Count != 0 && base.Parent is SplitterControl splitterControl)
		{
			splitterControl.SetActivePane(row, column);
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

	public void ActivateNext(bool prev)
	{
		if (base.Controls.Count != 0 && base.Parent is SplitterControl splitterControl)
		{
			splitterControl.ActivateNext(prev);
		}
	}

	public virtual void OnMoveSplitter(object sender, int x, int y)
	{
	}

	public virtual void OnMovedSplitter(object sender)
	{
	}

	public virtual void InvalidateSplitter(object sender)
	{
		if (sender == horizontalSplitterBar)
		{
			Invalidate(horizontalSplitterBar.Bounds);
		}
		else if (sender == verticalSplitterBar)
		{
			Invalidate(verticalSplitterBar.Bounds);
		}
		Invalidate();
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

	[DocumentationExclude]
	protected virtual void OnSetCursor(ref Message m)
	{
		if (base.Parent is IInternalSplitterParent internalSplitterParent && internalSplitterParent.OverrideCursor != null)
		{
			Cursor.Current = internalSplitterParent.OverrideCursor;
		}
		else
		{
			Cursor.Current = Cursor;
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (base.DesignMode)
		{
			base.WndProc(ref msg);
			return;
		}
		int msg2 = msg.Msg;
		if (msg2 == 32)
		{
			WmSetCursor(ref msg);
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		lock (this)
		{
			if (SplitBars != DynamicSplitBars.None)
			{
				Rectangle rectangle = Rectangle.Empty;
				Rectangle rectangle2 = Rectangle.Empty;
				if (base.Parent is TabBarSplitterControl && (base.Parent as TabBarSplitterControl).Style == TabBarSplitterStyle.Office2007)
				{
					TabBarSplitterControl tabBarSplitterControl = base.Parent as TabBarSplitterControl;
					using (Brush brush = new SolidBrush(tabBarSplitterControl.Office2007ColorTable.TabBarSplitterBackColor))
					{
						pe.Graphics.FillRectangle(brush, base.Bounds);
					}
					if (horizontalSplitterBar != null && !horizontalSplitterBar.Bounds.IsEmpty)
					{
						horizontalSplitterBar.Style = tabBarSplitterControl.Style;
						horizontalSplitterBar.Office2007ColorScheme = tabBarSplitterControl.Office2007ColorScheme;
						horizontalSplitterBar.Paint(pe.Graphics, flatLook);
						rectangle = horizontalSplitterBar.Bounds;
					}
					if (verticalSplitterBar != null && !verticalSplitterBar.Bounds.IsEmpty)
					{
						verticalSplitterBar.Style = tabBarSplitterControl.Style;
						verticalSplitterBar.Office2007ColorScheme = tabBarSplitterControl.Office2007ColorScheme;
						verticalSplitterBar.Paint(pe.Graphics, flatLook);
						rectangle2 = verticalSplitterBar.Bounds;
						if (rectangle2.IntersectsWith(rectangle))
						{
							Rectangle rect = Rectangle.Intersect(rectangle, rectangle2);
							rect.X++;
							rect.Width -= 3;
							Color tabBarSplitterTabStartColor = tabBarSplitterControl.Office2007ColorTable.TabBarSplitterTabStartColor;
							Color tabBarSplitterTabEndColor = tabBarSplitterControl.Office2007ColorTable.TabBarSplitterTabEndColor;
							using LinearGradientBrush brush2 = new LinearGradientBrush(Rectangle.Inflate(rect, 0, 1), tabBarSplitterTabStartColor, tabBarSplitterTabEndColor, LinearGradientMode.Vertical);
							pe.Graphics.FillRectangle(brush2, rect);
						}
					}
				}
				else
				{
					if (horizontalSplitterBar != null && !horizontalSplitterBar.Bounds.IsEmpty)
					{
						horizontalSplitterBar.Style = TabBarSplitterStyle.Default;
						horizontalSplitterBar.Paint(pe.Graphics, flatLook);
						rectangle = horizontalSplitterBar.Bounds;
					}
					if (verticalSplitterBar != null && !verticalSplitterBar.Bounds.IsEmpty)
					{
						verticalSplitterBar.Style = TabBarSplitterStyle.Default;
						verticalSplitterBar.Paint(pe.Graphics, flatLook);
						rectangle2 = verticalSplitterBar.Bounds;
						if (rectangle2.IntersectsWith(rectangle))
						{
							Rectangle rect2 = Rectangle.Intersect(rectangle, rectangle2);
							rect2.Width -= 3;
							rect2.X++;
							pe.Graphics.FillRectangle(SystemBrushes.Control, rect2);
						}
					}
				}
				pe.Graphics.ExcludeClip(rectangle);
				pe.Graphics.ExcludeClip(rectangle2);
			}
			base.OnPaint(pe);
		}
	}

	internal Rectangle ReverseRectangleRTL(Rectangle r)
	{
		if (RightToLeft == RightToLeft.Yes)
		{
			return new Rectangle(base.ClientRectangle.Width - r.Right, r.Top, r.Width, r.Height);
		}
		return r;
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (Size.IsEmpty)
		{
			return;
		}
		foreach (Control control in base.Controls)
		{
			if (control is IScrollBarWrapperContainer scrollBarWrapperContainer)
			{
				scrollBarWrapperContainer.UpdateScrollBars();
			}
		}
		base.OnLayout(levent);
	}

	public TabBarPage(string text)
	{
		splitterInfo = new SplitterInfo(this);
		Text = text;
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
	}

	public TabBarPage()
		: this(null)
	{
	}

	public override string ToString()
	{
		return "TabBarPage: {" + Text + "}";
	}

	public static TabBarPage GetTabBarPageOfComponent(object comp)
	{
		for (Control control = comp as Control; control != null; control = control.Parent)
		{
			if (control is TabBarPage)
			{
				return (TabBarPage)control;
			}
		}
		return null;
	}

	protected override ControlCollection CreateControlsInstance()
	{
		return new TabBarPageControlCollection(this);
	}

	internal void UpdateParent()
	{
		Control control = base.Parent;
		if (control is TabBarSplitterControl)
		{
			TabBarSplitterControl tabBarSplitterControl = (TabBarSplitterControl)control;
			int num = tabBarSplitterControl.TabBarPages.IndexOf(this);
			if (num != -1)
			{
				tabBarSplitterControl.TabBarPages[num] = this;
			}
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		UpdateParent();
	}

	protected virtual void OnToolTipTextChanged(EventArgs e)
	{
		if (this.ToolTipTextChanged != null)
		{
			this.ToolTipTextChanged(this, e);
		}
		UpdateParent();
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
		SuspendLayout();
		SplitterLayout splitterLayout = SplitterLayout;
		if (splitterLayout._hSplitPos == 100 && ColumnCount > 1)
		{
			DeleteColumn(1);
		}
		if (splitterLayout._vSplitPos == 100 && RowCount > 1)
		{
			DeleteRow(1);
		}
		ResumeLayout();
		if (base.Parent != null)
		{
			base.Parent.PerformLayout();
		}
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

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (SplitterParent is TabBarSplitterControl tabBarSplitterControl)
		{
			tabBarSplitterControl.Bar.Invalidate();
		}
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

	protected override void OnControlAdded(ControlEventArgs e)
	{
		if (e.Control is IThemedControl themedControl)
		{
			themedControl.ThemesEnabled = ThemesEnabled;
		}
		_ControlAdded(e);
	}

	public bool ActivateControl(Control c)
	{
		try
		{
			inActivateControl++;
			validatingFailed = false;
			Control control = ActiveControl;
			if (c != control)
			{
				base.ActiveControl = c;
			}
			if (ActiveControl != c)
			{
				validatingFailed = true;
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
		if (!base.CausesValidation && !hasControlFocus)
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
			e.Cancel = !Validate();
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
	}

	protected virtual void OnControlLostFocus()
	{
		base.OnLostFocus(EventArgs.Empty);
		if (!isActiveControl && !isValidating && (!base.CausesValidation || isValidated))
		{
			OnDeactivated(EventArgs.Empty);
		}
		else if (isValidating)
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
		UnwireChildControl(e.Control);
	}

	protected virtual void WireChildControl(Control c)
	{
		c.GotFocus += ChildGotFocus;
		c.LostFocus += ChildLostFocus;
		c.KeyDown += ChildKeyDown;
	}

	protected virtual void UnwireChildControl(Control c)
	{
		c.GotFocus -= ChildGotFocus;
		c.LostFocus -= ChildLostFocus;
		c.KeyDown -= ChildKeyDown;
		foreach (Control control in c.Controls)
		{
			if (control is IScrollBarWrapperContainer scrollBarWrapperContainer)
			{
				if (scrollBarWrapperContainer.HScrollBar != null)
				{
					scrollBarWrapperContainer.HScrollBar.InnerScrollBar = null;
				}
				if (scrollBarWrapperContainer.VScrollBar != null)
				{
					scrollBarWrapperContainer.VScrollBar.InnerScrollBar = null;
				}
			}
		}
	}

	private void _ControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		WireChildControl(e.Control);
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
	}

	internal void ChildKeyDown(object sender, KeyEventArgs e)
	{
		if (e.Handled || !(base.Parent is TabBarSplitterControl tabBarSplitterControl))
		{
			return;
		}
		Keys keyCode = e.KeyCode;
		bool flag = (e.Modifiers & Keys.Control) != 0;
		switch (keyCode)
		{
		case Keys.Next:
			if (flag)
			{
				tabBarSplitterControl.ActivateNextPage(prev: false);
				e.Handled = true;
			}
			break;
		case Keys.Prior:
			if (flag)
			{
				tabBarSplitterControl.ActivateNextPage(prev: true);
				e.Handled = true;
			}
			break;
		}
	}
}
