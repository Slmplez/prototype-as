using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
public class ComboBoxEx : ComboBox
{
	private struct POINT
	{
		public int x;

		public int y;
	}

	private struct RECT
	{
		public int left;

		public int top;

		public int right;

		public int bottom;

		public int Width => right - left;

		public int Height => bottom - top;

		public RECT(int l, int t, int r, int b)
		{
			left = l;
			top = t;
			right = r;
			bottom = b;
		}

		public static implicit operator Rectangle(RECT rect)
		{
			return Rectangle.FromLTRB(rect.left, rect.top, rect.right, rect.bottom);
		}
	}

	private struct COMBOBOXINFO
	{
		public uint cbSize;

		public RECT rcItem;

		public RECT rcButton;

		public uint stateButton;

		public IntPtr hwndCombo;

		public IntPtr hwndItem;

		public IntPtr hwndList;
	}

	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
	private struct SCROLLINFO
	{
		public int cbSize;

		public int fMask;

		public int nMin;

		public int nMax;

		public uint nPage;

		public int nPos;

		public int nTrackPos;
	}

	private struct PAINTSTRUCT
	{
		public IntPtr hdc;

		public int fErase;

		public Rectangle rcPaint;

		public int fRestore;

		public int fIncUpdate;

		[MarshalAs(UnmanagedType.ByValArray, SizeConst = 32)]
		public byte[] reserved;
	}

	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
	public struct WINDOWPOS
	{
		public IntPtr hwnd;

		public IntPtr hwndInsertAfter;

		public int x;

		public int y;

		public int cx;

		public int cy;

		public int flags;
	}

	private class ListBoxWindow : NativeWindow
	{
		private const int BORDER_WIDTH = 1;

		private const int BORDER_HEIGHT = 1;

		private const int GRIPPER_HEIGHT = 10;

		private const int RDW_UPDATEFRAME = 1025;

		private const int SCROLL_NONE = 0;

		private const int SCROLL_UP = 1;

		private const int SCROLL_DOWN = 2;

		private const int SCROLL_THUMB = 3;

		private const int SCROLL_PGUP = 4;

		private const int SCROLL_PGDN = 5;

		private const int SCROLL_GRIP = 6;

		private const int THUMB_MIN_HEIGHT = 13;

		public const int WMU_SHOWSHADOW = 5120;

		private ComboBoxEx m_comboBox;

		private ShadowWindow m_shadowWindow;

		private bool m_scrollbarSelected;

		private int m_regionSelected;

		private int m_regionPressed;

		private RECT m_rcClient;

		private RECT m_rcBorder;

		private Rectangle m_rcUp;

		private Rectangle m_rcDown;

		private Rectangle m_rcScroll;

		private Rectangle m_rcGrip;

		private Timer m_timer;

		private Point m_mousePos;

		private Point m_mousePressedPos;

		private RECT m_startRect = default(RECT);

		private int m_startTopIndex;

		protected static Blend m_blScrollerBackground;

		protected static Blend m_blScrollButton;

		protected static Blend m_blThumbNormal;

		protected static Blend m_blThumbSelected;

		private int TopIndex
		{
			get
			{
				return SendMessage(base.Handle, 398, 0, 0);
			}
			set
			{
				if (value < 0)
				{
					value = 0;
				}
				SendMessage(base.Handle, 407, value, 0);
			}
		}

		private int PageSize
		{
			get
			{
				SCROLLINFO si = default(SCROLLINFO);
				si.cbSize = Marshal.SizeOf((object)si);
				si.fMask = 2;
				if (GetScrollInfo(base.Handle, 1, ref si))
				{
					return (int)si.nPage;
				}
				return 0;
			}
		}

		private int TrackPos
		{
			get
			{
				SCROLLINFO si = default(SCROLLINFO);
				si.cbSize = Marshal.SizeOf((object)si);
				si.fMask = 16;
				if (GetScrollInfo(base.Handle, 1, ref si))
				{
					return si.nTrackPos;
				}
				return 0;
			}
		}

		private int ScrollWidth => SystemInformation.VerticalScrollBarWidth;

		private int ButtonHeight => ScrollWidth;

		private Color GalleryScrollBarBackground
		{
			get
			{
				Office12ColorTable colorTable = m_comboBox.ColorTable;
				return colorTable.GalleryScrollBarBackground;
			}
		}

		protected int GripperHeight
		{
			get
			{
				if (!m_comboBox.ShowGripper)
				{
					return 1;
				}
				return 10;
			}
		}

		static ListBoxWindow()
		{
			m_blScrollerBackground = new Blend();
			m_blScrollerBackground.Positions = new float[3] { 0f, 0.35f, 1f };
			m_blScrollerBackground.Factors = new float[3] { 0.3f, 0.6f, 0.4f };
			m_blScrollButton = new Blend();
			m_blScrollButton.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
			m_blScrollButton.Factors = new float[4] { 0f, 0.2f, 1f, 0.4f };
			m_blThumbNormal = new Blend();
			m_blThumbNormal.Positions = new float[5] { 0f, 0.35f, 0.5f, 0.7f, 1f };
			m_blThumbNormal.Factors = new float[5] { 0.1f, 0f, 0.5f, 1f, 0.5f };
			m_blThumbSelected = new Blend();
			m_blThumbSelected.Positions = new float[5] { 0f, 0.4f, 0.5f, 0.7f, 1f };
			m_blThumbSelected.Factors = new float[5] { 0.4f, 0f, 1f, 1f, 0f };
		}

		public ListBoxWindow(ComboBoxEx comboBox)
		{
			bool lpvParam = false;
			Syncfusion.Runtime.InteropServices.NativeMethods.SystemParametersInfo(4132, 0, ref lpvParam, 0);
			if (lpvParam)
			{
				m_shadowWindow = new ShadowWindow();
			}
			m_comboBox = comboBox;
			COMBOBOXINFO cbi = default(COMBOBOXINFO);
			cbi.cbSize = (uint)Marshal.SizeOf((object)cbi);
			GetComboBoxInfo(comboBox.Handle, ref cbi);
			AssignHandle(cbi.hwndList);
			m_timer = new Timer();
			m_timer.Tick += OnTimerTick;
			m_comboBox.IsStyledChanged += ComboBoxIsStyledChanged;
			OnComboBoxIsStyledChanged();
		}

		protected override void WndProc(ref Message m)
		{
			if (m_comboBox.IsStyled)
			{
				switch (m.Msg)
				{
				case 70:
					OnWmWindowPosChanging(ref m);
					break;
				case 71:
					OnWmWindowPosChanged(ref m);
					break;
				case 131:
					OnNcCalcSize(ref m);
					return;
				case 133:
					OnWmNcPaint(ref m);
					return;
				case 791:
					OnWmPrint(ref m);
					return;
				case 512:
					OnWmMouseMove(ref m);
					return;
				case 513:
				case 515:
					OnWmLButtonDown(ref m);
					return;
				case 514:
				case 533:
					OnWmLButtonUp(ref m);
					break;
				case 522:
					OnWmMouseWheel(ref m);
					return;
				case 256:
					OnWmKeyDown(ref m);
					return;
				case 5120:
					OnWmuShowShadow(ref m);
					return;
				}
			}
			base.WndProc(ref m);
		}

		public override void DestroyHandle()
		{
			base.DestroyHandle();
			if (m_shadowWindow != null)
			{
				m_shadowWindow.Dispose();
				m_shadowWindow = null;
			}
			if (m_timer != null)
			{
				m_timer.Stop();
				m_timer.Tick -= OnTimerTick;
				m_timer.Dispose();
				m_timer = null;
			}
			m_comboBox.IsStyledChanged -= ComboBoxIsStyledChanged;
		}

		private void OnWmWindowPosChanging(ref Message m)
		{
			WINDOWPOS wINDOWPOS = (WINDOWPOS)m.GetLParam(typeof(WINDOWPOS));
			if ((wINDOWPOS.flags & 0x40) == 64)
			{
				int val = Math.Max(m_comboBox.Items.Count, m_comboBox.ShowGripper ? 1 : 0);
				int num = Math.Min(m_comboBox.MaxDropDownItems, val);
				wINDOWPOS.cy = num * m_comboBox.ItemHeight + 1 + GripperHeight;
				if ((wINDOWPOS.flags & 1) == 1)
				{
					wINDOWPOS.flags &= -2;
					wINDOWPOS.cx = m_comboBox.DropDownWidth;
				}
				Marshal.StructureToPtr((object)wINDOWPOS, m.LParam, fDeleteOld: false);
			}
		}

		private void OnWmWindowPosChanged(ref Message m)
		{
			if (m_shadowWindow == null || m_shadowWindow.IsDisposed)
			{
				return;
			}
			WINDOWPOS wINDOWPOS = (WINDOWPOS)m.GetLParam(typeof(WINDOWPOS));
			int num = wINDOWPOS.flags & 0x83;
			if (num != 3)
			{
				int x = 0;
				int y = 0;
				int width = 0;
				int height = 0;
				if ((num & 2) == 0)
				{
					x = wINDOWPOS.x;
					y = wINDOWPOS.y;
				}
				if ((num & 1) == 0)
				{
					width = wINDOWPOS.cx;
					height = wINDOWPOS.cy;
				}
				SetWindowPos(m_shadowWindow.Handle, base.Handle, x, y, width, height, num | 0x10);
			}
			if ((wINDOWPOS.flags & 0x40) != 0 && m_comboBox.IsStyled)
			{
				PostMessage(base.Handle, 5120, 0, 0);
			}
		}

		private void OnNcCalcSize(ref Message m)
		{
			Layout((RECT)m.GetLParam(typeof(RECT)));
			Marshal.StructureToPtr((object)m_rcClient, m.LParam, fDeleteOld: false);
			m.Result = IntPtr.Zero;
		}

		private void OnWmNcPaint(ref Message m)
		{
			DrawFrame();
			m.Result = IntPtr.Zero;
		}

		private void OnWmPrint(ref Message m)
		{
			base.WndProc(ref m);
			if (((int)m.LParam & 2) != 0)
			{
				DrawFrame(m.WParam);
			}
		}

		private void OnWmMouseMove(ref Message m)
		{
			m_mousePos = GetMousePos(ref m);
			SetSelectedRegion(GetScrollRegion(m_mousePos));
			SetScrollSelected(m_rcScroll.Contains(m_mousePos));
			switch (m_regionPressed)
			{
			case 3:
				Scroll();
				break;
			case 6:
				Resize();
				break;
			default:
				BaseWndProc(ref m);
				UpdateCursor();
				break;
			}
		}

		private void OnWmLButtonDown(ref Message m)
		{
			base.WndProc(ref m);
			SetPressedRegion(GetScrollRegion(m_mousePos));
			m_mousePressedPos = m_mousePos;
			switch (m_regionPressed)
			{
			default:
				return;
			case 3:
				m_startTopIndex = TopIndex;
				return;
			case 1:
				TopIndex--;
				break;
			case 2:
				TopIndex++;
				break;
			case 4:
				TopIndex -= PageSize;
				break;
			case 5:
				TopIndex += PageSize;
				break;
			case 6:
				GetWindowRect(m.HWnd, ref m_startRect);
				return;
			}
			m_timer.Interval = 500;
			m_timer.Start();
		}

		private void OnWmLButtonUp(ref Message m)
		{
			base.WndProc(ref m);
			SetPressedRegion(0);
			UpdateCursor();
			m_timer.Stop();
		}

		private void OnWmMouseWheel(ref Message m)
		{
			BaseWndProc(ref m);
		}

		private void OnWmKeyDown(ref Message m)
		{
			BaseWndProc(ref m);
		}

		private void OnWmuShowShadow(ref Message m)
		{
			if (m_shadowWindow != null && !m_shadowWindow.IsDisposed)
			{
				SetWindowPos(m_shadowWindow.Handle, base.Handle, 0, 0, 0, 0, 87);
			}
		}

		private void OnTimerTick(object sender, EventArgs e)
		{
			SetSelectedRegion(GetScrollRegion(m_mousePos));
			if (m_regionPressed == m_regionSelected)
			{
				switch (m_regionPressed)
				{
				case 1:
					TopIndex--;
					break;
				case 2:
					TopIndex++;
					break;
				case 4:
					TopIndex -= PageSize;
					break;
				case 5:
					TopIndex += PageSize;
					break;
				}
				DrawFrame();
			}
			m_timer.Interval = 50;
		}

		private void ComboBoxIsStyledChanged(object sender, EventArgs e)
		{
			OnComboBoxIsStyledChanged();
		}

		private void OnComboBoxIsStyledChanged()
		{
			if (OSFeature.Feature.IsPresent(OSFeature.Themes) && Syncfusion.Runtime.InteropServices.NativeMethods.IsAppThemed())
			{
				if (m_comboBox.IsStyled)
				{
					SetWindowTheme(base.Handle, " ", " ");
				}
				else
				{
					SetWindowTheme(base.Handle, null, null);
				}
			}
		}

		private void BaseWndProc(ref Message m)
		{
			int trackPos = TrackPos;
			base.WndProc(ref m);
			if (trackPos != TrackPos)
			{
				UpdateFrame();
			}
		}

		private void Scroll()
		{
			SCROLLINFO si = default(SCROLLINFO);
			si.cbSize = Marshal.SizeOf((object)si);
			si.fMask = 23;
			if (GetScrollInfo(base.Handle, 1, ref si))
			{
				int num = (si.nMax - si.nMin) * (m_mousePos.Y - m_mousePressedPos.Y) / (m_rcDown.Top - m_rcUp.Bottom);
				TopIndex = m_startTopIndex + num;
				DrawScrollBar();
			}
		}

		private void Resize()
		{
			RECT rc = default(RECT);
			if (GetWindowRect(base.Handle, ref rc))
			{
				int val = ButtonHeight * 2 + 13;
				int num = Math.Max(m_comboBox.Items.Count, 1) * m_comboBox.ItemHeight;
				int gripperHeight = GripperHeight;
				int num2 = num + 1 + gripperHeight;
				int num3 = Math.Min(val, num) + 1 + gripperHeight;
				int num4 = m_startRect.Height + (m_mousePos.Y - m_mousePressedPos.Y);
				if (num4 > num2)
				{
					num4 = num2;
				}
				if (num4 < num3)
				{
					num4 = num3;
				}
				if (num4 != rc.Height)
				{
					SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, m_startRect.Width, num4, 22);
				}
			}
		}

		private void SetScrollSelected(bool value)
		{
			if (m_scrollbarSelected != value)
			{
				m_scrollbarSelected = value;
				UpdateFrame();
			}
		}

		private void SetSelectedRegion(int regionId)
		{
			if (m_regionSelected != regionId)
			{
				m_regionSelected = regionId;
				UpdateFrame();
			}
		}

		private void SetPressedRegion(int regionId)
		{
			if (m_regionPressed != regionId)
			{
				m_regionPressed = regionId;
				UpdateFrame();
			}
		}

		private void Layout(RECT rc)
		{
			m_rcScroll = Rectangle.Empty;
			m_rcUp = Rectangle.Empty;
			m_rcDown = Rectangle.Empty;
			m_rcClient = new RECT(rc.left + 1, rc.top + 1, rc.right - 1, rc.bottom);
			m_rcBorder = new RECT(0, 0, rc.Width, rc.Height);
			int gripperHeight = GripperHeight;
			m_rcClient.bottom -= gripperHeight;
			m_rcGrip = new Rectangle(0, rc.Height - 10, rc.Width, gripperHeight - 1);
			int windowLong = GetWindowLong(base.Handle, -16);
			if ((windowLong & 0x200000) != 0)
			{
				int scrollWidth = ScrollWidth;
				int buttonHeight = ButtonHeight;
				if (m_comboBox.RightToLeft == RightToLeft.Yes)
				{
					m_rcScroll = new Rectangle(1, 1, scrollWidth, m_rcClient.Height);
					m_rcClient.left += scrollWidth;
				}
				else
				{
					m_rcScroll = new Rectangle(rc.Width - scrollWidth - 1, 1, scrollWidth, m_rcClient.Height);
					m_rcClient.right -= scrollWidth;
				}
				m_rcUp = new Rectangle(m_rcScroll.X, m_rcScroll.Y, scrollWidth, buttonHeight);
				m_rcDown = new Rectangle(m_rcScroll.X, m_rcScroll.Bottom - scrollWidth, scrollWidth, buttonHeight);
			}
		}

		private void UpdateFrame()
		{
			RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1025);
		}

		private void DrawFrame()
		{
			IntPtr windowDC = GetWindowDC(base.Handle);
			try
			{
				if (windowDC != IntPtr.Zero)
				{
					DrawFrame(windowDC);
				}
			}
			finally
			{
				ReleaseDC(base.Handle, windowDC);
			}
		}

		private void DrawFrame(IntPtr hDc)
		{
			if (m_rcBorder.Width > 0 && m_rcBorder.Height > 0)
			{
				using (Graphics g = Graphics.FromHdc(hDc))
				{
					DrawScrollBar(g);
					DrawGrip(g);
					DrawBorder(g);
				}
			}
		}

		private void DrawScrollBar()
		{
			if (m_rcScroll.Width <= 0 || m_rcScroll.Height <= 0)
			{
				return;
			}
			IntPtr windowDC = GetWindowDC(base.Handle);
			try
			{
				if (windowDC != IntPtr.Zero)
				{
					using (Graphics g = Graphics.FromHdc(windowDC))
					{
						DrawScrollBar(g);
						return;
					}
				}
			}
			finally
			{
				ReleaseDC(base.Handle, windowDC);
			}
		}

		private void DrawScrollBar(Graphics g)
		{
			if (m_rcScroll.Width > 0 && m_rcScroll.Height > 0)
			{
				using (BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(g, m_rcScroll))
				{
					Graphics graphics = bufferedGraphics.Graphics;
					DrawScrollBarBackground(graphics);
					DrawScrollButton(graphics, m_rcUp, 1);
					DrawScrollButton(graphics, m_rcDown, 2);
					DrawThumb(graphics);
					bufferedGraphics.Render();
				}
			}
		}

		private void DrawScrollBarBackground(Graphics g)
		{
			using LinearGradientBrush linearGradientBrush = GetHorizontalBrush(ref m_rcScroll, Color.White, GalleryScrollBarBackground);
			linearGradientBrush.Blend = m_blScrollerBackground;
			g.FillRectangle(linearGradientBrush, m_rcScroll);
		}

		private void DrawScrollButton(Graphics g, Rectangle rc, int buttonID)
		{
			DrawScrollButtonBackground(g, rc, buttonID);
			DrawScrollButtonImage(g, rc, buttonID);
		}

		private void DrawScrollButtonBackground(Graphics g, Rectangle rc, int buttonID)
		{
			if (!m_scrollbarSelected)
			{
				return;
			}
			Color empty = Color.Empty;
			Color empty2 = Color.Empty;
			Office12ColorTable colorTable = m_comboBox.ColorTable;
			if (buttonID == m_regionSelected)
			{
				if (buttonID == m_regionPressed)
				{
					empty = colorTable.StandardScrollButtonPressedGradientBegin;
					empty2 = colorTable.StandardScrollButtonPressedGradientEnd;
				}
				else
				{
					empty = colorTable.StandardScrollButtonSelectedGradientBegin;
					empty2 = colorTable.StandardScrollButtonSelectedGradientEnd;
				}
			}
			else
			{
				empty = colorTable.StandardScrollButtonHighlightedGradientBegin;
				empty2 = colorTable.StandardScrollButtonHighlightedGradientEnd;
			}
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, empty, empty2))
			{
				linearGradientBrush.Blend = m_blScrollButton;
				g.FillRectangle(linearGradientBrush, rc);
			}
			using Pen pen = new Pen(Color.FromArgb(100, Color.Black));
			g.DrawRectangle(pen, rc.X, rc.Y, rc.Width - 1, rc.Height - 1);
		}

		private void DrawScrollButtonImage(Graphics g, Rectangle rc, int buttonID)
		{
			using Brush brush = new SolidBrush(m_comboBox.ColorTable.ScrollButtonLargeArrow);
			using GraphicsPath graphicsPath = new GraphicsPath();
			Rectangle rectangle = new Rectangle(rc.Left + rc.Width / 2 - 4, rc.Top + rc.Height / 2 - 1, 9, 5);
			switch (buttonID)
			{
			case 1:
				graphicsPath.AddLine(rectangle.Left - 1, rectangle.Bottom, rectangle.Left + 4, rectangle.Bottom - 6);
				graphicsPath.AddLine(rectangle.Left + 4, rectangle.Bottom - 6, rectangle.Left + 9, rectangle.Bottom);
				break;
			case 2:
				graphicsPath.AddLine(rectangle.Left, rectangle.Top, rectangle.Left + 9, rectangle.Top);
				graphicsPath.AddLine(rectangle.Left + 9, rectangle.Top, rectangle.Left + 4, rectangle.Top + 5);
				break;
			}
			graphicsPath.CloseFigure();
			g.FillPath(brush, graphicsPath);
		}

		private void DrawThumb(Graphics g)
		{
			Rectangle thumbRect = GetThumbRect();
			if (thumbRect.Width > 0 && thumbRect.Height > 0)
			{
				SmoothingMode smoothingMode = g.SmoothingMode;
				g.SmoothingMode = SmoothingMode.AntiAlias;
				DrawThumbBackground(g, thumbRect);
				DrawThumbImage(g, thumbRect);
				g.SmoothingMode = smoothingMode;
			}
		}

		private void DrawThumbBackground(Graphics g, Rectangle rc)
		{
			Color empty = Color.Empty;
			Color empty2 = Color.Empty;
			Color empty3 = Color.Empty;
			Office12ColorTable colorTable = m_comboBox.ColorTable;
			if (m_regionPressed == 3)
			{
				empty = colorTable.ScrollerPressedGradientBegin;
				empty2 = colorTable.ScrollerPressedGradientEnd;
				empty3 = colorTable.ScrollerPressedBorder;
			}
			else if (m_regionSelected == 3)
			{
				empty = colorTable.ScrollerSelectedGradientBegin;
				empty2 = colorTable.ScrollerSelectedGradientEnd;
				empty3 = colorTable.ScrollerSelectedBorder;
			}
			else
			{
				empty = colorTable.ScrollerNormalGradientBegin;
				empty2 = colorTable.ScrollerNormalGradientEnd;
				empty3 = colorTable.ScrollerNormalBorder;
			}
			using (LinearGradientBrush linearGradientBrush = GetHorizontalBrush(ref rc, empty, empty2))
			{
				linearGradientBrush.Blend = ((m_regionSelected == 3 || m_regionPressed == 3) ? m_blThumbSelected : m_blThumbNormal);
				g.FillRectangle(linearGradientBrush, rc);
			}
			using (Pen pen = new Pen(empty3))
			{
				g.DrawPolygon(pen, GetRoundedPolygon(rc, 1));
			}
			using Pen pen2 = new Pen(Color.FromArgb(128, Color.White));
			g.DrawRectangle(pen2, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
		}

		private void DrawThumbImage(Graphics g, Rectangle rc)
		{
			Rectangle rectangle = new Rectangle(rc.X + (rc.Width - 8) / 2, rc.Y + (rc.Height - 7) / 2, 8, 8);
			using Pen pen = new Pen(Color.FromArgb(100, Color.Black));
			using Pen pen2 = new Pen(Color.FromArgb(100, Color.White));
			int i = 0;
			int num = rectangle.Top;
			for (; i < 4; i++)
			{
				g.DrawLine(pen, rectangle.Left, num, rectangle.Right, num);
				num++;
				g.DrawLine(pen2, rectangle.Left + 2, num, rectangle.Right, num);
				num++;
			}
		}

		private void DrawGrip(Graphics g)
		{
			using BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(g, m_rcGrip);
			Graphics graphics = bufferedGraphics.Graphics;
			graphics.SmoothingMode = SmoothingMode.AntiAlias;
			using (LinearGradientBrush brush = GetVerticalBrush(ref m_rcGrip, Color.White, GalleryScrollBarBackground))
			{
				graphics.FillRectangle(brush, m_rcGrip);
			}
			using (Brush brush2 = new SolidBrush(m_comboBox.ColorTable.ScrollButtonLargeArrow))
			{
				int num = m_rcGrip.Left + (m_rcGrip.Width - 20) / 2;
				int y = m_rcGrip.Top + (m_rcGrip.Height - 2) / 2;
				for (int i = 0; i < 4; i++)
				{
					graphics.FillRectangle(brush2, num + i * 5, y, 2, 2);
				}
			}
			using (Pen pen = new Pen(m_comboBox.BorderColor))
			{
				graphics.DrawLine(pen, m_rcGrip.X, m_rcGrip.Y, m_rcGrip.Right, m_rcGrip.Y);
			}
			bufferedGraphics.Render();
		}

		private void DrawBorder(Graphics g)
		{
			using Pen pen = new Pen(m_comboBox.BorderColor);
			g.DrawRectangle(pen, m_rcBorder.left, m_rcBorder.top, m_rcBorder.Width - 1, m_rcBorder.Height - 1);
		}

		private void UpdateCursor()
		{
			if (m_regionPressed == 0)
			{
				Cursor cursor = ((m_regionSelected == 6) ? Cursors.SizeNS : Cursors.Default);
				SetCursor(cursor.Handle);
			}
		}

		private int GetScrollRegion(Point pt)
		{
			if (m_rcScroll.Width > 0 && m_rcScroll.Height > 0)
			{
				if (m_rcUp.Contains(pt))
				{
					return 1;
				}
				if (m_rcDown.Contains(pt))
				{
					return 2;
				}
				if (m_rcScroll.Contains(pt))
				{
					Rectangle thumbRect = GetThumbRect();
					if (pt.Y < thumbRect.Top)
					{
						return 4;
					}
					if (pt.Y > thumbRect.Bottom)
					{
						return 5;
					}
					return 3;
				}
			}
			if (m_rcGrip.Contains(pt))
			{
				return 6;
			}
			return 0;
		}

		private Point GetMousePos(ref Message m)
		{
			RECT rc = default(RECT);
			GetWindowRect(m.HWnd, ref rc);
			POINT lpPoints = new POINT
			{
				x = LOWORD(m.LParam),
				y = HIWORD(m.LParam)
			};
			MapWindowPoints(m.HWnd, IntPtr.Zero, ref lpPoints, 1u);
			return new Point(lpPoints.x - rc.left, lpPoints.y - rc.top);
		}

		private Rectangle GetThumbRect()
		{
			Rectangle result = Rectangle.Empty;
			SCROLLINFO si = default(SCROLLINFO);
			si.cbSize = Marshal.SizeOf((object)si);
			si.fMask = 23;
			if (GetScrollInfo(base.Handle, 1, ref si) && si.nMax > si.nMin)
			{
				Rectangle rectangle = Rectangle.Inflate(m_rcScroll, 0, -ButtonHeight);
				int num = Math.Max((int)(rectangle.Height * si.nPage) / (si.nMax - si.nMin), 13);
				int num2 = rectangle.Height - num;
				int num3 = (int)(si.nMax - si.nPage + 1);
				int num4 = Math.Min(num3, si.nTrackPos);
				int y = rectangle.Top + num4 * num2 / num3;
				result = new Rectangle(rectangle.X, y, rectangle.Width, num);
			}
			return result;
		}
	}

	private class ShadowWindow : Control
	{
		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams createParams = base.CreateParams;
				createParams.Style = -2013265920;
				createParams.ExStyle = 128;
				createParams.ClassStyle = 131072;
				return createParams;
			}
		}

		public ShadowWindow()
		{
			SetStyle(ControlStyles.AllPaintingInWmPaint, value: false);
		}

		protected override void WndProc(ref Message m)
		{
			int msg = m.Msg;
			if (msg == 20)
			{
				m.Result = (IntPtr)1;
			}
			else
			{
				base.WndProc(ref m);
			}
		}
	}

	private const int ARROW_WIDTH = 5;

	private const int ARROW_HEIGHT = 3;

	private const int ARROW_PADDING = 4;

	private const int CBS_STYLED = 1040;

	private const int WM_PAINT = 15;

	private const int WM_ERASEBKGND = 20;

	private const int WM_WINDOWPOSCHANGING = 70;

	private const int WM_WINDOWPOSCHANGED = 71;

	private const int WM_NCCALCSIZE = 131;

	private const int WM_NCPAINT = 133;

	private const int WM_KEYDOWN = 256;

	private const int WM_CTLCOLOREDIT = 307;

	private const int WM_CTLCOLORSTATIC = 312;

	private const int WM_MOUSEMOVE = 512;

	private const int WM_LBUTTONDOWN = 513;

	private const int WM_LBUTTONUP = 514;

	private const int WM_LBUTTONDBLCLK = 515;

	private const int WM_MOUSEWHEEL = 522;

	private const int WM_MOUSELEAVE = 675;

	private const int WM_CAPTURECHANGED = 533;

	private const int WM_PRINT = 791;

	private const int CB_SETITEMHEIGHT = 339;

	private const int CB_GETITEMHEIGHT = 340;

	private const int CB_GETEXTENDEDUI = 342;

	private const int LB_GETTOPINDEX = 398;

	private const int LB_SETTOPINDEX = 407;

	private const int WM_USER = 1024;

	private const int WM_REFLECTEDCOMMAND = 8465;

	private const int GWL_STYLE = -16;

	private const int WS_VSCROLL = 2097152;

	private const int CBS_OWNERDRAWFIXED = 16;

	private const int CBS_NOINTEGRALHEIGHT = 1024;

	private const int SB_VERT = 1;

	private const int SIF_RANGE = 1;

	private const int SIF_PAGE = 2;

	private const int SIF_POS = 4;

	private const int SIF_TRACKPOS = 16;

	private const int SIF_ALL = 23;

	private const int PRF_NONCLIENT = 2;

	private const int TRANSPARENT = 1;

	private const int OPAQUE = 2;

	private const int RDW_INVALIDATE = 1;

	private const int RDW_INTERNALPAINT = 2;

	private const int RDW_ERASE = 4;

	private const int RDW_VALIDATE = 8;

	private const int RDW_NOINTERNALPAINT = 16;

	private const int RDW_NOERASE = 32;

	private const int RDW_NOCHILDREN = 64;

	private const int RDW_ALLCHILDREN = 128;

	private const int RDW_UPDATENOW = 256;

	private const int RDW_ERASENOW = 512;

	private const int RDW_FRAME = 1024;

	private const int RDW_NOFRAME = 2048;

	private const int STATE_SYSTEM_INVISIBLE = 32768;

	private const int SWP_NOSIZE = 1;

	private const int SWP_NOMOVE = 2;

	private const int SWP_NOZORDER = 4;

	private const int SWP_NOREDRAW = 8;

	private const int SWP_NOACTIVATE = 16;

	private const int SWP_FRAMECHANGED = 32;

	private const int SWP_SHOWWINDOW = 64;

	private const int SWP_HIDEWINDOW = 128;

	private const int SWP_NOCOPYBITS = 256;

	private const int SWP_NOOWNERZORDER = 512;

	private const int SWP_NOSENDCHANGING = 1024;

	private const int WS_DISABLED = 134217728;

	private const int WS_POPUP = int.MinValue;

	private const int WS_EX_TOOLWINDOW = 128;

	private const int WS_EX_LAYERED = 524288;

	private const int CBN_CLOSEUP = 8;

	private const int DT_CALCRECT = 1024;

	private ListBoxWindow m_list;

	private IntPtr m_hoverWindow;

	private bool m_bIsStyled;

	private bool m_bShowGripper;

	private static Blend m_blSelection;

	private static Bitmap m_measuringBitmap;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (IsStyled)
			{
				createParams.Style |= 1040;
			}
			return createParams;
		}
	}

	protected virtual Office12ColorTable ColorTable
	{
		get
		{
			if (base.Parent is ToolStrip { Renderer: ToolStripProfessionalRenderer { ColorTable: Office12ColorTable colorTable } })
			{
				return colorTable;
			}
			return Office12ColorTable.ManagedColors;
		}
	}

	private Color BorderColor => ColorTable.GroupBorder;

	private Color BackgroundColor => ColorTable.ComboBoxBackgroundColor;

	private Color HighlightColor => Office12ColorTable.GetAlphaBlendedColor(Color.Transparent, Color.White, 128);

	protected bool IsStyled
	{
		get
		{
			return m_bIsStyled;
		}
		set
		{
			if (m_bIsStyled != value)
			{
				m_bIsStyled = value;
				base.DroppedDown = false;
				if (!base.IsHandleCreated)
				{
					RecreateHandle();
				}
				OnIsStyledChanged();
			}
		}
	}

	protected bool ShowGripper
	{
		get
		{
			return m_bShowGripper;
		}
		set
		{
			m_bShowGripper = value;
		}
	}

	private int ItemHeightInternal
	{
		get
		{
			int result = 0;
			using Graphics graphics = Graphics.FromImage(m_measuringBitmap);
			IntPtr hdc = graphics.GetHdc();
			IntPtr hObject = Font.ToHfont();
			try
			{
				IntPtr hObject2 = SelectObject(hdc, hObject);
				RECT lpRect = new RECT(0, 0, 1, 1);
				if (DrawText(hdc, "X", 1, ref lpRect, 1024) != 0)
				{
					result = lpRect.Height + 2;
				}
				SelectObject(hdc, hObject2);
				return result;
			}
			finally
			{
				DeleteObject(hObject);
				graphics.ReleaseHdc(hdc);
			}
		}
	}

	internal event EventHandler IsStyledChanged;

	static ComboBoxEx()
	{
		m_blSelection = new Blend();
		m_blSelection.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		m_blSelection.Factors = new float[4] { 0f, 0.2f, 0.5f, 1f };
		m_measuringBitmap = new Bitmap(1, 1);
	}

	internal ComboBoxEx()
		: this(bIsStyled: false, bShowGripper: false)
	{
	}

	internal ComboBoxEx(bool bIsStyled, bool bShowGripper)
	{
		m_bIsStyled = bIsStyled;
		m_bShowGripper = bShowGripper;
	}

	protected virtual void CreateListBoxWindowHandle()
	{
		if (m_list != null && m_list.Handle == IntPtr.Zero)
		{
			COMBOBOXINFO cbi = default(COMBOBOXINFO);
			cbi.cbSize = (uint)Marshal.SizeOf((object)cbi);
			GetComboBoxInfo(base.Handle, ref cbi);
			m_list.AssignHandle(cbi.hwndList);
		}
	}

	protected virtual void ReleaseListBoxWindowHandle()
	{
		if (m_list != null)
		{
			m_list.ReleaseHandle();
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		m_list = new ListBoxWindow(this);
		base.OnHandleCreated(e);
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.OnHandleDestroyed(e);
		if (m_list != null)
		{
			m_list.DestroyHandle();
			m_list = null;
		}
	}

	protected override void OnEnter(EventArgs e)
	{
		base.OnEnter(e);
		Invalidate(invalidateChildren: true);
	}

	protected override void OnLeave(EventArgs e)
	{
		base.OnLeave(e);
		Invalidate(invalidateChildren: true);
	}

	protected override void OnDrawItem(DrawItemEventArgs e)
	{
		if (base.DroppedDown)
		{
			DrawItemBackground(e);
			DrawItemText(e);
		}
		else
		{
			DrawForeground(e.Graphics, e.Bounds);
		}
		base.OnDrawItem(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		if (base.IsHandleCreated)
		{
			int itemHeightInternal = ItemHeightInternal;
			SendMessage(base.Handle, 339, -1, itemHeightInternal);
			SendMessage(base.Handle, 339, 0, itemHeightInternal);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (IsStyled)
		{
			switch (m.Msg)
			{
			case 307:
			case 312:
				if (OnCtlColorEdit(ref m))
				{
					return;
				}
				break;
			case 15:
				OnPaint(ref m);
				return;
			case 512:
				OnMouseMove(ref m);
				break;
			case 675:
				OnMouseLeave(ref m);
				break;
			case 340:
				OnGetItemHeight(ref m);
				return;
			case 8465:
				OnReflectedCommand(ref m);
				break;
			}
		}
		base.WndProc(ref m);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && m_list != null)
		{
			m_list.DestroyHandle();
			m_list = null;
		}
		base.Dispose(disposing);
	}

	private bool OnCtlColorEdit(ref Message m)
	{
		if (!GetIsHighlighted())
		{
			SetBkMode(m.WParam, 1);
			m.Result = ColorTable.ComboBoxBackgroundBrush;
			return true;
		}
		return false;
	}

	private void OnPaint(ref Message m)
	{
		COMBOBOXINFO cbi = default(COMBOBOXINFO);
		cbi.cbSize = (uint)Marshal.SizeOf((object)cbi);
		if (!GetComboBoxInfo(m.HWnd, ref cbi))
		{
			return;
		}
		PAINTSTRUCT ps = default(PAINTSTRUCT);
		IntPtr intPtr = BeginPaint(m.HWnd, ref ps);
		if (intPtr != IntPtr.Zero)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			if (clientRectangle.Width > 0 && clientRectangle.Height > 0)
			{
				using BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(intPtr, clientRectangle);
				Graphics graphics = bufferedGraphics.Graphics;
				DrawBackground(graphics, clientRectangle);
				if (base.DropDownStyle == ComboBoxStyle.DropDownList)
				{
					DrawForeground(graphics, cbi.rcItem);
				}
				if (cbi.stateButton != 32768)
				{
					DrawButton(graphics, ref cbi);
				}
				bufferedGraphics.Render();
			}
		}
		EndPaint(m.HWnd, ref ps);
	}

	private void OnMouseMove(ref Message m)
	{
		if (m_hoverWindow != m.HWnd)
		{
			Invalidate(invalidateChildren: true);
			m_hoverWindow = m.HWnd;
		}
	}

	private void OnMouseLeave(ref Message m)
	{
		Invalidate(invalidateChildren: true);
		m_hoverWindow = IntPtr.Zero;
	}

	private void OnGetItemHeight(ref Message m)
	{
		m.Result = (IntPtr)ItemHeightInternal;
	}

	private void OnReflectedCommand(ref Message m)
	{
		int num = HIWORD(m.WParam);
		if (num == 8)
		{
			Invalidate();
		}
	}

	private void DrawBackground(Graphics g, Rectangle rc)
	{
		Color color = (GetIsHighlighted() ? SystemColors.Window : BackgroundColor);
		using (Brush brush = new SolidBrush(color))
		{
			g.FillRectangle(brush, rc);
		}
		using Pen pen = new Pen(BorderColor);
		g.DrawRectangle(pen, rc.X, rc.Y, rc.Width - 1, rc.Height - 1);
	}

	private void DrawForeground(Graphics g, Rectangle rc)
	{
		string text = null;
		if (SelectedIndex != -1)
		{
			text = GetItemText(base.Items[SelectedIndex]);
		}
		if (text != null)
		{
			Rectangle rectangle = Rectangle.Inflate(rc, -1, -1);
			TextFormatFlags flags = ((RightToLeft == RightToLeft.Yes) ? (TextFormatFlags.Right | TextFormatFlags.NoPadding) : TextFormatFlags.NoPadding);
			if (Focused && !base.DroppedDown)
			{
				g.FillRectangle(SystemBrushes.Highlight, rectangle);
				TextRenderer.DrawText(g, text, Font, rectangle, SystemColors.HighlightText, flags);
				ControlPaint.DrawFocusRectangle(g, rc);
			}
			else
			{
				TextRenderer.DrawText(g, text, Font, rectangle, ForeColor, flags);
			}
		}
	}

	private void DrawButton(Graphics g, ref COMBOBOXINFO cbi)
	{
		Rectangle rc = cbi.rcButton;
		if (!DrawButtonPressed(g, ref rc) && !DrawButtonSelected(g, ref rc))
		{
			DrawButtonNormal(g, ref rc);
		}
		DrawArrow(g, ref rc);
	}

	private bool DrawButtonPressed(Graphics g, ref Rectangle rc)
	{
		bool result = false;
		if (GetIsPressed())
		{
			if (rc.Width > 0 && rc.Height > 0)
			{
				Color buttonPressedGradientBegin = ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = ColorTable.ButtonPressedGradientEnd;
				DrawButtonBackground(g, rc, buttonPressedGradientBegin, buttonPressedGradientEnd);
				using (Pen pen = new Pen(ColorTable.ButtonPressedBorder))
				{
					g.DrawRectangle(pen, rc.X, rc.Y, rc.Width - 1, rc.Height - 1);
				}
				using Pen pen2 = new Pen(HighlightColor);
				g.DrawRectangle(pen2, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
			}
			result = true;
		}
		return result;
	}

	private bool DrawButtonSelected(Graphics g, ref Rectangle rc)
	{
		bool result = false;
		if (GetIsSelected())
		{
			if (rc.Width > 0 && rc.Height > 0)
			{
				Color buttonSelectedGradientBegin = ColorTable.ButtonSelectedGradientBegin;
				Color buttonSelectedGradientEnd = ColorTable.ButtonSelectedGradientEnd;
				DrawButtonBackground(g, rc, buttonSelectedGradientBegin, buttonSelectedGradientEnd);
				using (Pen pen = new Pen(ColorTable.ButtonSelectedBorder))
				{
					g.DrawRectangle(pen, rc.X, rc.Y, rc.Width - 1, rc.Height - 1);
				}
				using Pen pen2 = new Pen(HighlightColor);
				g.DrawRectangle(pen2, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
			}
			result = true;
		}
		return result;
	}

	private void DrawButtonNormal(Graphics g, ref Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color groupGradientBegin = ColorTable.GroupGradientBegin;
			Color groupGradientEnd = ColorTable.GroupGradientEnd;
			DrawButtonBackground(g, rc, groupGradientBegin, groupGradientEnd);
			using Pen pen = new Pen(BorderColor);
			g.DrawRectangle(pen, rc.X, rc.Y, rc.Width - 1, rc.Height - 1);
		}
	}

	private void DrawArrow(Graphics g, ref Rectangle rc)
	{
		int num = rc.X + rc.Width / 2;
		int num2 = rc.Y + rc.Height / 2;
		Point[] points = new Point[3]
		{
			new Point(num - 2, num2 - 1),
			new Point(num + 3, num2 - 1),
			new Point(num, num2 + 2)
		};
		Brush brush = (base.Enabled ? SystemBrushes.ControlText : SystemBrushes.ControlDark);
		g.FillPolygon(brush, points);
	}

	private void DrawButtonBackground(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(clBegin, clEnd, 128);
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, Color.Black, Color.White);
			ColorBlend colorBlend = new ColorBlend();
			colorBlend.Colors = new Color[4] { clBegin, alphaBlendedColor, clEnd, alphaBlendedColor };
			colorBlend.Positions = new float[4] { 0f, 0.38f, 0.38f, 1f };
			linearGradientBrush.InterpolationColors = colorBlend;
			linearGradientBrush.WrapMode = WrapMode.TileFlipY;
			g.FillRectangle(linearGradientBrush, rc);
		}
	}

	private void DrawItemBackground(DrawItemEventArgs e)
	{
		if ((e.State & DrawItemState.Selected) != DrawItemState.None && IsStyled)
		{
			Rectangle rc = e.Bounds;
			Point[] roundedPolygon = GetRoundedPolygon(rc, 1);
			Color buttonSelectedGradientBegin = ColorTable.ButtonSelectedGradientBegin;
			Color buttonSelectedGradientEnd = ColorTable.ButtonSelectedGradientEnd;
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, buttonSelectedGradientBegin, buttonSelectedGradientEnd))
			{
				linearGradientBrush.Blend = m_blSelection;
				e.Graphics.FillPolygon(linearGradientBrush, roundedPolygon);
			}
			using Pen pen = new Pen(buttonSelectedGradientEnd);
			e.Graphics.DrawPolygon(pen, roundedPolygon);
			return;
		}
		e.DrawBackground();
	}

	protected virtual void DrawItemText(DrawItemEventArgs e)
	{
		if (e.Index < 0 || e.Index >= base.Items.Count || !IsStyled)
		{
			return;
		}
		RectangleF layoutRectangle = e.Bounds;
		string itemText = GetItemText(base.Items[e.Index]);
		using StringFormat stringFormat = new StringFormat(StringFormat.GenericDefault);
		if (RightToLeft == RightToLeft.Yes)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		e.Graphics.DrawString(itemText, e.Font, Brushes.Black, layoutRectangle, stringFormat);
	}

	private bool GetIsHighlighted()
	{
		if (base.Enabled)
		{
			if (!GetIsSelected())
			{
				return GetIsPressed();
			}
			return true;
		}
		return false;
	}

	private bool GetIsSelected()
	{
		bool flag = Focused;
		if (!flag)
		{
			flag = RectangleToScreen(base.ClientRectangle).Contains(Cursor.Position);
		}
		return flag;
	}

	private bool GetIsPressed()
	{
		return base.DroppedDown;
	}

	private static LinearGradientBrush GetHorizontalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(rc.Left, rc.Top, Math.Max(rc.Width, 1), 1);
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, cl1, cl2, 0f);
		linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
		return linearGradientBrush;
	}

	private static LinearGradientBrush GetVerticalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(0, rc.Top, 1, Math.Max(rc.Height, 1));
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, cl1, cl2, 90f);
		linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
		return linearGradientBrush;
	}

	private static Point[] GetRoundedPolygon(Rectangle rc, int iRadius)
	{
		int num = rc.X;
		int num2 = rc.Y;
		int num3 = rc.Right - 1;
		int num4 = rc.Bottom - 1;
		return new Point[8]
		{
			new Point(num, num2 + iRadius),
			new Point(num + iRadius, num2),
			new Point(num3 - iRadius, num2),
			new Point(num3, num2 + iRadius),
			new Point(num3, num4 - iRadius),
			new Point(num3 - iRadius, num4),
			new Point(num + iRadius, num4),
			new Point(num, num4 - iRadius)
		};
	}

	protected virtual void OnIsStyledChanged()
	{
		if (this.IsStyledChanged != null)
		{
			this.IsStyledChanged(this, EventArgs.Empty);
		}
	}

	private static int LOWORD(IntPtr lParam)
	{
		return (short)(lParam.ToInt64() & 0xFFFF);
	}

	private static int HIWORD(IntPtr lParam)
	{
		return (short)(lParam.ToInt64() >> 16);
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr PostMessage(IntPtr hWnd, int msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern int GetWindowLong(IntPtr hWnd, int nIndex);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern int SetWindowLong(IntPtr hWnd, int nIndex, int value);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern bool GetWindowRect(IntPtr hWnd, ref RECT rc);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern bool GetComboBoxInfo(IntPtr hWnd, ref COMBOBOXINFO cbi);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr GetWindowDC(IntPtr hWnd);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern bool RedrawWindow(IntPtr hWnd, IntPtr rcUpdate, IntPtr hrgnUpdate, int flags);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern int MapWindowPoints(IntPtr hWndFrom, IntPtr hWndTo, ref POINT lpPoints, uint cPoints);

	[DllImport("user32", CharSet = CharSet.Auto)]
	private static extern bool GetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si);

	[DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
	private static extern int SetWindowTheme(IntPtr hWnd, [MarshalAs(UnmanagedType.LPWStr)] string pszSubAppName, [MarshalAs(UnmanagedType.LPWStr)] string pszSubIdList);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr BeginPaint(IntPtr hWnd, ref PAINTSTRUCT ps);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern bool EndPaint(IntPtr hWnd, ref PAINTSTRUCT ps);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int x, int y, int Width, int Height, int flags);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr SetCursor(IntPtr hCursor);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern int DrawText(IntPtr hdc, string lpString, int nCount, ref RECT lpRect, int uFormat);

	[DllImport("gdi32")]
	private static extern int SetBkMode(IntPtr hDC, int mode);

	[DllImport("gdi32.dll")]
	private static extern bool DeleteObject(IntPtr hObject);

	[DllImport("gdi32.dll")]
	private static extern IntPtr SelectObject(IntPtr hDC, IntPtr hObject);
}
