using System;
using System.Drawing;
using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework;

public sealed class Win32Helper
{
	public struct TRIVERTEX
	{
		private int _x;

		private int _y;

		private ushort _red;

		private ushort _green;

		private ushort _blue;

		private ushort _alpha;

		public int X
		{
			get
			{
				return _x;
			}
			set
			{
				_x = value;
			}
		}

		public int Y
		{
			get
			{
				return _y;
			}
			set
			{
				_y = value;
			}
		}

		public ushort Red
		{
			get
			{
				return _red;
			}
			set
			{
				_red = value;
			}
		}

		public ushort Green
		{
			get
			{
				return _green;
			}
			set
			{
				_green = value;
			}
		}

		public ushort Blue
		{
			get
			{
				return _blue;
			}
			set
			{
				_blue = value;
			}
		}

		public ushort Alpha
		{
			get
			{
				return _alpha;
			}
			set
			{
				_alpha = value;
			}
		}

		public TRIVERTEX(int x, int y, Color color)
			: this(x, y, color.R, color.G, color.B, color.A)
		{
		}

		public TRIVERTEX(int x, int y, ushort red, ushort green, ushort blue, ushort alpha)
		{
			_x = x;
			_y = y;
			_red = (ushort)(red << 8);
			_green = (ushort)(green << 8);
			_blue = (ushort)(blue << 8);
			_alpha = (ushort)(alpha << 8);
		}
	}

	public struct GRADIENT_RECT
	{
		private uint _upperLeft;

		private uint _lowerRight;

		public uint UpperLeft
		{
			get
			{
				return _upperLeft;
			}
			set
			{
				_upperLeft = value;
			}
		}

		public uint LowerRight
		{
			get
			{
				return _lowerRight;
			}
			set
			{
				_lowerRight = value;
			}
		}

		public GRADIENT_RECT(uint ul, uint lr)
		{
			_upperLeft = ul;
			_lowerRight = lr;
		}
	}

	public struct GRADIENT_TRIANGLE
	{
		private uint _vertex1;

		private uint _vertex2;

		private uint _vertex3;

		public uint Vertex1
		{
			get
			{
				return _vertex1;
			}
			set
			{
				_vertex1 = value;
			}
		}

		public uint Vertex2
		{
			get
			{
				return _vertex2;
			}
			set
			{
				_vertex2 = value;
			}
		}

		public uint Vertex3
		{
			get
			{
				return _vertex3;
			}
			set
			{
				_vertex3 = value;
			}
		}

		public GRADIENT_TRIANGLE(uint v1, uint v2, uint v3)
		{
			_vertex1 = v1;
			_vertex2 = v2;
			_vertex3 = v3;
		}
	}

	[StructLayout(LayoutKind.Sequential)]
	public class NMHDR
	{
		private IntPtr _hwndFrom;

		private uint _idFrom;

		private uint _code;

		public IntPtr HwndFrom
		{
			get
			{
				return _hwndFrom;
			}
			set
			{
				_hwndFrom = value;
			}
		}

		public uint IdFrom
		{
			get
			{
				return _idFrom;
			}
			set
			{
				_idFrom = value;
			}
		}

		public uint Code
		{
			get
			{
				return _code;
			}
			set
			{
				_code = value;
			}
		}
	}

	public struct POINT
	{
		private int _X;

		private int _Y;

		public int X
		{
			get
			{
				return _X;
			}
			set
			{
				_X = value;
			}
		}

		public int Y
		{
			get
			{
				return _Y;
			}
			set
			{
				_Y = value;
			}
		}
	}

	public delegate int WndProc(IntPtr hwnd, uint msg, uint wParam, int lParam);

	public delegate int HookProc(int nCode, IntPtr wParam, IntPtr lParam);

	public enum WindowsMessages
	{
		WM_NOMESSAGE = 1,
		WM_NULL = 0,
		WM_CREATE = 1,
		WM_DESTROY = 2,
		WM_MOVE = 3,
		WM_SIZE = 5,
		WM_ACTIVATE = 6,
		WM_SETFOCUS = 7,
		WM_KILLFOCUS = 8,
		WM_ENABLE = 10,
		WM_SETREDRAW = 11,
		WM_SETTEXT = 12,
		WM_GETTEXT = 13,
		WM_GETTEXTLENGTH = 14,
		WM_PAINT = 15,
		WM_CLOSE = 16,
		WM_QUERYENDSESSION = 17,
		WM_QUIT = 18,
		WM_QUERYOPEN = 19,
		WM_ERASEBKGND = 20,
		WM_SYSCOLORCHANGE = 21,
		WM_ENDSESSION = 22,
		WM_SHOWWINDOW = 24,
		WM_WININICHANGE = 26,
		WM_SETTINGCHANGE = 26,
		WM_DEVMODECHANGE = 27,
		WM_ACTIVATEAPP = 28,
		WM_FONTCHANGE = 29,
		WM_TIMECHANGE = 30,
		WM_CANCELMODE = 31,
		WM_SETCURSOR = 32,
		WM_MOUSEACTIVATE = 33,
		WM_CHILDACTIVATE = 34,
		WM_QUEUESYNC = 35,
		WM_GETMINMAXINFO = 36,
		WM_PAINTICON = 38,
		WM_ICONERASEBKGND = 39,
		WM_NEXTDLGCTL = 40,
		WM_SPOOLERSTATUS = 42,
		WM_DRAWITEM = 43,
		WM_MEASUREITEM = 44,
		WM_DELETEITEM = 45,
		WM_VKEYTOITEM = 46,
		WM_CHARTOITEM = 47,
		WM_SETFONT = 48,
		WM_GETFONT = 49,
		WM_THEMECHANGED = 794,
		WM_SETHOTKEY = 50,
		WM_GETHOTKEY = 51,
		WM_QUERYDRAGICON = 55,
		WM_COMPAREITEM = 57,
		WM_GETOBJECT = 61,
		WM_COMPACTING = 65,
		WM_WINDOWPOSCHANGING = 70,
		WM_WINDOWPOSCHANGED = 71,
		WM_POWER = 72,
		WM_COPYDATA = 74,
		WM_CANCELJOURNAL = 75,
		WM_NOTIFY = 78,
		WM_INPUTLANGCHANGEREQUEST = 80,
		WM_INPUTLANGCHANGE = 81,
		WM_TCARD = 82,
		WM_HELP = 83,
		WM_USERCHANGED = 84,
		WM_NOTIFYFORMAT = 85,
		WM_CONTEXTMENU = 123,
		WM_STYLECHANGING = 124,
		WM_STYLECHANGED = 125,
		WM_DISPLAYCHANGE = 126,
		WM_GETICON = 127,
		WM_SETICON = 128,
		WM_NCCREATE = 129,
		WM_NCDESTROY = 130,
		WM_NCCALCSIZE = 131,
		WM_NCHITTEST = 132,
		WM_NCPAINT = 133,
		WM_NCACTIVATE = 134,
		WM_GETDLGCODE = 135,
		WM_SYNCPAINT = 136,
		WM_NCMOUSEMOVE = 160,
		WM_NCLBUTTONDOWN = 161,
		WM_NCLBUTTONUP = 162,
		WM_NCLBUTTONDBLCLK = 163,
		WM_NCRBUTTONDOWN = 164,
		WM_NCRBUTTONUP = 165,
		WM_NCRBUTTONDBLCLK = 166,
		WM_NCMBUTTONDOWN = 167,
		WM_NCMBUTTONUP = 168,
		WM_NCMBUTTONDBLCLK = 169,
		WM_KEYFIRST = 256,
		WM_KEYDOWN = 256,
		WM_KEYUP = 257,
		WM_CHAR = 258,
		WM_DEADCHAR = 259,
		WM_SYSKEYDOWN = 260,
		WM_SYSKEYUP = 261,
		WM_SYSCHAR = 262,
		WM_SYSDEADCHAR = 263,
		WM_KEYLAST = 264,
		WM_IME_STARTCOMPOSITION = 269,
		WM_IME_ENDCOMPOSITION = 270,
		WM_IME_COMPOSITION = 271,
		WM_IME_KEYLAST = 271,
		WM_INITDIALOG = 272,
		WM_COMMAND = 273,
		WM_SYSCOMMAND = 274,
		WM_TIMER = 275,
		WM_HSCROLL = 276,
		WM_VSCROLL = 277,
		WM_INITMENU = 278,
		WM_INITMENUPOPUP = 279,
		WM_MENUSELECT = 287,
		WM_MENUCHAR = 288,
		WM_ENTERIDLE = 289,
		WM_MENURBUTTONUP = 290,
		WM_MENUDRAG = 291,
		WM_MENUGETOBJECT = 292,
		WM_UNINITMENUPOPUP = 293,
		WM_MENUCOMMAND = 294,
		WM_CTLCOLORMSGBOX = 306,
		WM_CTLCOLOREDIT = 307,
		WM_CTLCOLORLISTBOX = 308,
		WM_CTLCOLORBTN = 309,
		WM_CTLCOLORDLG = 310,
		WM_CTLCOLORSCROLLBAR = 311,
		WM_CTLCOLORSTATIC = 312,
		WM_MOUSEFIRST = 512,
		WM_MOUSEMOVE = 512,
		WM_LBUTTONDOWN = 513,
		WM_LBUTTONUP = 514,
		WM_LBUTTONDBLCLK = 515,
		WM_RBUTTONDOWN = 516,
		WM_RBUTTONUP = 517,
		WM_RBUTTONDBLCLK = 518,
		WM_MBUTTONDOWN = 519,
		WM_MBUTTONUP = 520,
		WM_MBUTTONDBLCLK = 521,
		WM_MOUSEWHEEL = 522,
		WM_PARENTNOTIFY = 528,
		WM_ENTERMENULOOP = 529,
		WM_EXITMENULOOP = 530,
		WM_NEXTMENU = 531,
		WM_SIZING = 532,
		WM_CAPTURECHANGED = 533,
		WM_MOVING = 534,
		WM_DEVICECHANGE = 537,
		WM_MDICREATE = 544,
		WM_MDIDESTROY = 545,
		WM_MDIACTIVATE = 546,
		WM_MDIRESTORE = 547,
		WM_MDINEXT = 548,
		WM_MDIMAXIMIZE = 549,
		WM_MDITILE = 550,
		WM_MDICASCADE = 551,
		WM_MDIICONARRANGE = 552,
		WM_MDIGETACTIVE = 553,
		WM_MDISETMENU = 560,
		WM_ENTERSIZEMOVE = 561,
		WM_EXITSIZEMOVE = 562,
		WM_DROPFILES = 563,
		WM_MDIREFRESHMENU = 564,
		WM_IME_SETCONTEXT = 641,
		WM_IME_NOTIFY = 642,
		WM_IME_CONTROL = 643,
		WM_IME_COMPOSITIONFULL = 644,
		WM_IME_SELECT = 645,
		WM_IME_CHAR = 646,
		WM_IME_REQUEST = 648,
		WM_IME_KEYDOWN = 656,
		WM_IME_KEYUP = 657,
		WM_MOUSEHOVER = 673,
		WM_MOUSELEAVE = 675,
		WM_CUT = 768,
		WM_COPY = 769,
		WM_PASTE = 770,
		WM_CLEAR = 771,
		WM_UNDO = 772,
		WM_RENDERFORMAT = 773,
		WM_RENDERALLFORMATS = 774,
		WM_DESTROYCLIPBOARD = 775,
		WM_DRAWCLIPBOARD = 776,
		WM_PAINTCLIPBOARD = 777,
		WM_VSCROLLCLIPBOARD = 778,
		WM_SIZECLIPBOARD = 779,
		WM_ASKCBFORMATNAME = 780,
		WM_CHANGECBCHAIN = 781,
		WM_HSCROLLCLIPBOARD = 782,
		WM_QUERYNEWPALETTE = 783,
		WM_PALETTEISCHANGING = 784,
		WM_PALETTECHANGED = 785,
		WM_HOTKEY = 786,
		WM_PRINT = 791,
		WM_PRINTCLIENT = 792,
		WM_HANDHELDFIRST = 856,
		WM_HANDHELDLAST = 863,
		WM_AFXFIRST = 864,
		WM_AFXLAST = 895,
		WM_PENWINFIRST = 896,
		WM_PENWINLAST = 911,
		WM_USER = 1024,
		WM_APP = 32768
	}

	public static class MouseMessages
	{
		public const uint NM_CLICK = 4294967294u;

		public const uint NM_DBLCLK = 4294967293u;

		public const uint NM_RCLICK = 4294967291u;

		public const uint NM_RDBLCLK = 4294967290u;
	}

	public struct DLLVersionInfo
	{
		public int cbSize;

		public int dwMajorVersion;

		public int dwMinorVersion;

		public int dwBuildNumber;

		public int dwPlatformID;
	}

	public static class ThemeMessages
	{
		public const int S_OK = 0;

		public const int EP_EDITTEXT = 1;

		public const int ETS_DISABLED = 4;

		public const int ETS_NORMAL = 1;

		public const int ETS_READONLY = 6;

		public const int WS_EX_CLIENTEDGE = 512;

		public const int WVR_HREDRAW = 256;

		public const int WVR_VREDRAW = 512;

		public const int WVR_REDRAW = 768;
	}

	public struct NCCALCSIZE_PARAMS
	{
		public RECT rgrc0;

		public RECT rgrc1;

		public RECT rgrc2;

		public IntPtr lppos;
	}

	[Serializable]
	public struct RECT
	{
		public int Left;

		public int Top;

		public int Right;

		public int Bottom;

		public int Height => Bottom - Top + 1;

		public int Width => Right - Left + 1;

		public Size Size => new Size(Width, Height);

		public Point Location => new Point(Left, Top);

		public RECT(int left_, int top_, int right_, int bottom_)
		{
			Left = left_;
			Top = top_;
			Right = right_;
			Bottom = bottom_;
		}

		public Rectangle ToRectangle()
		{
			return Rectangle.FromLTRB(Left, Top, Right, Bottom);
		}

		public static RECT FromRectangle(Rectangle rectangle)
		{
			return new RECT(rectangle.Left, rectangle.Top, rectangle.Right, rectangle.Bottom);
		}

		public void Inflate(int width, int height)
		{
			Left -= width;
			Top -= height;
			Right += width;
			Bottom += height;
		}

		public override int GetHashCode()
		{
			return Left ^ ((Top << 13) | (Top >> 19)) ^ ((Width << 26) | (Width >> 6)) ^ ((Height << 7) | (Height >> 25));
		}

		public static implicit operator Rectangle(RECT rect)
		{
			return Rectangle.FromLTRB(rect.Left, rect.Top, rect.Right, rect.Bottom);
		}

		public static implicit operator RECT(Rectangle rect)
		{
			return new RECT(rect.Left, rect.Top, rect.Right, rect.Bottom);
		}
	}

	public const int GRADIENT_FILL_RECT_H = 0;

	public const int GRADIENT_FILL_RECT_V = 1;

	public const int GRADIENT_FILL_TRIANGLE = 2;

	public const uint SB_HORZ = 0u;

	public const uint SB_VERT = 1u;

	public const uint SB_CTL = 2u;

	public const uint SB_BOTH = 3u;

	public const int GWL_WNDPROC = -4;

	[DllImport("user32.dll", SetLastError = true)]
	public static extern bool GradientFill(IntPtr hdc, TRIVERTEX[] pVertex, uint dwNumVertex, GRADIENT_RECT[] pMesh, uint dwNumMesh, uint dwMode);

	[DllImport("kernel32.dll")]
	public static extern int GetLastError();

	[DllImport("user32.dll")]
	public static extern bool ShowScrollBar(IntPtr hWnd, int wBar, bool bShow);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int GetSystemMetrics(int code);

	[DllImport("user32.dll")]
	public static extern IntPtr SetWindowLong(IntPtr hwnd, int nIndex, IntPtr dwNewLong);

	[DllImport("user32.dll")]
	public static extern int CallWindowProc(IntPtr lpPrevWndFunc, IntPtr hwnd, uint msg, uint wParam, int lParam);

	[DllImport("user32.dll")]
	public static extern int DefWindowProc(IntPtr hwnd, uint msg, uint wParam, int lParam);

	[DllImport("user32.dll")]
	public static extern int SendMessage(IntPtr hwnd, uint msg, uint wParam, ref WinUser.TVHITTESTINFO lParam);

	[DllImport("user32.dll")]
	public static extern uint GetMessagePos();

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool ValidateRect(IntPtr handle, ref RECT rect);

	[DllImport("user32.dll")]
	public static extern IntPtr GetDC(IntPtr hwnd);

	[DllImport("user32.dll")]
	public static extern IntPtr GetWindowDC(IntPtr hWnd);

	[DllImport("user32.dll")]
	public static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);

	[DllImport("user32.dll")]
	public static extern bool GetWindowRect(IntPtr hWnd, out RECT lpRect);

	[DllImport("gdi32.dll")]
	public static extern int ExcludeClipRect(IntPtr hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);

	[DllImport("user32.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
	public static extern short GetAsyncKeyState(int nKey);

	[DllImport("user32.dll")]
	public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, long msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32", CharSet = CharSet.Auto, EntryPoint = "SendMessage")]
	public static extern IntPtr SendMessageInt(IntPtr hWnd, int msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll")]
	public static extern bool UpdateWindow(IntPtr hWnd);

	[DllImport("user32.dll")]
	public static extern IntPtr GetParent(IntPtr hWnd);

	[DllImport("user32.dll")]
	private static extern int FrameRect(IntPtr hdc, IntPtr lprc, IntPtr hbr);

	[DllImport("user32.dll")]
	public static extern int SetWindowLong(IntPtr hWnd, int index, int value);

	[DllImport("user32.dll")]
	public static extern int GetWindowLong(IntPtr hWnd, int index);

	[DllImport("user32.dll")]
	public static extern bool LockWindowUpdate(IntPtr hWnd);

	[DllImport("UxTheme.dll", CharSet = CharSet.Auto)]
	public static extern bool IsAppThemed();

	[DllImport("UxTheme.dll", CharSet = CharSet.Auto)]
	public static extern bool IsThemeActive();

	[DllImport("comctl32.dll", CharSet = CharSet.Auto)]
	public static extern int DllGetVersion(ref DLLVersionInfo version);

	[DllImport("uxtheme.dll", CharSet = CharSet.Unicode, ExactSpelling = true)]
	public static extern IntPtr OpenThemeData(IntPtr hWnd, string classList);

	[DllImport("uxtheme.dll", ExactSpelling = true)]
	public static extern int CloseThemeData(IntPtr hTheme);

	[DllImport("uxtheme", ExactSpelling = true)]
	public static extern int DrawThemeBackground(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, ref RECT pRect, IntPtr pClipRect);

	[DllImport("uxtheme", ExactSpelling = true)]
	public static extern int IsThemeBackgroundPartiallyTransparent(IntPtr hTheme, int iPartId, int iStateId);

	[DllImport("uxtheme", ExactSpelling = true)]
	public static extern int GetThemeBackgroundContentRect(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, ref RECT pBoundingRect, out RECT pContentRect);

	[DllImport("uxtheme", ExactSpelling = true)]
	public static extern int DrawThemeParentBackground(IntPtr hWnd, IntPtr hdc, ref RECT pRect);

	[DllImport("uxtheme", ExactSpelling = true)]
	public static extern int DrawThemeBackground(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, ref RECT pRect, ref RECT pClipRect);

	[DllImport("user32.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
	public static extern int SetWindowsHookEx(int idHook, HookProc lpfn, IntPtr hInstance, int threadId);

	[DllImport("user32.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
	public static extern bool UnhookWindowsHookEx(int idHook);

	[DllImport("user32.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Auto)]
	public static extern int CallNextHookEx(int idHook, int nCode, IntPtr wParam, IntPtr lParam);

	public static Point LParamToPoint(int lParam)
	{
		return new Point(lParam & 0xFFFF, (lParam & -65536) >>> 16);
	}
}
