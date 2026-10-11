using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.StatusStrip)]
[Designer(typeof(StatusStripExDesigner))]
[ToolboxBitmap(typeof(StatusStripEx), "ToolboxIcons.StatusStripEx.bmp")]
[Description("Represents Office 2007 Style StatusStrip.")]
public class StatusStripEx : StatusStrip, IDockExtended
{
	private class StatusStripExLayoutEngine : LayoutEngine
	{
		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			StatusStripEx statusStripEx = (StatusStripEx)container;
			int height = statusStripEx.Height;
			Rectangle displayRectangle = statusStripEx.DisplayRectangle;
			Size size = displayRectangle.Size;
			int num = displayRectangle.Right;
			int num2 = 0;
			int top = statusStripEx.Padding.Top;
			int left = statusStripEx.Padding.Left;
			bool flag = false;
			for (int num3 = statusStripEx.StatusControlsItems.Count - 1; num3 >= 0; num3--)
			{
				ToolStripItem toolStripItem = statusStripEx.StatusControlsItems[num3];
				if (toolStripItem != null && toolStripItem.Owner != null)
				{
					num2 = toolStripItem.Margin.Top + top;
					if (toolStripItem.AutoSize)
					{
						toolStripItem.Size = toolStripItem.GetPreferredSize(size);
						num2 = (height - toolStripItem.Height) / 2;
					}
					int num4 = left + toolStripItem.Width;
					if (toolStripItem.Available)
					{
						if (num <= num4 || flag)
						{
							SetItemLocationRTL(statusStripEx, toolStripItem, new Point(-toolStripItem.Width - 1, num2));
							flag = true;
						}
						else
						{
							SetItemLocationRTL(statusStripEx, toolStripItem, new Point(num - toolStripItem.Width, num2));
							num -= toolStripItem.Width + 2;
						}
					}
				}
			}
			int num5 = displayRectangle.Left;
			bool flag2 = false;
			int i = 0;
			for (int count = statusStripEx.NotificationsItems.Count; i < count; i++)
			{
				ToolStripItem toolStripItem2 = statusStripEx.NotificationsItems[i];
				if (toolStripItem2 == null || toolStripItem2.Owner == null)
				{
					continue;
				}
				num2 = toolStripItem2.Margin.Top + top;
				if (toolStripItem2.AutoSize)
				{
					toolStripItem2.Size = toolStripItem2.GetPreferredSize(size);
					num2 = (height - toolStripItem2.Height) / 2;
				}
				bool flag3 = false;
				if (toolStripItem2 is IStatusItem statusItem)
				{
					flag3 = statusItem.EndOfGroup;
				}
				if (toolStripItem2.Available)
				{
					if (num5 + toolStripItem2.Width < num - 3 && !flag2 && !flag)
					{
						SetItemLocationRTL(statusStripEx, toolStripItem2, new Point(num5, num2));
						num5 += toolStripItem2.Width + 2;
					}
					else
					{
						SetItemLocationRTL(statusStripEx, toolStripItem2, new Point(-toolStripItem2.Width - 1, num2));
						flag2 = true;
					}
				}
				if (flag3 && !flag2 && statusStripEx.Separators != null)
				{
					AddSeparatorsPositionRTL(statusStripEx, num5 - 2);
				}
			}
			SetSeparatorPositionRTL(statusStripEx, num - 3);
			return statusStripEx.AutoSize;
		}

		private void SetItemLocationRTL(StatusStripEx parent, ToolStripItem item, Point location)
		{
			if (parent.RightToLeft == RightToLeft.No)
			{
				parent.SetItemLocation(item, location);
			}
			else if (location.X > 0)
			{
				Point location2 = new Point(parent.Width - location.X - item.Width + parent.DisplayRectangle.X, location.Y);
				parent.SetItemLocation(item, location2);
			}
			else
			{
				parent.SetItemLocation(item, location);
			}
		}

		private void SetSeparatorPositionRTL(StatusStripEx parent, int position)
		{
			if (parent.RightToLeft == RightToLeft.No)
			{
				parent.SeparatorPosition = ((position > 0) ? position : 0);
			}
			else
			{
				parent.SeparatorPosition = ((position > 0) ? (parent.Width - position - 3 + parent.DisplayRectangle.X) : 0);
			}
		}

		private void AddSeparatorsPositionRTL(StatusStripEx parent, int position)
		{
			if (parent.RightToLeft == RightToLeft.No)
			{
				parent.Separators.Add(position);
			}
			else
			{
				parent.Separators.Add(parent.Width - position - 2 + parent.DisplayRectangle.X);
			}
		}
	}

	public class GripWindow : NativeWindow
	{
		private Control m_control;

		public GripWindow(Control control)
		{
			m_control = control;
			AssignHandle(m_control.Handle);
		}

		protected override void WndProc(ref Message m)
		{
			Msg msg = (Msg)m.Msg;
			if (msg == Msg.WM_PAINT && m_control.Parent is StatusStripEx statusStripEx)
			{
				PAINTSTRUCT ps = default(PAINTSTRUCT);
				IntPtr hdc = WindowsAPI.BeginPaint(m.HWnd, ref ps);
				using (Graphics graphics = Graphics.FromHdc(hdc))
				{
					Point location = m_control.Location;
					graphics.TranslateTransform(-(location.X + 1), -location.Y);
					ToolStripRenderEventArgs e = new ToolStripRenderEventArgs(graphics, statusStripEx);
					ToolStripRenderer renderer = statusStripEx.Renderer;
					renderer.DrawToolStripBackground(e);
					renderer.DrawStatusStripSizingGrip(e);
				}
				WindowsAPI.EndPaint(m.HWnd, ref ps);
				m.Result = IntPtr.Zero;
			}
			else
			{
				base.WndProc(ref m);
			}
		}
	}

	private const int MARGIN = 2;

	private const int SEPARATOR_WIDTH = 2;

	private const int MAIN_SEPARATOR_WIDTH = 3;

	private StatusStripExLayoutEngine m_layoutEngine;

	private ToolStripItemCollection m_notificationsItems;

	private ToolStripItemCollection m_statusControlsItems;

	private ToolStripEx.ColorScheme m_colorScheme;

	private List<int> m_separators = new List<int>();

	private int m_mainSeparatorPosition = -1;

	private Rectangle m_statusControlsArea = Rectangle.Empty;

	private Rectangle m_notificationslArea = Rectangle.Empty;

	private DockStyleEx m_dock = DockStyleEx.BottomMost;

	private StatusContextMenuStrip m_menuStrip;

	private Office12ColorTable office12_color_table_mgdColors = Office12ColorTable.ManagedColors;

	private bool m_bDisposing;

	[DefaultValue(typeof(DockStyleEx), "BottomMost")]
	[Description("Gets or sets which control borders are docked to its parent control and determines how a control is resized with its parent.")]
	public new DockStyleEx Dock
	{
		get
		{
			return m_dock;
		}
		set
		{
			if (m_dock != value)
			{
				m_dock = value;
				base.Dock = value switch
				{
					DockStyleEx.Top => DockStyle.Top, 
					DockStyleEx.Bottom => DockStyle.Bottom, 
					DockStyleEx.Left => DockStyle.Left, 
					DockStyleEx.Right => DockStyle.Right, 
					DockStyleEx.Fill => DockStyle.Fill, 
					_ => DockStyle.None, 
				};
			}
		}
	}

	internal ToolStripItemCollection StatusControlsItems
	{
		get
		{
			if (m_statusControlsItems == null)
			{
				m_statusControlsItems = new ToolStripItemCollection(this, new ToolStripItem[0]);
			}
			if (m_statusControlsItems.Count == 0)
			{
				for (int i = 0; i < Items.Count; i++)
				{
					if (!(Items[i] is IStatusItem))
					{
						m_statusControlsItems.Add(Items[i]);
					}
				}
			}
			return m_statusControlsItems;
		}
	}

	internal ToolStripItemCollection NotificationsItems
	{
		get
		{
			if (m_notificationsItems == null)
			{
				m_notificationsItems = new ToolStripItemCollection(this, new ToolStripItem[0]);
			}
			if (m_notificationsItems.Count == 0)
			{
				for (int i = 0; i < Items.Count; i++)
				{
					if (Items[i] is IStatusItem)
					{
						m_notificationsItems.Add(Items[i]);
					}
				}
			}
			return m_notificationsItems;
		}
	}

	internal List<int> Separators => m_separators;

	internal int SeparatorPosition
	{
		get
		{
			return m_mainSeparatorPosition;
		}
		set
		{
			m_mainSeparatorPosition = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Description("Gets the area where Status controls are located")]
	public Rectangle StatusControlsArea
	{
		get
		{
			if (m_mainSeparatorPosition != -1)
			{
				if (RightToLeft == RightToLeft.Yes)
				{
					m_statusControlsArea = new Rectangle(Point.Empty, new Size(m_mainSeparatorPosition, base.Height));
				}
				else
				{
					m_statusControlsArea = new Rectangle(new Point(m_mainSeparatorPosition + 3, 0), new Size(base.Width - m_mainSeparatorPosition, base.Height));
				}
			}
			else
			{
				m_statusControlsArea = Rectangle.Empty;
			}
			return m_statusControlsArea;
		}
	}

	internal Rectangle NotificationslArea
	{
		get
		{
			if (m_mainSeparatorPosition != -1)
			{
				if (RightToLeft == RightToLeft.Yes)
				{
					m_notificationslArea = new Rectangle(new Point(m_mainSeparatorPosition + 3, 0), new Size(base.Width - m_mainSeparatorPosition, base.Height));
				}
				else
				{
					m_notificationslArea = new Rectangle(Point.Empty, new Size(m_mainSeparatorPosition, base.Height));
				}
			}
			else
			{
				m_notificationslArea = Rectangle.Empty;
			}
			return m_notificationslArea;
		}
	}

	[Description("Specifies the color scheme (Silver, Blue).")]
	public virtual ToolStripEx.ColorScheme OfficeColorScheme
	{
		get
		{
			if (m_colorScheme == ToolStripEx.ColorScheme.Default)
			{
				if (!(base.Parent is RibbonForm ribbonForm))
				{
					return ToolStripEx.ColorScheme.Managed;
				}
				return GetOfficeColorScheme(ribbonForm.ColorScheme);
			}
			return m_colorScheme;
		}
		set
		{
			if (m_colorScheme != value)
			{
				m_colorScheme = value;
				UpdateRenderer();
				Invalidate(invalidateChildren: false);
			}
		}
	}

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_layoutEngine == null)
			{
				m_layoutEngine = new StatusStripExLayoutEngine();
			}
			return m_layoutEngine;
		}
	}

	public override ContextMenuStrip ContextMenuStrip
	{
		get
		{
			ContextMenuStrip contextMenuStrip = base.ContextMenuStrip;
			if (contextMenuStrip != null)
			{
				return contextMenuStrip;
			}
			return m_menuStrip;
		}
		set
		{
			if (value is StatusContextMenuStrip)
			{
				StatusContextMenuStrip statusContextMenuStrip = value as StatusContextMenuStrip;
				statusContextMenuStrip.StatusStrip = this;
				base.ContextMenuStrip = statusContextMenuStrip;
			}
			else
			{
				base.ContextMenuStrip = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ToolStripRenderMode RenderMode
	{
		get
		{
			return ToolStripRenderMode.Custom;
		}
		set
		{
		}
	}

	public StatusStripEx()
	{
		base.Dock = DockStyle.None;
		m_menuStrip = new StatusContextMenuStrip(this);
		m_menuStrip.AutoGenerated = true;
		ContextMenuStrip = m_menuStrip;
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		if (m_notificationsItems != null)
		{
			m_notificationsItems.Clear();
			m_notificationsItems = null;
		}
		if (m_statusControlsItems != null)
		{
			m_statusControlsItems.Clear();
			m_statusControlsItems = null;
		}
		base.OnHandleDestroyed(e);
	}

	protected override void Dispose(bool disposing)
	{
		m_bDisposing = true;
		if (disposing)
		{
			if (m_menuStrip != null)
			{
				m_menuStrip.StatusStrip = null;
				m_menuStrip.Dispose();
				m_menuStrip = null;
			}
			if (m_separators != null)
			{
				m_separators.Clear();
				m_separators = null;
			}
			ContextMenuStrip = null;
			base.Renderer = null;
			office12_color_table_mgdColors = null;
			m_layoutEngine = null;
		}
		base.Dispose(disposing);
		base.DestroyHandle();
		m_bDisposing = false;
	}

	[Description("Retrieves the size of a rectangular area into which a control can be fitted.")]
	public override Size GetPreferredSize(Size proposedSize)
	{
		Size size = DefaultSize - base.Padding.Size;
		int num = 3;
		int num2 = size.Height;
		ToolStripItemCollection statusControlsItems = StatusControlsItems;
		int count = statusControlsItems.Count;
		if (count > 0)
		{
			int i = 0;
			for (int num3 = count; i < num3; i++)
			{
				ToolStripItem toolStripItem = statusControlsItems[i];
				if (toolStripItem != null && toolStripItem.Available)
				{
					Size size2 = (toolStripItem.AutoSize ? toolStripItem.GetPreferredSize(Size.Empty) : toolStripItem.Size);
					num += size2.Width + 2;
					num2 = Math.Max(num2, size2.Height + toolStripItem.Margin.Vertical);
				}
			}
		}
		ToolStripItemCollection notificationsItems = NotificationsItems;
		int count2 = notificationsItems.Count;
		if (count2 > 0)
		{
			int j = 0;
			for (int num4 = count2; j < num4; j++)
			{
				ToolStripItem toolStripItem2 = notificationsItems[j];
				if (toolStripItem2 != null && toolStripItem2.Available)
				{
					Size size3 = (toolStripItem2.AutoSize ? toolStripItem2.GetPreferredSize(Size.Empty) : toolStripItem2.Size);
					num += size3.Width + 2;
					num2 = Math.Max(num2, size3.Height + toolStripItem2.Margin.Vertical);
				}
			}
		}
		else if (num < size.Width)
		{
			num = size.Width;
		}
		return new Size(num + base.Padding.Horizontal, num2 + base.Padding.Vertical);
	}

	protected override void OnLayout(LayoutEventArgs lea)
	{
		if (m_notificationsItems != null)
		{
			m_notificationsItems.Clear();
		}
		if (m_statusControlsItems != null)
		{
			m_statusControlsItems.Clear();
		}
		if (m_separators != null)
		{
			m_separators.Clear();
		}
		m_mainSeparatorPosition = -1;
		base.OnLayout(lea);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (base.Parent is RibbonForm ribbonForm)
		{
			switch (Dock)
			{
			case DockStyleEx.BottomMost:
				width = ribbonForm.DisplayRectangle.Width;
				break;
			case DockStyleEx.TopMost:
				width = ribbonForm.ClientRectangle.Width - 2;
				break;
			}
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		if (!m_bDisposing)
		{
			UpdateRenderer();
		}
		else
		{
			UpdateRenderer(disposing: true);
		}
	}

	protected override void OnRendererChanged(EventArgs e)
	{
		if (!m_bDisposing)
		{
			if (!(base.Renderer is StatusStripExRenderer))
			{
				UpdateRenderer();
			}
		}
		else
		{
			UpdateRenderer(disposing: true);
		}
		base.OnRendererChanged(e);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		Control control = e.Control;
		if (control.GetType().Name == "RightToLeftLayoutGrip")
		{
			new GripWindow(control);
		}
		base.OnControlAdded(e);
	}

	protected override void WndProc(ref Message m)
	{
		Msg msg = (Msg)m.Msg;
		if (msg != Msg.WM_NCHITTEST || !OnNcHitTest(ref m))
		{
			base.WndProc(ref m);
		}
	}

	internal void UpdateRenderer()
	{
		switch (OfficeColorScheme)
		{
		case ToolStripEx.ColorScheme.Managed:
			base.Renderer = new StatusStripExRenderer(office12_color_table_mgdColors);
			break;
		case ToolStripEx.ColorScheme.Silver:
			base.Renderer = new StatusStripExRenderer(new Office12ColorTable());
			break;
		case ToolStripEx.ColorScheme.Blue:
		{
			OfficeBlue colorTable = new OfficeBlue();
			base.Renderer = new StatusStripExRenderer(colorTable);
			break;
		}
		case ToolStripEx.ColorScheme.Black:
			base.Renderer = new StatusStripExRenderer(new OfficeBlack());
			break;
		}
	}

	internal void UpdateRenderer(bool disposing)
	{
		if (disposing)
		{
			base.Renderer = null;
		}
	}

	private ToolStripEx.ColorScheme GetOfficeColorScheme(RibbonForm.ColorSchemeType type)
	{
		return type switch
		{
			RibbonForm.ColorSchemeType.Silver => ToolStripEx.ColorScheme.Silver, 
			RibbonForm.ColorSchemeType.Black => ToolStripEx.ColorScheme.Black, 
			RibbonForm.ColorSchemeType.Blue => ToolStripEx.ColorScheme.Blue, 
			_ => ToolStripEx.ColorScheme.Managed, 
		};
	}

	private bool OnNcHitTest(ref Message m)
	{
		if (base.Parent is Form { TopLevel: not false } form)
		{
			WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(form.Handle, -16);
			if ((windowLong & (WindowStyles.WS_MINIMIZE | WindowStyles.WS_MAXIMIZE)) == 0)
			{
				POINT lpPoints = new POINT(WindowsAPI.GET_X_LPARAM((int)m.LParam), WindowsAPI.GET_Y_LPARAM((int)m.LParam));
				WindowsAPI.MapWindowPoints(IntPtr.Zero, base.Handle, ref lpPoints, 1u);
				if (base.SizingGrip && base.SizeGripBounds.Contains(lpPoints.x, lpPoints.y))
				{
					m.Result = (IntPtr)17L;
					return true;
				}
			}
		}
		return false;
	}

	public bool ShouldSerializeOfficeColorScheme()
	{
		return m_colorScheme != ToolStripEx.ColorScheme.Default;
	}

	public void ResetOfficeColorScheme()
	{
		OfficeColorScheme = ToolStripEx.ColorScheme.Default;
	}
}
