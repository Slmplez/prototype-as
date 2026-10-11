using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents an Office 2007 Style MiniBar.")]
[Designer(typeof(MiniToolBarDesigner))]
[ToolboxBitmap(typeof(MiniToolBar), "ToolboxIcons.MiniToolBar.bmp")]
public class MiniToolBar : ToolStripDropDown, IMessageFilter
{
	public class MiniToolBarLayout : LayoutEngine
	{
		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			MiniToolBar miniToolBar = container as MiniToolBar;
			Rectangle displayRectangle = miniToolBar.DisplayRectangle;
			int height = displayRectangle.Height;
			RightToLeft rightToLeft = miniToolBar.RightToLeft;
			Point location = new Point(0, displayRectangle.Y);
			foreach (ToolStripItem item in miniToolBar.Items)
			{
				if (item.Available)
				{
					Padding margin = item.Margin;
					Size itemSize = miniToolBar.GetItemSize(item);
					itemSize.Height = height - margin.Vertical;
					item.Size = itemSize;
					SetItemLocationRTL(miniToolBar, item, rightToLeft, location);
					location.X += item.Width + margin.Horizontal;
				}
			}
			return miniToolBar.AutoSize;
		}

		private void SetItemLocationRTL(MiniToolBar toolbar, ToolStripItem item, RightToLeft rtl, Point location)
		{
			if (rtl == RightToLeft.Yes)
			{
				location.X = toolbar.DisplayRectangle.Right - location.X - item.Width - item.Margin.Right;
			}
			else
			{
				location.X = toolbar.DisplayRectangle.X + location.X + item.Margin.Left;
			}
			location.Y += item.Margin.Top;
			toolbar.SetItemLocation(item, location);
		}
	}

	private bool m_bCaptured;

	private ToolStripEx.ColorScheme m_colorScheme = ToolStripEx.ColorScheme.Managed;

	private Size m_preferredSize = Size.Empty;

	private int m_distance = -1;

	private float m_range = -1f;

	private WindowsAPI.HookProc m_pHook;

	private IntPtr m_hHook;

	private Control m_associatedControl;

	private static MiniToolBarLayout m_layout;

	private static Dictionary<ToolStripEx.ColorScheme, Office12ToolStripRenderer> m_dRenderes;

	[Description("Gets or set the color scheme used for painting")]
	[DefaultValue(typeof(ToolStripEx.ColorScheme), "Managed")]
	public ToolStripEx.ColorScheme ColorScheme
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
				UpdateRenderer();
			}
		}
	}

	public override LayoutEngine LayoutEngine => m_layout;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new ToolStripLayoutStyle LayoutStyle
	{
		get
		{
			return base.LayoutStyle;
		}
		set
		{
			base.LayoutStyle = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new double Opacity
	{
		get
		{
			return base.Opacity;
		}
		set
		{
			base.Opacity = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool DropShadowEnabled
	{
		get
		{
			return base.DropShadowEnabled;
		}
		set
		{
			base.DropShadowEnabled = value;
		}
	}

	[Description("Gets or sets the control which is associated with MiniToolBar")]
	[DefaultValue(null)]
	[TypeConverter(typeof(AssociatedControlTypeConverter))]
	public Control AssociatedControl
	{
		get
		{
			return m_associatedControl;
		}
		set
		{
			if (m_associatedControl != value)
			{
				if (m_associatedControl != null)
				{
					m_associatedControl.MouseCaptureChanged -= AssociatedControl_MouseCaptureChanged;
					Application.RemoveMessageFilter(this);
				}
				m_associatedControl = value;
				if (m_associatedControl != null)
				{
					m_associatedControl.MouseCaptureChanged += AssociatedControl_MouseCaptureChanged;
					Application.AddMessageFilter(this);
				}
			}
		}
	}

	private IntPtr Module => Marshal.GetHINSTANCE(GetType().Module);

	private float Range
	{
		get
		{
			if (m_range < 0f && base.IsHandleCreated)
			{
				using Graphics graphics = Graphics.FromHwnd(base.Handle);
				m_range = graphics.DpiX;
			}
			return m_range;
		}
	}

	static MiniToolBar()
	{
		m_layout = new MiniToolBarLayout();
		m_dRenderes = new Dictionary<ToolStripEx.ColorScheme, Office12ToolStripRenderer>();
		m_dRenderes[ToolStripEx.ColorScheme.Managed] = new Office12ToolStripRenderer(Office12ColorTable.ManagedColors);
		m_dRenderes[ToolStripEx.ColorScheme.Silver] = new Office12ToolStripRenderer();
		m_dRenderes[ToolStripEx.ColorScheme.Blue] = new Office12ToolStripRenderer(new OfficeBlue());
		m_dRenderes[ToolStripEx.ColorScheme.Black] = new Office12ToolStripRenderer(new OfficeBlack());
	}

	public MiniToolBar()
	{
		base.AllowTransparency = true;
		DropShadowEnabled = false;
		m_pHook = MouseProc;
		UpdateRenderer();
	}

	[Description("Retrieves the size of a rectangular area into which a control can be fitted.")]
	public override Size GetPreferredSize(Size proposedSize)
	{
		if (Items.Count > 0)
		{
			if (m_preferredSize.IsEmpty)
			{
				foreach (ToolStripItem item in Items)
				{
					Padding margin = item.Margin;
					Size itemSize = GetItemSize(item);
					itemSize.Width += margin.Horizontal;
					itemSize.Height += margin.Vertical;
					if (m_preferredSize.Height < itemSize.Height)
					{
						m_preferredSize.Height = itemSize.Height;
					}
					m_preferredSize.Width += itemSize.Width;
				}
				m_preferredSize.Width += base.Padding.Horizontal;
				m_preferredSize.Height += base.Padding.Vertical;
			}
			return m_preferredSize;
		}
		return new Size(24, 24);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		m_preferredSize = Size.Empty;
		base.OnLayout(e);
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		HandledEventArgs e2 = new HandledEventArgs(defaultHandledValue: false);
		base.OnVisibleChanged((EventArgs)e2);
		if (!e2.Handled)
		{
			if (base.Visible)
			{
				m_distance = -1;
				Opacity = 1.0;
				m_hHook = WindowsAPI.SetWindowsHookEx(14, m_pHook, Module, 0);
			}
			else
			{
				WindowsAPI.UnhookWindowsHookEx(m_hHook);
			}
		}
	}

	public void ShowMiniToolbarOnSelection(bool show)
	{
		base.Visible = show;
	}

	protected override void OnOpening(CancelEventArgs e)
	{
		Opacity = 0.30000001192092896;
		base.AllowTransparency = true;
		base.DropShadowEnabled = false;
		base.OnOpening(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		bool visible = base.Visible;
		if (visible)
		{
			base.Visible = false;
		}
		base.OnRightToLeftChanged(e);
		if (visible)
		{
			base.Visible = true;
		}
	}

	private IntPtr MouseProc(int nCode, IntPtr wParam, IntPtr lParam)
	{
		if ((int)wParam == 512)
		{
			MOUSEHOOKSTRUCT mOUSEHOOKSTRUCT = (MOUSEHOOKSTRUCT)Marshal.PtrToStructure(lParam, typeof(MOUSEHOOKSTRUCT));
			OnMouseMove(ref mOUSEHOOKSTRUCT.pt);
		}
		return WindowsAPI.CallNextHookEx(m_hHook, nCode, wParam, lParam);
	}

	private void UpdateRenderer()
	{
		if (m_colorScheme == ToolStripEx.ColorScheme.Default)
		{
			base.Renderer = m_dRenderes[ToolStripEx.ColorScheme.Managed];
		}
		else
		{
			base.Renderer = m_dRenderes[m_colorScheme];
		}
		Invalidate();
	}

	private Size GetItemSize(ToolStripItem item)
	{
		if (item.Available)
		{
			if (!item.AutoSize)
			{
				return item.Size;
			}
			return item.GetPreferredSize(Size.Empty);
		}
		return Size.Empty;
	}

	private void OnMouseMove(ref POINT pt)
	{
		if (!base.IsHandleCreated || !(base.Handle == GetTopWindow()))
		{
			return;
		}
		Rectangle bounds = base.Bounds;
		int val = 0;
		if (pt.x < bounds.X)
		{
			val = bounds.X - pt.x;
		}
		else if (pt.x > bounds.Right)
		{
			val = pt.x - bounds.Right;
		}
		int val2 = 0;
		if (pt.y < bounds.Y)
		{
			val2 = bounds.Y - pt.y;
		}
		else if (pt.y > bounds.Bottom)
		{
			val2 = pt.y - bounds.Bottom;
		}
		int num = Math.Max(val, val2);
		if (m_associatedControl != null && m_associatedControl.ContextMenuStrip != null && m_associatedControl.ContextMenuStrip.Visible)
		{
			Opacity = 1.0;
		}
		else if (m_distance >= 0 && num > m_distance)
		{
			int num2 = num - m_distance;
			if ((float)num2 < Range * 2f)
			{
				Opacity = 0.4f - (float)num2 / Range;
			}
			else
			{
				Hide();
			}
		}
		else
		{
			m_distance = num;
		}
		if (base.Bounds.Contains(pt))
		{
			Opacity = 1.0;
		}
	}

	private IntPtr GetTopWindow()
	{
		int currentThreadId = WindowsAPI.GetCurrentThreadId();
		IntPtr topWindow = WindowsAPI.GetTopWindow(IntPtr.Zero);
		while (WindowsAPI.IsWindow(topWindow) != 0 && (!WindowsAPI.IsWindowVisible(topWindow) || currentThreadId != GetWindowThreadProcessId(topWindow, IntPtr.Zero)))
		{
			topWindow = WindowsAPI.GetWindow(topWindow, GetWindowCmd.GW_HWNDNEXT);
		}
		return topWindow;
	}

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern int GetWindowThreadProcessId(IntPtr hWnd, IntPtr lpdwProcessId);

	private void AssociatedControl_MouseCaptureChanged(object sender, EventArgs args)
	{
		m_bCaptured = false;
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_RBUTTONUP:
			OnWmRButtonUp(ref m);
			break;
		case Msg.WM_RBUTTONDOWN:
			OnWmRButtonDown(ref m);
			break;
		case Msg.WM_LBUTTONDOWN:
			OnWmLButtonDown(ref m);
			break;
		}
		return false;
	}

	private void OnWmLButtonDown(ref Message m)
	{
		if (m_associatedControl != null && m_associatedControl.IsHandleCreated && m_associatedControl.Handle == m.HWnd && m_associatedControl.ContextMenuStrip != null)
		{
			m_associatedControl.ContextMenuStrip.Visible = false;
		}
	}

	private void OnWmRButtonDown(ref Message m)
	{
		if (m_associatedControl != null && m_associatedControl.ContextMenuStrip != null)
		{
			m_associatedControl.ContextMenuStrip.Visible = false;
		}
		if (m_associatedControl != null && m_associatedControl.IsHandleCreated && m_associatedControl.Handle == m.HWnd)
		{
			m_bCaptured = true;
		}
	}

	private void OnWmRButtonUp(ref Message m)
	{
		if (!m_bCaptured)
		{
			return;
		}
		m_bCaptured = false;
		if (m_associatedControl == null || !m_associatedControl.IsHandleCreated || !(m_associatedControl.Handle == m.HWnd))
		{
			return;
		}
		POINT lpPoints = new POINT
		{
			x = WindowsAPI.LOW_ORDER((int)m.LParam),
			y = WindowsAPI.HIGH_ORDER((int)m.LParam)
		};
		if (!m_associatedControl.ClientRectangle.Contains(lpPoints.x, lpPoints.y))
		{
			return;
		}
		Size size = (AutoSize ? GetPreferredSize(Size.Empty) : base.Size);
		lpPoints.y -= size.Height;
		WindowsAPI.MapWindowPoints(m.HWnd, IntPtr.Zero, ref lpPoints, 1u);
		Screen screen = Screen.FromPoint(new Point(lpPoints.x, lpPoints.y));
		if (screen != null)
		{
			Rectangle bounds = screen.Bounds;
			if (lpPoints.x + size.Width > bounds.Right)
			{
				lpPoints.x = bounds.Right - size.Width;
			}
			if (lpPoints.y < bounds.Top)
			{
				lpPoints.y = bounds.Top;
			}
		}
		if (m_associatedControl.ContextMenuStrip != null)
		{
			m_associatedControl.ContextMenuStrip.Opening += ContextMenuStrip_Opening;
			base.Visible = true;
			Show(lpPoints.x, lpPoints.y - 15);
			Opacity = 1.0;
		}
		else
		{
			Show(lpPoints.x, lpPoints.y);
		}
	}

	private void ContextMenuStrip_Opening(object sender, CancelEventArgs e)
	{
		if (m_associatedControl.Bounds.Height < m_associatedControl.ContextMenuStrip.Bounds.Height + m_associatedControl.ContextMenuStrip.Bounds.Y)
		{
			m_associatedControl.ContextMenuStrip.Show(new Point(m_associatedControl.ContextMenuStrip.Bounds.X, Cursor.Position.Y - m_associatedControl.ContextMenuStrip.Bounds.Height));
			if (m_associatedControl.ContextMenuStrip.Bounds.Y + 15 + base.Bounds.Height > m_associatedControl.Bounds.Height)
			{
				Show(new Point(base.Bounds.X, Cursor.Position.Y - m_associatedControl.ContextMenuStrip.Bounds.Height - base.Bounds.Height - 15));
			}
			else
			{
				Show(new Point(base.Bounds.X, Cursor.Position.Y + 15));
			}
		}
		m_associatedControl.ContextMenuStrip.AutoSize = false;
		m_associatedControl.ContextMenuStrip.Width = base.Width;
		for (int i = 0; i < m_associatedControl.ContextMenuStrip.Items.Count; i++)
		{
			m_associatedControl.ContextMenuStrip.Items[i].AutoSize = false;
			m_associatedControl.ContextMenuStrip.Items[i].Width = base.Width;
		}
	}
}
