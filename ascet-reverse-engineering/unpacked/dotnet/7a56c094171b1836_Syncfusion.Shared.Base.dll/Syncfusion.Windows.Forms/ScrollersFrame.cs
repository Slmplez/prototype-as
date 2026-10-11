using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.ComponentModel;
using Syncfusion.Windows.Forms.Interop;
using Syncfusion.Windows.Forms.Renderers;

namespace Syncfusion.Windows.Forms;

[TypeConverter(typeof(VisualStyleTypeConverter))]
[Description("Provides custom scrollbars with various VisualStyles")]
[Designer(typeof(ScrollersFrameDesigner))]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.ScrollersFrame.bmp")]
[ToolboxItem(true)]
public class ScrollersFrame : Component, IMessageFilter
{
	private enum ScrollBarComponents
	{
		ScrollBar,
		TopRightArrow,
		TopRightRegion,
		Thumb,
		BottomLeftRegion,
		BottomLeftArrow
	}

	[ToolboxItem(false)]
	public class SizeGripper : Control
	{
		public void DropHandle()
		{
			DestroyHandle();
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);
			bool bDrawMirrored = RightToLeft == RightToLeft.Yes;
			using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(e.Graphics, base.ClientRectangle, bDrawMirrored);
			ControlPaint.DrawSizeGrip(cMirroredDrawer.VirtualGfx, BackColor, cMirroredDrawer.VirtualBounds);
		}
	}

	[ToolboxItem(false)]
	public class SizeGripperAdv : SizeGripper
	{
		private const int MIN_WIDTH = 15;

		private const int GRIP_RECTANGLE_WIDTH = 2;

		private ScrollersFrame m_scrFrame;

		private bool m_bDrawGripMarking = true;

		public bool DrawGripMarking
		{
			get
			{
				return m_bDrawGripMarking;
			}
			set
			{
				if (m_bDrawGripMarking != value)
				{
					m_bDrawGripMarking = value;
					Invalidate();
				}
			}
		}

		public SizeGripperAdv(ScrollersFrame frame)
		{
			if (frame == null)
			{
				throw new ArgumentNullException("frame");
			}
			m_scrFrame = frame;
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			if (m_scrFrame == null)
			{
				return;
			}
			switch (m_scrFrame.VisualStyle)
			{
			case ScrollBarCustomDrawStyles.Office2007:
			case ScrollBarCustomDrawStyles.Office2007Generic:
			{
				ColorTableOffice2007 colorTable = ColorTableOffice2007.GetColorTable(m_scrFrame.VisualStyle, m_scrFrame.OfficeColorScheme);
				Color scrollerGripDark = colorTable.ScrollerGripDark;
				Color scrollerGripLight = colorTable.ScrollerGripLight;
				Color scrollerGripBackGround = colorTable.ScrollerGripBackGround;
				PaintGripOffice2007(e.Graphics, e.ClipRectangle, scrollerGripLight, scrollerGripDark, scrollerGripBackGround);
				break;
			}
			case ScrollBarCustomDrawStyles.WindowsXP:
			{
				Color clGripDark = Color.FromArgb(184, 181, 161);
				Color clGripLight = Color.FromArgb(255, 255, 255);
				Color clGripBackground = Color.FromArgb(224, 223, 227);
				PaintGripOffice2007(e.Graphics, e.ClipRectangle, clGripLight, clGripDark, clGripBackground);
				break;
			}
			case ScrollBarCustomDrawStyles.Classic:
			{
				if (m_bDrawGripMarking)
				{
					bool bDrawMirrored = RightToLeft == RightToLeft.Yes;
					using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(e.Graphics, base.ClientRectangle, bDrawMirrored);
					ControlPaint.DrawSizeGrip(cMirroredDrawer.VirtualGfx, BackColor, cMirroredDrawer.VirtualBounds);
					break;
				}
				using Brush brush = new SolidBrush(BackColor);
				e.Graphics.FillRectangle(brush, base.ClientRectangle);
				break;
			}
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				m_scrFrame = null;
			}
			base.Dispose(disposing);
		}

		private void PaintGripOffice2007(Graphics g, Rectangle rc, Color clGripLight, Color clGripDark, Color clGripBackground)
		{
			g.FillRectangle(new SolidBrush(clGripBackground), rc);
			if (!m_bDrawGripMarking || rc.Width <= 15 || rc.Height <= 15)
			{
				return;
			}
			using (Brush brush = new SolidBrush(clGripLight))
			{
				if (RightToLeft == RightToLeft.Yes)
				{
					Rectangle rect = new Rectangle(rc.Left + 2, rc.Height - 4, 2, 2);
					g.FillRectangle(brush, rect);
					rect.X += 4;
					g.FillRectangle(brush, rect);
					rect.X += 4;
					g.FillRectangle(brush, rect);
					rect.X -= 4;
					rect.Y -= 4;
					g.FillRectangle(brush, rect);
					rect.X -= 4;
					g.FillRectangle(brush, rect);
					rect.Y -= 4;
					g.FillRectangle(brush, rect);
				}
				else
				{
					Rectangle rect2 = new Rectangle(rc.Width - 4, rc.Height - 4, 2, 2);
					g.FillRectangle(brush, rect2);
					rect2.X -= 4;
					g.FillRectangle(brush, rect2);
					rect2.X -= 4;
					g.FillRectangle(brush, rect2);
					rect2.X += 4;
					rect2.Y -= 4;
					g.FillRectangle(brush, rect2);
					rect2.X += 4;
					g.FillRectangle(brush, rect2);
					rect2.Y -= 4;
					g.FillRectangle(brush, rect2);
				}
			}
			using Brush brush2 = new SolidBrush(clGripDark);
			if (RightToLeft == RightToLeft.Yes)
			{
				Rectangle rect3 = new Rectangle(rc.Left + 3, rc.Height - 5, 2, 2);
				g.FillRectangle(brush2, rect3);
				rect3.X += 4;
				g.FillRectangle(brush2, rect3);
				rect3.X += 4;
				g.FillRectangle(brush2, rect3);
				rect3.X -= 4;
				rect3.Y -= 4;
				g.FillRectangle(brush2, rect3);
				rect3.X -= 4;
				g.FillRectangle(brush2, rect3);
				rect3.Y -= 4;
				g.FillRectangle(brush2, rect3);
			}
			else
			{
				Rectangle rect4 = new Rectangle(rc.Width - 5, rc.Height - 5, 2, 2);
				g.FillRectangle(brush2, rect4);
				rect4.X -= 4;
				g.FillRectangle(brush2, rect4);
				rect4.X -= 4;
				g.FillRectangle(brush2, rect4);
				rect4.X += 4;
				rect4.Y -= 4;
				g.FillRectangle(brush2, rect4);
				rect4.X += 4;
				g.FillRectangle(brush2, rect4);
				rect4.Y -= 4;
				g.FillRectangle(brush2, rect4);
			}
		}
	}

	internal class VisualStyleTypeConverter : CustomPropertiesTypeConverter
	{
		protected override Attribute[] GetPropertyAttributes(Component component, PropertyDescriptor property)
		{
			if (component is ScrollersFrame scrollersFrame && property.Name == "OfficeColorScheme")
			{
				switch (scrollersFrame.VisualStyle)
				{
				case ScrollBarCustomDrawStyles.Office2007:
				case ScrollBarCustomDrawStyles.Office2007Generic:
					return new Attribute[1] { BrowsableAttribute.Yes };
				default:
					return new Attribute[1] { BrowsableAttribute.No };
				}
			}
			return CustomPropertiesTypeConverter.EmptyAttributes;
		}
	}

	private const string PROPERTY_NAME = "OfficeColorScheme";

	private NativeWindowEx m_nativewnd;

	private Control m_parent;

	private NativeMethods.SCROLLINFO m_hScroll;

	private NativeMethods.SCROLLINFO m_vScroll;

	private NativeMethods.SCROLLBARINFO m_hScrollBar;

	private NativeMethods.SCROLLBARINFO m_vScrollBar;

	private Control m_oldParentParent;

	private ScrollBarCustomDrawStyles m_styles;

	private Office2007ColorScheme m_ColorScheme;

	private SizeGripperVisibility m_gripperVisibility;

	private bool m_bParentInDragging;

	private bool m_bLeftMouseButtonDown;

	private bool m_bEnableDelayedScrollBarUpdate = true;

	private IAsyncResult m_iarSynchronizeScrollbars;

	private MethodInvoker m_miSynchronizeScrollbarsHandler;

	private static IDictionary s_attachedControls = new HybridDictionary();

	protected HScrollBarCustomDraw hScroller;

	protected VScrollBarCustomDraw vScroller;

	protected SizeGripperAdv m_sizeGripper;

	private Container components;

	[DefaultValue(null)]
	[Description("Reference on control to which we assign our custom scrollers.")]
	[TypeConverter(typeof(AttachedToControlTypeConverter))]
	[Category("Behavior")]
	[Browsable(true)]
	public Control AttachedTo
	{
		get
		{
			return m_parent;
		}
		set
		{
			if (m_parent != value)
			{
				DetachFrame();
				if (value != null)
				{
					AttachFrame(value);
				}
			}
		}
	}

	[Category("Behavior")]
	[Browsable(false)]
	[Description("Reference on configurable Horizontal Scroller control.")]
	public HScrollBarCustomDraw HorizontalScroller => hScroller;

	[Category("Behavior")]
	[Browsable(false)]
	[Description("Reference on configurable Vertical Scroller control.")]
	public VScrollBarCustomDraw VerticalScroller => vScroller;

	[Category("Appearance")]
	[DefaultValue(typeof(SizeGripperVisibility), "Smart")]
	[Description("Indicates visibility of size gripper.")]
	[Browsable(true)]
	public SizeGripperVisibility SizeGripperVisibility
	{
		get
		{
			return m_gripperVisibility;
		}
		set
		{
			if (m_gripperVisibility != value)
			{
				m_gripperVisibility = value;
				Update();
			}
		}
	}

	protected bool IsHorizontalScrollVisible
	{
		get
		{
			int windowLong = NativeMethods.GetWindowLong(m_parent.Handle, -16);
			bool flag = (windowLong & 0x100000) != 0;
			if (flag)
			{
				NativeMethods.GetScrollBarInfo(m_parent.Handle, 4294967290u, ref m_hScrollBar);
				int num = 0;
				int num2 = m_hScrollBar.rgstate[num];
				if (num2 != 0)
				{
					flag = (num2 & 0x8000) == 0;
				}
			}
			return flag;
		}
	}

	protected bool IsVerticalScrollVisible
	{
		get
		{
			int windowLong = NativeMethods.GetWindowLong(m_parent.Handle, -16);
			bool flag = (windowLong & 0x200000) != 0;
			if (flag)
			{
				NativeMethods.GetScrollBarInfo(m_parent.Handle, 4294967291u, ref m_vScrollBar);
				int num = 0;
				int num2 = m_vScrollBar.rgstate[num];
				if (num2 != 0)
				{
					flag = (num2 & 0x8000) == 0;
				}
			}
			return flag;
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Description("Specifies the style of appearance.")]
	[Category("Appearance - Styles")]
	[DefaultValue(typeof(ScrollBarCustomDrawStyles), "Classic")]
	public ScrollBarCustomDrawStyles VisualStyle
	{
		get
		{
			return m_styles;
		}
		set
		{
			if (m_styles != value)
			{
				m_styles = value;
				bool flag = value == ScrollBarCustomDrawStyles.Office2007;
				if (hScroller != null)
				{
					if (flag)
					{
						hScroller.OfficeColorScheme = OfficeColorScheme;
					}
					hScroller.VisualStyle = value;
					hScroller.Invalidate();
				}
				if (vScroller != null)
				{
					if (flag)
					{
						vScroller.OfficeColorScheme = OfficeColorScheme;
					}
					vScroller.VisualStyle = value;
					vScroller.Invalidate();
				}
			}
			m_sizeGripper.Invalidate();
		}
	}

	[Description("Specifies the color scheme (Silver, Blue, Black).")]
	[Category("Appearance - Styles")]
	public Office2007ColorScheme OfficeColorScheme
	{
		get
		{
			return m_ColorScheme;
		}
		set
		{
			if (m_ColorScheme != value)
			{
				m_ColorScheme = value;
				if (hScroller != null)
				{
					hScroller.OfficeColorScheme = value;
					hScroller.Invalidate();
				}
				if (vScroller != null)
				{
					vScroller.OfficeColorScheme = value;
					vScroller.Invalidate();
				}
				m_sizeGripper.Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(1)]
	[Description("Gets or sets the value to be added to or subtracted from the Value property when the horizontal scroll box is moved a small distance.")]
	public int HorizontalSmallChange
	{
		get
		{
			if (hScroller != null)
			{
				return hScroller.SmallChange;
			}
			return 1;
		}
		set
		{
			if (hScroller != null)
			{
				hScroller.SmallChange = value;
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(1)]
	[Description("Gets or sets the value to be added to or subtracted from the Value property when the vertical scroll box is moved a small distance.")]
	public int VerticallSmallChange
	{
		get
		{
			if (vScroller != null)
			{
				return vScroller.SmallChange;
			}
			return 1;
		}
		set
		{
			if (vScroller != null)
			{
				vScroller.SmallChange = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets whether delayed scrollbar updates must be updated.")]
	public virtual bool EnableDelayedScrollBarUpdate
	{
		get
		{
			return m_bEnableDelayedScrollBarUpdate;
		}
		set
		{
			m_bEnableDelayedScrollBarUpdate = value;
		}
	}

	[Description("Indicates whether scrollbar should be refreshed on each value change. If set to false, scrollbar is invalidated only and therefore is visually refreshed after processing all scrolling messages.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool RefreshOnValueChange
	{
		get
		{
			return vScroller.RefreshOnValueChange;
		}
		set
		{
			vScroller.RefreshOnValueChange = value;
			hScroller.RefreshOnValueChange = value;
		}
	}

	public ScrollersFrame()
	{
		InitializeComponent();
		hScroller.Scroll += OnScrollerScroll;
		vScroller.Scroll += OnScrollerScroll;
	}

	public ScrollersFrame(IContainer container)
		: this()
	{
		container.Add(this);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			DetachFrame();
			if (hScroller != null)
			{
				hScroller.Scroll -= OnScrollerScroll;
				hScroller.Dispose();
				hScroller = null;
				vScroller.Scroll -= OnScrollerScroll;
				vScroller.Dispose();
				vScroller = null;
			}
			if (m_sizeGripper != null)
			{
				m_sizeGripper.Dispose();
				m_sizeGripper.DropHandle();
				m_sizeGripper = null;
			}
			EndInvokeSynchronizeScrollbars();
			m_miSynchronizeScrollbarsHandler = null;
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		hScroller = new HScrollBarCustomDraw(this);
		vScroller = new VScrollBarCustomDraw(this);
		m_sizeGripper = new SizeGripperAdv(this);
		hScroller.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
		hScroller.Location = new Point(0, 144);
		hScroller.Name = "hScroller";
		hScroller.Size = new Size(224, 17);
		hScroller.TabIndex = 0;
		hScroller.ThemeEnabled = true;
		hScroller.Value = 10;
		hScroller.VisualStyle = ScrollBarCustomDrawStyles.Classic;
		vScroller.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Right;
		vScroller.Location = new Point(224, 0);
		vScroller.Name = "vScroller";
		vScroller.Size = new Size(16, 144);
		vScroller.TabIndex = 1;
		vScroller.ThemeEnabled = true;
		vScroller.Value = 10;
		vScroller.VisualStyle = ScrollBarCustomDrawStyles.Classic;
		m_sizeGripper.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
		m_sizeGripper.Location = new Point(224, 144);
		m_sizeGripper.Name = "sizeGripper";
		m_sizeGripper.Size = new Size(17, 17);
		m_sizeGripper.TabIndex = 2;
	}

	protected virtual bool ShouldSerializeVisualStyle()
	{
		return VisualStyle != ScrollBarCustomDrawStyles.Classic;
	}

	protected virtual void ResetVisualStyle()
	{
		VisualStyle = ScrollBarCustomDrawStyles.Classic;
	}

	protected virtual bool ShouldSerializeOfficeColorScheme()
	{
		return OfficeColorScheme != Office2007ColorScheme.Blue;
	}

	protected virtual void ResetOfficeColorScheme()
	{
		OfficeColorScheme = Office2007ColorScheme.Blue;
	}

	private void parent_HandleCreated(object sender, EventArgs e)
	{
		AttachScrollers();
	}

	private void parent_HandleDestroyed(object sender, EventArgs e)
	{
		DetachScrollers();
	}

	private void parent_RightToLeftChanged(object sender, EventArgs e)
	{
		ReflectRightToLeft();
	}

	private void m_parent_MouseDown(object sender, MouseEventArgs e)
	{
		m_bLeftMouseButtonDown = true;
	}

	private void m_parent_MouseUp(object sender, MouseEventArgs e)
	{
		m_bParentInDragging = (m_bLeftMouseButtonDown = false);
	}

	protected virtual void OnScrollerScroll(object sender, ScrollEventArgs e)
	{
		if (m_parent == null || !m_parent.IsHandleCreated)
		{
			return;
		}
		NativeMethods.SCROLLINFO si = new NativeMethods.SCROLLINFO
		{
			cbSize = Marshal.SizeOf(typeof(NativeMethods.SCROLLINFO)),
			fMask = 23
		};
		int num = ((sender != hScroller) ? 1 : 0);
		if (NativeMethods.GetScrollInfo(m_parent.Handle, num, ref si))
		{
			if (m_parent is ListView)
			{
				OnScrollerScrollListView(e, si, num);
				return;
			}
			si.nPos = e.NewValue;
			NativeMethods.SetScrollInfo(m_parent.Handle, num, ref si, redraw: true);
			IntPtr wparam = new IntPtr(4 + 65536 * e.NewValue);
			int msg = ((num == 0) ? 276 : 277);
			NativeMethods.PostMessage(m_parent.Handle, msg, wparam, IntPtr.Zero);
		}
	}

	private void OnScrollerScrollListView(ScrollEventArgs e, NativeMethods.SCROLLINFO scrollInfo, int fnBar)
	{
		ListView listView = (ListView)m_parent;
		int value = 0;
		int divisor = 1;
		if (fnBar == 0)
		{
			OnScrollerScrollListViewHorz(e, ref scrollInfo, listView, ref value);
		}
		else
		{
			OnScrollerScrollListViewVert(e, ref scrollInfo, listView, ref value, ref divisor);
		}
		scrollInfo.nPos += value / divisor;
		NativeMethods.SetScrollInfo(m_parent.Handle, fnBar, ref scrollInfo, redraw: true);
	}

	private void OnScrollerScrollListViewVert(ScrollEventArgs e, ref NativeMethods.SCROLLINFO scrollInfo, ListView listView, ref int value, ref int divisor)
	{
		if (listView.View == View.Details)
		{
			if (listView.Items.Count > 0)
			{
				Rectangle itemRect = listView.GetItemRect(0);
				if (itemRect.Height != 0)
				{
					divisor = itemRect.Height;
				}
				switch (e.Type)
				{
				case ScrollEventType.LargeDecrement:
					value = -scrollInfo.nPage * itemRect.Height;
					vScroller.LargeChange = -value;
					break;
				case ScrollEventType.LargeIncrement:
					value = scrollInfo.nPage * itemRect.Height;
					vScroller.LargeChange = value;
					break;
				case ScrollEventType.SmallDecrement:
					value = -itemRect.Height;
					vScroller.SmallChange = -value;
					break;
				case ScrollEventType.SmallIncrement:
					value = itemRect.Height;
					vScroller.SmallChange = value;
					break;
				default:
					value = (e.NewValue - scrollInfo.nPos) * itemRect.Height;
					break;
				}
			}
		}
		else
		{
			value = e.NewValue - scrollInfo.nPos;
		}
		NativeMethods.SendMessage(m_parent.Handle, 4116, IntPtr.Zero, (IntPtr)value);
	}

	private void OnScrollerScrollListViewHorz(ScrollEventArgs e, ref NativeMethods.SCROLLINFO scrollInfo, ListView listView, ref int value)
	{
		if (listView.View == View.List)
		{
			switch (e.Type)
			{
			case ScrollEventType.LargeDecrement:
				value = -1;
				hScroller.LargeChange = 1;
				break;
			case ScrollEventType.LargeIncrement:
				value = 1;
				hScroller.LargeChange = 1;
				break;
			case ScrollEventType.SmallDecrement:
				value = -1;
				hScroller.SmallChange = 1;
				break;
			case ScrollEventType.SmallIncrement:
				value = 1;
				hScroller.SmallChange = 1;
				break;
			default:
				value = e.NewValue - scrollInfo.nPos;
				break;
			}
		}
		else
		{
			value = e.NewValue - scrollInfo.nPos;
		}
		NativeMethods.SendMessage(m_parent.Handle, 4116, (IntPtr)value, IntPtr.Zero);
	}

	private void parent_ParentChanged(object sender, EventArgs e)
	{
		Control parent = ((Control)sender).Parent;
		if (m_oldParentParent != null)
		{
			DetachScrollers();
		}
		m_oldParentParent = parent;
		if (m_oldParentParent != null)
		{
			AttachScrollers();
		}
	}

	public void AttachFrame(Control control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		if (m_parent != null)
		{
			DetachFrame();
		}
		m_parent = control;
		m_oldParentParent = m_parent.Parent;
		m_parent.HandleCreated += parent_HandleCreated;
		m_parent.ParentChanged += parent_ParentChanged;
		m_parent.HandleDestroyed += parent_HandleDestroyed;
		m_parent.RightToLeftChanged += parent_RightToLeftChanged;
		m_parent.VisibleChanged += m_parent_VisibleChanged;
		m_parent.MouseDown += m_parent_MouseDown;
		m_parent.MouseUp += m_parent_MouseUp;
		AttachScrollers();
		s_attachedControls.Add(control, this);
	}

	private void m_parent_VisibleChanged(object sender, EventArgs e)
	{
		if (!m_parent.Visible)
		{
			vScroller.Visible = m_parent.Visible;
			hScroller.Visible = m_parent.Visible;
		}
	}

	public void DetachFrame()
	{
		if (m_parent != null)
		{
			DetachScrollers();
			m_parent.HandleCreated -= parent_HandleCreated;
			m_parent.HandleDestroyed -= parent_HandleDestroyed;
			m_parent.ParentChanged -= parent_ParentChanged;
			m_parent.RightToLeftChanged -= parent_RightToLeftChanged;
			m_parent.VisibleChanged -= m_parent_VisibleChanged;
			m_parent.MouseDown -= m_parent_MouseDown;
			m_parent.MouseUp -= m_parent_MouseUp;
			s_attachedControls.Remove(m_parent);
			m_parent = null;
		}
	}

	public void Update()
	{
		SynchronizeScrollbarsPosition();
	}

	private void AttachScrollers()
	{
		if (m_parent.IsHandleCreated && m_oldParentParent != null)
		{
			if (m_parent.Parent == null)
			{
				throw new ArgumentException("Can't attach to top level or parentless control");
			}
			ReflectRightToLeft();
			m_nativewnd = new NativeWindowEx(m_parent.Handle);
			m_nativewnd.MessageFilter = this;
			SynchronizeScrollbarsPosition();
		}
	}

	private void DetachScrollers()
	{
		if (hScroller != null)
		{
			if (m_nativewnd != null)
			{
				m_nativewnd.MessageFilter = null;
			}
			SizeGripperAdv sizeGripper = m_sizeGripper;
			bool enabled = (m_sizeGripper.Visible = false);
			sizeGripper.Enabled = enabled;
			VScrollBarCustomDraw vScrollBarCustomDraw = vScroller;
			bool enabled2 = (vScroller.Visible = false);
			vScrollBarCustomDraw.Enabled = enabled2;
			HScrollBarCustomDraw hScrollBarCustomDraw = hScroller;
			bool enabled3 = (hScroller.Visible = false);
			hScrollBarCustomDraw.Enabled = enabled3;
			vScroller.DropHandle();
			hScroller.DropHandle();
			m_sizeGripper.DropHandle();
		}
	}

	protected virtual void ReflectRightToLeft()
	{
		if (m_parent == null)
		{
			throw new ArgumentNullException("m_parent");
		}
		HScrollBarCustomDraw hScrollBarCustomDraw = hScroller;
		VScrollBarCustomDraw vScrollBarCustomDraw = vScroller;
		RightToLeft rightToLeft = (m_sizeGripper.RightToLeft = m_parent.RightToLeft);
		RightToLeft rightToLeft3 = (vScrollBarCustomDraw.RightToLeft = rightToLeft);
		hScrollBarCustomDraw.RightToLeft = rightToLeft3;
		UpdateScrollersParent();
	}

	private void UpdateScrollersParent()
	{
		if (m_parent.IsHandleCreated)
		{
			if (m_parent.Parent == null)
			{
				CreateControlContainer();
			}
			if (m_parent.Parent == null)
			{
				throw new ArgumentNullException("Control does not have parent window");
			}
			IntPtr handle = m_parent.Parent.Handle;
			NativeMethods.SetParent(hScroller.Handle, handle);
			NativeMethods.SetParent(vScroller.Handle, handle);
			NativeMethods.SetParent(m_sizeGripper.Handle, handle);
		}
	}

	internal void SynchronizeScrollbarsPosition()
	{
		if (m_parent != null && m_parent.Parent != null && m_parent.IsHandleCreated)
		{
			SynchronizeScrollbars(bWindow: true);
			IntPtr window = NativeMethods.GetWindow(m_parent.Handle, 3u);
			if (IsHorizontalScrollVisible)
			{
				NativeMethods.SetWindowPos(hScroller.Handle, window, 0, 0, 0, 0, 19);
			}
			if (IsVerticalScrollVisible)
			{
				NativeMethods.SetWindowPos(vScroller.Handle, window, 0, 0, 0, 0, 19);
			}
			if (m_sizeGripper.Visible)
			{
				NativeMethods.SetWindowPos(m_sizeGripper.Handle, window, 0, 0, 0, 0, 19);
			}
			UpdateParentInDragging();
			Rectangle r = m_hScrollBar.rcScrollBar;
			Rectangle r2 = m_vScrollBar.rcScrollBar;
			int windowLong = NativeMethods.GetWindowLong(m_parent.Handle, -20);
			if ((windowLong & 0x400000) != 0)
			{
				NativeMethods.RECT lpRect = default(NativeMethods.RECT);
				NativeMethods.GetWindowRect(m_parent.Handle, ref lpRect);
				r.X = lpRect.left + lpRect.right - r.Right;
				r2.X = lpRect.left + lpRect.right - r2.Right;
			}
			Rectangle rectangle = m_parent.Parent.RectangleToClient(r);
			Rectangle rectangle2 = m_parent.Parent.RectangleToClient(r2);
			if (IsHorizontalScrollVisible)
			{
				NativeMethods.SetWindowPos(hScroller.Handle, IntPtr.Zero, rectangle.Left, rectangle.Top, rectangle.Width, rectangle.Height, 4);
			}
			if (IsVerticalScrollVisible)
			{
				NativeMethods.SetWindowPos(vScroller.Handle, IntPtr.Zero, rectangle2.Left, rectangle2.Top, rectangle2.Width, rectangle2.Height, 4);
			}
			if (m_sizeGripper.Visible)
			{
				bool flag = m_sizeGripper.RightToLeft == RightToLeft.Yes;
				NativeMethods.SetWindowPos(m_sizeGripper.Handle, IntPtr.Zero, flag ? rectangle2.Left : rectangle.Right, rectangle2.Bottom, rectangle2.Width, rectangle.Height, 4);
			}
		}
	}

	protected virtual void UpdateParentInDragging()
	{
		if (m_bParentInDragging)
		{
			HScrollBarCustomDraw hScrollBarCustomDraw = hScroller;
			bool enabled = (hScroller.Visible = false);
			hScrollBarCustomDraw.Enabled = enabled;
			VScrollBarCustomDraw vScrollBarCustomDraw = vScroller;
			bool enabled2 = (vScroller.Visible = false);
			vScrollBarCustomDraw.Enabled = enabled2;
			SizeGripperAdv sizeGripper = m_sizeGripper;
			bool enabled3 = (m_sizeGripper.Visible = false);
			sizeGripper.Enabled = enabled3;
		}
		else
		{
			HScrollBarCustomDraw hScrollBarCustomDraw2 = hScroller;
			bool enabled4 = (hScroller.Visible = IsHorizontalScrollVisible);
			hScrollBarCustomDraw2.Enabled = enabled4;
			VScrollBarCustomDraw vScrollBarCustomDraw2 = vScroller;
			bool enabled5 = (vScroller.Visible = IsVerticalScrollVisible);
			vScrollBarCustomDraw2.Enabled = enabled5;
			UpdateGripperVisibility();
		}
	}

	internal void SynchronizeScrollbars(bool bWindow)
	{
		if (m_parent != null && m_parent.IsHandleCreated)
		{
			vScroller.Enabled = m_parent.Enabled;
			hScroller.Enabled = m_parent.Enabled;
			m_hScrollBar.cbSize = (m_vScrollBar.cbSize = Marshal.SizeOf(typeof(NativeMethods.SCROLLBARINFO)));
			m_hScroll.cbSize = (m_vScroll.cbSize = Marshal.SizeOf(typeof(NativeMethods.SCROLLINFO)));
			m_hScroll.fMask = (m_vScroll.fMask = 23);
			if (bWindow)
			{
				NativeMethods.GetScrollInfo(m_parent.Handle, 0, ref m_hScroll);
				NativeMethods.GetScrollInfo(m_parent.Handle, 1, ref m_vScroll);
				NativeMethods.GetScrollBarInfo(m_parent.Handle, 4294967290u, ref m_hScrollBar);
				NativeMethods.GetScrollBarInfo(m_parent.Handle, 4294967291u, ref m_vScrollBar);
				UpdateScrollerSettings(hScroller, ref m_hScroll);
				UpdateScrollerSettings(vScroller, ref m_vScroll);
				UpdateScrollerSettings(ref m_hScrollBar, ref m_vScrollBar);
			}
			else
			{
				UpdateSettingsByScroller(ref m_hScroll, hScroller);
				UpdateSettingsByScroller(ref m_vScroll, vScroller);
				NativeMethods.SetScrollInfo(m_parent.Handle, 0, ref m_hScroll, redraw: false);
				NativeMethods.SetScrollInfo(m_parent.Handle, 1, ref m_hScroll, redraw: false);
			}
			if (IsHorizontalScrollVisible)
			{
				hScroller.RecalculateScroll();
			}
			if (IsVerticalScrollVisible)
			{
				vScroller.RecalculateScroll();
			}
		}
	}

	private void UpdateScrollerSettings(ref NativeMethods.SCROLLBARINFO horz, ref NativeMethods.SCROLLBARINFO vert)
	{
		bool flag = horz.rgstate[5] == 1;
		bool flag2 = horz.rgstate[1] == 1;
		bool flag3 = vert.rgstate[1] == 1;
		bool flag4 = vert.rgstate[5] == 1;
		hScroller.DisableMinimumArrow = flag;
		hScroller.DisableMaximumArrow = flag2;
		hScroller.DisableThumb = flag && flag2;
		vScroller.DisableMinimumArrow = flag3;
		vScroller.DisableMaximumArrow = flag4;
		vScroller.DisableThumb = flag3 && flag4;
	}

	private void UpdateScrollerSettings(ScrollBarCustomDraw bar, ref NativeMethods.SCROLLINFO settings)
	{
		bar.Minimum = settings.nMin;
		bar.Maximum = settings.nMax;
		bar.Value = settings.nPos;
		if (m_parent is ListView)
		{
			ListView listView = (ListView)m_parent;
			if (listView.View == View.List)
			{
				bar.LargeChange = 1;
			}
			else
			{
				bar.LargeChange = settings.nPage;
			}
			if (m_parent.RightToLeft == RightToLeft.Yes)
			{
				bar.Value = bar.Minimum + bar.Maximum - bar.Value;
			}
		}
		else
		{
			bar.LargeChange = settings.nPage;
		}
	}

	private void UpdateSettingsByScroller(ref NativeMethods.SCROLLINFO settings, ScrollBarCustomDraw bar)
	{
		settings.nMin = bar.Minimum;
		settings.nMax = bar.Maximum;
		settings.nPos = bar.Value;
		settings.nPage = bar.LargeChange;
		settings.nTrackPos = 0;
	}

	protected virtual void CreateControlContainer()
	{
	}

	protected virtual bool WmNcCalcSize(ref Message m)
	{
		SynchronizeScrollbarsPosition();
		return true;
	}

	protected virtual bool WmWindowPosChanged(ref Message m)
	{
		if (EnableDelayedScrollBarUpdate && AttachedTo != null && AttachedTo.IsHandleCreated)
		{
			EndInvokeSynchronizeScrollbars();
			if (m_miSynchronizeScrollbarsHandler == null)
			{
				m_miSynchronizeScrollbarsHandler = SynchronizeScrollbarsAsync;
			}
			m_iarSynchronizeScrollbars = AttachedTo.BeginInvoke(m_miSynchronizeScrollbarsHandler);
		}
		SynchronizeScrollbarsPosition();
		return true;
	}

	private void EndInvokeSynchronizeScrollbars()
	{
		Control attachedTo = AttachedTo;
		if (attachedTo != null && m_iarSynchronizeScrollbars != null && !m_iarSynchronizeScrollbars.IsCompleted)
		{
			attachedTo.EndInvoke(m_iarSynchronizeScrollbars);
		}
		m_iarSynchronizeScrollbars = null;
	}

	protected virtual bool WmStyleChanged(ref Message m)
	{
		SynchronizeScrollbarsPosition();
		return true;
	}

	protected virtual bool WM_Move(ref Message m)
	{
		m_bParentInDragging = (m_bLeftMouseButtonDown = false);
		return true;
	}

	protected virtual bool WM_MouseMove(ref Message m)
	{
		m_bParentInDragging = m_bLeftMouseButtonDown;
		return true;
	}

	public bool PreFilterMessage(ref Message m)
	{
		bool flag = true;
		switch (m.Msg)
		{
		case 131:
			flag = WmNcCalcSize(ref m);
			break;
		case 71:
			flag = WmWindowPosChanged(ref m);
			break;
		case 125:
			flag = WmStyleChanged(ref m);
			break;
		case 3:
			flag = WM_Move(ref m);
			break;
		case 512:
			flag = WM_MouseMove(ref m);
			break;
		case 256:
		case 522:
		case 8720:
		case 49693:
			SynchronizeScrollbars(bWindow: true);
			break;
		default:
			if (!(m_parent is ListView))
			{
				SynchronizeScrollbars(bWindow: true);
			}
			break;
		}
		return !flag;
	}

	protected virtual void UpdateGripperVisibility()
	{
		SizeGripperAdv sizeGripper = m_sizeGripper;
		bool enabled = (m_sizeGripper.Visible = GetGripperVisibility());
		sizeGripper.Enabled = enabled;
	}

	protected bool GetGripperVisibility()
	{
		return m_gripperVisibility switch
		{
			SizeGripperVisibility.Visible => true, 
			SizeGripperVisibility.Hidden => false, 
			_ => hScroller.Visible && vScroller.Visible, 
		};
	}

	private void SynchronizeScrollbarsAsync()
	{
		SynchronizeScrollbars(bWindow: true);
	}

	internal static bool IsRelated(Control control, ScrollBarCustomDraw scroll)
	{
		bool result = false;
		if (s_attachedControls.Contains(control))
		{
			ScrollersFrame scrollersFrame = (ScrollersFrame)s_attachedControls[control];
			result = scrollersFrame.hScroller == scroll || scrollersFrame.vScroller == scroll;
		}
		return result;
	}
}
