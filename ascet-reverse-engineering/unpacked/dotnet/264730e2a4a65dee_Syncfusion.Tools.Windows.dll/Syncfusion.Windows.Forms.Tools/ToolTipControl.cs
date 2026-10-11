using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(ToolTipDesigner), typeof(IRootDesigner))]
[ToolboxItem(false)]
public class ToolTipControl : Control
{
	private class ToolTipLayout : LayoutEngine
	{
		public static ToolTipLayout Instance = new ToolTipLayout();

		protected ToolTipLayout()
		{
		}

		public override void InitLayout(object child, BoundsSpecified specified)
		{
		}

		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			if (container is ToolTipControl toolTipControl)
			{
				int num = 0;
				int num2 = 0;
				if (toolTipControl.MaxWidth == 0 || toolTipControl.MaxWidth > 8)
				{
					int nMaxWidth = ((toolTipControl.MaxWidth == 0) ? int.MaxValue : (toolTipControl.MaxWidth - 8));
					ToolTipInfo info = toolTipControl.Info;
					Size preferredSize = info.Body.GetPreferredSize(nMaxWidth, toolTipControl.m_bDesignMode);
					Size preferredSize2 = info.Header.GetPreferredSize(nMaxWidth, toolTipControl.m_bDesignMode);
					Size preferredSize3 = info.Footer.GetPreferredSize(nMaxWidth, toolTipControl.m_bDesignMode);
					num = Math.Max(preferredSize.Width, Math.Max(preferredSize2.Width, preferredSize3.Width));
					int x = 2;
					int num3 = 2;
					int height = preferredSize2.Height;
					if (height > 0)
					{
						info.Header.Bounds = new Rectangle(x, num3, num, height);
						num2 += height;
					}
					height = preferredSize.Height;
					if (height > 0)
					{
						info.Body.Bounds = new Rectangle(x, num3 + num2, num, height);
						num2 += height;
					}
					if (info.Separator)
					{
						num2 += 2;
					}
					height = preferredSize3.Height;
					if (height > 0)
					{
						info.Footer.Bounds = new Rectangle(x, num3 + num2, num, height);
						num2 += height;
					}
				}
				if (toolTipControl.Style == SuperToolTip.SuperToolTipStyle.Normal)
				{
					toolTipControl.Size = new Size(num + 4, num2 + 4);
				}
				else
				{
					toolTipControl.contentSize = new Size(num + 4, num2 + 4);
					toolTipControl.balloonPointerHeight = (num2 + 4) * 20 / 100;
					toolTipControl.balloonPointerWidth = (num + 4) * 10 / 100;
					if (toolTipControl.balloonPointerHeight < 6)
					{
						toolTipControl.balloonPointerHeight = 6;
					}
					if (toolTipControl.balloonPointerWidth < 5)
					{
						toolTipControl.balloonPointerWidth = 5;
					}
					if (toolTipControl.balloonPointerHeight < toolTipControl.balloonPointerWidth)
					{
						toolTipControl.balloonPointerHeight = toolTipControl.balloonPointerWidth + 3;
					}
					Point position = Cursor.Position;
					Screen screen = Screen.FromPoint(position);
					Rectangle bounds = screen.Bounds;
					toolTipControl.Size = new Size(num + 4, num2 + 4 + toolTipControl.balloonPointerHeight);
					if (bounds.Contains(position) && position.Y - toolTipControl.Height < bounds.Top)
					{
						toolTipControl.Info.Header.Bounds = new Rectangle(toolTipControl.Info.Header.Bounds.X, toolTipControl.Info.Header.Bounds.Y + toolTipControl.balloonPointerHeight, toolTipControl.Info.Header.Bounds.Width, toolTipControl.Info.Header.Bounds.Height);
						toolTipControl.Info.Body.Bounds = new Rectangle(toolTipControl.Info.Body.Bounds.X, toolTipControl.Info.Body.Bounds.Y + toolTipControl.balloonPointerHeight, toolTipControl.Info.Body.Bounds.Width, toolTipControl.Info.Body.Bounds.Height);
						toolTipControl.Info.Footer.Bounds = new Rectangle(toolTipControl.Info.Footer.Bounds.X, toolTipControl.Info.Footer.Bounds.Y + toolTipControl.balloonPointerHeight, toolTipControl.Info.Footer.Bounds.Width, toolTipControl.Info.Footer.Bounds.Height);
					}
				}
				toolTipControl.Invalidate();
			}
			return false;
		}
	}

	private const int VertexRadius = 2;

	private const int CursorOffset = 4;

	private const int DEF_SEP_HEIGHT = 2;

	private const int TTDT_AUTOMATIC = 0;

	private const int TTDT_RESHOW = 1;

	private const int TTDT_AUTOPOP = 2;

	private const int TTDT_INITIAL = 3;

	private const SetWindowPosFlags SWP_MOVE = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE;

	private const SetWindowPosFlags SWP_ZORDER = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOACTIVATE;

	private const int FADING_DELAY = 500;

	private Timer m_timer;

	private ToolTipInfo m_ttInfo;

	private SuperToolTip m_ttProvider;

	private PopupHandler m_popupHandler;

	private EventHandler m_popHandler;

	private EventHandler m_tickHandler;

	private Dictionary<IntPtr, Component> m_tools;

	private Dictionary<Type, IToolTipService> m_services;

	private bool m_bDesignMode;

	private TOOLINFO m_toolInfo;

	private int m_nDelayTime;

	private int m_nInitialDelay;

	private int m_maxWidth;

	private int balloonPointerHeight;

	private int balloonPointerWidth;

	private bool bottomLeft;

	private bool bottomRight;

	private bool topLeft;

	private Point cursorPoint = Point.Empty;

	private Size contentSize = default(Size);

	private SuperToolTip.FadingType m_UseFading = SuperToolTip.FadingType.Blend;

	private SuperToolTip.SuperToolTipStyle style;

	private static Dictionary<ContentAlignment, TextFormatFlags> m_formatFlags;

	public ToolTipInfo Info
	{
		get
		{
			if (m_ttInfo == null)
			{
				SetToolTipInfo(new ToolTipInfo(null));
			}
			return m_ttInfo;
		}
		set
		{
			SetToolTipInfo(value);
		}
	}

	public int ToolTipDuration
	{
		get
		{
			return m_nDelayTime;
		}
		set
		{
			if (value < 0)
			{
				value = 0;
			}
			if (value > 32)
			{
				value = 32;
			}
			if (m_nDelayTime != value)
			{
				m_nDelayTime = value;
				UpdateDelayTime();
			}
		}
	}

	public int InitialDelay
	{
		get
		{
			return m_nInitialDelay;
		}
		set
		{
			if (m_nInitialDelay != value)
			{
				m_nInitialDelay = value;
				UpdateDelayTime();
			}
		}
	}

	public int DisplayTime
	{
		get
		{
			if (m_nDelayTime <= 0 && base.IsHandleCreated)
			{
				return (int)WindowsAPI.SendMessage(base.Handle, 1045, 2, IntPtr.Zero);
			}
			return m_nDelayTime * 1000;
		}
	}

	public int MaxWidth
	{
		get
		{
			return m_maxWidth;
		}
		set
		{
			m_maxWidth = value;
		}
	}

	public SuperToolTip.FadingType UseFading
	{
		get
		{
			return m_UseFading;
		}
		set
		{
			m_UseFading = value;
		}
	}

	public SuperToolTip.SuperToolTipStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			style = value;
		}
	}

	public override LayoutEngine LayoutEngine => ToolTipLayout.Instance;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (!m_bDesignMode)
			{
				createParams.ClassName = "tooltips_class32";
				createParams.Style = -2147483599;
				createParams.ExStyle |= 8;
			}
			return createParams;
		}
	}

	public event ToolTipPropertyChangedEventHandler PropertyChanged;

	public event EventHandler Popup;

	public event PopupToolTipHandler PopupToolTip;

	public event UpdateToolTipHandler UpdateToolTip;

	static ToolTipControl()
	{
		m_formatFlags = new Dictionary<ContentAlignment, TextFormatFlags>();
		m_formatFlags[ContentAlignment.TopLeft] = TextFormatFlags.Default;
		m_formatFlags[ContentAlignment.TopCenter] = TextFormatFlags.HorizontalCenter;
		m_formatFlags[ContentAlignment.TopRight] = TextFormatFlags.Right;
		m_formatFlags[ContentAlignment.MiddleLeft] = TextFormatFlags.VerticalCenter;
		m_formatFlags[ContentAlignment.MiddleCenter] = TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter;
		m_formatFlags[ContentAlignment.MiddleRight] = TextFormatFlags.Right | TextFormatFlags.VerticalCenter;
		m_formatFlags[ContentAlignment.BottomLeft] = TextFormatFlags.Bottom;
		m_formatFlags[ContentAlignment.BottomCenter] = TextFormatFlags.Bottom | TextFormatFlags.HorizontalCenter;
		m_formatFlags[ContentAlignment.BottomRight] = TextFormatFlags.Bottom | TextFormatFlags.Right;
	}

	public ToolTipControl(SuperToolTip tipsProvider)
	{
		DoubleBuffered = true;
		m_timer = new Timer();
		m_ttInfo = null;
		m_ttProvider = tipsProvider;
		m_popupHandler = OnPopup;
		m_popHandler = OnPop;
		m_tickHandler = OnTick;
		m_tools = new Dictionary<IntPtr, Component>();
		m_services = new Dictionary<Type, IToolTipService>();
		m_bDesignMode = false;
		m_toolInfo = default(TOOLINFO);
		m_toolInfo.cbSize = (uint)Marshal.SizeOf((object)m_toolInfo);
		m_toolInfo.uFlags = 1u;
		m_toolInfo.hwnd = IntPtr.Zero;
		m_toolInfo.uId = IntPtr.Zero;
		m_toolInfo.rect = default(RECT);
		m_toolInfo.hinst = IntPtr.Zero;
		m_toolInfo.lpszText = Marshal.StringToHGlobalAuto("tooltip");
		m_toolInfo.lParam = IntPtr.Zero;
		AddToolTipService(typeof(ToolStripItem), new ToolStripItemsToolTipService(this));
	}

	public ToolTipControl()
		: this(null)
	{
		m_bDesignMode = true;
	}

	public void AddTool(Component tool)
	{
		if (tool == null)
		{
			return;
		}
		if (tool is Control)
		{
			Control control = (Control)tool;
			control.HandleCreated += OnToolHandleCreated;
			control.HandleDestroyed += OnToolHandleDestroyed;
			if (control.IsHandleCreated)
			{
				OnToolHandleCreated(control, EventArgs.Empty);
			}
		}
		else
		{
			GetToolTipService(tool.GetType())?.AddComponent(tool);
		}
	}

	public void DelTool(Component tool)
	{
		if (tool == null)
		{
			return;
		}
		if (tool is Control)
		{
			Control control = (Control)tool;
			control.HandleCreated -= OnToolHandleCreated;
			control.HandleDestroyed -= OnToolHandleDestroyed;
			if (control.IsHandleCreated)
			{
				OnToolHandleDestroyed(control, EventArgs.Empty);
			}
		}
		else
		{
			GetToolTipService(tool.GetType())?.RemoveComponent(tool);
		}
	}

	public bool Contains(IntPtr hWnd)
	{
		return m_tools.ContainsKey(hWnd);
	}

	public void ShowToolTip(ToolTipInfo ttInfo, Point position, int displayTime)
	{
		if (!base.IsDisposed)
		{
			Info = ttInfo;
			IntPtr handle = base.Handle;
			TOOLINFO lParam = m_toolInfo;
			lParam.uFlags = 32u;
			IntPtr lParam2 = (IntPtr)WindowsAPI.MAKELONG(position.X, position.Y);
			WindowsAPI.SendMessage(handle, 1042, 0, lParam2);
			WindowsAPI.SendMessage(handle, 1074, 0, ref lParam);
			WindowsAPI.SendMessage(handle, 1041, 1, ref lParam);
			if (Style == SuperToolTip.SuperToolTipStyle.Balloon)
			{
				SetBalloonLocation(null);
				Invalidate();
			}
			if (displayTime > 0)
			{
				m_timer.Interval = displayTime;
				m_timer.Tick += m_tickHandler;
				m_timer.Start();
			}
		}
	}

	public void HideToolTip()
	{
		m_timer.Stop();
		m_timer.Tick -= m_tickHandler;
		if (!base.IsHandleCreated)
		{
			return;
		}
		IntPtr handle = base.Handle;
		TOOLINFO lParam = default(TOOLINFO);
		lParam.cbSize = (uint)Marshal.SizeOf((object)lParam);
		if (WindowsAPI.SendMessage(handle, 1083, 0, ref lParam) != 0)
		{
			if ((lParam.uFlags & 0x20) != 0)
			{
				WindowsAPI.SendMessage(handle, 1041, 0, ref lParam);
				WindowsAPI.SendMessage(handle, 1075, 0, ref lParam);
			}
			else
			{
				WindowsAPI.SendMessage(handle, 1052, 0, ref lParam);
			}
		}
	}

	public void AddToolTipService(Type componentType, IToolTipService service)
	{
		if (!m_services.ContainsKey(componentType))
		{
			m_services[componentType] = service;
			service.Popup += m_popupHandler;
			service.Pop += m_popHandler;
		}
	}

	public IToolTipService GetToolTipService(Type componentType)
	{
		IToolTipService result = null;
		foreach (Type key in m_services.Keys)
		{
			if (key.IsAssignableFrom(componentType))
			{
				result = m_services[key];
				break;
			}
		}
		return result;
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 78:
		{
			NMHDR nMHDR = (NMHDR)Marshal.PtrToStructure(m.LParam, typeof(NMHDR));
			switch (nMHDR.code)
			{
			case -521:
				OnTtnShow(GetTool(nMHDR.hwndFrom, nMHDR.idFrom), ref m);
				return;
			case -522:
				OnTtnClose(GetTool(nMHDR.hwndFrom, nMHDR.idFrom));
				return;
			}
			break;
		}
		case 1040:
			OnTtmWindowFromPoint(ref m);
			return;
		}
		base.WndProc(ref m);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			HideToolTip();
			foreach (IToolTipService value in m_services.Values)
			{
				value.Popup -= m_popupHandler;
				value.Pop -= m_popHandler;
				value.Dispose();
			}
			m_services.Clear();
			m_services = null;
			Marshal.FreeHGlobal(m_toolInfo.lpszText);
		}
		base.Dispose(disposing);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (!m_bDesignMode)
		{
			int windowLong = WindowsAPI.GetWindowLong(base.Handle, -16);
			WindowsAPI.SetWindowLong(base.Handle, -16, windowLong & -8388609);
		}
		UpdateRegion();
		UpdateDelayTime();
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		UpdateRegion();
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		ToolTipInfo info = Info;
		Color backColor = info.BackColor;
		using (LinearGradientBrush brush = new LinearGradientBrush(clientRectangle, Color.White, backColor, LinearGradientMode.Vertical))
		{
			e.Graphics.FillRectangle(brush, e.ClipRectangle);
		}
		e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
		using Pen pen = new Pen(info.BorderColor);
		if (style == SuperToolTip.SuperToolTipStyle.Normal)
		{
			e.Graphics.DrawPolygon(pen, GetRoundedPolygon(clientRectangle));
		}
		else
		{
			e.Graphics.DrawPolygon(pen, GetBalloonPolygon(new Rectangle(new Point(0, 0), contentSize)));
		}
		if (!info.Separator)
		{
			return;
		}
		int num = info.Footer.Bounds.Y - 2;
		using Pen pen2 = new Pen(Color.FromArgb(32, Color.Black));
		using Pen pen3 = new Pen(Color.FromArgb(160, Color.White));
		e.Graphics.DrawLine(pen2, info.Footer.Bounds.Left, num, info.Footer.Bounds.Right, num);
		e.Graphics.DrawLine(pen3, info.Footer.Bounds.Left, num + 1, info.Footer.Bounds.Right, num + 1);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		GraphicsState gstate = e.Graphics.Save();
		bool bRtl = Info.RightToLeft == RightToLeft.Yes;
		PaintItem(e, Info.Header, bRtl);
		PaintItem(e, Info.Body, bRtl);
		PaintItem(e, Info.Footer, bRtl);
		e.Graphics.Restore(gstate);
	}

	public override void ResetBackColor()
	{
		BackColor = Color.LightBlue;
	}

	private void UpdateDelayTime()
	{
		if (base.IsHandleCreated)
		{
			int num = ((m_nDelayTime > 0) ? (m_nDelayTime * 1000) : (-1));
			WindowsAPI.SendMessage(base.Handle, 1027, 2, new IntPtr(WindowsAPI.MAKELONG(num, 0)));
			int num2 = ((m_nInitialDelay > 0) ? m_nInitialDelay : (-1));
			WindowsAPI.SendMessage(base.Handle, 1027, 3, new IntPtr(WindowsAPI.MAKELONG(num2, 0)));
		}
	}

	private void UpdateRegion()
	{
		if (style == SuperToolTip.SuperToolTipStyle.Normal)
		{
			base.Region = GetRoundedRegion(base.ClientRectangle);
		}
		else
		{
			base.Region = GetBalloonRegion(base.ClientRectangle, new Rectangle(new Point(0, 0), contentSize));
		}
	}

	private Region GetRoundedRegion(Rectangle rc)
	{
		Region region = new Region(rc);
		if (rc.Width > 4 && rc.Height > 4)
		{
			int num = rc.X;
			int num2 = rc.Y;
			int right = rc.Right;
			int bottom = rc.Bottom;
			new Region(rc);
			for (int i = 0; i < 2; i++)
			{
				region.Exclude(new Rectangle(num + i, num2, 1, 2 - i));
				region.Exclude(new Rectangle(num + i, bottom, 1, i - 2));
				region.Exclude(new Rectangle(right - i, num2, -1, 2 - i));
				region.Exclude(new Rectangle(right - i, bottom, -1, i - 2));
			}
		}
		return region;
	}

	private Region GetBalloonRegion(Rectangle clientRc, Rectangle rc)
	{
		Region region = new Region(clientRc);
		if (rc.Width > 4 && rc.Height > 4)
		{
			int num = rc.X;
			int num2 = rc.Y;
			int right = rc.Right;
			int bottom = rc.Bottom;
			new Region(rc);
			for (int i = 0; i < 2; i++)
			{
				region.Exclude(new Rectangle(num + i, num2, 1, 2 - i));
				region.Exclude(new Rectangle(num + i, bottom, 1, i - 2));
				region.Exclude(new Rectangle(right - i, num2, -1, 2 - i));
				region.Exclude(new Rectangle(right - i, bottom, -1, i - 2));
			}
			if (bottomLeft)
			{
				bottomLeft = false;
				region.Exclude(new Rectangle(clientRc.X, clientRc.Top, clientRc.Width - 2 * balloonPointerWidth, balloonPointerHeight));
				region.Exclude(new Rectangle(clientRc.X + (base.Width - balloonPointerWidth), clientRc.Top, balloonPointerWidth, balloonPointerHeight));
				for (int j = 0; j < balloonPointerHeight - 1; j++)
				{
					region.Exclude(new Rectangle(clientRc.X + (base.Width - 2 * balloonPointerWidth) + j, clientRc.Top - 1, 1, balloonPointerHeight - j));
				}
			}
			else if (bottomRight)
			{
				bottomRight = false;
				region.Exclude(new Rectangle(clientRc.X, clientRc.Top, balloonPointerWidth, balloonPointerHeight));
				region.Exclude(new Rectangle(clientRc.X + 2 * balloonPointerWidth, clientRc.Top, base.Width - 2 * balloonPointerWidth, balloonPointerHeight));
				for (int k = 0; k < balloonPointerHeight - 1; k++)
				{
					region.Exclude(new Rectangle(clientRc.X + (2 * balloonPointerWidth - k), clientRc.Top, 1, balloonPointerHeight - k));
				}
			}
			else if (topLeft)
			{
				topLeft = false;
				region.Exclude(new Rectangle(clientRc.X, clientRc.Bottom - balloonPointerHeight, base.Width - 2 * balloonPointerWidth, balloonPointerHeight));
				region.Exclude(new Rectangle(clientRc.X + (base.Width - balloonPointerWidth), clientRc.Bottom - balloonPointerHeight, balloonPointerWidth, balloonPointerHeight));
				for (int l = 0; l < balloonPointerHeight - 1; l++)
				{
					region.Exclude(new Rectangle(clientRc.Right - 2 * balloonPointerWidth + l, rc.Bottom + 1 + l, 1, balloonPointerHeight - l));
				}
			}
			else
			{
				region.Exclude(new Rectangle(clientRc.X, clientRc.Bottom - balloonPointerHeight, balloonPointerWidth, balloonPointerHeight));
				region.Exclude(new Rectangle(clientRc.X + 2 * balloonPointerWidth, clientRc.Bottom - balloonPointerHeight, clientRc.Right - clientRc.X - 2 * balloonPointerWidth, balloonPointerHeight));
				for (int m = 0; m < balloonPointerHeight - 1; m++)
				{
					region.Exclude(new Rectangle(clientRc.X + (2 * balloonPointerWidth - m), clientRc.Bottom - (balloonPointerHeight - m), 1, balloonPointerHeight - m));
				}
			}
		}
		return region;
	}

	private Point[] GetRoundedPolygon(Rectangle rc)
	{
		int num = rc.X;
		int num2 = rc.Y;
		int num3 = rc.Right - 1;
		int num4 = rc.Bottom - 1;
		return new Point[8]
		{
			new Point(num, num2 + 2),
			new Point(num + 2, num2),
			new Point(num3 - 2, num2),
			new Point(num3, num2 + 2),
			new Point(num3, num4 - 2),
			new Point(num3 - 2, num4),
			new Point(num + 2, num4),
			new Point(num, num4 - 2)
		};
	}

	private Point[] GetBalloonPolygon(Rectangle rc)
	{
		int num = rc.X;
		int num2 = rc.Y;
		int num3 = rc.Right - 1;
		int num4 = rc.Bottom - 1;
		Screen screen = Screen.FromPoint(cursorPoint);
		Rectangle bounds = screen.Bounds;
		Point[] array = new Point[1] { Point.Empty };
		if (bounds.Contains(cursorPoint) && cursorPoint.Y - base.Height > bounds.Top && cursorPoint.X + base.Width > bounds.Right)
		{
			return new Point[11]
			{
				new Point(num, num2 + 2),
				new Point(num + 2, num2),
				new Point(num3 - 2, num2),
				new Point(num3, num2 + 2),
				new Point(num3, num4 - 2),
				new Point(num3 - 2, num4),
				new Point(num3 - balloonPointerWidth, num4),
				new Point(num3 - balloonPointerWidth, num4 + balloonPointerWidth),
				new Point(num3 - 2 * balloonPointerWidth, num4),
				new Point(num + 2, num4),
				new Point(num, num4 - 2)
			};
		}
		if (bounds.Contains(cursorPoint) && cursorPoint.Y - base.Height < bounds.Top && cursorPoint.X + base.Width > bounds.Right)
		{
			num2 += balloonPointerHeight;
			num4 += balloonPointerHeight;
			return new Point[11]
			{
				new Point(num, num2 + 2),
				new Point(num + 2, num2),
				new Point(num3 - 2 * balloonPointerWidth, num2),
				new Point(num3 - balloonPointerWidth, num2 - balloonPointerWidth),
				new Point(num3 - balloonPointerWidth, num2),
				new Point(num3 - 2, num2),
				new Point(num3, num2 + 2),
				new Point(num3, num4 - 2),
				new Point(num3 - 2, num4),
				new Point(num + 2, num4),
				new Point(num, num4 - 2)
			};
		}
		if (bounds.Contains(cursorPoint) && cursorPoint.Y - base.Height < bounds.Top && cursorPoint.X + base.Width < bounds.Right)
		{
			num2 += balloonPointerHeight;
			num4 += balloonPointerHeight;
			return new Point[11]
			{
				new Point(num, num2 + 2),
				new Point(num + 2, num2),
				new Point(num + balloonPointerWidth, num2),
				new Point(num + balloonPointerWidth, num2 - balloonPointerWidth),
				new Point(num + 2 * balloonPointerWidth, num2),
				new Point(num3 - 2, num2),
				new Point(num3, num2 + 2),
				new Point(num3, num4 - 2),
				new Point(num3 - 2, num4),
				new Point(num + 2, num4),
				new Point(num, num4 - 2)
			};
		}
		return new Point[11]
		{
			new Point(num, num2 + 2),
			new Point(num + 2, num2),
			new Point(num3 - 2, num2),
			new Point(num3, num2 + 2),
			new Point(num3, num4 - 2),
			new Point(num3 - 2, num4),
			new Point(num + 2 * balloonPointerWidth, num4),
			new Point(num + balloonPointerWidth, num4 + balloonPointerWidth),
			new Point(num + balloonPointerWidth, num4),
			new Point(num + 2, num4),
			new Point(num, num4 - 2)
		};
	}

	private void PaintItem(PaintEventArgs e, ToolTipInfo.ToolTipItem item, bool bRtl)
	{
		if (!item.Hidden)
		{
			e.Graphics.SetClip(item.Bounds, CombineMode.Replace);
			PaintImage(e, item);
			PaintText(e, item, bRtl);
		}
	}

	private void PaintImage(PaintEventArgs e, ToolTipInfo.ToolTipItem item)
	{
		if (item.Image != null)
		{
			Rectangle imageBounds = item.ImageBounds;
			if (!imageBounds.IsEmpty)
			{
				e.Graphics.DrawImage(item.Image, imageBounds);
			}
		}
	}

	private void PaintText(PaintEventArgs e, ToolTipInfo.ToolTipItem item, bool bRtl)
	{
		if (item.Text != null && !item.RenderHtml)
		{
			Rectangle textBounds = item.TextBounds;
			if (textBounds.Width > 0 && textBounds.Height > 0)
			{
				e.Graphics.TextRenderingHint = TextRenderingHint.ClearTypeGridFit;
				TextFormatFlags textFormatFlags = m_formatFlags[item.TextAlignInternal] | (TextFormatFlags.ExpandTabs | TextFormatFlags.WordBreak | TextFormatFlags.WordEllipsis | TextFormatFlags.NoPadding);
				if (bRtl)
				{
					textFormatFlags |= TextFormatFlags.RightToLeft;
				}
				TextRenderer.DrawText(e.Graphics, item.Text, item.Font, textBounds, item.ForeColor, textFormatFlags);
			}
		}
		else if (item.Text != null && item.RenderHtml)
		{
			HtmlRootBox htmlRootBox = new HtmlRootBox(item.Text, item.Bounds);
			htmlRootBox.CalcBoxBounds(e.Graphics);
			htmlRootBox.Paint(e.Graphics);
		}
	}

	private void SetToolTipInfo(ToolTipInfo info)
	{
		if (m_ttInfo != null)
		{
			m_ttInfo.PropertyChanged -= OnPropertyChanged;
		}
		m_ttInfo = info;
		if (m_ttInfo != null)
		{
			m_ttInfo.PropertyChanged += OnPropertyChanged;
		}
		if (base.IsHandleCreated)
		{
			PerformLayout();
		}
	}

	private ToolTipInfo GetToolTipInfo(Component tool)
	{
		if (m_ttProvider != null)
		{
			return m_ttProvider.GetToolTip(tool);
		}
		return null;
	}

	private Component GetTool(IntPtr hWnd, IntPtr id)
	{
		if (base.Handle == hWnd && m_tools.ContainsKey(id))
		{
			return m_tools[id];
		}
		return null;
	}

	private bool GetIsCompositeControl(Control control)
	{
		if (!(control is ComboBox))
		{
			return control is ButtonEdit;
		}
		return true;
	}

	private void SetBalloonLocation(Component component)
	{
		cursorPoint = Cursor.Position;
		Screen screen = Screen.FromPoint(cursorPoint);
		Rectangle bounds = screen.Bounds;
		if (bounds.Contains(cursorPoint) && cursorPoint.Y - base.Height < bounds.Top && cursorPoint.X + base.Width > bounds.Right)
		{
			bottomLeft = true;
			base.Location = new Point(cursorPoint.X - (base.Width - balloonPointerWidth), cursorPoint.Y + 5);
			base.Region = GetBalloonRegion(rc: new Rectangle(0, balloonPointerHeight, contentSize.Width, contentSize.Height), clientRc: base.ClientRectangle);
		}
		else if (bounds.Contains(cursorPoint) && cursorPoint.Y - base.Height < bounds.Top && cursorPoint.X + base.Width < bounds.Right)
		{
			bottomRight = true;
			base.Location = new Point(cursorPoint.X - balloonPointerWidth, cursorPoint.Y + 5);
			base.Region = GetBalloonRegion(rc: new Rectangle(0, balloonPointerHeight, contentSize.Width, contentSize.Height), clientRc: base.ClientRectangle);
		}
		else if (bounds.Contains(cursorPoint) && cursorPoint.Y - base.Height > bounds.Top && cursorPoint.X + base.Width > bounds.Right)
		{
			topLeft = true;
			base.Location = new Point(cursorPoint.X - (base.Width - balloonPointerWidth), cursorPoint.Y - base.Height);
			base.Region = GetBalloonRegion(base.ClientRectangle, new Rectangle(new Point(0, 0), contentSize));
		}
		else
		{
			base.Location = new Point(cursorPoint.X - balloonPointerWidth, cursorPoint.Y - base.Height);
		}
	}

	private bool SetAdjustedLocation(Component component)
	{
		bool result = false;
		Point adjustedLocation = GetAdjustedLocation(component);
		if (!adjustedLocation.IsEmpty)
		{
			WindowsAPI.SetWindowPos(base.Handle, IntPtr.Zero, adjustedLocation.X, adjustedLocation.Y, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE);
			result = true;
		}
		return result;
	}

	private Point GetAdjustedLocation(Component component)
	{
		Point result = Point.Empty;
		Point position = Cursor.Position;
		Screen screen = Screen.FromPoint(position);
		Rectangle workingArea = screen.WorkingArea;
		Rectangle bounds = base.Bounds;
		if (!workingArea.Contains(bounds) || bounds.Contains(position))
		{
			int num = bounds.Width;
			int num2 = bounds.Height;
			if (bounds.X > workingArea.Width)
			{
				if (num2 < workingArea.Height - (position.Y + 4))
				{
					if (bounds.Y < position.Y + 4)
					{
						bounds.Y = position.Y + 4;
					}
					if (num > workingArea.Width - position.X)
					{
						bounds.X -= num;
					}
					else
					{
						bounds.X = position.X;
					}
				}
				else if (bounds.Y + num2 + 4 > position.Y)
				{
					bounds.Y -= num2;
					if (bounds.X + num + 4 > position.X)
					{
						bounds.X -= num;
					}
					else
					{
						bounds.X = position.X;
					}
				}
				else if (num < workingArea.Width - (position.X + 4) || num > position.X - 4)
				{
					if (bounds.X < position.X + 4)
					{
						bounds.X -= num;
					}
					if (num2 > workingArea.Height - position.Y)
					{
						bounds.Y = ((workingArea.Height > num2) ? (workingArea.Height - num2) : 0);
					}
					else
					{
						bounds.Y = position.Y;
					}
				}
				else
				{
					bounds.X = position.X - num - 4;
					if (num2 > workingArea.Height - position.Y)
					{
						bounds.Y = ((workingArea.Height > num2) ? (workingArea.Height - num2) : 0);
					}
					else
					{
						bounds.Y = position.Y;
					}
				}
				result = bounds.Location;
			}
			else
			{
				if (num2 < workingArea.Height - (position.Y + 4))
				{
					if (bounds.Y < position.Y + 4)
					{
						bounds.Y = position.Y + 4;
					}
					if (num > workingArea.Width - position.X)
					{
						bounds.X = ((workingArea.Width > num) ? (workingArea.Width - num) : 0);
					}
					else
					{
						bounds.X = position.X;
					}
				}
				else if (num2 < position.Y - 4)
				{
					bounds.Y = position.Y - 4 - num2;
					if (num > workingArea.Width - position.X)
					{
						bounds.X = ((workingArea.Width > num) ? (workingArea.Width - num) : 0);
					}
					else
					{
						bounds.X = position.X;
					}
				}
				else if (num < workingArea.Width - (position.X + 4) || num > position.X - 4)
				{
					if (bounds.X < position.X + 4)
					{
						bounds.X = position.X + 4;
					}
					if (num2 > workingArea.Height - position.Y)
					{
						bounds.Y = ((workingArea.Height > num2) ? (workingArea.Height - num2) : 0);
					}
					else
					{
						bounds.Y = position.Y;
					}
				}
				else
				{
					bounds.X = position.X - num - 4;
					if (num2 > workingArea.Height - position.Y)
					{
						bounds.Y = ((workingArea.Height > num2) ? (workingArea.Height - num2) : 0);
					}
					else
					{
						bounds.Y = position.Y;
					}
				}
				result = bounds.Location;
			}
		}
		if (this.PopupToolTip != null)
		{
			Rectangle rc = bounds;
			this.PopupToolTip(component, ref rc);
			if (rc.Location != bounds.Location)
			{
				result = rc.Location;
			}
		}
		return result;
	}

	private void OnTtnShow(Component tool, ref Message m)
	{
		OnPopup(tool, ref m);
	}

	private void OnTtnClose(Component tool)
	{
		if (tool is Control control)
		{
			RECT rect = default(RECT);
			WindowsAPI.GetWindowRect(control.Handle, ref rect);
			if (((Rectangle)rect).Contains(Cursor.Position))
			{
				control.MouseLeave += OnToolMouseLeave;
			}
		}
		OnPop(this, EventArgs.Empty);
	}

	private void OnTtmWindowFromPoint(ref Message m)
	{
		base.WndProc(ref m);
		if (!(m.Result == IntPtr.Zero) && m_tools.ContainsKey(m.Result))
		{
			return;
		}
		Point p = (POINT)m.GetLParam(typeof(POINT));
		foreach (KeyValuePair<IntPtr, Component> tool in m_tools)
		{
			Control control = tool.Value as Control;
			if (control.Visible && GetIsCompositeControl(control))
			{
				Point pt = control.PointToClient(p);
				if (control.ClientRectangle.Contains(pt))
				{
					m.Result = tool.Key;
					break;
				}
			}
		}
	}

	private bool UseSystemFading()
	{
		if (UseFading != SuperToolTip.FadingType.System)
		{
			return !OSFeature.Feature.IsPresent(OSFeature.LayeredWindows);
		}
		return true;
	}

	private void Animate(bool bShow)
	{
		AnimateWindowFlags animateWindowFlags = AnimateWindowFlags.AW_BLEND;
		if (bShow)
		{
			WindowsAPI.SetWindowPos(base.Handle, new IntPtr(-1), 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOACTIVATE);
		}
		else
		{
			animateWindowFlags |= AnimateWindowFlags.AW_HIDE;
		}
		if (!AnimateWindow(base.Handle, 500, animateWindowFlags))
		{
			Marshal.GetExceptionForHR(Marshal.GetHRForLastWin32Error());
		}
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern bool AnimateWindow(IntPtr hwnd, int dwTime, AnimateWindowFlags dwFlags);

	private void OnPropertyChanged(object sender, ToolTipPropertyID id)
	{
		if (base.IsHandleCreated)
		{
			switch (id)
			{
			case ToolTipPropertyID.Unspecified:
				Invalidate();
				break;
			case ToolTipPropertyID.ItemSizeChanged:
				PerformLayout();
				Invalidate();
				break;
			default:
				PerformLayout();
				break;
			}
		}
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(sender, id);
		}
	}

	private void OnToolHandleCreated(object sender, EventArgs e)
	{
		if (sender is Control control)
		{
			m_tools[control.Handle] = control;
			m_toolInfo.hwnd = base.Handle;
			m_toolInfo.uId = control.Handle;
			WindowsAPI.SendMessage(base.Handle, 1074, 0, ref m_toolInfo);
		}
	}

	private void OnToolHandleDestroyed(object sender, EventArgs e)
	{
		if (sender is Control { IsHandleCreated: not false } control)
		{
			m_tools.Remove(control.Handle);
			if (base.IsHandleCreated)
			{
				m_toolInfo.hwnd = base.Handle;
				m_toolInfo.uId = control.Handle;
				WindowsAPI.SendMessage(base.Handle, 1075, 0, ref m_toolInfo);
			}
		}
	}

	private void OnToolMouseLeave(object sender, EventArgs e)
	{
		if (sender is Control control)
		{
			control.MouseLeave -= OnToolMouseLeave;
			WindowsAPI.SendMessage(base.Handle, 1025, 0, IntPtr.Zero);
			WindowsAPI.SendMessage(base.Handle, 1025, 1, IntPtr.Zero);
		}
	}

	private void OnPopup(Component component, ref Message m)
	{
		ToolTipInfo info = new ToolTipInfo(GetToolTipInfo(component));
		if (this.UpdateToolTip != null)
		{
			this.UpdateToolTip(component, ref info);
		}
		Info = info;
		if (style == SuperToolTip.SuperToolTipStyle.Balloon)
		{
			SetBalloonLocation(component);
			m.Result = new IntPtr(-1);
		}
		if (style == SuperToolTip.SuperToolTipStyle.Normal && SetAdjustedLocation(component))
		{
			m.Result = new IntPtr(-1);
		}
		if (this.Popup != null)
		{
			this.Popup(this, EventArgs.Empty);
		}
		if (!UseSystemFading())
		{
			Animate(bShow: true);
		}
	}

	private void OnPop(object sender, EventArgs e)
	{
		if (!UseSystemFading())
		{
			base.Visible = false;
		}
	}

	private void OnTick(object sender, EventArgs e)
	{
		HideToolTip();
	}
}
