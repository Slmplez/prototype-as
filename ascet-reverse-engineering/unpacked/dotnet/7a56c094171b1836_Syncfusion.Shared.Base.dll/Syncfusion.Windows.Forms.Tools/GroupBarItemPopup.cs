using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class GroupBarItemPopup : ScrollableControl, IMessageFilter
{
	private const int VK_ESCAPE = 27;

	private const int SWP_SHOWPOPUP = 80;

	private const int SWP_HIDEPOPUP = 151;

	private const int SPI_GETDROPSHADOW = 4132;

	private const int CS_DROPSHADOW = 131072;

	private const uint RDW_FLAGS = 1411u;

	public const int BorderWidth = 5;

	public const int GripperHeight = 14;

	private const int c_nGripperLinesOffset = 3;

	private GroupBar m_owner;

	private WndProcHooker m_hook;

	private bool m_bOpened;

	private bool m_bFlippedX;

	private bool m_bFlippedY;

	public bool Opened => m_bOpened;

	internal int BottomBorderHeight
	{
		get
		{
			if (!m_owner.ShowPopupGripper)
			{
				return 5;
			}
			return 14;
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			bool lpvParam = false;
			NativeMethods.SystemParametersInfo(4132, 0, ref lpvParam, 0);
			if (lpvParam)
			{
				createParams.ClassStyle |= 131072;
			}
			createParams.Style |= int.MinValue;
			return createParams;
		}
	}

	public event EventHandler OpenedChanged;

	public event MouseClickCancelEventHandler BeforeClose;

	public GroupBarItemPopup(GroupBar owner)
	{
		m_owner = owner;
	}

	protected void OnWmCreated()
	{
		m_hook = new WndProcHooker(base.Handle, this);
		m_hook.HookMessages = true;
		Application.AddMessageFilter(this);
	}

	protected void OnWmDestroyed()
	{
		if (m_hook != null)
		{
			m_hook.HookMessages = false;
			m_hook.Dispose();
			m_hook = null;
		}
		Application.RemoveMessageFilter(this);
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 6:
			OmWmActivate(ref m);
			return;
		case 33:
			m.Result = (IntPtr)3;
			return;
		case 131:
			OnWmNcCalcSize(ref m);
			break;
		case 132:
			if (OnWmNcHitTest(ref m))
			{
				return;
			}
			break;
		case 133:
			OnWmNcPaint(ref m);
			return;
		case 1:
			base.WndProc(ref m);
			if (m.Result == IntPtr.Zero)
			{
				OnWmCreated();
			}
			return;
		case 2:
			OnWmDestroyed();
			break;
		}
		base.WndProc(ref m);
	}

	public void Show(bool bShow, GroupBar.BeforePopupEventArgs args)
	{
		if (bShow)
		{
			m_bFlippedX = args.FlippedX;
			m_bFlippedY = args.FlippedY;
			GroupBarItem item = args.Item;
			if (item != null)
			{
				SuspendLayout();
				RightToLeft = m_owner.RightToLeft;
				if (!base.IsHandleCreated)
				{
					CreateHandle();
				}
				Rectangle popupBounds = args.PopupBounds;
				NativeMethods.SetWindowPos(base.Handle, (IntPtr)(-1), popupBounds.X, popupBounds.Y, popupBounds.Width, popupBounds.Height, 80);
				m_bOpened = true;
				OnOpenedChaged();
				ResumeLayout(performLayout: true);
			}
		}
		else
		{
			Hide();
		}
	}

	public new void Hide()
	{
		Hide(Point.Empty);
	}

	public void Hide(Point pt)
	{
		MouseClickCancelEventArgs e = OnBeforeClose(pt);
		if (!e.Cancel)
		{
			NativeMethods.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, 151);
			m_bOpened = false;
			OnOpenedChaged();
		}
	}

	private void OnOpenedChaged()
	{
		if (this.OpenedChanged != null)
		{
			this.OpenedChanged(this, EventArgs.Empty);
		}
	}

	private MouseClickCancelEventArgs OnBeforeClose(Point pt)
	{
		MouseClickCancelEventArgs e = new MouseClickCancelEventArgs(pt, cancel: false);
		if (this.BeforeClose != null)
		{
			this.BeforeClose(this, e);
		}
		return e;
	}

	private int GetHitTest(int x, int y)
	{
		int result = -2;
		NativeMethods.RECT lpRect = default(NativeMethods.RECT);
		NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
		if (NativeMethods.PtInRect(ref lpRect, new NativeMethods.POINT(x, y)))
		{
			int num = x - lpRect.left;
			int num2 = y - lpRect.top;
			int num3 = lpRect.Width - num;
			int num4 = lpRect.Height - num2;
			if (m_bFlippedX)
			{
				num ^= num3;
				num3 ^= num;
				num ^= num3;
			}
			if (m_bFlippedY)
			{
				num2 ^= num4;
				num4 ^= num2;
				num2 ^= num4;
			}
			if (num3 < BottomBorderHeight && num4 < BottomBorderHeight)
			{
				result = GetBottomRightHitTest();
			}
			else if (num3 < 5)
			{
				if (num4 < BottomBorderHeight)
				{
					result = GetBottomRightHitTest();
				}
				else if ((m_owner.PopupResizeMode & PopupResizeMode.Horizontal) != PopupResizeMode.None)
				{
					result = GetHitTestRight();
				}
			}
			else if (num4 < BottomBorderHeight)
			{
				if ((m_owner.PopupResizeMode & PopupResizeMode.Vertical) != PopupResizeMode.None)
				{
					result = GetHitTestBottom();
				}
			}
			else if (num2 >= 5)
			{
				result = 1;
			}
		}
		return result;
	}

	private int GetHitTestRight()
	{
		if (!m_bFlippedX)
		{
			return 11;
		}
		return 10;
	}

	private int GetHitTestBottom()
	{
		if (!m_bFlippedY)
		{
			return 15;
		}
		return 12;
	}

	private int GetBottomRightHitTest()
	{
		int result = -2;
		switch (m_owner.PopupResizeMode)
		{
		case PopupResizeMode.Horizontal:
			result = GetHitTestRight();
			break;
		case PopupResizeMode.Vertical:
			result = GetHitTestBottom();
			break;
		case PopupResizeMode.Both:
			result = ((!m_bFlippedX) ? ((!m_bFlippedY) ? 17 : 14) : ((!m_bFlippedY) ? 16 : 13));
			break;
		}
		return result;
	}

	private void DrawNcArea(Graphics g, Rectangle rect)
	{
		Rectangle rect2 = rect;
		rect2.Inflate(-5, -5);
		if (m_owner.ShowPopupGripper)
		{
			rect2.Height -= 9;
		}
		using (Region region = new Region(rect))
		{
			using Brush brush = new SolidBrush(m_owner.ClientAreaBackground);
			region.Exclude(rect2);
			g.FillRegion(brush, region);
		}
		using Pen pen = new Pen(m_owner.BorderColor);
		if (m_owner.ShowPopupGripper)
		{
			rect = DrawGripper(g, rect, pen);
		}
		rect.Height--;
		rect.Width--;
		g.DrawRectangle(pen, rect);
		rect2.X--;
		rect2.Y--;
		rect2.Width++;
		rect2.Height++;
		g.DrawRectangle(pen, rect2);
	}

	private Rectangle DrawGripper(Graphics g, Rectangle rect, Pen pen)
	{
		Rectangle rectBounds = new Rectangle(new Point(0, rect.Height - 14), new Size(rect.Width, 14));
		using (new CMirroredDrawer(g, rectBounds, RightToLeft.Yes == RightToLeft))
		{
			Point p = new Point(rect.Width - 14, rect.Height);
			Point point = new Point(3, -3);
			Point pt = point;
			Point point2 = new Point(11, -11);
			Point pt2 = point2;
			pt.X++;
			pt2.Y++;
			point.Offset(p);
			point2.Offset(p);
			pt.Offset(p);
			pt2.Offset(p);
			for (int i = 0; i < 3; i++)
			{
				g.DrawLine(pen, point, point2);
				g.DrawLine(pen, pt, pt2);
				point.X += 3;
				point2.Y += 3;
				pt.X += 3;
				pt2.Y += 3;
			}
			return rect;
		}
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		switch (m.Msg)
		{
		case 161:
		case 164:
		case 167:
			OnXButtonDown(m, bClient: false);
			break;
		case 513:
		case 516:
		case 519:
			OnXButtonDown(m, bClient: true);
			break;
		case 256:
			OnKeyDown(m);
			break;
		case 6:
			OnActivate(m);
			break;
		}
		return false;
	}

	private void OnXButtonDown(Message m, bool bClient)
	{
		if (!Opened || !(m.HWnd != base.Handle) || NativeMethods.IsChild(base.Handle, m.HWnd))
		{
			return;
		}
		int num = NativeMethods.LOWORD(m.LParam);
		int num2 = NativeMethods.HIWORD(m.LParam);
		Point pt = Point.Empty;
		if (bClient)
		{
			NativeMethods.POINT pt2 = new NativeMethods.POINT(num, num2);
			if (NativeMethods.ClientToScreen(m.HWnd, ref pt2) != 0)
			{
				pt = new Point(pt2.X, pt2.Y);
			}
		}
		else
		{
			pt = new Point(num, num2);
		}
		Hide(pt);
	}

	private void OnKeyDown(Message m)
	{
		if (Opened && (int)m.WParam == 27)
		{
			Hide();
		}
	}

	private void OnActivate(Message m)
	{
		if (Opened)
		{
			Control topLevelControl = m_owner.TopLevelControl;
			if (topLevelControl != null && topLevelControl.Handle == m.HWnd && NativeMethods.LOWORD(m.WParam) == 0 && base.IsHandleCreated && base.Handle != m.LParam)
			{
				Hide();
			}
		}
	}

	private void OmWmActivate(ref Message m)
	{
		if (NativeMethods.LOWORD(m.WParam) == 0)
		{
			NativeMethods.GetCursorPos(out var lpPoint);
			Hide(lpPoint);
		}
		else
		{
			m_owner.Focus();
		}
		m.Result = IntPtr.Zero;
	}

	private void OnWmNcPaint(ref Message m)
	{
		IntPtr windowDC = NativeMethods.GetWindowDC(base.Handle);
		if (windowDC != IntPtr.Zero)
		{
			NativeMethods.RECT lpRect = default(NativeMethods.RECT);
			NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
			using (Graphics g = Graphics.FromHdc(windowDC))
			{
				DrawNcArea(g, new Rectangle(0, 0, lpRect.Width, lpRect.Height));
				int num = lpRect.Width - 5;
				if (num - 5 > 0)
				{
					int num2 = lpRect.Height - BottomBorderHeight;
					if (num2 - BottomBorderHeight > 0)
					{
						NativeMethods.ExcludeClipRect(windowDC, 5, 5, num, num2);
					}
				}
			}
			NativeMethods.ReleaseDC(base.Handle, windowDC);
		}
		m.Result = IntPtr.Zero;
	}

	private bool OnWmNcHitTest(ref Message m)
	{
		bool result = false;
		int num = NativeMethods.LOWORD(m.LParam);
		int num2 = NativeMethods.HIWORD(m.LParam);
		int hitTest = GetHitTest(num, num2);
		if (hitTest != -2)
		{
			m.Result = (IntPtr)hitTest;
			result = true;
		}
		return result;
	}

	private void OnWmNcCalcSize(ref Message m)
	{
		NativeMethods.RECT rECT = (NativeMethods.RECT)m.GetLParam(typeof(NativeMethods.RECT));
		rECT.top += 5;
		rECT.left += 5;
		rECT.right -= 5;
		rECT.bottom -= BottomBorderHeight;
		Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: false);
		m.Result = IntPtr.Zero;
	}
}
