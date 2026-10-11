using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Resources;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(XPTaskPane), "ToolboxIcons.XPTaskPane.bmp")]
[Description("Provides options to navigate through pages.")]
[ToolboxItem(true)]
[Designer(typeof(XPTaskPaneDesigner))]
public class XPTaskPane : Wizard, INonClientPaintingSupport
{
	private XPTaskPaneHeader header;

	private XPTaskPaneHeaderLabel titleLabel;

	private IContainer components;

	private XPToolBar leftToolBar;

	private ImageList imageList;

	private BarItem backButton;

	private BarItem nextButton;

	private XPToolBar rightToolBar;

	private BarItem closeButton;

	private ParentBarItem dropdownButton;

	private bool m_bVerticalScroll;

	private int m_nScrollSpeed = 10;

	private VerticalScrollBar m_verticalScrollUp;

	private VerticalScrollBar m_verticalScrollDown;

	private VisualStyle m_vStyle;

	private ControlDrawing cd;

	private Office2007Theme m_colorScheme;

	private Office2007Colors m_office2007ColorTable;

	private IntPtr cachedRgn = IntPtr.Zero;

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(10)]
	[Description("Indicates the scrolling speed of Vertical Scroll.")]
	public int ScrollSpeed
	{
		get
		{
			return m_nScrollSpeed;
		}
		set
		{
			if (value < 1)
			{
				throw new ArgumentOutOfRangeException("ScrollSpeed", "ScrollSpeed must be more than 1.");
			}
			if (m_nScrollSpeed != value)
			{
				m_nScrollSpeed = value;
			}
		}
	}

	[Description("Indicates whether to enable scroll buttons that occupy vertical space instead of horizontal space instead of default scrollbar.")]
	[Browsable(true)]
	[DefaultValue(false)]
	public new bool VerticalScroll
	{
		get
		{
			return m_bVerticalScroll;
		}
		set
		{
			m_bVerticalScroll = value;
			if (!value)
			{
				UpScroll.Visible = false;
				DownScroll.Visible = false;
			}
			else
			{
				base.CardLayout.LayoutMode = CardLayoutMode.Default;
				UpdateVerticalScrolls();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	public VerticalScrollBar UpScroll => m_verticalScrollUp;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public VerticalScrollBar DownScroll => m_verticalScrollDown;

	[Browsable(false)]
	[Category("Panels")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Description("Gets or sets the PageContainer of the WizardControl.")]
	public WizardContainer TaskPanePageContainer
	{
		get
		{
			return base.PageContainer;
		}
		set
		{
			if (TaskPanePageContainer != value)
			{
				SetPageContainer(value);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The array that holds the pages.")]
	[Category("Appearance")]
	public virtual XPTaskPage[] TaskPages
	{
		get
		{
			if (!(base.WizardPages is XPTaskPage[]))
			{
				XPTaskPage[] array = new XPTaskPage[base.WizardPages.Length];
				base.WizardPages.CopyTo(array, 0);
				return array;
			}
			return WizardPages as XPTaskPage[];
		}
		set
		{
			WizardPages = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override WizardPage[] WizardPages
	{
		get
		{
			return base.WizardPages;
		}
		set
		{
			base.WizardPages = value;
		}
	}

	[Description("The Header Panel.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance")]
	public XPTaskPaneHeader Header => header;

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			if (base.DesignMode && VisualStyle != VisualStyle.Default && VisualStyle == VisualStyle.Office2007 && value != Office2007ColorTable.GroupBarItemColorLight)
			{
				throw new ArgumentException("Cannot change BackColor, while VisualStyle isn't set to Default.");
			}
			base.BackColor = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Reference to the Header Title-Label.")]
	[Category("Appearance")]
	public XPTaskPaneHeaderLabel HeaderLabel => titleLabel;

	[Browsable(false)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Reference to the Header's left XPToolBar control.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public XPToolBar HeaderLeftToolbar => leftToolBar;

	[Description("Reference to the Header's right XPToolBar control.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Appearance")]
	public XPToolBar HeaderRightToolbar => rightToolBar;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Reference to the Header's dropdown menu (ParentBarItem).")]
	[Category("Appearance")]
	public ParentBarItem HeaderMenuItem => dropdownButton;

	[DefaultValue(VisualStyle.Default)]
	[Category("Appearance")]
	[TypeConverter(typeof(DefaultVisualStyleEnumFilter))]
	[Description("Gets or sets a value indicating the style used for drawing the control.")]
	public VisualStyle VisualStyle
	{
		get
		{
			return m_vStyle;
		}
		set
		{
			if (m_vStyle != value)
			{
				m_vStyle = value;
				OnStyleChanged();
			}
		}
	}

	[Description("Specifies office 2007 color scheme for the control.")]
	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return m_colorScheme;
		}
		set
		{
			if (m_colorScheme != value)
			{
				m_colorScheme = value;
				OnStyleChanged();
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => (m_office2007ColorTable == null) ? Office2007Colors.Default : m_office2007ColorTable;

	public bool ShouldSerializeUpScroll()
	{
		if (UpScroll.Location == new Point(0, 0) || UpScroll.Size == new Size(192, 10) || !UpScroll.Visible)
		{
			return false;
		}
		return true;
	}

	public bool ShouldSerializeDownScroll()
	{
		if (DownScroll.Location == new Point(0, 0) || DownScroll.Size == new Size(192, 10) || !DownScroll.Visible)
		{
			return false;
		}
		return true;
	}

	public override void SetPageContainer(WizardContainer container)
	{
		base.SetPageContainer(container);
		if (TaskPanePageContainer != container && base.CardLayout.ContainerControl == null)
		{
			base.CardLayout.ContainerControl = container;
		}
	}

	public bool ShouldSerializeHeader()
	{
		if (Header.BorderColor == Color.Black && Header.BorderStyle == BorderStyle.None && Header.Dock == DockStyle.Top && Header.Size == new Size(192, 22))
		{
			return false;
		}
		return true;
	}

	public override void ResetBackColor()
	{
		if (VisualStyle != VisualStyle.Office2007)
		{
			base.ResetBackColor();
		}
	}

	public bool ShouldSerializeHeaderLabel()
	{
		if (HeaderLabel.Dock == DockStyle.Fill && HeaderLabel.TextAlign == ContentAlignment.MiddleCenter)
		{
			return false;
		}
		return true;
	}

	public XPTaskPane()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(XPTaskPane));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		base.CardLayout.LayoutMode = CardLayoutMode.Fill;
		nextButton.Click += NextButton_Click;
		backButton.Click += BackButton_Click;
		closeButton.Click += CloseButton_Click;
		cd = new ControlDrawing();
		RefreshAppearance();
	}

	private void OnStyleChanged()
	{
		if (VisualStyle == VisualStyle.Office2007)
		{
			leftToolBar.Style = VisualStyle.Office2007;
			rightToolBar.Style = VisualStyle.Office2007;
			HeaderMenuItem.Style = VisualStyle.Office2007;
			m_office2007ColorTable = Office2007Colors.GetColorTable(m_colorScheme);
			leftToolBar.Office2007Theme = m_colorScheme;
			rightToolBar.Office2007Theme = m_colorScheme;
			HeaderMenuItem.Office2007Theme = m_colorScheme;
			XPTaskPage[] taskPages = TaskPages;
			foreach (XPTaskPage xPTaskPage in taskPages)
			{
				xPTaskPage.ThemesEnabled = false;
				xPTaskPage.BorderColor = Office2007ColorTable.GroupBarBorderColor;
			}
			BackColor = Office2007ColorTable.GroupBarItemColorLight;
			Header.BackColor = Color.Transparent;
			HeaderLabel.BackColor = Color.Transparent;
			HeaderLabel.ForeColor = Office2007ColorTable.GroupBarItemTextColor;
		}
		else
		{
			leftToolBar.Style = VisualStyle.OfficeXP;
			rightToolBar.Style = VisualStyle.OfficeXP;
			HeaderMenuItem.Style = VisualStyle.OfficeXP;
			Header.BackColor = BackColor;
			XPTaskPage[] taskPages2 = TaskPages;
			foreach (XPTaskPage xPTaskPage2 in taskPages2)
			{
				xPTaskPage2.BackColor = BackColor;
			}
			HeaderLabel.BackColor = BackColor;
			HeaderLabel.ForeColor = Color.Black;
			XPTaskPage[] taskPages3 = TaskPages;
			foreach (XPTaskPage xPTaskPage3 in taskPages3)
			{
				xPTaskPage3.ThemesEnabled = true;
			}
		}
		if (base.IsHandleCreated)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, 39);
		}
		Invalidate();
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		int num = 0;
		Graphics graphics = e.Graphics;
		Rectangle rectangle = displayRect;
		if (base.BorderStyle == BorderStyle.None)
		{
			if (VisualStyle == VisualStyle.Office2007)
			{
				num = 2;
				rectangle.Inflate(-1, -1);
				using (Pen pen = new Pen(Office2007ColorTable.XPTaskPaneBorderColor, 2f))
				{
					graphics.DrawRectangle(pen, rectangle);
				}
				graphics.SmoothingMode = SmoothingMode.AntiAlias;
				Rectangle bounds = rectangle;
				bounds.Width--;
				bounds.Height--;
				using GraphicsPath path = GetOffice2007PathFromBounds(bounds);
				using Pen pen2 = new Pen(Office2007ColorTable.XPTaskPaneInternalBorderColor);
				graphics.DrawPath(pen2, path);
			}
		}
		else
		{
			num = ((base.BorderStyle != BorderStyle.Fixed3D) ? 1 : 2);
			cd.DrawBorder(graphics, rectangle, base.BorderStyle, Border3DStyle.Sunken, ButtonBorderStyle.Solid, Color.Black);
		}
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (leftToolBar != null)
			{
				foreach (BarItem item in leftToolBar.Items)
				{
					item.Dispose();
				}
				Bar bar = leftToolBar.Bar;
				leftToolBar.Dispose();
				leftToolBar = null;
				bar.Dispose();
				bar = null;
			}
			if (rightToolBar != null)
			{
				foreach (BarItem item2 in rightToolBar.Items)
				{
					if (item2 is ParentBarItem)
					{
						(item2 as ParentBarItem).BeforePopup -= DropDown_BeforePopup;
					}
					item2.Dispose();
				}
				Bar bar2 = rightToolBar.Bar;
				rightToolBar.Dispose();
				rightToolBar = null;
				bar2.Dispose();
				bar2 = null;
			}
			if (m_verticalScrollUp != null)
			{
				m_verticalScrollUp.Dispose();
				m_verticalScrollUp = null;
			}
			if (m_verticalScrollDown != null)
			{
				m_verticalScrollDown.Dispose();
				m_verticalScrollDown = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Tools.XPTaskPane));
		this.header = new Syncfusion.Windows.Forms.Tools.XPTaskPaneHeader();
		this.titleLabel = new Syncfusion.Windows.Forms.Tools.XPTaskPaneHeaderLabel();
		this.rightToolBar = new Syncfusion.Windows.Forms.Tools.XPMenus.XPToolBar();
		this.dropdownButton = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();
		this.imageList = new System.Windows.Forms.ImageList(this.components);
		this.closeButton = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();
		this.leftToolBar = new Syncfusion.Windows.Forms.Tools.XPMenus.XPToolBar();
		this.backButton = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();
		this.nextButton = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();
		this.m_verticalScrollDown = new Syncfusion.Windows.Forms.Tools.VerticalScrollBar(false);
		this.m_verticalScrollUp = new Syncfusion.Windows.Forms.Tools.VerticalScrollBar(true);
		this.header.SuspendLayout();
		((System.ComponentModel.ISupportInitialize)this).BeginInit();
		base.SuspendLayout();
		this.header.Controls.AddRange(new System.Windows.Forms.Control[3] { this.titleLabel, this.rightToolBar, this.leftToolBar });
		this.header.Dock = System.Windows.Forms.DockStyle.Top;
		this.header.Name = "header";
		this.header.Size = new System.Drawing.Size(192, 22);
		this.header.TabIndex = 2;
		this.header.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.header.Paint += new System.Windows.Forms.PaintEventHandler(Header_Paint);
		this.header.VisibleChanged += new System.EventHandler(Header_VisibleChanged);
		this.titleLabel.Location = new System.Drawing.Point(45, 0);
		this.titleLabel.Name = "titleLabel";
		this.titleLabel.Size = new System.Drawing.Size(102, 22);
		this.titleLabel.TabIndex = 0;
		this.titleLabel.Text = "Title";
		this.titleLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
		this.rightToolBar.Bar = new Syncfusion.Windows.Forms.Tools.XPMenus.Bar(null, string.Empty, Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.AllowQuickCustomizing | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.IsMainMenu | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.RotateWhenVertical | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.Visible | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.DrawDragBorder, new Syncfusion.Windows.Forms.Tools.XPMenus.BarItemsDesignTime(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[2] { this.dropdownButton, this.closeButton }), new int[0]);
		this.rightToolBar.Location = new System.Drawing.Point(147, 0);
		this.rightToolBar.Name = "rightToolBar";
		this.rightToolBar.Size = new System.Drawing.Size(45, 22);
		this.rightToolBar.TabIndex = 1;
		this.rightToolBar.TabStop = false;
		this.rightToolBar.Text = "xpToolBar1";
		this.dropdownButton.CategoryIndex = -1;
		this.dropdownButton.ID = string.Empty;
		this.dropdownButton.ImageIndex = 2;
		this.dropdownButton.ImageList = this.imageList;
		this.dropdownButton.BeforePopup += new System.ComponentModel.CancelEventHandler(DropDown_BeforePopup);
		this.imageList.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
		this.imageList.ImageSize = new System.Drawing.Size(12, 12);
		this.imageList.ImageStream = (System.Windows.Forms.ImageListStreamer)resourceManager.GetObject("imageList.ImageStream");
		this.imageList.TransparentColor = System.Drawing.Color.Transparent;
		this.closeButton.CategoryIndex = -1;
		this.closeButton.ID = string.Empty;
		this.closeButton.ImageIndex = 3;
		this.closeButton.ImageList = this.imageList;
		this.leftToolBar.Bar = new Syncfusion.Windows.Forms.Tools.XPMenus.Bar(null, string.Empty, Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.AllowQuickCustomizing | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.RotateWhenVertical | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.Visible | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.DrawDragBorder, new Syncfusion.Windows.Forms.Tools.XPMenus.BarItemsDesignTime(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[2] { this.backButton, this.nextButton }), new int[0]);
		this.rightToolBar.Location = new System.Drawing.Point(0, 0);
		this.leftToolBar.Name = "leftToolBar";
		this.leftToolBar.Size = new System.Drawing.Size(45, 22);
		this.leftToolBar.TabIndex = 2;
		this.leftToolBar.TabStop = false;
		this.leftToolBar.Text = "xpToolBar1";
		this.backButton.CategoryIndex = -1;
		this.backButton.ID = string.Empty;
		this.backButton.ImageIndex = 0;
		this.backButton.ImageList = this.imageList;
		this.nextButton.CategoryIndex = -1;
		this.nextButton.ID = string.Empty;
		this.nextButton.ImageIndex = 1;
		this.nextButton.ImageList = this.imageList;
		this.m_verticalScrollUp.Location = new System.Drawing.Point(0, 0);
		this.m_verticalScrollUp.Name = "UpScrollBar";
		this.m_verticalScrollUp.Size = new System.Drawing.Size(192, 10);
		this.m_verticalScrollUp.TabIndex = 4;
		this.m_verticalScrollUp.Visible = false;
		this.m_verticalScrollDown.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.m_verticalScrollDown.Name = "DownScrollBar";
		this.m_verticalScrollDown.Size = new System.Drawing.Size(192, 10);
		this.m_verticalScrollDown.TabIndex = 5;
		this.m_verticalScrollDown.Visible = false;
		base.Controls.AddRange(new System.Windows.Forms.Control[3] { this.header, this.m_verticalScrollDown, this.m_verticalScrollUp });
		base.Name = "XPTaskPane";
		base.Size = new System.Drawing.Size(192, 296);
		base.AfterPageSelect += new Syncfusion.Windows.Forms.Tools.Wizard.WizardPageSelectEventHandler(XPTaskPane_AfterPageSelect);
		this.header.ResumeLayout(false);
		((System.ComponentModel.ISupportInitialize)this).EndInit();
		base.ResumeLayout(false);
	}

	protected override void OnEndInit()
	{
		base.OnEndInit();
		base.CardLayout.ContainerControl = base.PageContainer;
		if (!base.DesignMode && base.PageContainer != null)
		{
			RefreshMenuItems();
		}
		base.CardLayout.First();
		base.CardLayout.Next();
		base.CardLayout.Previous();
		Header.SendToBack();
		UpdateRTLRelatedProperties();
	}

	private void RefreshMenuItems()
	{
		dropdownButton.Items.Clear();
		for (int i = 0; i < base.PageContainer.Controls.Count; i++)
		{
			if (base.PageContainer.Controls[i] is XPTaskPage)
			{
				XPTaskPage xPTaskPage = base.PageContainer.Controls[i] as XPTaskPage;
				BarItem barItem = new BarItem(xPTaskPage.Title);
				barItem.Tag = xPTaskPage.LayoutName;
				barItem.Click += ItemClick;
				dropdownButton.Items.Add(barItem);
			}
		}
	}

	public GraphicsPath GetOffice2007PathFromBounds(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		Point[] points = new Point[6]
		{
			new Point(bounds.Left + 1, bounds.Top),
			new Point(bounds.Right - 1, bounds.Top),
			new Point(bounds.Right, bounds.Top + 1),
			new Point(bounds.Right, bounds.Bottom),
			new Point(bounds.Left, bounds.Bottom),
			new Point(bounds.Left, bounds.Top + 1)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	private void DropDown_BeforePopup(object sender, CancelEventArgs e)
	{
		if (SelectedPage == null)
		{
			return;
		}
		foreach (BarItem item in dropdownButton.Items)
		{
			if ((string)item.Tag == SelectedPage.LayoutName)
			{
				item.Checked = true;
			}
			else
			{
				item.Checked = false;
			}
		}
	}

	protected override void PageSettingsChanged()
	{
		RefreshMenuItems();
		RefreshAppearance();
	}

	private void ItemClick(object sender, EventArgs e)
	{
		BarItem barItem = (BarItem)sender;
		for (int i = 0; i < base.PageContainer.Controls.Count; i++)
		{
			if (base.PageContainer.Controls[i] is XPTaskPage && ((XPTaskPage)base.PageContainer.Controls[i]).LayoutName == (string)barItem.Tag)
			{
				SelectedPage = (XPTaskPage)base.PageContainer.Controls[i];
				break;
			}
		}
	}

	private void BackButton_Click(object sender, EventArgs e)
	{
		PreviousPage();
		UpdateVerticalScrolls();
	}

	private void NextButton_Click(object sender, EventArgs e)
	{
		NextPage();
		UpdateVerticalScrolls();
	}

	protected override void RefreshAppearance()
	{
		if (SelectedPage != null)
		{
			titleLabel.Text = SelectedPage.Title;
			UpdateRTLRelatedProperties();
			RefreshButtons();
		}
	}

	private void CloseButton_Click(object sender, EventArgs e)
	{
		Hide();
	}

	private void Header_Paint(object sender, PaintEventArgs e)
	{
		using Pen pen = new Pen(SystemColors.ControlDark);
		e.Graphics.DrawRectangle(pen, new Rectangle(0, 0, header.Width - 1, header.Height - 1));
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		UpdateVerticalScrolls();
		UpdateDockRelatedProperties();
		Invalidate(invalidateChildren: true);
	}

	protected override void OnDockChanged(EventArgs e)
	{
		base.OnDockChanged(e);
		UpdateDockRelatedProperties();
	}

	private void UpdateVerticalScrolls()
	{
		if (TaskPanePageContainer != null && SelectedPage != null && VerticalScroll)
		{
			Rectangle bounds = base.Bounds;
			int num = 0;
			if (Header != null && Header.Visible)
			{
				num = Header.Height;
				bounds.Height -= num;
			}
			if (bounds.Bottom >= SelectedPage.Bottom && base.Top >= SelectedPage.Top)
			{
				Rectangle bounds2 = SelectedPage.Bounds;
				SelectedPage.SetBounds(bounds2.X, bounds.Y + bounds.Height - bounds2.Height, bounds2.Width, bounds2.Height);
			}
			if (m_verticalScrollUp.Top > SelectedPage.Top + num)
			{
				m_verticalScrollUp.Visible = true;
			}
			else if (m_verticalScrollUp.Visible && m_verticalScrollUp.Top <= SelectedPage.Top + num)
			{
				m_verticalScrollUp.Visible = false;
			}
			if (bounds.Bottom < SelectedPage.Bottom)
			{
				m_verticalScrollDown.Visible = true;
			}
			else if (m_verticalScrollDown.Visible && bounds.Bottom >= SelectedPage.Bottom)
			{
				m_verticalScrollDown.Visible = false;
			}
			if (SelectedPage != null)
			{
				VerticalScrollBar verticalScrollDown = m_verticalScrollDown;
				int num2 = (m_verticalScrollUp.Width = SelectedPage.Bounds.Width);
				verticalScrollDown.Width = num2;
				m_verticalScrollDown.Refresh();
				m_verticalScrollUp.Refresh();
			}
			if (m_verticalScrollDown.Top <= base.Top + num)
			{
				m_verticalScrollDown.Visible = false;
			}
		}
	}

	private void Header_VisibleChanged(object sender, EventArgs e)
	{
		Panel panel = sender as Panel;
		if (!(panel.Parent is XPTaskPane xPTaskPane))
		{
			throw new NullReferenceException("Header.Parent can not be null.");
		}
		if (panel.Visible)
		{
			xPTaskPane.UpScroll.Top = panel.Bottom;
		}
		else
		{
			xPTaskPane.UpScroll.Top = panel.Top;
		}
		UpdateVerticalScrolls();
	}

	private void XPTaskPane_AfterPageSelect(object sender, WizardPageSelectEventArgs e)
	{
		RefreshAppearance();
	}

	private void RefreshButtons()
	{
		if (SelectedPage != null)
		{
			ArrayList arrayList = new ArrayList(WizardPages);
			if (arrayList.IndexOf(SelectedPage) == arrayList.Count - 1)
			{
				nextButton.Enabled = false;
			}
			else
			{
				nextButton.Enabled = true;
			}
			if (arrayList.IndexOf(SelectedPage) == 0)
			{
				backButton.Enabled = false;
			}
			else
			{
				backButton.Enabled = true;
			}
		}
	}

	protected void UpdateRTLRelatedProperties()
	{
		UpdateRTLRelatedProperties(GetIsMirrored());
	}

	protected void UpdateRTLRelatedProperties(bool bIsMirrored)
	{
		if (titleLabel != null)
		{
			titleLabel.Location = new Point(bIsMirrored ? (base.ClientRectangle.Left + rightToolBar.Width) : (base.ClientRectangle.Left + leftToolBar.Width), titleLabel.Location.Y);
		}
		if (leftToolBar != null)
		{
			leftToolBar.Location = new Point(bIsMirrored ? (base.ClientRectangle.Right - leftToolBar.Width) : 0, leftToolBar.Location.Y);
			UpdateToolBarItemsImageDrawing(leftToolBar, bIsMirrored);
		}
		if (rightToolBar != null)
		{
			rightToolBar.Location = new Point((!bIsMirrored) ? (base.ClientRectangle.Right - rightToolBar.Width) : 0, rightToolBar.Location.Y);
			UpdateToolBarItemsImageDrawing(rightToolBar, bIsMirrored);
		}
	}

	protected void UpdateToolBarItemsImageDrawing(XPToolBar xptbToolBar, bool bIsMirrored)
	{
		int count = xptbToolBar.Items.Count;
		for (int i = 0; i < count; i++)
		{
			BarItem barItem = xptbToolBar.Items[i];
			barItem.DrawImageMirrored = bIsMirrored;
		}
	}

	protected void UpdateDockRelatedProperties()
	{
		UpdateDockRelatedProperties(GetIsMirrored());
	}

	protected void UpdateDockRelatedProperties(bool bIsMirrored)
	{
		if (titleLabel != null)
		{
			titleLabel.Location = new Point(bIsMirrored ? (base.ClientRectangle.Left + rightToolBar.Width) : (base.ClientRectangle.Left + leftToolBar.Width), titleLabel.Location.Y);
			titleLabel.Size = new Size(base.ClientRectangle.Width - leftToolBar.Width - rightToolBar.Width, Header.Height);
		}
		if (leftToolBar != null)
		{
			leftToolBar.Location = new Point(bIsMirrored ? (base.ClientRectangle.Right - leftToolBar.Width) : 0, leftToolBar.Location.Y);
		}
		if (rightToolBar != null)
		{
			rightToolBar.Location = new Point((!bIsMirrored) ? (base.ClientRectangle.Right - rightToolBar.Width) : 0, rightToolBar.Location.Y);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 131 && base.BorderStyle == BorderStyle.None && VisualStyle == VisualStyle.Office2007)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT rECT = (Syncfusion.Runtime.InteropServices.NativeMethods.RECT)Marshal.PtrToStructure(m.LParam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.RECT));
			rECT.left += 2;
			rECT.top += 2;
			rECT.right -= 2;
			rECT.bottom -= 2;
			Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: false);
		}
		if (m.Msg == 133)
		{
			if (cachedRgn != IntPtr.Zero)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(cachedRgn);
				cachedRgn = IntPtr.Zero;
			}
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		UpdateRTLRelatedProperties();
	}

	public bool DesignerClick(Point pt)
	{
		BarItem barItem = leftToolBar.HitTest(pt.X, pt.Y);
		if (nextButton == barItem)
		{
			NextPage();
			return true;
		}
		if (backButton == barItem)
		{
			PreviousPage();
			return true;
		}
		return false;
	}
}
