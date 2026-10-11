using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[Designer(typeof(TabPageAdvDesigner), typeof(IDesigner))]
[DefaultProperty("Text")]
[ToolboxItem(false)]
[DefaultEvent("Click")]
public class TabPageAdv : Panel
{
	[DocumentationExclude]
	public new class ControlCollection : Control.ControlCollection
	{
		public ControlCollection(TabPageAdv owner)
			: base(owner)
		{
		}

		public override void Add(Control value)
		{
			if (value is TabPageAdv)
			{
				throw new ArgumentException("Cannot add TabPageAdv to TabPageAdv as child.");
			}
			base.Add(value);
		}

		public override void AddRange(Control[] controls)
		{
			base.AddRange(controls);
		}
	}

	private ITabData tabData;

	private ITabPanelDefaultProperties tabPanelDefaultProperties;

	private bool customThemesEnabledFlag = true;

	private ISelectionService m_selectionService;

	private bool m_bIsTransparent;

	private bool m_enterFired;

	private bool m_leaveFired;

	public override ISite Site
	{
		get
		{
			return base.Site;
		}
		set
		{
			if (m_selectionService != null)
			{
				m_selectionService.SelectionChanging -= selectionService_SelectionChanging;
			}
			base.Site = value;
			if (base.Site != null)
			{
				m_selectionService = (ISelectionService)Site.GetService(typeof(ISelectionService));
				if (m_selectionService != null)
				{
					m_selectionService.SelectionChanging += selectionService_SelectionChanging;
				}
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether this control is transparent")]
	public bool IsTransparent
	{
		get
		{
			return m_bIsTransparent;
		}
		set
		{
			if (value != m_bIsTransparent)
			{
				m_bIsTransparent = value;
				if (m_bIsTransparent)
				{
					SetTransparentBackground();
				}
				else
				{
					RestoreBackground();
				}
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
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
	[EditorBrowsable(EditorBrowsableState.Advanced)]
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

	[EditorBrowsable(EditorBrowsableState.Advanced)]
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

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Specifies whether or not to enable the tab.")]
	public virtual bool TabEnabled
	{
		get
		{
			if (tabData != null)
			{
				return tabData.Enabled;
			}
			return true;
		}
		set
		{
			if (tabData != null)
			{
				tabData.Enabled = value;
			}
			if (!base.DesignMode)
			{
				Enabled = value;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public new int TabIndex
	{
		get
		{
			return base.TabIndex;
		}
		set
		{
			if (value != base.TabIndex)
			{
				TabControlAdv tabControlAdv = base.Parent as TabControlAdv;
				base.TabIndex = value;
				tabControlAdv?.OnTabsOrderChanged();
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
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

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	internal ITabData TabData => tabData;

	internal ITabPanelDefaultProperties TabPanelDefaultProperties
	{
		get
		{
			return tabPanelDefaultProperties;
		}
		set
		{
			tabPanelDefaultProperties = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ToolTip text for this tab.")]
	[DefaultValue("")]
	[Localizable(true)]
	public string ToolTipText
	{
		get
		{
			if (tabData != null)
			{
				return tabData.ToolTip;
			}
			return "";
		}
		set
		{
			if (tabData != null)
			{
				tabData.ToolTip = value;
			}
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("SuperToolTip information for this tab.")]
	public ToolTipInfo SuperTooltip
	{
		get
		{
			ITabData2 tabData = this.tabData as ITabData2;
			ToolTipInfo result = null;
			if (tabData != null)
			{
				result = tabData.SuperTooltip;
			}
			return result;
		}
		set
		{
			if (this.tabData is ITabData2 tabData)
			{
				tabData.SuperTooltip = value;
			}
		}
	}

	[DefaultValue(-1)]
	[Editor(typeof(ImageIndexEditor), typeof(UITypeEditor))]
	[Category("Appearance")]
	[Description("Points to the image in the associated imageList that is used for this tab.")]
	[TypeConverter(typeof(ImageIndexConverter))]
	[Localizable(true)]
	public virtual int ImageIndex
	{
		get
		{
			if (tabData != null)
			{
				return tabData.ImageIndex;
			}
			return -1;
		}
		set
		{
			if (tabData != null)
			{
				tabData.ImageIndex = value;
			}
		}
	}

	[Description("Image to be displayed over the tab. Animated image will be animated")]
	public Image Image
	{
		get
		{
			return tabData.Image;
		}
		set
		{
			tabData.Image = value;
			tabData.ImageChanged = true;
			Invalidate();
		}
	}

	[Description("Size of the image added in Image property")]
	public Size ImageSize
	{
		get
		{
			return tabData.ImageSize;
		}
		set
		{
			tabData.ImageSize = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Specifies whether or not to show a particular tab.")]
	public virtual bool TabVisible
	{
		get
		{
			if (tabData != null)
			{
				return tabData.TabVisible;
			}
			return true;
		}
		set
		{
			if (tabData != null)
			{
				tabData.TabVisible = value;
				ValidateTabPagesVisibility();
			}
		}
	}

	[Description("Overridden. Gets or sets the text to display on the tab.")]
	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Browsable(true)]
	[Localizable(true)]
	public override string Text
	{
		get
		{
			if (tabData != null)
			{
				return tabData.Text;
			}
			return "";
		}
		set
		{
			if (tabData != null)
			{
				tabData.Text = value;
			}
		}
	}

	[Localizable(true)]
	[AmbientValue(null)]
	[Description("The font used to display text in this Tab.")]
	[Category("Appearance")]
	public virtual Font TabFont
	{
		get
		{
			Font font = null;
			if (tabData != null)
			{
				font = tabData.Font;
			}
			if (font == null && tabPanelDefaultProperties != null)
			{
				font = tabPanelDefaultProperties.DefaultTabPanelFont();
			}
			return font;
		}
		set
		{
			if (tabData != null)
			{
				tabData.Font = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Background Color of this Tab. Will override the Active Tab and Inactive Tab Colors.")]
	public virtual Color TabBackColor
	{
		get
		{
			Color color = Color.Empty;
			if (tabData != null)
			{
				color = tabData.BackColor;
			}
			if (color == Color.Empty && tabPanelDefaultProperties != null)
			{
				color = tabPanelDefaultProperties.DefaultInactiveTabColor();
			}
			return color;
		}
		set
		{
			if (tabData != null)
			{
				tabData.BackColor = value;
			}
		}
	}

	[Description("Fore Color of this Tab. Default is SystemColors.WindowText.")]
	[Category("Appearance")]
	public virtual Color TabForeColor
	{
		get
		{
			Color color = Color.Empty;
			if (tabData != null)
			{
				color = tabData.ForeColor;
			}
			if (color == Color.Empty && tabPanelDefaultProperties != null)
			{
				color = tabPanelDefaultProperties.DefaultTabForeColor();
			}
			return color;
		}
		set
		{
			if (tabData != null)
			{
				tabData.ForeColor = value;
			}
		}
	}

	[Description("Specifies whether or not themes should be used to draw this tab page.")]
	[Category("Appearance")]
	public bool ThemesEnabled
	{
		get
		{
			if (customThemesEnabledFlag && base.Parent is TabControlAdv)
			{
				return ((TabControlAdv)base.Parent).ThemesEnabled;
			}
			return false;
		}
		set
		{
			if (customThemesEnabledFlag != value)
			{
				customThemesEnabledFlag = value;
				Invalidate();
			}
		}
	}

	[Description("Occurs when the tab page is closing.")]
	public event TabPageAdvClosingEventHandler Closing;

	[Description("Occurs when the tab page is closed.")]
	public event EventHandler Closed;

	private void selectionService_SelectionChanging(object sender, EventArgs e)
	{
		if (base.DesignMode && base.Parent is TabControlAdv tabControlAdv && tabControlAdv.DisplayRectangle != Rectangle.Empty)
		{
			base.Bounds = tabControlAdv.DisplayRectangle;
		}
	}

	public TabPageAdv(ITabData tabData, ITabPanelDefaultProperties tabPanelDefaultProperties)
		: this()
	{
		this.tabData = tabData;
		this.tabPanelDefaultProperties = tabPanelDefaultProperties;
	}

	public TabPageAdv()
	{
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		Init();
	}

	public TabPageAdv(string label)
		: this()
	{
		Text = label;
	}

	protected virtual ITabData CreateDefaultTabData()
	{
		return new TabData();
	}

	[DocumentationExclude]
	protected internal void SetSelectedAtDesignTime()
	{
		if (base.DesignMode && base.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			ArrayList arrayList = new ArrayList();
			arrayList.Add(this);
			selectionService.SetSelectedComponents(arrayList, SelectionTypes.Replace);
		}
	}

	private void SetTransparentBackground()
	{
		int windowLong = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -20);
		windowLong |= 0x20;
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowLong(base.Handle, -20, new IntPtr(windowLong));
	}

	private void RestoreBackground()
	{
		int windowLong = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -20);
		windowLong &= -33;
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowLong(base.Handle, -20, new IntPtr(windowLong));
	}

	private void Init()
	{
		tabData = CreateDefaultTabData();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && !base.IsDisposed && tabData != null)
		{
			tabData.Dispose();
			tabData = null;
		}
		base.Dispose(disposing);
	}

	internal void FireEnter(EventArgs e)
	{
		m_enterFired = true;
		OnEnter(e);
	}

	internal void FireLeave(EventArgs e)
	{
		m_leaveFired = true;
		OnLeave(e);
	}

	protected override void OnEnter(EventArgs e)
	{
		if (m_enterFired)
		{
			base.OnEnter(e);
		}
		m_enterFired = false;
		if (base.Controls.Count <= 0)
		{
			return;
		}
		if (base.Controls.Count == 1)
		{
			if (base.Controls[0] is TabControlAdv)
			{
				(base.Controls[0] as TabControlAdv).Focus();
			}
			else if (base.Controls[0] is TabControl)
			{
				(base.Controls[0] as TabControl).Focus();
			}
			return;
		}
		foreach (Control control in base.Controls)
		{
			if (control is TabControlAdv && control.TabIndex == 0)
			{
				(control as TabControlAdv).Focus();
			}
			else if (base.Controls[0] is TabControl && control.TabIndex == 0)
			{
				(control as TabControl).Focus();
			}
		}
	}

	protected override void OnLeave(EventArgs e)
	{
		if (m_leaveFired)
		{
			base.OnLeave(e);
		}
		m_leaveFired = false;
	}

	public new void Hide()
	{
		TabVisible = false;
	}

	public new void Show()
	{
		TabVisible = true;
	}

	public bool Close()
	{
		bool result = false;
		if (base.Parent != null)
		{
			IList list = null;
			list = ((!(base.Parent is TabControlAdv tabControlAdv)) ? ((IList)base.Parent.Controls) : ((IList)tabControlAdv.TabPages));
			if (list.Contains(this))
			{
				if (!base.Disposing && !base.IsDisposed)
				{
					TabPageAdvClosingEventArgs e = new TabPageAdvClosingEventArgs(this, cancel: false);
					OnClosing(e);
					if (!e.Cancel)
					{
						list.Remove(this);
						OnClosed(EventArgs.Empty);
						result = true;
					}
				}
				else
				{
					list.Remove(this);
				}
			}
		}
		return result;
	}

	private void OnClosed(EventArgs eventArgs)
	{
		if (this.Closed != null)
		{
			this.Closed(this, eventArgs);
		}
	}

	private void OnClosing(TabPageAdvClosingEventArgs tabPageAdvClosingEventArgs)
	{
		if (this.Closing != null)
		{
			this.Closing(this, tabPageAdvClosingEventArgs);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (base.Parent is TabControlAdv { IsHandleCreated: not false } tabControlAdv)
		{
			if (tabControlAdv.IsInitializing || tabControlAdv.IsDesignerLoading)
			{
				tabControlAdv.ComputeTabPanelBoundsInternal();
			}
			Rectangle displayRectangle = tabControlAdv.DisplayRectangle;
			base.SetBoundsCore(displayRectangle.X, displayRectangle.Y, displayRectangle.Width, displayRectangle.Height, BoundsSpecified.All);
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}

	protected override Control.ControlCollection CreateControlsInstance()
	{
		return new ControlCollection(this);
	}

	public override string ToString()
	{
		return "TabPageAdv: {" + Text + "}";
	}

	[DocumentationExclude]
	public static TabPageAdv GetTabPageAdvOfComponent(object comp)
	{
		if (!(comp is Control))
		{
			return null;
		}
		for (Control control = (Control)comp; control != null; control = control.Parent)
		{
			if (control.Parent is TabPageAdv)
			{
				return (TabPageAdv)control.Parent;
			}
		}
		return null;
	}

	private void ValidateTabPagesVisibility()
	{
		if (base.DesignMode || base.Parent == null || !(base.Parent is TabControlAdv))
		{
			return;
		}
		TabControlAdv tabControlAdv = base.Parent as TabControlAdv;
		if (tabControlAdv.SelectedIndex == -1 || tabControlAdv.TabPages[tabControlAdv.SelectedIndex].TabVisible)
		{
			return;
		}
		bool flag = false;
		for (int num = tabControlAdv.SelectedIndex; num >= 0; num--)
		{
			if (tabControlAdv.TabPages[num].TabVisible)
			{
				tabControlAdv.SelectedIndex = num;
				flag = true;
				break;
			}
		}
		if (flag)
		{
			return;
		}
		for (int i = tabControlAdv.SelectedIndex; i < tabControlAdv.TabPages.Count - 1; i++)
		{
			if (tabControlAdv.TabPages[i].TabVisible)
			{
				tabControlAdv.SelectedIndex = i;
				break;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeTabFont()
	{
		if (tabPanelDefaultProperties == null)
		{
			return true;
		}
		Font obj = tabPanelDefaultProperties.DefaultTabPanelFont();
		return !TabFont.Equals(obj);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetTabFont()
	{
		TabFont = null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeTabForeColor()
	{
		if (TabForeColor == Color.Empty)
		{
			return false;
		}
		if (tabPanelDefaultProperties == null)
		{
			return true;
		}
		Color color = tabPanelDefaultProperties.DefaultTabForeColor();
		return TabForeColor != color;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetTabForeColor()
	{
		TabForeColor = Color.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeTabBackColor()
	{
		if (TabBackColor == Color.Empty)
		{
			return false;
		}
		if (tabPanelDefaultProperties == null)
		{
			return true;
		}
		Color color = tabPanelDefaultProperties.DefaultInactiveTabColor();
		return TabBackColor != color;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetTabBackColor()
	{
		TabBackColor = Color.Empty;
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		bool flag = false;
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.Parent is ITabControl)
		{
			ITabControl tabControl = base.Parent as ITabControl;
			if (tabControl.ThemedDrawing != null)
			{
				int left = pevent.ClipRectangle.Left;
				int top = pevent.ClipRectangle.Top;
				int num = pevent.ClipRectangle.Width;
				int num2 = pevent.ClipRectangle.Height;
				if (left != 0 || top != 0 || num != base.ClientRectangle.Width || num2 != base.ClientRectangle.Height)
				{
					flag = PaintChildrenBackground(pevent.Graphics, this, pevent.ClipRectangle);
				}
				if (!flag)
				{
					if (num > base.ClientRectangle.Width || num2 > base.ClientRectangle.Height)
					{
						tabControl.ThemedDrawing.DrawTabBody(pevent.Graphics, pevent.ClipRectangle);
					}
					else
					{
						tabControl.ThemedDrawing.DrawTabBody(pevent.Graphics, base.ClientRectangle, pevent.ClipRectangle);
					}
				}
				flag = true;
			}
		}
		if (!flag)
		{
			base.OnPaintBackground(pevent);
		}
	}

	private void ThemedPaintBackground(Graphics graphics, Rectangle rect, Rectangle clip)
	{
		ITabControl tabControl = base.Parent as ITabControl;
		if (tabControl.ThemedDrawing != null)
		{
			tabControl.ThemedDrawing.DrawTabBody(graphics, rect, clip);
		}
	}

	private bool PaintChildrenBackground(Graphics graphics, Control control, Rectangle clipRect)
	{
		foreach (Control control2 in control.Controls)
		{
			if (control2.BackColor == Color.Transparent)
			{
				continue;
			}
			Rectangle r = new Rectangle(control2.Location, control2.Size);
			r = control2.Parent.RectangleToScreen(r);
			if (RectangleToClient(r).Contains(clipRect))
			{
				if (PaintChildrenBackground(graphics, control2, clipRect))
				{
					return true;
				}
				Rectangle clientRectangle = base.ClientRectangle;
				clientRectangle = RectangleToScreen(clientRectangle);
				clientRectangle = control2.RectangleToClient(clientRectangle);
				clipRect = RectangleToScreen(clipRect);
				clipRect = control2.RectangleToClient(clipRect);
				ThemedPaintBackground(graphics, clientRectangle, clipRect);
				return true;
			}
		}
		return false;
	}

	[DocumentationExclude]
	protected void ResetThemesEnabled()
	{
		customThemesEnabledFlag = true;
	}

	[DocumentationExclude]
	protected bool ShouldSerializerThemesEnabled()
	{
		return !customThemesEnabledFlag;
	}
}
