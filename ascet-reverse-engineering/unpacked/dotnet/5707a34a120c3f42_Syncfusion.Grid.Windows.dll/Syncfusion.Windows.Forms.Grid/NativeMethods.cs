using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Security;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[SuppressUnmanagedCodeSecurity]
[DocumentationExclude]
[ComVisible(false)]
internal class NativeMethods
{
	internal struct RECT
	{
		public int left;

		public int top;

		public int right;

		public int bottom;

		internal int Width => right - left;

		internal int Height => bottom - top;

		public RECT(Rectangle rect)
		{
			bottom = rect.Bottom;
			left = rect.Left;
			right = rect.Right;
			top = rect.Top;
		}

		public RECT(int left, int top, int right, int bottom)
		{
			this.bottom = bottom;
			this.left = left;
			this.right = right;
			this.top = top;
		}

		public static RECT FromXYWH(int x, int y, int width, int height)
		{
			return new RECT(x, y, x + width, y + height);
		}

		public override string ToString()
		{
			return "Left = " + left + " Top " + top + " Right = " + right + " Bottom = " + bottom;
		}
	}

	[StructLayout(LayoutKind.Sequential)]
	[ComVisible(true)]
	[DocumentationExclude]
	internal class TOOLINFO_T
	{
		public int cbSize;

		public int uFlags;

		public IntPtr hWnd = IntPtr.Zero;

		public int uId;

		public RECT rect = default(RECT);

		public IntPtr hinst = IntPtr.Zero;

		[MarshalAs(UnmanagedType.LPTStr)]
		public string lpszText;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class IMAGELISTDRAWPARAMS
	{
		public int cbSize = Marshal.SizeOf(typeof(IMAGELISTDRAWPARAMS));

		public IntPtr himl = IntPtr.Zero;

		public int i;

		public IntPtr hdcDst = IntPtr.Zero;

		public int x;

		public int y;

		public int cx;

		public int cy;

		public int xBitmap;

		public int yBitmap;

		public int rgbBk;

		public int rgbFg;

		public int fStyle;

		public int dwRop;
	}

	[StructLayout(LayoutKind.Sequential, Pack = 1)]
	[ComVisible(true)]
	[DocumentationExclude]
	internal class INITCOMMONCONTROLSEX
	{
		public int dwSize = Marshal.SizeOf(typeof(INITCOMMONCONTROLSEX));

		public int dwICC;
	}

	internal struct POINT
	{
		public int X;

		public int Y;

		public POINT(int x, int y)
		{
			X = x;
			Y = y;
		}
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	internal class CPWSTRUCT
	{
		public IntPtr lParam = IntPtr.Zero;

		public int wParam;

		public int message;

		public IntPtr hWnd = IntPtr.Zero;
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	internal class CPWRETSTRUCT
	{
		public int lResult;

		public int lParam;

		public int wParam;

		public int message;

		public IntPtr hWnd = IntPtr.Zero;
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	internal class MSG
	{
		public IntPtr hwnd = IntPtr.Zero;

		public int message;

		public int wParam;

		public int lParam;

		public int time;

		public int pt_x;

		public int pt_y;
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	internal class MOUSEHOOKSTRUCT
	{
		public int pt_x;

		public int pt_y;

		public IntPtr hwnd = IntPtr.Zero;

		public int wHitTestCode;

		public int dwExtraInfo;
	}

	[DocumentationExclude]
	public delegate IntPtr HookProc(int nCode, int wParam, int lParam);

	internal struct SCROLLINFO
	{
		public int cbSize;

		public int fMask;

		public int nMin;

		public int nMax;

		public int nPage;

		public int nPos;

		public int nTrackPos;
	}

	internal struct LOGBRUSH
	{
		public int lbStyle;

		public int lbColor;

		public int lbHatch;
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	internal class FORMATRANGE
	{
		public IntPtr hdc = IntPtr.Zero;

		public IntPtr hdcTarget = IntPtr.Zero;

		public RECT rc = default(RECT);

		public RECT rcPage = default(RECT);

		public CHARRANGE chrg = default(CHARRANGE);
	}

	[DocumentationExclude]
	internal struct CHARRANGE
	{
		public int cpMin;

		public int cpMax;
	}

	[DocumentationExclude]
	internal struct SIZE
	{
		public int cx;

		public int cy;
	}

	internal struct TEXTMETRICA
	{
		internal int tmHeight;

		internal int tmAscent;

		internal int tmDescent;

		internal int tmInternalLeading;

		internal int tmExternalLeading;

		internal int tmAveCharWidth;

		internal int tmMaxCharWidth;

		internal int tmWeight;

		internal int tmOverhang;

		internal int tmDigitizedAspectX;

		internal int tmDigitizedAspectY;

		internal byte tmFirstChar;

		internal byte tmLastChar;

		internal byte tmDefaultChar;

		internal byte tmBreakChar;

		internal byte tmItalic;

		internal byte tmUnderlined;

		internal byte tmStruckOut;

		internal byte tmPitchAndFamily;

		internal byte tmCharSet;
	}

	internal struct TEXTMETRICW
	{
		internal int tmHeight;

		internal int tmAscent;

		internal int tmDescent;

		internal int tmInternalLeading;

		internal int tmExternalLeading;

		internal int tmAveCharWidth;

		internal int tmMaxCharWidth;

		internal int tmWeight;

		internal int tmOverhang;

		internal int tmDigitizedAspectX;

		internal int tmDigitizedAspectY;

		internal ushort tmFirstChar;

		internal ushort tmLastChar;

		internal ushort tmDefaultChar;

		internal ushort tmBreakChar;

		internal byte tmItalic;

		internal byte tmUnderlined;

		internal byte tmStruckOut;

		internal byte tmPitchAndFamily;

		internal byte tmCharSet;
	}

	[DocumentationExclude]
	internal struct LOGFONT
	{
		internal int lfHeight;

		internal int lfWidth;

		internal int lfEscapement;

		internal int lfOrientation;

		internal int lfWeight;

		internal byte lfItalic;

		internal byte lfUnderline;

		internal byte lfStrikeOut;

		internal byte lfCharSet;

		internal byte lfOutPrecision;

		internal byte lfClipPrecision;

		internal byte lfQuality;

		internal byte lfPitchAndFamily;

		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
		internal string lfFaceName;
	}

	public class RegionCracker
	{
		public static RECT[] CrackRegionData(IntPtr hRgn)
		{
			RECT[] result = new RECT[0];
			try
			{
				int regionData = GetRegionData(hRgn, 0, null);
				byte[] array = new byte[regionData];
				if (regionData != GetRegionData(hRgn, regionData, array))
				{
					throw new InvalidOperationException("FailedToGetRegionInfo");
				}
				int cbHeader = ToInt(array, 0);
				int nCount = ToInt(array, 8);
				result = GetRects(array, cbHeader, nCount);
			}
			catch (Exception)
			{
			}
			return result;
		}

		private static RECT[] GetRects(byte[] buffer, int cbHeader, int nCount)
		{
			RECT[] array = new RECT[nCount];
			for (int i = 0; i < nCount; i++)
			{
				int left = ToInt(buffer, cbHeader);
				int top = ToInt(buffer, cbHeader + 4);
				int right = ToInt(buffer, cbHeader + 8);
				int bottom = ToInt(buffer, cbHeader + 12);
				ref RECT reference = ref array[i];
				reference = new RECT(left, top, right, bottom);
				cbHeader += 16;
			}
			return array;
		}

		private static int ToInt(byte[] buffer, int offset)
		{
			int num = buffer[offset];
			num |= buffer[offset + 1] << 8;
			num |= buffer[offset + 2] << 16;
			return num | (buffer[offset + 3] << 24);
		}
	}

	internal struct tagCOMPOSITIONFORM
	{
		public long dwStyle;

		public POINT ptCurrentPos;

		public RECT rcArea;
	}

	[DocumentationExclude]
	internal struct COMPOSITIONFORM
	{
		public int dwStyle;

		public POINT ptCurrentPos;

		public RECT rcArea;
	}

	public struct PAINTSTRUCT
	{
		public IntPtr hdc;

		public bool fErase;

		public int rcPaint_left;

		public int rcPaint_top;

		public int rcPaint_right;

		public int rcPaint_bottom;

		public bool fRestore;

		public bool fIncUpdate;

		public int reserved1;

		public int reserved2;

		public int reserved3;

		public int reserved4;

		public int reserved5;

		public int reserved6;

		public int reserved7;

		public int reserved8;
	}

	public const int HTCLIENT = 1;

	public const int SM_CXVSCROLL = 2;

	public const int SM_CYHSCROLL = 3;

	public const int HWND_TOP = 0;

	public const int HWND_BOTTOM = 1;

	public const int HWND_TOPMOST = -1;

	public const int HWND_NOTOPMOST = -2;

	public const int WS_HSCROLL = 1048576;

	public const int WS_VSCROLL = 2097152;

	public const int WM_REFLECT = 8192;

	public const int EM_GETSEL = 176;

	public const int EM_SETSEL = 177;

	public const int EM_GETRECT = 178;

	public const int EM_SETRECT = 179;

	public const int EM_SETRECTNP = 180;

	public const int EM_SCROLL = 181;

	public const int EM_LINESCROLL = 182;

	public const int EM_SCROLLCARET = 183;

	public const int EM_GETMODIFY = 184;

	public const int EM_SETMODIFY = 185;

	public const int EM_GETLINECOUNT = 186;

	public const int EM_LINEINDEX = 187;

	public const int EM_SETHANDLE = 188;

	public const int EM_GETHANDLE = 189;

	public const int EM_GETTHUMB = 190;

	public const int EM_LINELENGTH = 193;

	public const int EM_REPLACESEL = 194;

	public const int EM_GETLINE = 196;

	public const int EM_LIMITTEXT = 197;

	public const int EM_CANUNDO = 198;

	public const int EM_UNDO = 199;

	public const int EM_FMTLINES = 200;

	public const int EM_LINEFROMCHAR = 201;

	public const int EM_SETTABSTOPS = 203;

	public const int EM_SETPASSWORDCHAR = 204;

	public const int EM_EMPTYUNDOBUFFER = 205;

	public const int EM_GETFIRSTVISIBLELINE = 206;

	public const int EM_SETREADONLY = 207;

	public const int EM_SETWORDBREAKPROC = 208;

	public const int EM_GETWORDBREAKPROC = 209;

	public const int EM_GETPASSWORDCHAR = 210;

	public const int EM_SETMARGINS = 211;

	public const int EM_GETMARGINS = 212;

	public const int EM_SETLIMITTEXT = 197;

	public const int EM_GETLIMITTEXT = 213;

	public const int EM_POSFROMCHAR = 214;

	public const int EM_CHARFROMPOS = 215;

	public const int EC_LEFTMARGIN = 1;

	public const int EC_RIGHTMARGIN = 2;

	public const int EC_USEFONTINFO = 65535;

	public const int WM_ACTIVATE = 6;

	public const int WM_ACTIVATEAPP = 28;

	public const int WM_AFXFIRST = 864;

	public const int WM_AFXLAST = 895;

	public const int WM_APP = 32768;

	public const int WM_ASKCBFORMATNAME = 780;

	public const int WM_CANCELJOURNAL = 75;

	public const int WM_CANCELMODE = 31;

	public const int WM_CAPTURECHANGED = 533;

	public const int WM_CHANGECBCHAIN = 781;

	public const int WM_CHANGEUISTATE = 295;

	public const int WM_CHAR = 258;

	public const int WM_CHARTOITEM = 47;

	public const int WM_CHILDACTIVATE = 34;

	public const int WM_CHOOSEFONT_GETLOGFONT = 1025;

	public const int WM_CLEAR = 771;

	public const int WM_CLOSE = 16;

	public const int WM_COMMAND = 273;

	public const int WM_COMMNOTIFY = 68;

	public const int WM_COMPACTING = 65;

	public const int WM_COMPAREITEM = 57;

	public const int WM_CONTEXTMENU = 123;

	public const int WM_COPY = 769;

	public const int WM_COPYDATA = 74;

	public const int WM_CREATE = 1;

	public const int WM_CTLCOLORBTN = 309;

	public const int WM_CTLCOLORDLG = 310;

	public const int WM_CTLCOLOREDIT = 307;

	public const int WM_CTLCOLORLISTBOX = 308;

	public const int WM_CTLCOLORMSGBOX = 306;

	public const int WM_CTLCOLORSCROLLBAR = 311;

	public const int WM_CTLCOLORSTATIC = 312;

	public const int WM_CUT = 768;

	public const int WM_DDE_ACK = 996;

	public const int WM_DDE_ADVISE = 994;

	public const int WM_DDE_DATA = 997;

	public const int WM_DDE_EXECUTE = 1000;

	public const int WM_DDE_FIRST = 992;

	public const int WM_DDE_INITIATE = 992;

	public const int WM_DDE_LAST = 1000;

	public const int WM_DDE_POKE = 999;

	public const int WM_DDE_REQUEST = 998;

	public const int WM_DDE_TERMINATE = 993;

	public const int WM_DDE_UNADVISE = 995;

	public const int WM_DEADCHAR = 259;

	public const int WM_DELETEITEM = 45;

	public const int WM_DESTROY = 2;

	public const int WM_DESTROYCLIPBOARD = 775;

	public const int WM_DEVICECHANGE = 537;

	public const int WM_DEVMODECHANGE = 27;

	public const int WM_DISPLAYCHANGE = 126;

	public const int WM_DRAWCLIPBOARD = 776;

	public const int WM_DRAWITEM = 43;

	public const int WM_DROPFILES = 563;

	public const int WM_ENABLE = 10;

	public const int WM_ENDSESSION = 22;

	public const int WM_ENTERIDLE = 289;

	public const int WM_ENTERMENULOOP = 529;

	public const int WM_ENTERSIZEMOVE = 561;

	public const int WM_ERASEBKGND = 20;

	public const int WM_EXITMENULOOP = 530;

	public const int WM_EXITSIZEMOVE = 562;

	public const int WM_FONTCHANGE = 29;

	public const int WM_GETDLGCODE = 135;

	public const int WM_GETFONT = 49;

	public const int WM_GETHOTKEY = 51;

	public const int WM_GETICON = 127;

	public const int WM_GETMINMAXINFO = 36;

	public const int WM_GETOBJECT = 61;

	public const int WM_GETTEXT = 13;

	public const int WM_GETTEXTLENGTH = 14;

	public const int WM_HANDHELDFIRST = 856;

	public const int WM_HANDHELDLAST = 863;

	public const int WM_HELP = 83;

	public const int WM_HOTKEY = 786;

	public const int WM_HSCROLL = 276;

	public const int WM_HSCROLLCLIPBOARD = 782;

	public const int WM_ICONERASEBKGND = 39;

	public const int WM_IME_CHAR = 646;

	public const int WM_IME_COMPOSITION = 271;

	public const int WM_IME_COMPOSITIONFULL = 644;

	public const int WM_IME_CONTROL = 643;

	public const int WM_IME_ENDCOMPOSITION = 270;

	public const int WM_IME_KEYDOWN = 656;

	public const int WM_IME_KEYLAST = 271;

	public const int WM_IME_KEYUP = 657;

	public const int WM_IME_NOTIFY = 642;

	public const int WM_IME_SELECT = 645;

	public const int WM_IME_SETCONTEXT = 641;

	public const int WM_IME_STARTCOMPOSITION = 269;

	public const int WM_INITDIALOG = 272;

	public const int WM_INITMENU = 278;

	public const int WM_INITMENUPOPUP = 279;

	public const int WM_INPUTLANGCHANGE = 81;

	public const int WM_INPUTLANGCHANGEREQUEST = 80;

	public const int WM_KEYDOWN = 256;

	public const int WM_KEYFIRST = 256;

	public const int WM_KEYLAST = 264;

	public const int WM_KEYUP = 257;

	public const int WM_KILLFOCUS = 8;

	public const int WM_LBUTTONDBLCLK = 515;

	public const int WM_LBUTTONDOWN = 513;

	public const int WM_LBUTTONUP = 514;

	public const int WM_MBUTTONDBLCLK = 521;

	public const int WM_MBUTTONDOWN = 519;

	public const int WM_MBUTTONUP = 520;

	public const int WM_MDIACTIVATE = 546;

	public const int WM_MDICASCADE = 551;

	public const int WM_MDICREATE = 544;

	public const int WM_MDIDESTROY = 545;

	public const int WM_MDIGETACTIVE = 553;

	public const int WM_MDIICONARRANGE = 552;

	public const int WM_MDIMAXIMIZE = 549;

	public const int WM_MDINEXT = 548;

	public const int WM_MDIREFRESHMENU = 564;

	public const int WM_MDIRESTORE = 547;

	public const int WM_MDISETMENU = 560;

	public const int WM_MDITILE = 550;

	public const int WM_MEASUREITEM = 44;

	public const int WM_MENUCHAR = 288;

	public const int WM_MENUSELECT = 287;

	public const int WM_MOUSEACTIVATE = 33;

	public const int WM_MOUSEFIRST = 512;

	public const int WM_MOUSEHOVER = 673;

	public const int WM_MOUSELAST = 522;

	public const int WM_MOUSELEAVE = 675;

	public const int WM_MOUSEMOVE = 512;

	public const int WM_MOUSEWHEEL = 522;

	public const int WM_MOVE = 3;

	public const int WM_MOVING = 534;

	public const int WM_NCACTIVATE = 134;

	public const int WM_NCCALCSIZE = 131;

	public const int WM_NCCREATE = 129;

	public const int WM_NCDESTROY = 130;

	public const int WM_NCHITTEST = 132;

	public const int WM_NCLBUTTONDBLCLK = 163;

	public const int WM_NCLBUTTONDOWN = 161;

	public const int WM_NCLBUTTONUP = 162;

	public const int WM_NCMBUTTONDBLCLK = 169;

	public const int WM_NCMBUTTONDOWN = 167;

	public const int WM_NCMBUTTONUP = 168;

	public const int WM_NCMOUSEHOVER = 672;

	public const int WM_NCMOUSELEAVE = 674;

	public const int WM_NCMOUSEMOVE = 160;

	public const int WM_NCPAINT = 133;

	public const int WM_NCRBUTTONDBLCLK = 166;

	public const int WM_NCRBUTTONDOWN = 164;

	public const int WM_NCRBUTTONUP = 165;

	public const int WM_NEXTDLGCTL = 40;

	public const int WM_NEXTMENU = 531;

	public const int WM_NOTIFY = 78;

	public const int WM_NOTIFYFORMAT = 85;

	public const int WM_NULL = 0;

	public const int WM_PAINT = 15;

	public const int WM_PAINTCLIPBOARD = 777;

	public const int WM_PAINTICON = 38;

	public const int WM_PALETTECHANGED = 785;

	public const int WM_PALETTEISCHANGING = 784;

	public const int WM_PARENTNOTIFY = 528;

	public const int WM_PASTE = 770;

	public const int WM_PENWINFIRST = 896;

	public const int WM_PENWINLAST = 911;

	public const int WM_POWER = 72;

	public const int WM_POWERBROADCAST = 536;

	public const int WM_PRINT = 791;

	public const int WM_PRINTCLIENT = 792;

	public const int WM_PSD_ENVSTAMPRECT = 1029;

	public const int WM_PSD_FULLPAGERECT = 1025;

	public const int WM_PSD_GREEKTEXTRECT = 1028;

	public const int WM_PSD_MARGINRECT = 1027;

	public const int WM_PSD_MINMARGINRECT = 1026;

	public const int WM_PSD_PAGESETUPDLG = 1024;

	public const int WM_PSD_YAFULLPAGERECT = 1030;

	public const int WM_QUERYDRAGICON = 55;

	public const int WM_QUERYENDSESSION = 17;

	public const int WM_QUERYNEWPALETTE = 783;

	public const int WM_QUERYOPEN = 19;

	public const int WM_QUERYUISTATE = 297;

	public const int WM_QUEUESYNC = 35;

	public const int WM_QUIT = 18;

	public const int WM_RBUTTONDBLCLK = 518;

	public const int WM_RBUTTONDOWN = 516;

	public const int WM_RBUTTONUP = 517;

	public const int WM_RENDERALLFORMATS = 774;

	public const int WM_RENDERFORMAT = 773;

	public const int WM_SETCURSOR = 32;

	public const int WM_SETFOCUS = 7;

	public const int WM_SETFONT = 48;

	public const int WM_SETHOTKEY = 50;

	public const int WM_SETICON = 128;

	public const int WM_SETREDRAW = 11;

	public const int WM_SETTEXT = 12;

	public const int WM_SETTINGCHANGE = 26;

	public const int WM_SHOWWINDOW = 24;

	public const int WM_SIZE = 5;

	public const int WM_SIZECLIPBOARD = 779;

	public const int WM_SIZING = 532;

	public const int WM_SPOOLERSTATUS = 42;

	public const int WM_STYLECHANGED = 125;

	public const int WM_STYLECHANGING = 124;

	public const int WM_SYSCHAR = 262;

	public const int WM_SYSCOLORCHANGE = 21;

	public const int WM_SYSCOMMAND = 274;

	public const int WM_SYSDEADCHAR = 263;

	public const int WM_SYSKEYDOWN = 260;

	public const int WM_SYSKEYUP = 261;

	public const int WM_TCARD = 82;

	public const int WM_TIMECHANGE = 30;

	public const int WM_TIMER = 275;

	public const int WM_UNDO = 772;

	public const int WM_UPDATEUISTATE = 296;

	public const int WM_USER = 1024;

	public const int WM_USERCHANGED = 84;

	public const int WM_VKEYTOITEM = 46;

	public const int WM_VSCROLL = 277;

	public const int WM_VSCROLLCLIPBOARD = 778;

	public const int WM_WINDOWPOSCHANGED = 71;

	public const int WM_WINDOWPOSCHANGING = 70;

	public const int WM_WININICHANGE = 26;

	public const int SBM_ENABLE_ARROWS = 228;

	public const int SBM_GETPOS = 225;

	public const int SBM_GETRANGE = 227;

	public const int SBM_GETSCROLLINFO = 234;

	public const int SBM_SETPOS = 224;

	public const int SBM_SETRANGE = 226;

	public const int SBM_SETRANGEREDRAW = 230;

	public const int SBM_SETSCROLLINFO = 233;

	public const int SW_ERASE = 4;

	public const int SW_INVALIDATE = 2;

	public const int SW_SCROLLCHILDREN = 1;

	internal const int MK_LBUTTON = 1;

	internal const int MK_RBUTTON = 2;

	internal const int MK_SHIFT = 4;

	internal const int MK_CONTROL = 8;

	internal const int MK_MBUTTON = 16;

	public const int ETO_OPAQUE = 2;

	public const int ETO_CLIPPED = 4;

	public const int TRANSPARENT = 1;

	public const int OPAQUE = 2;

	public const int PATCOPY = 15728673;

	public const int PATINVERT = 5898313;

	public const int TA_NOUPDATECP = 0;

	public const int TA_UPDATECP = 1;

	public const int TA_LEFT = 0;

	public const int TA_RIGHT = 2;

	public const int TA_CENTER = 6;

	public const int TA_TOP = 0;

	public const int TA_BOTTOM = 8;

	public const int TA_BASELINE = 24;

	public const int DT_LEFT = 0;

	public const int DT_CENTER = 1;

	public const int DT_RIGHT = 2;

	public const int DT_VCENTER = 4;

	public const int DT_BOTTOM = 8;

	public const int DT_WORDBREAK = 16;

	public const int DT_SINGLELINE = 32;

	public const int DT_NOCLIP = 256;

	public const int DT_CALCRECT = 1024;

	public const int DT_NOPREFIX = 2048;

	public const int DT_EDITCONTROL = 8192;

	public const int DT_EXPANDTABS = 64;

	public const int DT_END_ELLIPSIS = 32768;

	public const int DT_RTLREADING = 131072;

	public const int DT_WORD_ELLIPSIS = 262144;

	public const int DT_PATH_ELLIPSIS = 16384;

	public const int CFS_DEFAULT = 0;

	public const int CFS_RECT = 1;

	public const int CFS_POINT = 2;

	public const int CFS_FORCE_POSITION = 32;

	public const int CFS_CANDIDATEPOS = 64;

	public const int CFS_EXCLUDE = 128;

	public const int RDW_INVALIDATE = 1;

	public const int RDW_INTERNALPAINT = 2;

	public const int RDW_ERASE = 4;

	public const int RDW_VALIDATE = 8;

	public const int RDW_NOINTERNALPAINT = 16;

	public const int RDW_NOERASE = 32;

	public const int RDW_NOCHILDREN = 64;

	public const int RDW_ALLCHILDREN = 128;

	public const int RDW_UPDATENOW = 256;

	public const int RDW_ERASENOW = 512;

	public const int RDW_FRAME = 1024;

	public const int RDW_NOFRAME = 2048;

	public static IntPtr NullIntPtr = (IntPtr)0;

	public static IntPtr InvalidIntPtr = (IntPtr)(-1);

	private NativeMethods()
	{
	}

	[DllImport("comctl32.dll")]
	public static extern IntPtr ImageList_Create(int cx, int cy, int flags, int cInitial, int cGrow);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_Destroy(IntPtr himl);

	[DllImport("comctl32.dll")]
	public static extern int ImageList_GetImageCount(IntPtr himl);

	[DllImport("comctl32.dll")]
	public static extern int ImageList_Add(IntPtr himl, IntPtr hbmImage, IntPtr hbmMask);

	[DllImport("comctl32.dll")]
	public static extern int ImageList_ReplaceIcon(IntPtr himl, int index, IntPtr hicon);

	[DllImport("comctl32.dll")]
	public static extern int ImageList_SetBkColor(IntPtr himl, int clrBk);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_Draw(IntPtr himl, int i, IntPtr hdcDst, int x, int y, int fStyle);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_Replace(IntPtr himl, int i, IntPtr hbmImage, IntPtr hbmMask);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_DrawEx(IntPtr himl, int i, IntPtr hdcDst, int x, int y, int dx, int dy, uint rgbBk, uint rgbFg, uint fStyle);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_DrawIndirect(IMAGELISTDRAWPARAMS pimldp);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_Remove(IntPtr himl, int i);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool UpdateWindow(IntPtr hWnd);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool EnableWindow(IntPtr hWnd, bool enable);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetDlgItemInt(IntPtr hWnd, int nIDDlgItem, bool[] err, bool signed);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool SetWindowPos(IntPtr hWnd, int hWndInsertAfter, int x, int y, int cx, int cy, int flags);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern int SendDlgItemMessage(IntPtr hDlg, int nIDDlgItem, int Msg, int wParam, int lParam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern int SendDlgItemMessage(IntPtr hDlg, int nIDDlgItem, int Msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr PostMessage(IntPtr hwnd, int msg, int wparam, int lparam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool PeekMessage(ref MSG msg, IntPtr hwnd, int msgMin, int msgMax, int remove);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetDlgItem(IntPtr hWnd, int nIDDlgItem);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetForegroundWindow();

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetParent(IntPtr hWnd);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int MsgWaitForMultipleObjects(int nCount, int pHandles, bool fWaitAll, int dwMilliseconds, int dwWakeMask);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetModuleHandle(string modName);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CallNextHookEx(IntPtr hhook, int code, IntPtr wparam, IntPtr lparam);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool UnhookWindowsHookEx(IntPtr hhook);

	[DllImport("user32")]
	public static extern int GetSystemMetrics(int nIndex);

	[DllImport("user32")]
	public static extern bool ScrollWindow(IntPtr hWnd, int nXAmount, int nYAmount, ref RECT rectScrollRegion, ref RECT rectClip);

	[DllImport("comctl32")]
	public static extern void InitCommonControls();

	[DllImport("comctl32")]
	public static extern bool InitCommonControlsEx(INITCOMMONCONTROLSEX icc);

	[DllImport("comctl32")]
	public static extern bool InitializeFlatSB(IntPtr hWnd);

	[DllImport("comctl32")]
	public static extern bool UninitializeFlatSB(IntPtr hWnd);

	[DllImport("comctl32")]
	public static extern int FlatSB_SetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si, bool redraw);

	[DllImport("comctl32")]
	public static extern bool FlatSB_GetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si);

	[DllImport("comctl32")]
	public static extern bool FlatSB_SetScrollProp(IntPtr hWnd, int index, int newValue, bool fRedraw);

	[DllImport("comctl32")]
	public static extern bool FlatSB_GetScrollProp(IntPtr hWnd, int index, ref int value);

	[DllImport("comctl32")]
	public static extern bool FlatSB_EnableScrollBar(IntPtr hWnd, int wSBflags, int wArrows);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, int wParam, TOOLINFO_T lParam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, ref short wparam, ref short lparam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wparam, string lparam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, bool wparam, int lparam);

	[DllImport("USER32.dll")]
	public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool ScrollWindowEx(IntPtr hWnd, int nXAmount, int nYAmount, ref RECT rectScrollRegion, ref RECT rectClip, int hrgnUpdate, ref RECT prcUpdate, int flags);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool InvertRect(IntPtr hDC, ref RECT lpRect);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, IntPtr lParam);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetDeviceCaps(IntPtr hDC, int nIndex);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetDC(IntPtr hWnd);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr ReleaseDC(IntPtr hWnd, IntPtr hDC);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CallNextHookEx(IntPtr hhook, int code, int wparam, int lparam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SetWindowLong(IntPtr hWnd, int nIndex, IntPtr dwNewLong);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SetWindowsHookEx(int hookid, HookProc pfnhook, IntPtr hinst, int threadid);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetWindowThreadProcessId(IntPtr hWnd, ref int lpdwProcessId);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int SetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si, bool redraw);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool GetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si);

	[DllImport("gdi32")]
	public static extern int SetTextColor(IntPtr hDC, int crColor);

	[DllImport("gdi32")]
	public static extern int SetBkColor(IntPtr hDC, int clr);

	[DllImport("gdi32")]
	public static extern IntPtr CreateSolidBrush(int crColor);

	[DllImport("gdi32")]
	public static extern bool DeleteObject(IntPtr hObject);

	[DllImport("user32")]
	public static extern IntPtr GetSysColorBrush(int nIndex);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CreateBitmap(int nWidth, int nHeight, int nPlanes, int nBitsPerPixel, [MarshalAs(UnmanagedType.LPArray)] short[] lpvBits);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CreateBrushIndirect(ref LOGBRUSH lb);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr SelectObject(IntPtr hdc, IntPtr hObject);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int FillRect(IntPtr hdc, ref RECT rect, int hBrush);

	[DllImport("gdi32", CharSet = CharSet.Auto)]
	public static extern bool ExtTextOut(IntPtr hdc, int x, int y, int nOptions, ref RECT lpRect, string s, int nStrLength, int[] lpDx);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool SetViewportOrgEx(IntPtr hdc, int x, int y, out POINT point);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool PatBlt(IntPtr hdc, int x, int y, int nWidth, int nHeight, int dwRop);

	[DllImport("USER32.dll")]
	public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool GetViewportExtEx(IntPtr hDC, out SIZE s);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool GetWindowExtEx(IntPtr hDC, out SIZE s);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int SetMapMode(IntPtr hDC, int nMapMode);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool SetViewportExtEx(IntPtr hDC, int x, int y, out SIZE size);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool SetWindowExtEx(IntPtr hDC, int x, int y, out SIZE size);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, bool wParam, FORMATRANGE fr);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, int wParam, ref POINT pt);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetDesktopWindow();

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool GetUpdateRect(IntPtr hWnd, ref RECT rc, bool fErase);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CreateCompatibleDC(IntPtr hDC);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CreateCompatibleBitmap(IntPtr hDC, int nWidth, int nHeight);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool BitBlt(IntPtr hDC, int x, int y, int nWidth, int nHeight, IntPtr hSrcDC, int xSrc, int ySrc, int dwRop);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr CreateDC(string lpszDriver, string lpszDeviceName, string lpszOutput, IntPtr devMode);

	public static IntPtr CreateDC(string lpszDriver)
	{
		return CreateDC(lpszDriver, null, null, IntPtr.Zero);
	}

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool DeleteDC(IntPtr hDC);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern int GetWindowLong(IntPtr hWnd, int nIndex);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool DrawFrameControl(int hDC, ref RECT rect, int type, int state);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

	[DocumentationExclude]
	public static int HIWORD(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	[DocumentationExclude]
	public static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}

	[DocumentationExclude]
	public static int LOWORD(IntPtr n)
	{
		return LOWORD((int)n);
	}

	[DocumentationExclude]
	public static int HIWORD(IntPtr n)
	{
		return HIWORD((int)n);
	}

	[DocumentationExclude]
	internal static IntPtr MAKELPARAM(int low, int high)
	{
		return (IntPtr)((high << 16) | (low & 0xFFFF));
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool PostMessage(IntPtr hwnd, int msg, IntPtr wparam, IntPtr lparam);

	public static void FakeLeftMouseClick(Control c, Point point)
	{
		IntPtr lparam = MAKELPARAM(point.X, point.Y);
		IntPtr wparam = (IntPtr)1;
		PostMessage(c.Handle, 513, wparam, lparam);
		PostMessage(c.Handle, 514, wparam, lparam);
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetFocus();

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr SetFocus(IntPtr hWnd);

	[DocumentationExclude]
	internal static int RGBToCOLORREF(int rgbValue)
	{
		int num = (rgbValue & 0xFF) << 16;
		rgbValue &= 0xFFFF00;
		rgbValue |= (rgbValue >> 16) & 0xFF;
		rgbValue &= 0xFFFF;
		rgbValue |= num;
		return rgbValue;
	}

	[DocumentationExclude]
	internal static int COLORREFToRGB(int colorRef)
	{
		int num = colorRef & 0xFF;
		int num2 = (colorRef >> 8) & 0xFF;
		int num3 = (colorRef >> 16) & 0xFF;
		return (num << 16) + (num2 << 8) + num3;
	}

	[DocumentationExclude]
	internal static int GetRValue(int rgb)
	{
		return (rgb & 0xFF0000) >> 16;
	}

	[DocumentationExclude]
	internal static int GetGValue(int rgb)
	{
		return (rgb & 0xFF00) >> 8;
	}

	[DocumentationExclude]
	internal static int GetBValue(int rgb)
	{
		return rgb & 0xFF;
	}

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	public static extern int GetTextExtentPoint32(IntPtr hDC, string str, int len, ref SIZE size);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool GetClipBox(IntPtr hdc, ref RECT lpRect);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int IntersectClipRect(IntPtr hDC, int x1, int y1, int x2, int y2);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int SelectClipRgn(IntPtr hDC, IntPtr hRgn);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	public static extern bool GetTextMetricsA(IntPtr hdc, ref TEXTMETRICA tm);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	public static extern bool GetTextMetricsW(IntPtr hdc, ref TEXTMETRICW tm);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int FillRect(IntPtr hdc, ref RECT rect, IntPtr hbrush);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int SetTextAlign(IntPtr hDC, int align);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CreateFontIndirectA(ref LOGFONT lplf);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CreateFontIndirectW(ref LOGFONT lplf);

	public static IntPtr CreateFontIndirect(ref LOGFONT lplf)
	{
		if (Marshal.SystemDefaultCharSize == 1)
		{
			return CreateFontIndirectA(ref lplf);
		}
		return CreateFontIndirectW(ref lplf);
	}

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int SetBkMode(IntPtr hDC, int nBkMode);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int DrawText(IntPtr hDC, string lpszString, int nCount, ref RECT lpRect, int nFormat);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetRegionData(IntPtr hRgn, int size, byte[] data);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmSetCompositionWindow(IntPtr hIMC, ref tagCOMPOSITIONFORM lpCompForm);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmSetConversionStatus(IntPtr hIMC, int conversion, int sentence);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmGetConversionStatus(IntPtr hIMC, ref int conversion, ref int sentence);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr ImmGetContext(IntPtr hWnd);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmReleaseContext(IntPtr hWnd, IntPtr hIMC);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr ImmAssociateContext(IntPtr hWnd, IntPtr hIMC);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmDestroyContext(IntPtr hIMC);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr ImmCreateContext();

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmSetOpenStatus(IntPtr hIMC, bool open);

	[DllImport("imm32.dll", CharSet = CharSet.Auto)]
	public static extern bool ImmGetOpenStatus(IntPtr hIMC);

	[DllImport("imm32.dll")]
	public static extern IntPtr ImmGetCompositionWindow(IntPtr himc, ref COMPOSITIONFORM lpCompositionForm);

	[DllImport("imm32.dll")]
	public static extern IntPtr ImmSetCompositionWindow(IntPtr himc, COMPOSITIONFORM lpCompositionForm);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool DrawFrameControl(IntPtr hDC, ref RECT rect, int type, int state);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr BeginPaint(IntPtr hWnd, ref PAINTSTRUCT lpPaint);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool EndPaint(IntPtr hWnd, ref PAINTSTRUCT lpPaint);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool RedrawWindow(IntPtr hWnd, ref RECT lprcUpdate, IntPtr hrgnUpdate, uint flags);
}
