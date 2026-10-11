using System;
using System.Drawing;
using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework;

public sealed class WinUser
{
	public enum VK
	{
		SHIFT = 0x10
	}

	public enum WH
	{
		CALLWNDPROC = 4,
		CBT = 5,
		MOUSE = 7,
		CALLWNDPROCRET = 12
	}

	public enum HCBT
	{
		MOVESIZE = 0,
		MINMAX = 1,
		ACTIVATE = 5
	}

	public enum WA
	{
		INACTIVE,
		ACTIVE,
		CLICKACTIVE
	}

	public enum SWP
	{
		NOSIZE = 1,
		NOMOVE = 2,
		NOZORDER = 4,
		NOACTIVATE = 0x10,
		FRAMECHANGED = 0x20
	}

	public enum GWL
	{
		STYLE = -16,
		EXSTYLE = -20
	}

	public enum WS
	{
		CHILD = 1073741824,
		VISIBLE = 268435456,
		BORDER = 8388608
	}

	public enum SB
	{
		NONE = -1,
		LINEUP,
		LINEDOWN,
		PAGEUP,
		PAGEDOWN,
		THUMBPOSITION,
		THUMBTRACK,
		TOP,
		BOTTOM,
		ENDSCROLL
	}

	public enum SBConst
	{
		HORZ,
		VERT,
		CTL,
		BOTH
	}

	public enum ESB
	{
		ESB_DISABLE_BOTH = 3,
		ESB_ENABLE_BOTH = 0
	}

	public enum MK
	{
		LBUTTON = 1,
		RBUTTON = 2,
		SHIFT = 4,
		CONTROL = 8,
		MBUTTON = 0x10,
		XBUTTON1 = 0x20,
		XBUTTON2 = 0x40
	}

	public enum SIF
	{
		RANGE = 1,
		PAGE = 2,
		POS = 4,
		DISABLENOSCROLL = 8,
		TRACKPOS = 16,
		ALL = 23
	}

	public enum SW
	{
		SCROLLCHILDREN = 1,
		INVALIDATE = 2,
		ERASE = 4,
		SMOOTHSCROLL = 0x10
	}

	public enum HWND
	{
		TOP = 0,
		BOTTOM = 1,
		TOPMOST = -1,
		NOTOPMOST = -2
	}

	[StructLayout(LayoutKind.Sequential)]
	public class POINT
	{
		public int x;

		public int y;
	}

	public struct RECT
	{
		private int left;

		private int top;

		private int right;

		private int bottom;

		public Rectangle ToRectangle()
		{
			return new Rectangle(left, top, right - left, bottom - top);
		}

		public void FromRectangle(Rectangle rect)
		{
			left = rect.Left;
			right = rect.Right;
			top = rect.Top;
			bottom = rect.Bottom;
		}

		public static implicit operator Rectangle(RECT rc)
		{
			return rc.ToRectangle();
		}

		public static implicit operator RECT(Rectangle rect)
		{
			RECT result = default(RECT);
			result.FromRectangle(rect);
			return result;
		}
	}

	[StructLayout(LayoutKind.Sequential)]
	public class CallWindowHookStruct
	{
		public IntPtr lParam;

		public IntPtr wParam;

		public int message;

		public int hwnd;
	}

	[StructLayout(LayoutKind.Sequential)]
	public class MouseHookStruct
	{
		public POINT pt;

		public int hwnd;

		public int wHitTestCode;

		public int dwExtraInfo;
	}

	[StructLayout(LayoutKind.Sequential)]
	public class WindowPosStruct
	{
		public int hwnd;

		public int hwndInsertAfter;

		public int x;

		public int y;

		public int cx;

		public int cy;

		public int flags;
	}

	[StructLayout(LayoutKind.Sequential)]
	public class CbtAcitvateStruct
	{
		public bool fMouse;

		public IntPtr hWndActive;
	}

	[StructLayout(LayoutKind.Sequential)]
	public class LOGBRUSH
	{
		public int style;

		public int color;

		public int hatch;
	}

	public struct TVHITTESTINFO
	{
		public POINT pt;

		public uint flags;

		public IntPtr hItem;
	}
}
