using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;
using System.Security;
using System.Text;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Runtime.InteropServices;

[DocumentationExclude]
[ComVisible(false)]
[SuppressUnmanagedCodeSecurity]
internal class NativeMethods
{
	internal struct LVDISPINFO
	{
		public NMHDR hdr;

		public LVITEM item;
	}

	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
	internal struct LVITEM
	{
		public uint mask;

		public int iItem;

		public int iSubItem;

		public uint state;

		public uint stateMask;

		public IntPtr pszText;

		public int cchTextMax;

		public int iImage;

		public IntPtr lParam;

		public int iIndent;

		public int iGroupId;

		public uint cColumns;

		public IntPtr puColumns;
	}

	internal struct NMHDR
	{
		public IntPtr hwndFrom;

		public IntPtr idFrom;

		public IntPtr code;
	}

	public struct COMBOBOXINFO
	{
		public uint cbSize;

		public RECT rcItem;

		public RECT rcButton;

		public uint stateButton;

		public IntPtr hwndCombo;

		public IntPtr hwndItem;

		public IntPtr hwndList;
	}

	[DocumentationExclude]
	public class WinEventConstants
	{
		public static ulong EVENT_SYSTEM_MENUSTART = 4uL;

		public static ulong EVENT_SYSTEM_MENUEND = 5uL;

		public static ulong EVENT_SYSTEM_MENUPOPUPSTART = 6uL;

		public static ulong EVENT_SYSTEM_MENUPOPUPEND = 7uL;
	}

	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto, Pack = 1)]
	internal struct LVFINDINFO
	{
		public uint flags;

		public string psz;

		public IntPtr lParam;

		public int ptX;

		public int ptY;

		public int vkDirection;
	}

	[DocumentationExclude]
	internal struct NCCALCSIZE_PARAMS
	{
		public RECT rgrc0;

		public RECT rgrc1;

		public RECT rgrc2;

		public IntPtr lppos;
	}

	[DocumentationExclude]
	internal struct POINT
	{
		internal int X;

		internal int Y;

		internal POINT(int x, int y)
		{
			X = x;
			Y = y;
		}
	}

	[DocumentationExclude]
	internal struct SIZE
	{
		internal int CX;

		internal int CY;

		internal SIZE(int cx, int cy)
		{
			CX = cx;
			CY = cy;
		}
	}

	[DocumentationExclude]
	internal struct RECT
	{
		internal int left;

		internal int top;

		internal int right;

		internal int bottom;

		internal int Width
		{
			get
			{
				return right - left;
			}
			set
			{
				right = left + value;
			}
		}

		internal int Height
		{
			get
			{
				return bottom - top;
			}
			set
			{
				bottom = top + value;
			}
		}

		internal RECT(Rectangle rect)
		{
			bottom = rect.Bottom;
			left = rect.Left;
			right = rect.Right;
			top = rect.Top;
		}

		internal RECT(int left, int top, int right, int bottom)
		{
			this.bottom = bottom;
			this.left = left;
			this.right = right;
			this.top = top;
		}

		internal static RECT FromXYWH(int x, int y, int width, int height)
		{
			return new RECT(x, y, x + width, y + height);
		}

		public override string ToString()
		{
			return "Left = " + left + " Top " + top + " Right = " + right + " Bottom = " + bottom;
		}
	}

	internal struct BITMAP
	{
		internal uint bmType;

		internal uint bmWidth;

		internal uint bmHeight;

		internal uint bmWidthBytes;

		internal ushort bmPlanes;

		internal ushort bmBitsPixel;

		internal IntPtr bmBits;
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	internal class COMRECT
	{
		internal int left;

		internal int top;

		internal int right;

		internal int bottom;

		internal COMRECT()
		{
		}

		internal COMRECT(int left, int top, int right, int bottom)
		{
			this.left = left;
			this.top = top;
			this.right = right;
			this.bottom = bottom;
		}

		public override string ToString()
		{
			return "Left = " + left + " Top " + top + " Right = " + right + " Bottom = " + bottom;
		}

		internal static COMRECT FromXYWH(int x, int y, int width, int height)
		{
			return new COMRECT(x, y, x + width, y + height);
		}
	}

	[StructLayout(LayoutKind.Sequential)]
	[ComVisible(true)]
	[DocumentationExclude]
	internal class TOOLINFO_T
	{
		internal int cbSize;

		internal int uFlags;

		internal IntPtr hWnd = IntPtr.Zero;

		internal int uId;

		internal RECT rect = default(RECT);

		internal IntPtr hinst = IntPtr.Zero;

		[MarshalAs(UnmanagedType.LPTStr)]
		internal string lpszText = string.Empty;
	}

	[DocumentationExclude]
	internal struct MSG
	{
		internal IntPtr hwnd;

		internal int message;

		internal IntPtr wParam;

		internal IntPtr lParam;

		internal int time;

		internal int pt_x;

		internal int pt_y;
	}

	[DocumentationExclude]
	internal struct LOGBRUSH
	{
		internal int lbStyle;

		internal int lbColor;

		internal IntPtr lbHatch;
	}

	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
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

	[StructLayout(LayoutKind.Sequential)]
	internal class TRACKMOUSEEVENT
	{
		internal int cbSize;

		internal int dwFlags;

		internal IntPtr hwndTrack = IntPtr.Zero;

		internal int dwHoverTime;
	}

	[DocumentationExclude]
	internal struct NONCLIENTMETRICS
	{
		internal int cbSize;

		internal int iBorderWidth;

		internal int iScrollWidth;

		internal int iScrollHeight;

		internal int iCaptionWidth;

		internal int iCaptionHeight;

		internal LOGFONT lfCaptionFont;

		internal int iSmCaptionWidth;

		internal int iSmCaptionHeight;

		internal LOGFONT lfSmCaptionFont;

		internal int iMenuWidth;

		internal int iMenuHeight;

		internal LOGFONT lfMenuFont;

		internal LOGFONT lfStatusFont;

		internal LOGFONT lfMessageFont;
	}

	public enum SetWindowPosFlags
	{
		SWP_NOSIZE = 1,
		SWP_NOMOVE = 2,
		SWP_NOZORDER = 4,
		SWP_NOREDRAW = 8,
		SWP_NOACTIVATE = 16,
		SWP_FRAMECHANGED = 32,
		SWP_SHOWWINDOW = 64,
		SWP_HIDEWINDOW = 128,
		SWP_NOCOPYBITS = 256,
		SWP_NOOWNERZORDER = 512,
		SWP_NOSENDCHANGING = 1024,
		SWP_DRAWFRAME = 32,
		SWP_NOREPOSITION = 512,
		SWP_DEFERERASE = 8192,
		SWP_ASYNCWINDOWPOS = 16384
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class TEXTMETRIC
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

		internal char tmFirstChar;

		internal char tmLastChar;

		internal char tmDefaultChar;

		internal char tmBreakChar;

		internal byte tmItalic;

		internal byte tmUnderlined;

		internal byte tmStruckOut;

		internal byte tmPitchAndFamily;

		internal byte tmCharSet;
	}

	internal struct MARGINS
	{
		internal int cxLeftWidth;

		internal int cxRightWidth;

		internal int cyTopHeight;

		internal int cyBottomHeight;

		internal MARGINS(int cxLeftWidth, int cxRightWidth, int cyTopHeight, int cyBottomHeight)
		{
			this.cxLeftWidth = cxLeftWidth;
			this.cxRightWidth = cxRightWidth;
			this.cyTopHeight = cyTopHeight;
			this.cyBottomHeight = cyBottomHeight;
		}

		public override string ToString()
		{
			return "LeftWidth: " + cxLeftWidth + " RightWidth: " + cxRightWidth + " TopHeight: " + cyTopHeight + " BottomHeight: " + cyBottomHeight;
		}
	}

	internal class INTLIST
	{
		private int iValueCount;

		[MarshalAs(UnmanagedType.LPArray)]
		private int[] iValues;

		internal int ValueCount => iValueCount;

		internal INTLIST()
		{
			iValues = new int[10];
		}
	}

	internal struct THEME_ERROR_CONTEXT
	{
		internal ulong dwSize;

		internal IntPtr hr;

		internal string szMsgParam1;

		internal string szMsgParam2;

		internal string szFileName;

		internal string szSourceLine;

		internal int iLineNum;

		internal THEME_ERROR_CONTEXT(IntPtr hr, string szMsgParam1, string szMsgParam2, string szFileName, string szSourceLine, int iLineNum)
		{
			dwSize = 0uL;
			this.hr = hr;
			this.szMsgParam1 = szMsgParam1;
			this.szMsgParam2 = szMsgParam2;
			this.szFileName = szFileName;
			this.szSourceLine = szSourceLine;
			this.iLineNum = iLineNum;
		}
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class TOOLINFO
	{
		internal int cbSize;

		internal int uFlags;

		internal IntPtr hwnd = IntPtr.Zero;

		internal IntPtr uId = IntPtr.Zero;

		internal RECT rect = new RECT(Rectangle.Empty);

		internal IntPtr hinst = IntPtr.Zero;

		internal string lpszText = string.Empty;

		internal IntPtr lParam = IntPtr.Zero;

		internal TOOLINFO()
		{
			cbSize = Marshal.SizeOf(typeof(TOOLINFO));
		}
	}

	[DocumentationExclude]
	internal struct CWPSTRUCT
	{
		internal IntPtr lParam;

		internal IntPtr wParam;

		internal int message;

		internal IntPtr hwnd;
	}

	[StructLayout(LayoutKind.Sequential, Pack = 1)]
	[DocumentationExclude]
	[ComVisible(true)]
	internal class INITCOMMONCONTROLSEX
	{
		internal int dwSize = Marshal.SizeOf(typeof(INITCOMMONCONTROLSEX));

		internal int dwICC;
	}

	[DocumentationExclude]
	internal struct SCROLLINFO
	{
		internal int cbSize;

		internal int fMask;

		internal int nMin;

		internal int nMax;

		internal int nPage;

		internal int nPos;

		internal int nTrackPos;
	}

	internal struct ICONINFO
	{
		public bool fIcon;

		public int xHotspot;

		public int yHotspot;

		public IntPtr hbmMask;

		public IntPtr hbmColor;
	}

	[DocumentationExclude]
	internal delegate IntPtr HookProc(int nCode, IntPtr wParam, IntPtr lParam);

	[DocumentationExclude]
	internal delegate bool BrowserFolderCallback(IntPtr hwnd, [MarshalAs(UnmanagedType.U4)] int uMsg, IntPtr lParam, IntPtr lpData);

	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	[Guid("00000002-0000-0000-c000-000000000046")]
	internal interface IMalloc
	{
		IntPtr Alloc(int cb);

		void Free(IntPtr pv);

		IntPtr Realloc(IntPtr pv, int cb);

		int GetSize(IntPtr pv);

		int DidAlloc(IntPtr pv);

		void HeapMinimize();
	}

	[StructLayout(LayoutKind.Sequential)]
	[DocumentationExclude]
	[ComVisible(false)]
	internal class BROWSEINFO
	{
		internal IntPtr hwndOwner = IntPtr.Zero;

		internal IntPtr pidlRoot = IntPtr.Zero;

		internal IntPtr pszDisplayName = IntPtr.Zero;

		[MarshalAs(UnmanagedType.LPTStr)]
		internal string lpszTitle = string.Empty;

		internal int ulFlags;

		[MarshalAs(UnmanagedType.FunctionPtr)]
		internal BrowserFolderCallback lpfn;

		internal IntPtr lParam = IntPtr.Zero;

		internal int iImage = -1;
	}

	[StructLayout(LayoutKind.Sequential)]
	[ComVisible(false)]
	internal class TV_HITTESTINFO
	{
		internal int pt_x;

		internal int pt_y;

		internal int flags;

		internal int hItem;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class LV_HITTESTINFO
	{
		internal POINT pt = new POINT(0, 0);

		internal int flags;

		internal int iItem;

		internal int iSubItem;
	}

	[DocumentationExclude]
	internal struct APPBARDATA
	{
		internal int cbSize;

		internal int hwnd;

		internal int uCallbackMessage;

		internal int uEdge;

		internal RECT rc;

		internal int lParam;
	}

	internal delegate bool EnumChildWindowsCallBack(IntPtr hwnd, IntPtr lParam);

	[DocumentationExclude]
	internal struct WINDOWPLACEMENT
	{
		internal uint length;

		internal uint flags;

		internal uint showCmd;

		internal POINT ptMinPosition;

		internal POINT ptMaxPosition;

		internal RECT rcNormalPosition;

		internal WINDOWPLACEMENT(uint len, uint flags, uint showcmd, POINT ptmin, POINT ptmax, RECT rcnormal)
		{
			length = len;
			this.flags = flags;
			showCmd = showcmd;
			ptMinPosition = ptmin;
			ptMaxPosition = ptmax;
			rcNormalPosition = rcnormal;
		}
	}

	internal struct WINDOWPOS
	{
		public IntPtr hwnd;

		public IntPtr hwndInsertAfter;

		public int x;

		public int y;

		public int cx;

		public int cy;

		public int flags;
	}

	[DocumentationExclude]
	internal delegate bool DrawStateProc(IntPtr hdc, IntPtr lData, IntPtr wData, int cx, int cy);

	[StructLayout(LayoutKind.Sequential)]
	internal sealed class tagDVTARGETDEVICE
	{
		[MarshalAs(UnmanagedType.U4)]
		internal int tdSize;

		[MarshalAs(UnmanagedType.U2)]
		internal short tdDriverNameOffset;

		[MarshalAs(UnmanagedType.U2)]
		internal short tdDeviceNameOffset;

		[MarshalAs(UnmanagedType.U2)]
		internal short tdPortNameOffset;

		[MarshalAs(UnmanagedType.U2)]
		internal short tdExtDevmodeOffset;
	}

	[Guid("0000010d-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IViewObject
	{
		void Draw(int dwDrawAspect, int lindex, IntPtr pvAspect, tagDVTARGETDEVICE ptd, IntPtr hdcTargetDev, IntPtr hdcDraw, COMRECT lprcBounds, COMRECT lprcWBounds, IntPtr pfnContinue, int dwContinue);

		[PreserveSig]
		int GetColorSet(int dwDrawAspect, int lindex, IntPtr pvAspect, tagDVTARGETDEVICE ptd, IntPtr hicTargetDev, tagLOGPALETTE ppColorSet);

		[PreserveSig]
		int Freeze(int dwDrawAspect, int lindex, IntPtr pvAspect, IntPtr pdwFreeze);

		[PreserveSig]
		int Unfreeze(int dwFreeze);

		void SetAdvise(int aspects, int advf, IAdviseSink pAdvSink);

		void GetAdvise(int[] paspects, int[] advf, IAdviseSink[] pAdvSink);
	}

	[Guid("00000127-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IViewObject2
	{
		void Draw(int dwDrawAspect, int lindex, IntPtr pvAspect, tagDVTARGETDEVICE ptd, IntPtr hdcTargetDev, IntPtr hdcDraw, COMRECT lprcBounds, COMRECT lprcWBounds, IntPtr pfnContinue, int dwContinue);

		[PreserveSig]
		int GetColorSet(int dwDrawAspect, int lindex, IntPtr pvAspect, tagDVTARGETDEVICE ptd, IntPtr hicTargetDev, tagLOGPALETTE ppColorSet);

		[PreserveSig]
		int Freeze(int dwDrawAspect, int lindex, IntPtr pvAspect, IntPtr pdwFreeze);

		[PreserveSig]
		int Unfreeze(int dwFreeze);

		void SetAdvise(int aspects, int advf, IAdviseSink pAdvSink);

		void GetAdvise(int[] paspects, int[] advf, IAdviseSink[] pAdvSink);

		void GetExtent(int dwDrawAspect, int lindex, tagDVTARGETDEVICE ptd, tagSIZEL lpsizel);
	}

	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	[Guid("00000118-0000-0000-C000-000000000046")]
	internal interface IOleClientSite
	{
		[PreserveSig]
		int SaveObject();

		[PreserveSig]
		int GetMoniker(int dwAssign, int dwWhichMoniker, out object moniker);

		[return: MarshalAs(UnmanagedType.Interface)]
		IOleContainer GetContainer();

		[PreserveSig]
		int ShowObject();

		[PreserveSig]
		int OnShowWindow(int fShow);

		[PreserveSig]
		int RequestNewObjectLayout();
	}

	[Guid("0000011B-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IOleContainer
	{
		[PreserveSig]
		int ParseDisplayName(object pbc, string pszDisplayName, int[] pchEaten, object[] ppmkOut);

		[PreserveSig]
		int EnumObjects(int grfFlags, out IEnumUnknown ppenum);

		[PreserveSig]
		int LockContainer(int fLock);
	}

	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	[Guid("00000100-0000-0000-C000-000000000046")]
	internal interface IEnumUnknown
	{
		[PreserveSig]
		int Next(int celt, IntPtr rgelt, IntPtr pceltFetched);

		[PreserveSig]
		int Skip(int celt);

		void Reset();

		void Clone(out IEnumUnknown ppenum);
	}

	[SuppressUnmanagedCodeSecurity]
	[Guid("0000010E-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IOleDataObject
	{
		[PreserveSig]
		int OleGetData(FORMATETC pFormatetc, STGMEDIUM pMedium);

		[PreserveSig]
		int OleGetDataHere(FORMATETC pFormatetc, STGMEDIUM pMedium);

		[PreserveSig]
		int OleQueryGetData(FORMATETC pFormatetc);

		[PreserveSig]
		int OleGetCanonicalFormatEtc(FORMATETC pformatectIn, FORMATETC pformatetcOut);

		[PreserveSig]
		int OleSetData(FORMATETC pFormatectIn, STGMEDIUM pmedium, int fRelease);

		[return: MarshalAs(UnmanagedType.Interface)]
		IEnumFORMATETC OleEnumFormatEtc(int dwDirection);

		[PreserveSig]
		int OleDAdvise(FORMATETC pFormatetc, int advf, object pAdvSink, int[] pdwConnection);

		[PreserveSig]
		int OleDUnadvise(int dwConnection);

		[PreserveSig]
		int OleEnumDAdvise(object[] ppenumAdvise);
	}

	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	[Guid("00000103-0000-0000-C000-000000000046")]
	internal interface IEnumFORMATETC
	{
		[PreserveSig]
		int Next(int celt, FORMATETC rgelt, int[] pceltFetched);

		[PreserveSig]
		int Skip(int celt);

		[PreserveSig]
		int Reset();

		[PreserveSig]
		int Clone(IEnumFORMATETC[] ppenum);
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class STGMEDIUM
	{
		internal int tymed;

		internal IntPtr unionmember = IntPtr.Zero;

		internal IntPtr pUnkForRelease = IntPtr.Zero;
	}

	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	[Guid("00000112-0000-0000-C000-000000000046")]
	internal interface IOleObject
	{
		[PreserveSig]
		int SetClientSite(IOleClientSite pClientSite);

		IOleClientSite GetClientSite();

		[PreserveSig]
		int SetHostNames(string szContainerApp, string szContainerObj);

		[PreserveSig]
		int Close(int dwSaveOption);

		[PreserveSig]
		int SetMoniker(int dwWhichMoniker, object pmk);

		[PreserveSig]
		int GetMoniker(int dwAssign, int dwWhichMoniker, out object moniker);

		[PreserveSig]
		int InitFromData(IOleDataObject pDataObject, int fCreation, int dwReserved);

		[PreserveSig]
		int GetClipboardData(int dwReserved, out IOleDataObject data);

		[PreserveSig]
		int DoVerb(int iVerb, IntPtr lpmsg, IOleClientSite pActiveSite, int lindex, IntPtr hwndParent, COMRECT lprcPosRect);

		[PreserveSig]
		int EnumVerbs(out IEnumOLEVERB e);

		[PreserveSig]
		int OleUpdate();

		[PreserveSig]
		int IsUpToDate();

		[PreserveSig]
		int GetUserClassID(ref Guid pClsid);

		[PreserveSig]
		int GetUserType(int dwFormOfType, out string userType);

		[PreserveSig]
		int SetExtent(int dwDrawAspect, tagSIZEL pSizel);

		[PreserveSig]
		int GetExtent(int dwDrawAspect, tagSIZEL pSizel);

		[PreserveSig]
		int Advise(IAdviseSink pAdvSink, out int cookie);

		[PreserveSig]
		int Unadvise(int dwConnection);

		[PreserveSig]
		int EnumAdvise(out IEnumSTATDATA e);

		[PreserveSig]
		int GetMiscStatus(int dwAspect, out int misc);

		[PreserveSig]
		int SetColorScheme(tagLOGPALETTE pLogpal);
	}

	[Guid("00000105-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IEnumSTATDATA
	{
		void Next(int celt, STATDATA rgelt, int[] pceltFetched);

		void Skip(int celt);

		void Reset();

		void Clone(IEnumSTATDATA[] ppenum);
	}

	[StructLayout(LayoutKind.Sequential)]
	internal sealed class STATDATA
	{
		[MarshalAs(UnmanagedType.U4)]
		internal int advf;

		[MarshalAs(UnmanagedType.U4)]
		internal int dwConnection;
	}

	[Guid("00000104-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IEnumOLEVERB
	{
		[PreserveSig]
		int Next(int celt, tagOLEVERB rgelt, int[] pceltFetched);

		[PreserveSig]
		int Skip(int celt);

		void Reset();

		void Clone(out IEnumOLEVERB ppenum);
	}

	[StructLayout(LayoutKind.Sequential)]
	internal sealed class tagOLEVERB
	{
		internal int lVerb;

		[MarshalAs(UnmanagedType.LPWStr)]
		internal string lpszVerbName;

		[MarshalAs(UnmanagedType.U4)]
		internal int fuFlags;

		[MarshalAs(UnmanagedType.U4)]
		internal int grfAttribs;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal sealed class tagLOGPALETTE
	{
		[MarshalAs(UnmanagedType.U2)]
		internal short palVersion;

		[MarshalAs(UnmanagedType.U2)]
		internal short palNumEntries;
	}

	[Guid("0000010F-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IAdviseSink
	{
		[PreserveSig]
		void OnDataChange(FORMATETC pFormatetc, STGMEDIUM pStgmed);

		[PreserveSig]
		void OnViewChange(int dwAspect, int lindex);

		[PreserveSig]
		void OnRename(object pmk);

		[PreserveSig]
		void OnSave();

		void OnClose();
	}

	[StructLayout(LayoutKind.Sequential)]
	internal sealed class FORMATETC
	{
		internal short cfFormat;

		internal short dummy;

		internal IntPtr ptd = IntPtr.Zero;

		internal int dwAspect;

		internal int lindex;

		internal int tymed;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal sealed class tagSIZEL
	{
		internal int cx;

		internal int cy;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class PICTDESC
	{
		internal int cbSizeOfStruct;

		internal int picType;

		internal IntPtr union1;

		internal int union2;

		internal int union3;

		internal virtual IntPtr GetHPal()
		{
			if (picType == 1)
			{
				return (IntPtr)(union2 | union3);
			}
			return IntPtr.Zero;
		}

		internal virtual IntPtr GetHandle()
		{
			return union1;
		}

		internal static PICTDESC CreateBitmapPICTDESC(IntPtr hbitmap, IntPtr hpal)
		{
			PICTDESC pICTDESC = new PICTDESC();
			pICTDESC.cbSizeOfStruct = 16;
			pICTDESC.picType = 1;
			pICTDESC.union1 = hbitmap;
			pICTDESC.union2 = (int)((long)hpal & 0xFFFFFFFFu);
			pICTDESC.union3 = (int)((long)hpal >> 32);
			return pICTDESC;
		}

		internal static PICTDESC CreateIconPICTDESC(IntPtr hicon)
		{
			PICTDESC pICTDESC = new PICTDESC();
			pICTDESC.cbSizeOfStruct = 12;
			pICTDESC.picType = 3;
			pICTDESC.union1 = hicon;
			return pICTDESC;
		}

		internal static PICTDESC CreateEnhMetafilePICTDESC(IntPtr hEMF)
		{
			PICTDESC pICTDESC = new PICTDESC();
			pICTDESC.cbSizeOfStruct = 12;
			pICTDESC.picType = 4;
			pICTDESC.union1 = hEMF;
			return pICTDESC;
		}

		internal static PICTDESC CreateWinMetafilePICTDESC(IntPtr hmetafile, int x, int y)
		{
			PICTDESC pICTDESC = new PICTDESC();
			pICTDESC.cbSizeOfStruct = 20;
			pICTDESC.picType = 2;
			pICTDESC.union1 = hmetafile;
			pICTDESC.union2 = x;
			pICTDESC.union3 = y;
			return pICTDESC;
		}
	}

	[Guid("7BF80980-BF32-101A-8BBB-00AA00300CAB")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IPicture
	{
		IntPtr GetHandle();

		IntPtr GetHPal();

		[return: MarshalAs(UnmanagedType.I2)]
		short GetPictureType();

		int GetWidth();

		int GetHeight();

		void Render(IntPtr hDC, int x, int y, int cx, int cy, int xSrc, int ySrc, int cxSrc, int cySrc, IntPtr rcBounds);

		void SetHPal(IntPtr phpal);

		IntPtr GetCurDC();

		void SelectPicture(IntPtr hdcIn, IntPtr[] phdcOut, IntPtr[] phbmpOut);

		[return: MarshalAs(UnmanagedType.Bool)]
		bool GetKeepOriginalFormat();

		void SetKeepOriginalFormat(bool pfkeep);

		void PictureChanged();

		[PreserveSig]
		int SaveAsFile(IStream pstm, int fSaveMemCopy, out int pcbSize);

		int GetAttributes();
	}

	[Guid("0000000C-0000-0000-C000-000000000046")]
	[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	internal interface IStream
	{
		int Read(IntPtr buf, int len);

		int Write(IntPtr buf, int len);

		[return: MarshalAs(UnmanagedType.I8)]
		long Seek(long dlibMove, int dwOrigin);

		void SetSize(long libNewSize);

		[return: MarshalAs(UnmanagedType.I8)]
		long CopyTo(IStream pstm, long cb, long[] pcbRead);

		void Commit(int grfCommitFlags);

		void Revert();

		void LockRegion(long libOffset, long cb, int dwLockType);

		void UnlockRegion(long libOffset, long cb, int dwLockType);

		void Stat(STATSTG pStatstg, int grfStatFlag);

		[return: MarshalAs(UnmanagedType.Interface)]
		IStream Clone();
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class STATSTG
	{
		[MarshalAs(UnmanagedType.LPWStr)]
		internal string pwcsName;

		internal int type;

		[MarshalAs(UnmanagedType.I8)]
		internal long cbSize;

		[MarshalAs(UnmanagedType.I8)]
		internal long mtime;

		[MarshalAs(UnmanagedType.I8)]
		internal long ctime;

		[MarshalAs(UnmanagedType.I8)]
		internal long atime;

		[MarshalAs(UnmanagedType.I4)]
		internal int grfMode;

		[MarshalAs(UnmanagedType.I4)]
		internal int grfLocksSupported;

		internal int clsid_data1;

		[MarshalAs(UnmanagedType.I2)]
		internal short clsid_data2;

		[MarshalAs(UnmanagedType.I2)]
		internal short clsid_data3;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b0;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b1;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b2;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b3;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b4;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b5;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b6;

		[MarshalAs(UnmanagedType.U1)]
		internal byte clsid_b7;

		[MarshalAs(UnmanagedType.I4)]
		internal int grfStateBits;

		[MarshalAs(UnmanagedType.I4)]
		internal int reserved;
	}

	internal class Util
	{
		internal static int MAKELONG(int low, int high)
		{
			return (high << 16) | (low & 0xFFFF);
		}

		internal static IntPtr MAKELPARAM(int low, int high)
		{
			return (IntPtr)((high << 16) | (low & 0xFFFF));
		}

		internal static int HIWORD(int n)
		{
			return (n >> 16) & 0xFFFF;
		}

		internal static int HIWORD(IntPtr n)
		{
			return HIWORD((int)n);
		}

		internal static int LOWORD(int n)
		{
			return n & 0xFFFF;
		}

		internal static int LOWORD(IntPtr n)
		{
			return LOWORD((int)n);
		}

		internal static int SignedHIWORD(IntPtr n)
		{
			return SignedHIWORD((int)n);
		}

		internal static int SignedLOWORD(IntPtr n)
		{
			return SignedLOWORD((int)n);
		}

		internal static int SignedHIWORD(int n)
		{
			return (short)((n >> 16) & 0xFFFF);
		}

		internal static int SignedLOWORD(int n)
		{
			return (short)(n & 0xFFFF);
		}

		internal static int GetPInvokeStringLength(string s)
		{
			if (s == null)
			{
				return 0;
			}
			if (Marshal.SystemDefaultCharSize == 2)
			{
				return s.Length;
			}
			if (s.Length == 0)
			{
				return 0;
			}
			if (s.IndexOf('\0') > -1)
			{
				return GetEmbededNullStringLengthAnsi(s);
			}
			return lstrlen(s);
		}

		private static int GetEmbededNullStringLengthAnsi(string s)
		{
			int num = s.IndexOf('\0');
			if (num > -1)
			{
				string s2 = s.Substring(0, num);
				string s3 = s.Substring(num + 1);
				return GetPInvokeStringLength(s2) + GetEmbededNullStringLengthAnsi(s3) + 1;
			}
			return GetPInvokeStringLength(s);
		}

		[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
		private static extern int lstrlen(string s);

		[DllImport("user32.dll", CharSet = CharSet.Auto)]
		internal static extern int RegisterWindowMessage(string msg);
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

	public enum ToolTipStyles
	{
		TTS_ALWAYSTIP = 1,
		TTS_NOPREFIX = 2,
		TTS_NOANIMATE = 0x10,
		TTS_NOFADE = 0x20,
		TTS_BALLOON = 0x40
	}

	internal struct TOOLINFO_D
	{
		public int cbSize;

		public int uFlags;

		public IntPtr hwnd;

		public IntPtr uId;

		public RECT rect;

		public IntPtr hinst;

		public IntPtr lpszText;

		public IntPtr lParam;
	}

	public enum TTF
	{
		TTF_IDISHWND = 1,
		TTF_SUBCLASS = 0x10,
		TTF_TRACK = 0x20
	}

	[DocumentationExclude]
	internal struct CHARRANGE
	{
		public int cpMin;

		public int cpMax;
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

	[Flags]
	[DocumentationExclude]
	internal enum StringInfoType : uint
	{
		CT_TYPE1 = 1u,
		CT_TYPE2 = 2u,
		CT_TYPE3 = 4u
	}

	[DocumentationExclude]
	[Flags]
	internal enum StringInfoCtype1 : ushort
	{
		C1_UPPER = 1,
		C1_LOWER = 2,
		C1_DIGIT = 4,
		C1_SPACE = 8,
		C1_PUNCT = 0x10,
		C1_CNTRL = 0x20,
		C1_BLANK = 0x40,
		C1_XDIGIT = 0x80,
		C1_ALPHA = 0x100
	}

	[DocumentationExclude]
	[Flags]
	internal enum StringInfoCtype2 : ushort
	{
		C2_LEFTTORIGHT = 1,
		C2_RIGHTTOLEFT = 2,
		C2_EUROPENUMBER = 3,
		C2_EUROPESEPARATOR = 4,
		C2_EUROPETERMINATOR = 5,
		C2_ARABICNUMBER = 6,
		C2_COMMONSEPARATOR = 7,
		C2_BLOCKSEPARATOR = 8,
		C2_SEGMENTSEPARATOR = 9,
		C2_WHITESPACE = 0xA,
		C2_OTHERNEUTRAL = 0xB,
		C2_NOTAPPLICABLE = 0
	}

	[DocumentationExclude]
	[Flags]
	internal enum StringInfoCtype3 : ushort
	{
		C3_DIACRITIC = 2,
		C3_VOWELMARK = 4,
		C3_SYMBOL = 8,
		C3_KATAKANA = 0x10,
		C3_HIRAGANA = 0x20,
		C3_HALFWIDTH = 0x40,
		C3_FULLWIDTH = 0x80,
		C3_IDEOGRAPH = 0x100,
		C3_KASHIDA = 0x200,
		C3_LEXICAL = 0x400,
		C3_ALPHA = 0x8000,
		C3_NOTAPPLICABLE = 0
	}

	[Flags]
	internal enum DialogCodes
	{
		DLGC_WANTARROWS = 1,
		DLGC_WANTTAB = 2,
		DLGC_WANTALLKEYS = 4,
		DLGC_WANTMESSAGE = 4,
		DLGC_HASSETSEL = 8,
		DLGC_DEFPUSHBUTTON = 0x10,
		DLGC_UNDEFPUSHBUTTON = 0x20,
		DLGC_RADIOBUTTON = 0x40,
		DLGC_WANTCHARS = 0x80,
		DLGC_STATIC = 0x100,
		DLGC_BUTTON = 0x2000
	}

	internal enum WindowsHookCodes
	{
		WH_MSGFILTER = -1,
		WH_JOURNALRECORD,
		WH_JOURNALPLAYBACK,
		WH_KEYBOARD,
		WH_GETMESSAGE,
		WH_CALLWNDPROC,
		WH_CBT,
		WH_SYSMSGFILTER,
		WH_MOUSE,
		WH_HARDWARE,
		WH_DEBUG,
		WH_SHELL,
		WH_FOREGROUNDIDLE,
		WH_CALLWNDPROCRET,
		WH_KEYBOARD_LL,
		WH_MOUSE_LL
	}

	internal enum TernaryRasterOperations
	{
		SRCCOPY = 13369376,
		SRCPAINT = 15597702,
		SRCAND = 8913094,
		SRCINVERT = 6684742,
		SRCERASE = 4457256,
		NOTSRCCOPY = 3342344,
		NOTSRCERASE = 1114278,
		MERGECOPY = 12583114,
		MERGEPAINT = 12255782,
		PATCOPY = 15728673,
		PATPAINT = 16452105,
		PATINVERT = 5898313,
		DSTINVERT = 5570569,
		BLACKNESS = 66,
		WHITENESS = 16711778
	}

	internal enum DCFlags
	{
		DCX_WINDOW = 1,
		DCX_CACHE = 2,
		DCX_INTERSECTRGN = 128,
		DCX_LOCKWINDOWUPDATE = 1024,
		DCX_PARENTCLIP = 32,
		DCX_CLIPSIBLINGS = 16,
		DCX_CLIPCHILDREN = 8,
		DCX_EXCLUDERGN = 64
	}

	internal enum LogBrushStyle
	{
		BS_SOLID = 0,
		BS_HOLLOW = 1,
		BS_HATCHED = 2,
		BS_PATTERN = 3,
		BS_DIBPATTERN = 5,
		BS_DIBPATTERNPT = 6,
		BS_PATTERN8X8 = 7,
		BS_DIBPATTERN8X8 = 8
	}

	internal enum DWMWINDOWATTRIBUTE
	{
		DWMWA_NCRENDERING_ENABLED = 1,
		DWMWA_NCRENDERING_POLICY,
		DWMWA_TRANSITIONS_FORCEDISABLED,
		DWMWA_ALLOW_NCPAINT,
		DWMWA_CAPTION_BUTTON_BOUNDS,
		DWMWA_NONCLIENT_RTL_LAYOUT,
		DWMWA_FORCE_ICONIC_REPRESENTATION,
		DWMWA_FLIP3D_POLICY,
		DWMWA_EXTENDED_FRAME_BOUNDS,
		DWMWA_LAST
	}

	internal enum DWMNCRENDERINGPOLICY
	{
		DWMNCRP_USEWINDOWSTYLE,
		DWMNCRP_DISABLED,
		DWMNCRP_ENABLED,
		DWMNCRP_LAST
	}

	public const int LVN_FIRST = -100;

	public const int LVM_FIRST = 4096;

	public const int LVN_GETDISPINFO = -177;

	public const int LVS_OWNERDATA = 4096;

	public const int LVM_SETITEMCOUNT = 4143;

	public const int LVM_SETITEMSTATE = 4139;

	public const int LVM_GETSELECTEDCOUNT = 4146;

	public const int LVM_GETITEMSTATE = 4140;

	public const int LVM_FINDITEM = 4179;

	public const int LVM_GETITEM = 4101;

	public const int LVM_GETNEXTITEM = 4108;

	public const int LVM_GETHOTITEM = 4157;

	public const int LVM_ENSUREVISIBLE = 4115;

	public const int LVM_GETHEADER = 4127;

	public const int LVM_GETITEMSPACING = 4147;

	public const int LVM_GETITEMPOSITION = 4112;

	public const int LVM_HITTEST = 4114;

	public const uint LVIS_FOCUSED = 1u;

	public const uint LVIS_SELECTED = 2u;

	public const uint LVIS_CUT = 4u;

	public const uint LVIS_DROPHILITED = 8u;

	public const uint LVIS_GLOW = 16u;

	public const uint LVIS_ACTIVATING = 32u;

	public const uint LVIS_OVERLAYMASK = 3840u;

	public const uint LVIS_STATEIMAGEMASK = 61440u;

	public const int LVNI_ALL = 0;

	public const int LVNI_FOCUSED = 1;

	public const int LVNI_SELECTED = 2;

	public const int LVNI_CUT = 4;

	public const int LVNI_DROPHILITED = 8;

	public const uint LVIF_TEXT = 1u;

	public const uint LVIF_IMAGE = 2u;

	public const uint LVIF_PARAM = 4u;

	public const uint LVIF_STATE = 8u;

	public const uint LVIF_INDENT = 16u;

	public const uint LVIF_NORECOMPUTE = 2048u;

	public const uint LVIF_GROUPID = 256u;

	public const uint LVIF_COLUMNS = 512u;

	public const uint LVFI_PARAM = 1u;

	public const uint LVFI_STRING = 2u;

	public const uint LVFI_PARTIAL = 8u;

	public const uint LVFI_WRAP = 32u;

	public const uint LVFI_NEARESTXY = 64u;

	internal const int CB_GETCOMBOBOXINFO = 356;

	internal const int MF_BYCOMMAND = 0;

	internal const int MF_BYPOSITION = 1024;

	internal const int MF_ENABLED = 0;

	internal const int MF_GRAYED = 1;

	internal const int MF_DISABLED = 2;

	internal const int HTTRANSPARENT = -1;

	internal const int RDW_INVALIDATE = 1;

	internal const int RDW_INTERNALPAINT = 2;

	internal const int RDW_ERASE = 4;

	internal const int RDW_VALIDATE = 8;

	internal const int RDW_NOINTERNALPAINT = 16;

	internal const int RDW_NOERASE = 32;

	internal const int RDW_NOCHILDREN = 64;

	internal const int RDW_ALLCHILDREN = 128;

	internal const int RDW_UPDATENOW = 256;

	internal const int RDW_ERASENOW = 512;

	internal const int RDW_FRAME = 1024;

	internal const int RDW_NOFRAME = 2048;

	internal const int EM_SETREADONLY = 207;

	internal const int SW_ERASE = 4;

	internal const int SW_INVALIDATE = 2;

	internal const int SW_SCROLLCHILDREN = 1;

	internal const int SW_SMOOTHSCROLL = 16;

	internal const int SW_SHOWMINIMIZED = 2;

	internal const int SW_SHOWMAXIMIZED = 3;

	internal const int SW_HIDE = 0;

	internal const int SW_SHOWNORMAL = 1;

	internal const int SW_PARENTCLOSING = 1;

	internal const int SW_OTHERZOOM = 2;

	internal const int SW_PARENTOPENING = 3;

	internal const int SW_OTHERUNZOOM = 4;

	internal const int HTCLIENT = 1;

	internal const int HTBOTTOMLEFT = 16;

	internal const int HTBOTTOMRIGHT = 17;

	internal const int HTBOTTOM = 15;

	internal const int HTRIGHT = 11;

	internal const int HTTOP = 12;

	internal const int HTTOPLEFT = 13;

	internal const int HTTOPRIGHT = 14;

	internal const int HTLEFT = 10;

	internal const int HTBORDER = 18;

	internal const int HTCAPTION = 2;

	internal const int HTCLOSE = 20;

	internal const int HTNOWHERE = 0;

	internal const int SM_CXVSCROLL = 2;

	internal const int SM_CYHSCROLL = 3;

	internal const int HWND_TOP = 0;

	internal const int HWND_BOTTOM = 1;

	internal const int HWND_TOPMOST = -1;

	internal const int HWND_NOTOPMOST = -2;

	internal const int MK_LBUTTON = 1;

	internal const int MK_RBUTTON = 2;

	internal const int MK_SHIFT = 4;

	internal const int MK_CONTROL = 8;

	internal const int MK_MBUTTON = 16;

	internal const int TME_HOVER = 1;

	internal const int TME_LEAVE = 2;

	internal const int TME_NONCLIENT = 16;

	internal const int HOVER_DEFAULT = -1;

	internal const int WA_INACTIVE = 0;

	internal const int WA_ACTIVE = 1;

	internal const int WA_CLICKACTIVE = 2;

	internal const int WS_OVERLAPPED = 0;

	internal const int WS_POPUP = int.MinValue;

	internal const int WS_CHILD = 1073741824;

	internal const int WS_MINIMIZE = 536870912;

	internal const int WS_VISIBLE = 268435456;

	internal const int WS_DISABLED = 134217728;

	internal const int WS_CLIPSIBLINGS = 67108864;

	internal const int WS_CLIPCHILDREN = 33554432;

	internal const int WS_MAXIMIZE = 16777216;

	internal const int WS_CAPTION = 12582912;

	internal const int WS_BORDER = 8388608;

	internal const int WS_DLGFRAME = 4194304;

	internal const int WS_VSCROLL = 2097152;

	internal const int WS_HSCROLL = 1048576;

	internal const int WS_SYSMENU = 524288;

	internal const int WS_THICKFRAME = 262144;

	internal const int WS_TABSTOP = 65536;

	internal const int WS_MINIMIZEBOX = 131072;

	internal const int WS_MAXIMIZEBOX = 65536;

	internal const int WS_EX_DLGMODALFRAME = 1;

	internal const int WS_EX_MDICHILD = 64;

	internal const int WS_EX_TOOLWINDOW = 128;

	internal const int WS_EX_NOACTIVATE = 134217728;

	internal const int WS_EX_CLIENTEDGE = 512;

	internal const int WS_EX_CONTEXTHELP = 1024;

	internal const int WS_EX_RIGHT = 4096;

	internal const int WS_EX_LEFT = 0;

	internal const int WS_EX_RTLREADING = 8192;

	internal const int WS_EX_LEFTSCROLLBAR = 16384;

	internal const int WS_EX_CONTROLPARENT = 65536;

	internal const int WS_EX_STATICEDGE = 131072;

	internal const int WS_EX_APPWINDOW = 262144;

	internal const int WS_EX_LAYERED = 524288;

	internal const int WS_EX_TOPMOST = 8;

	internal const int WS_EX_NOINHERITLAYOUT = 1048576;

	internal const int WS_EX_LAYOUTRTL = 4194304;

	internal const int WS_EX_TRANSPARENT = 32;

	internal const int WM_REFLECT = 8192;

	internal const int WM_ACTIVATE = 6;

	internal const int WM_ACTIVATEAPP = 28;

	internal const int WM_AFXFIRST = 864;

	internal const int WM_AFXLAST = 895;

	internal const int WM_APP = 32768;

	internal const int WM_ASKCBFORMATNAME = 780;

	internal const int WM_CANCELJOURNAL = 75;

	internal const int WM_CANCELMODE = 31;

	internal const int WM_CAPTURECHANGED = 533;

	internal const int WM_CHANGECBCHAIN = 781;

	internal const int WM_CHANGEUISTATE = 295;

	internal const int WM_CHAR = 258;

	internal const int WM_CHARTOITEM = 47;

	internal const int WM_CHILDACTIVATE = 34;

	internal const int WM_CHOOSEFONT_GETLOGFONT = 1025;

	internal const int WM_CLEAR = 771;

	internal const int WM_CLOSE = 16;

	internal const int WM_COMMAND = 273;

	internal const int WM_COMMNOTIFY = 68;

	internal const int WM_COMPACTING = 65;

	internal const int WM_COMPAREITEM = 57;

	internal const int WM_CONTEXTMENU = 123;

	internal const int WM_COPY = 769;

	internal const int WM_COPYDATA = 74;

	internal const int WM_CREATE = 1;

	internal const int WM_CTLCOLORBTN = 309;

	internal const int WM_CTLCOLORDLG = 310;

	internal const int WM_CTLCOLOREDIT = 307;

	internal const int WM_CTLCOLORLISTBOX = 308;

	internal const int WM_CTLCOLORMSGBOX = 306;

	internal const int WM_CTLCOLORSCROLLBAR = 311;

	internal const int WM_CTLCOLORSTATIC = 312;

	internal const int WM_CUT = 768;

	internal const int WM_DDE_ACK = 996;

	internal const int WM_DDE_ADVISE = 994;

	internal const int WM_DDE_DATA = 997;

	internal const int WM_DDE_EXECUTE = 1000;

	internal const int WM_DDE_FIRST = 992;

	internal const int WM_DDE_INITIATE = 992;

	internal const int WM_DDE_LAST = 1000;

	internal const int WM_DDE_POKE = 999;

	internal const int WM_DDE_REQUEST = 998;

	internal const int WM_DDE_TERMINATE = 993;

	internal const int WM_DDE_UNADVISE = 995;

	internal const int WM_DEADCHAR = 259;

	internal const int WM_DELETEITEM = 45;

	internal const int WM_DESTROY = 2;

	internal const int WM_DESTROYCLIPBOARD = 775;

	internal const int WM_DEVICECHANGE = 537;

	internal const int WM_DEVMODECHANGE = 27;

	internal const int WM_DISPLAYCHANGE = 126;

	internal const int WM_DRAWCLIPBOARD = 776;

	internal const int WM_DRAWITEM = 43;

	internal const int WM_DROPFILES = 563;

	internal const int WM_ENABLE = 10;

	internal const int WM_ENDSESSION = 22;

	internal const int WM_ENTERIDLE = 289;

	internal const int WM_ENTERMENULOOP = 529;

	internal const int WM_ENTERSIZEMOVE = 561;

	internal const int WM_ERASEBKGND = 20;

	internal const int WM_EXITMENULOOP = 530;

	internal const int WM_EXITSIZEMOVE = 562;

	internal const int WM_FONTCHANGE = 29;

	internal const int WM_GETDLGCODE = 135;

	internal const int WM_GETFONT = 49;

	internal const int WM_GETHOTKEY = 51;

	internal const int WM_GETICON = 127;

	internal const int WM_GETMINMAXINFO = 36;

	internal const int WM_GETOBJECT = 61;

	internal const int WM_GETTEXT = 13;

	internal const int WM_GETTEXTLENGTH = 14;

	internal const int WM_HANDHELDFIRST = 856;

	internal const int WM_HANDHELDLAST = 863;

	internal const int WM_HELP = 83;

	internal const int WM_HOTKEY = 786;

	internal const int WM_HSCROLL = 276;

	internal const int WM_HSCROLLCLIPBOARD = 782;

	internal const int WM_ICONERASEBKGND = 39;

	internal const int WM_IME_CHAR = 646;

	internal const int WM_IME_COMPOSITION = 271;

	internal const int WM_IME_COMPOSITIONFULL = 644;

	internal const int WM_IME_CONTROL = 643;

	internal const int WM_IME_ENDCOMPOSITION = 270;

	internal const int WM_IME_KEYDOWN = 656;

	internal const int WM_IME_KEYLAST = 271;

	internal const int WM_IME_KEYUP = 657;

	internal const int WM_IME_NOTIFY = 642;

	internal const int WM_IME_SELECT = 645;

	internal const int WM_IME_SETCONTEXT = 641;

	internal const int WM_IME_STARTCOMPOSITION = 269;

	internal const int WM_INITDIALOG = 272;

	internal const int WM_INITMENU = 278;

	internal const int WM_INITMENUPOPUP = 279;

	internal const int WM_INPUTLANGCHANGE = 81;

	internal const int WM_INPUTLANGCHANGEREQUEST = 80;

	internal const int WM_KEYDOWN = 256;

	internal const int WM_KEYFIRST = 256;

	internal const int WM_KEYLAST = 264;

	internal const int WM_KEYUP = 257;

	internal const int WM_KILLFOCUS = 8;

	internal const int WM_LBUTTONDBLCLK = 515;

	internal const int WM_LBUTTONDOWN = 513;

	internal const int WM_LBUTTONUP = 514;

	internal const int WM_MBUTTONDBLCLK = 521;

	internal const int WM_MBUTTONDOWN = 519;

	internal const int WM_MBUTTONUP = 520;

	internal const int WM_MDIACTIVATE = 546;

	internal const int WM_MDICASCADE = 551;

	internal const int WM_MDICREATE = 544;

	internal const int WM_MDIDESTROY = 545;

	internal const int WM_MDIGETACTIVE = 553;

	internal const int WM_MDIICONARRANGE = 552;

	internal const int WM_MDIMAXIMIZE = 549;

	internal const int WM_MDINEXT = 548;

	internal const int WM_MDIREFRESHMENU = 564;

	internal const int WM_MDIRESTORE = 547;

	internal const int WM_MDISETMENU = 560;

	internal const int WM_MDITILE = 550;

	internal const int WM_MEASUREITEM = 44;

	internal const int WM_MENUCHAR = 288;

	internal const int WM_MENUSELECT = 287;

	internal const int WM_MOUSEACTIVATE = 33;

	internal const int WM_MOUSEFIRST = 512;

	internal const int WM_MOUSEHOVER = 673;

	internal const int WM_MOUSELAST = 522;

	internal const int WM_MOUSELEAVE = 675;

	internal const int WM_MOUSEMOVE = 512;

	internal const int WM_MOUSEWHEEL = 522;

	internal const int WM_MOVE = 3;

	internal const int WM_MOVING = 534;

	internal const int WM_NCACTIVATE = 134;

	internal const int WM_NCCALCSIZE = 131;

	internal const int WM_NCCREATE = 129;

	internal const int WM_NCDESTROY = 130;

	internal const int WM_NCHITTEST = 132;

	internal const int WM_NCLBUTTONDBLCLK = 163;

	internal const int WM_NCLBUTTONDOWN = 161;

	internal const int WM_NCLBUTTONUP = 162;

	internal const int WM_NCMBUTTONDBLCLK = 169;

	internal const int WM_NCMBUTTONDOWN = 167;

	internal const int WM_NCMBUTTONUP = 168;

	internal const int WM_NCMOUSEHOVER = 672;

	internal const int WM_NCMOUSELEAVE = 674;

	internal const int WM_NCMOUSEMOVE = 160;

	internal const int WM_NCPAINT = 133;

	internal const int WM_NCRBUTTONDBLCLK = 166;

	internal const int WM_NCRBUTTONDOWN = 164;

	internal const int WM_NCRBUTTONUP = 165;

	internal const int WM_NEXTDLGCTL = 40;

	internal const int WM_NEXTMENU = 531;

	internal const int WM_NOTIFY = 78;

	internal const int WM_NOTIFYFORMAT = 85;

	internal const int WM_NULL = 0;

	internal const int WM_PAINT = 15;

	internal const int WM_PAINTCLIPBOARD = 777;

	internal const int WM_PAINTICON = 38;

	internal const int WM_PALETTECHANGED = 785;

	internal const int WM_PALETTEISCHANGING = 784;

	internal const int WM_PARENTNOTIFY = 528;

	internal const int WM_PASTE = 770;

	internal const int WM_PENWINFIRST = 896;

	internal const int WM_PENWINLAST = 911;

	internal const int WM_POWER = 72;

	internal const int WM_POWERBROADCAST = 536;

	internal const int WM_PRINT = 791;

	internal const int WM_PRINTCLIENT = 792;

	internal const int WM_PSD_ENVSTAMPRECT = 1029;

	internal const int WM_PSD_FULLPAGERECT = 1025;

	internal const int WM_PSD_GREEKTEXTRECT = 1028;

	internal const int WM_PSD_MARGINRECT = 1027;

	internal const int WM_PSD_MINMARGINRECT = 1026;

	internal const int WM_PSD_PAGESETUPDLG = 1024;

	internal const int WM_PSD_YAFULLPAGERECT = 1030;

	internal const int WM_QUERYDRAGICON = 55;

	internal const int WM_QUERYENDSESSION = 17;

	internal const int WM_QUERYNEWPALETTE = 783;

	internal const int WM_QUERYOPEN = 19;

	internal const int WM_QUERYUISTATE = 297;

	internal const int WM_QUEUESYNC = 35;

	internal const int WM_QUIT = 18;

	internal const int WM_RBUTTONDBLCLK = 518;

	internal const int WM_RBUTTONDOWN = 516;

	internal const int WM_RBUTTONUP = 517;

	internal const int WM_RENDERALLFORMATS = 774;

	internal const int WM_RENDERFORMAT = 773;

	internal const int WM_SETCURSOR = 32;

	internal const int WM_SETFOCUS = 7;

	internal const int WM_SETFONT = 48;

	internal const int WM_SETHOTKEY = 50;

	internal const int WM_SETICON = 128;

	internal const int WM_SETREDRAW = 11;

	internal const int WM_SETTEXT = 12;

	internal const int WM_SETTINGCHANGE = 26;

	internal const int WM_SHOWWINDOW = 24;

	internal const int WM_SIZE = 5;

	internal const int WM_SIZECLIPBOARD = 779;

	internal const int WM_SIZING = 532;

	internal const int WM_SPOOLERSTATUS = 42;

	internal const int WM_STYLECHANGED = 125;

	internal const int WM_STYLECHANGING = 124;

	internal const int WM_SYSCHAR = 262;

	internal const int WM_SYSCOLORCHANGE = 21;

	internal const int WM_SYSCOMMAND = 274;

	internal const int WM_SYSDEADCHAR = 263;

	internal const int WM_SYSKEYDOWN = 260;

	internal const int WM_SYSKEYUP = 261;

	internal const int WM_TCARD = 82;

	internal const int WM_TIMECHANGE = 30;

	internal const int WM_TIMER = 275;

	internal const int WM_UNDO = 772;

	internal const int WM_UPDATEUISTATE = 296;

	internal const int WM_USER = 1024;

	internal const int WM_USERCHANGED = 84;

	internal const int WM_VKEYTOITEM = 46;

	internal const int WM_VSCROLL = 277;

	internal const int WM_VSCROLLCLIPBOARD = 778;

	internal const int WM_WINDOWPOSCHANGED = 71;

	internal const int WM_WINDOWPOSCHANGING = 70;

	internal const int WM_WININICHANGE = 26;

	internal const int WM_THEMECHANGED = 794;

	internal const int VK_ESCAPE = 27;

	internal const int VK_CONTROL = 17;

	internal const int WM_WIN_FORMS_MOUSE_ENTER = 49910;

	internal const int SBM_ENABLE_ARROWS = 228;

	internal const int SBM_GETPOS = 225;

	internal const int SBM_GETRANGE = 227;

	internal const int SBM_GETSCROLLINFO = 234;

	internal const int SBM_SETPOS = 224;

	internal const int SBM_SETRANGE = 226;

	internal const int SBM_SETRANGEREDRAW = 230;

	internal const int SBM_SETSCROLLINFO = 233;

	internal const int WMSZ_TOPLEFT = 4;

	internal const int WMSZ_TOP = 3;

	internal const int WMSZ_LEFT = 1;

	internal const int WMSZ_BOTTOMLEFT = 7;

	internal const int WMSZ_TOPRIGHT = 5;

	internal const int SC_CLOSE = 61536;

	internal const int SC_MOVE = 61458;

	internal const int SC_MINIMIZE = 61472;

	internal const int TMT_TEXTCOLOR = 3803;

	internal const int TMT_CAPTIONFONT = 801;

	internal const int BFFM_ENABLEOK = 1125;

	internal const int BFFM_SETSELECTIONW = 1127;

	internal const int BFFM_SETSTATUSTEXTW = 1128;

	internal const int BFFM_SETOKTEXT = 1129;

	internal const int BFFM_SETEXPANDED = 1130;

	internal const int BFFM_INITIALIZED = 1;

	internal const int BFFM_SELCHANGED = 2;

	internal const int BFFM_VALIDATEFAILEDW = 4;

	internal const int BFFM_IUNKNOWN = 5;

	internal const int GW_HWNDFIRST = 0;

	internal const int GW_HWNDLAST = 1;

	internal const int GW_HWNDNEXT = 2;

	internal const int GW_HWNDPREV = 3;

	internal const int GW_OWNER = 4;

	internal const int GW_MAX = 5;

	internal const int GW_CHILD = 5;

	internal const int GWL_WNDPROC = -4;

	internal const int GWL_HWNDPARENT = -8;

	internal const int GWL_STYLE = -16;

	internal const int GWL_EXSTYLE = -20;

	internal const int GWL_ID = -12;

	internal const int MA_ACTIVATE = 1;

	internal const int MA_ACTIVATEANDEAT = 2;

	internal const int MA_NOACTIVATE = 3;

	internal const int MA_NOACTIVATEANDEAT = 4;

	internal const int SWP_NOSIZE = 1;

	internal const int SWP_NOMOVE = 2;

	internal const int SWP_NOZORDER = 4;

	internal const int SWP_NOACTIVATE = 16;

	internal const int SWP_FRAMECHANGED = 32;

	internal const int SWP_NOOWNERZORDER = 512;

	internal const int SWP_HIDEWINDOW = 128;

	internal const int DCX_WINDOW = 1;

	internal const int DCX_CACHE = 2;

	internal const int DCX_INTERSECTRGN = 128;

	internal const int DCX_LOCKWINDOWUPDATE = 1024;

	internal const int DCX_PARENTCLIP = 32;

	internal const int DCX_CLIPSIBLINGS = 16;

	internal const int DCX_CLIPCHILDREN = 8;

	internal const int DCX_EXCLUDERGN = 64;

	internal const int RGN_AND = 1;

	internal const int RGN_OR = 2;

	internal const int RGN_XOR = 3;

	internal const int RGN_DIFF = 4;

	internal const int RGN_COPY = 5;

	internal const int QS_KEY = 1;

	internal const int QS_MOUSEMOVE = 2;

	internal const int QS_MOUSEBUTTON = 4;

	internal const int QS_POSTMESSAGE = 8;

	internal const int QS_TIMER = 16;

	internal const int QS_PAINT = 32;

	internal const int QS_SENDMESSAGE = 64;

	internal const int QS_HOTKEY = 128;

	internal const int QS_ALLPOSTMESSAGE = 256;

	internal const int QS_RAWINPUT = 1024;

	internal const int QS_MOUSE = 6;

	internal const int QS_INPUT = 1031;

	internal const int QS_ALLEVENTS = 1215;

	internal const int QS_ALLINPUT = 1279;

	internal const int WAIT_OBJECT_0 = 0;

	internal const int WAIT_TIMEOUT = 258;

	internal const uint INFINITE = uint.MaxValue;

	public const int SB_HORZ = 0;

	public const int SB_VERT = 1;

	public const int SB_CTL = 2;

	internal const int TECHNOLOGY = 2;

	internal const int DT_METAFILE = 5;

	internal const int DT_DISPFILE = 6;

	internal const int ABM_GETTASKBARPOS = 5;

	internal const int SPI_GETWORKAREA = 48;

	internal const int SPI_GETDROPSHADOW = 4132;

	internal const int ABE_BOTTOM = 3;

	internal const int ABE_LEFT = 0;

	internal const int ABE_RIGHT = 2;

	internal const int ABE_TOP = 1;

	internal const int CS_NOCLOSE = 512;

	internal const int CS_DROPSHADOW = 131072;

	internal const int GCL_STYLE = -26;

	internal const uint WM_CBAR_SELANDDISP = 33025u;

	internal const int DVASPECT_CONTENT = 1;

	internal const int DVASPECT_TRANSPARENT = 32;

	internal const int DVASPECT_OPAQUE = 16;

	internal const int BITSPIXEL = 12;

	internal const int LOGPIXELSX = 88;

	internal const int LOGPIXELSY = 90;

	internal const int PLANES = 14;

	internal const int WM_DWMNCRENDERINGCHANGED = 799;

	internal const int WM_DWMCOMPOSITIONCHANGED = 798;

	internal const int WM_DWMCOLORIZATIONCOLORCHANGED = 800;

	internal const int S_OK = 0;

	internal static readonly int TTM_SETTOOLINFO = 1082;

	internal static readonly int TTM_ADDTOOL = 1074;

	internal static readonly int TTN_GETDISPINFO = -520;

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool GetComboBoxInfo(IntPtr hWnd, ref COMBOBOXINFO cbi);

	[DocumentationExclude]
	internal static int HIWORD(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	[DocumentationExclude]
	internal static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}

	[DocumentationExclude]
	internal static int LOWORD(IntPtr n)
	{
		return LOWORD((int)n);
	}

	[DocumentationExclude]
	internal static int HIWORD(IntPtr n)
	{
		return HIWORD((int)n);
	}

	[DocumentationExclude]
	internal static int MAKELONG(int low, int high)
	{
		return (high << 16) | (low & 0xFFFF);
	}

	[DocumentationExclude]
	internal static int MAKELPARAM(int low, int high)
	{
		return (high << 16) | (low & 0xFFFF);
	}

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

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetWindowLong(IntPtr hWnd, int nIndex);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SetWindowLong(IntPtr hWnd, int nIndex, IntPtr dwNewLong);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int CombineRgn(IntPtr hRgn, IntPtr hRgn1, IntPtr hRgn2, int nCombineMode);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int SetWindowRgn(IntPtr hWnd, IntPtr hRgn, bool bRedraw);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int SetRectRgn(IntPtr hRgn, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr CreateRectRgn(int x1, int y1, int x2, int y2);

	[DllImport("gdi32")]
	internal static extern int GetRgnBox(IntPtr hrgn, ref RECT lprc);

	[DllImport("gdi32.dll")]
	internal static extern bool LPtoDP(IntPtr hDC, POINT lpPoint, int nCount);

	[DllImport("gdi32.dll")]
	internal static extern bool LPtoDP(IntPtr hDC, int lpPoints, int nCount);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool LPtoDP(IntPtr hDC, SIZE lpSize, int nCount);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool LPtoDP(IntPtr hDC, ref RECT lpRect, int nCount);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool DPtoLP(IntPtr hDC, ref RECT lpRect, int nCount);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool SetWindowOrgEx(IntPtr hDC, int x, int y, POINT point);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool GetWindowExtEx(IntPtr hDC, out SIZE s);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool GetViewportExtEx(IntPtr hDC, out SIZE s);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int SetMapMode(IntPtr hDC, int nMapMode);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetMapMode(IntPtr hDC);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool SetViewportExtEx(IntPtr hDC, int x, int y, out SIZE size);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool SetWindowExtEx(IntPtr hDC, int x, int y, out SIZE size);

	[DllImport("user32.dll")]
	internal static extern bool SetLayeredWindowAttributes(IntPtr hwnd, uint crKey, byte bAlpha, int dwFlags);

	[DllImport("user32.dll")]
	internal static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool ScrollWindowEx(IntPtr hWnd, int nXAmount, int nYAmount, ref RECT rectScrollRegion, ref RECT rectClip, IntPtr hrgnUpdate, ref RECT prcUpdate, int flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool ScrollWindowEx(IntPtr hWnd, int nXAmount, int nYAmount, COMRECT rectScrollRegion, ref RECT rectClip, IntPtr hrgnUpdate, ref RECT prcUpdate, int flags);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool InvertRect(IntPtr hDC, ref RECT lpRect);

	[DllImport("user32.dll")]
	internal static extern uint MapVirtualKey(uint key, uint mapType);

	[DllImport("user32.dll")]
	internal static extern bool GetKeyboardState(byte[] keyState);

	[DllImport("user32.dll")]
	internal static extern short GetKeyState(int nVirtKey);

	[DllImport("user32.dll")]
	internal static extern void NotifyWinEvent(ulong eventConstant, IntPtr hwnd, long idObject, long idChild);

	[DllImport("user32.dll")]
	internal static extern int ToUnicode(uint wVirtKey, uint wScanCode, byte[] lpKeyState, byte[] pwszBuff, int cchBuff, uint wFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, ref RECT lpRect);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int SendMessage(IntPtr hWnd, int msg, int wParam, ref TOOLINFO_D lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, out bool bValue);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, IntPtr lParam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	internal static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, TOOLINFO_T lParam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int Msg, int wParam, TV_HITTESTINFO lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, TOOLINFO lParam);

	[DllImport("user32")]
	internal static extern bool ScrollWindow(IntPtr hWnd, int nXAmount, int nYAmount, ref RECT rectScrollRegion, ref RECT rectClip);

	[DllImport("user32.dll")]
	internal static extern bool SetForegroundWindow(IntPtr hWnd);

	[DllImport("gdi32.dll")]
	internal static extern IntPtr GetStockObject(int fnObject);

	[DllImport("comctl32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool ImageList_DrawEx(IntPtr himl, int i, IntPtr hdcDst, int x, int y, int dx, int dy, long rgbBk, long rgbFg, uint fStyle);

	[DllImport("comctl32")]
	internal static extern void InitCommonControls();

	[DllImport("comctl32")]
	internal static extern bool InitCommonControlsEx(INITCOMMONCONTROLSEX icc);

	[DllImport("comctl32")]
	internal static extern bool InitializeFlatSB(IntPtr hWnd);

	[DllImport("comctl32")]
	internal static extern bool UninitializeFlatSB(IntPtr hWnd);

	[DllImport("comctl32")]
	internal static extern int FlatSB_SetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si, bool redraw);

	[DllImport("comctl32")]
	internal static extern bool FlatSB_GetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si);

	[DllImport("comctl32")]
	internal static extern bool FlatSB_SetScrollProp(IntPtr hWnd, int index, int newValue, bool fRedraw);

	[DllImport("comctl32")]
	internal static extern bool FlatSB_GetScrollProp(IntPtr hWnd, int index, ref int value);

	[DllImport("comctl32")]
	internal static extern bool FlatSB_EnableScrollBar(IntPtr hWnd, int wSBflags, int wArrows);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int SetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si, bool redraw);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool GetScrollInfo(IntPtr hWnd, int fnBar, ref SCROLLINFO si);

	[DllImport("gdi32")]
	internal static extern int SetTextColor(IntPtr hDC, int crColor);

	[DllImport("gdi32")]
	internal static extern int SetBkColor(IntPtr hDC, int clr);

	[DllImport("gdi32")]
	internal static extern int SetBkMode(IntPtr hdc, int iBkMode);

	[DllImport("gdi32")]
	internal static extern IntPtr CreateSolidBrush(int crColor);

	[DllImport("gdi32")]
	internal static extern IntPtr CreatePen(int fnPenStyle, int nWidth, int crColor);

	[DllImport("gdi32")]
	internal static extern bool DeleteObject(IntPtr hObject);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool DestroyIcon(IntPtr hIcon);

	[DllImport("user32")]
	internal static extern IntPtr GetSysColorBrush(int nIndex);

	[DllImport("user32")]
	internal static extern int GetSysColor(int nIndex);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr CreateFontIndirect([In] ref LOGFONT lplf);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr CreateBitmap(int nWidth, int nHeight, int nPlanes, int nBitsPerPixel, [MarshalAs(UnmanagedType.LPArray)] short[] lpvBits);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr CreateBrushIndirect(ref LOGBRUSH lb);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr SelectObject(IntPtr hdc, IntPtr hObject);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int FillRect(IntPtr hdc, ref RECT rect, IntPtr hBrush);

	[DllImport("gdi32", CharSet = CharSet.Auto)]
	internal static extern bool ExtTextOut(IntPtr hdc, int x, int y, int nOptions, ref RECT lpRect, string s, int nStrLength, int[] lpDx);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool SetViewportOrgEx(IntPtr hdc, int x, int y, out POINT point);

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool PatBlt(IntPtr hdc, int x, int y, int nWidth, int nHeight, int dwRop);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr CreateDC(string lpszDriver, string lpszDeviceName, string lpszOutput, IntPtr devMode);

	internal static IntPtr CreateDC(string lpszDriver)
	{
		return CreateDC(lpszDriver, null, null, IntPtr.Zero);
	}

	[DllImport("gdi32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool DeleteDC(IntPtr hDC);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr ChildWindowFromPoint(IntPtr hwndParent, int x, int y);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr ChildWindowFromPoint(IntPtr hwndParent, POINT pt);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr WindowFromPoint(int x, int y);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr WindowFromPoint(POINT pt);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool SubtractRect([In] ref RECT rcdest, ref RECT rc1, ref RECT rc2);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool LockWindowUpdate(IntPtr hWndLock);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool RedrawWindow(IntPtr hWnd, IntPtr lprcUpdate, IntPtr hrgnUpdate, uint flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool RedrawWindow(IntPtr hWnd, ref RECT lprcUpdate, IntPtr hrgnUpdate, uint flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool AnimateWindow(IntPtr hwnd, uint dwTime, uint dwFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetWindow(IntPtr hwnd, uint uCmd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetActiveWindow();

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SetActiveWindow(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetForegroundWindow();

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool IsWindowVisible(IntPtr hWnd);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetDeviceCaps(IntPtr hDC, int nIndex);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool GetIconInfo(IntPtr hIcon, out ICONINFO piconinfo);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsWindow(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool GetUpdateRect(IntPtr hWnd, ref RECT lprc, bool bErase);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SetFocus(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetFocus();

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetParent(IntPtr hwnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr SetParent(IntPtr hwndchild, IntPtr hwnparent);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetDCEx(IntPtr hWnd, IntPtr hrgnClip, int flags);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool SetLayout(IntPtr hDC, int dwLayout);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool DrawFrameControl(IntPtr hDC, ref RECT rect, int type, int state);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SetWindowsHookEx(int idHook, HookProc pfnHook, IntPtr hinst, int dwThreadId);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool UnhookWindowsHookEx(IntPtr hhook);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr CallNextHookEx(IntPtr hhook, int code, IntPtr wparam, IntPtr lparam);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetModuleHandle(string modName);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetCurrentThreadId();

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetAncestor(IntPtr hwnd, int gaFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool SetWindowText(IntPtr hwnd, string windowtext);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetWindowText(IntPtr hwnd, [MarshalAs(UnmanagedType.LPTStr)] string windowtext, int maxcount);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetWindowText(IntPtr hwnd, StringBuilder lptString, int maxcount);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetWindowTextLength(IntPtr hwnd);

	[DllImport("shell32.dll")]
	internal static extern int SHGetSpecialFolderLocation(IntPtr hwnd, int csidl, ref IntPtr ppidl);

	[DllImport("shell32.dll", CharSet = CharSet.Auto)]
	internal static extern bool SHGetPathFromIDList(IntPtr pidl, IntPtr pszPath);

	[DllImport("shell32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr SHBrowseForFolder([In] BROWSEINFO lpbi);

	[DllImport("shell32.dll")]
	internal static extern int SHGetMalloc([Out][MarshalAs(UnmanagedType.LPArray)] IMalloc[] ppMalloc);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int ClientToScreen(IntPtr hWnd, ref POINT pt);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int MapWindowPoints(IntPtr hWndFrom, IntPtr hWndTo, [MarshalAs(UnmanagedType.LPArray)] POINT[] lpPoints, uint cPoints);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int ScreenToClient(IntPtr hWnd, ref POINT pt);

	[DllImport("user32", CharSet = CharSet.Auto)]
	internal static extern int SendDlgItemMessage(IntPtr hDlg, int nIDDlgItem, int Msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetDlgItem(IntPtr hWnd, int nIDDlgItem);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool EnableWindow(IntPtr hWnd, bool enable);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetDlgItemInt(IntPtr hWnd, int nIDDlgItem, bool[] err, bool signed);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetObject(IntPtr hgdiobj, int cbBuffer, out BITMAP bm);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool PostMessage(IntPtr hwnd, int msg, IntPtr wparam, IntPtr lparam);

	[DllImport("user32.dll")]
	internal static extern int GetSystemMetrics(int nIndex);

	[DllImport("shell32.dll")]
	internal static extern int SHAppBarMessage(int dwMessage, ref APPBARDATA pData);

	[DllImport("user32.dll")]
	internal static extern int SystemParametersInfo(int uAction, int uParam, ref RECT lpvParam, int fuWinIni);

	[DllImport("user32.dll")]
	internal static extern int SystemParametersInfo(int uAction, int uParam, ref NONCLIENTMETRICS lpvParam, int fuWinIni);

	[DllImport("user32.dll")]
	internal static extern int SystemParametersInfo(int uAction, int uParam, ref bool lpvParam, int fuWinIni);

	[DllImport("user32.dll")]
	internal static extern int FindWindow(string lpClassName, string lpWindowName);

	[DllImport("user32.dll")]
	internal static extern int GetWindowRect(int hwnd, ref RECT lpRect);

	[DllImport("user32.dll")]
	public static extern bool GetClientRect(IntPtr hWnd, ref RECT rc);

	[DllImport("user32.dll")]
	internal static extern int InvalidateRect(IntPtr hwnd, ref RECT lpRect, bool bErase);

	[DllImport("user32.dll")]
	internal static extern int EnumChildWindows(int hWndParent, Syncfusion.Runtime.InteropServices.CallBack lpEnumFunc, ref RECT lParam);

	[DllImport("user32.dll")]
	internal static extern int EnumChildWindows(IntPtr hWndParent, EnumChildWindowsCallBack lpEnumFunc, IntPtr lParam);

	[DllImport("user32.dll")]
	internal static extern int GetClassLong(IntPtr hWnd, int index);

	[DllImport("user32.dll")]
	internal static extern int GetClassName(IntPtr hwnd, StringBuilder lpClassName, int nMaxCount);

	[DllImport("user32.dll")]
	internal static extern IntPtr GetTopWindow(IntPtr hWnd);

	[DllImport("gdi32.dll")]
	internal static extern bool BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, int dwRop);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool SetWindowPlacement(IntPtr hWnd, ref WINDOWPLACEMENT lpwndpl);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool GetWindowPlacement(IntPtr hWnd, ref WINDOWPLACEMENT lpwndpl);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool SetMenu(IntPtr hWnd, IntPtr hMenu);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetMenuItemCount(IntPtr hMenu);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetSubMenu(IntPtr hMenu, int count);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetMenu(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsMenu(IntPtr hMenu);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int GetMenuString(IntPtr hMenu, uint uIDItem, [MarshalAs(UnmanagedType.LPTStr)] string lpString, int maxCount, uint uFlag);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool DrawMenuBar(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool DestroyMenu(IntPtr hMenu);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsZoomed(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool DrawState(IntPtr hdc, IntPtr hbr, DrawStateProc lpOutputFunc, IntPtr lData, IntPtr wData, int x, int y, int cx, int cy, uint fuFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr CopyImage(IntPtr hImage, uint uType, int cxDesired, int cyDesired, uint fuflags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool PeekMessage([In] ref MSG msg, IntPtr hwnd, int msgMin, int msgMax, int remove);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool TrackMouseEvent(ref TRACKMOUSEEVENT lpEventTrack);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool TranslateMessage([In] ref MSG msg);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int DispatchMessage([In] ref MSG msg);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool MoveWindow(IntPtr hWnd, int X, int Y, int nWidth, int nHeight, bool bRepaint);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsChild(IntPtr hWndParent, IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int DrawText(IntPtr hDC, string lpszString, int nCount, ref RECT lpRect, int nFormat);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	internal static extern int MulDiv(int nNumber, int nNumerator, int nDenominator);

	[DllImport("user32.dll")]
	internal static extern int MsgWaitForMultipleObjects(int nCount, [MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 0)] IntPtr[] pHandles, bool bWaitAll, uint dwMilliseconds, int dwWakeMask);

	[DllImport("USER32.dll")]
	internal static extern IntPtr SetCapture(IntPtr hWnd);

	[DllImport("USER32.dll")]
	internal static extern IntPtr GetCapture();

	[DllImport("USER32.dll")]
	internal static extern IntPtr ReleaseCapture();

	[DllImport("user32.dll")]
	internal static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, IntPtr dwExtraInfo);

	[DllImport("Gdi32.dll", CharSet = CharSet.Auto)]
	internal static extern bool GetTextExtentPoint32(IntPtr hdc, string lpString, int cbString, ref SIZE lpSize);

	[DllImport("uxtheme.dll", EntryPoint = "OpenThemeData", SetLastError = true)]
	internal static extern IntPtr IntOpenThemeData(IntPtr hwnd, [MarshalAs(UnmanagedType.LPWStr)] string pszClassList);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto, EntryPoint = "CloseThemeData")]
	internal static extern IntPtr IntCloseThemeData(IntPtr hTheme);

	internal static IntPtr OpenThemeData(IntPtr hwnd, string pszClassList)
	{
		return IntOpenThemeData(hwnd, pszClassList);
	}

	internal static IntPtr CloseThemeData(IntPtr hTheme)
	{
		return IntCloseThemeData(hTheme);
	}

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsThemeActive();

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern int DrawThemeBackground(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, ref RECT rect, ref RECT clipRect);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern int DrawThemeText(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, string pszText, int iCharCount, uint dwTextFlags, uint dwTextFlags2, [MarshalAs(UnmanagedType.Struct)] ref RECT rect);

	[DllImport("uxtheme.dll")]
	internal static extern void GetThemeBackgroundContentRect(int hTheme, IntPtr hdc, int iPartId, int iStateId, ref RECT pBoundingRect, ref RECT pContentRect);

	[DllImport("uxtheme.dll")]
	internal static extern void GetThemeBackgroundExtent(int hTheme, IntPtr hdc, int iPartId, int iStateId, ref RECT pContentRect, ref RECT pExtentRect);

	[DllImport("uxtheme.dll")]
	internal static extern uint GetThemePartSize(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, IntPtr prc, int sizeType, out SIZE psz);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern uint GetThemeTextExtent(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, string pszText, int iCharCount, uint dwTextFlags, [MarshalAs(UnmanagedType.Struct)] ref RECT pBoundingRect, out RECT pExtentRect);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeTextMetrics(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, [In][Out] ref TEXTMETRIC ptm);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeBackgroundRegion(IntPtr hTheme, int iPartId, int iStateId, RECT pRect, [In][Out] ref IntPtr pRegion);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong HitTestThemeBackground(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, ulong dwOptions, RECT pRect, IntPtr hrgn, POINT ptTest, [In][Out] ref uint wHitTestCode);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong DrawThemeEdge(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, RECT pDestRect, uint uEdge, uint uFlags, [In][Out] ref RECT contentRect);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong DrawThemeIcon(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, RECT pRect, IntPtr himl, int iImageIndex);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsThemePartDefined(IntPtr hTheme, int iPartId, int iStateId);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsThemeBackgroundPartiallyTransparent(IntPtr hTheme, int iPartId, int iStateId);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern int GetThemeColor(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref ulong color);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeMetric(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref int iVal);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeString(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref string pszBuff, int cchMaxBuffChars);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeBool(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref bool fVal);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeInt(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref int iVal);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeEnumValue(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref int iVal);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemePosition(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref POINT point);

	[DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
	internal static extern ulong GetThemeFont(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, int iPropId, out LOGFONT font);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeRect(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref RECT pRect);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeMargins(IntPtr hTheme, int iPartId, int iStateId, int iPropId, out MARGINS margins);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeIntList(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref INTLIST intList);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemePropertyOrigin(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref int origin);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong SetWindowTheme(IntPtr hwnd, string pszSubAppName, string pszSubIdList);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeFilename(IntPtr hTheme, int iPartId, int iStateId, int iPropId, [In][Out] ref string pszThemeFileName, int cchMaxBuffChars);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeSysColor(IntPtr hTheme, int iColorId);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetThemeSysColorBrush(IntPtr hTheme, int iColorId);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern int GetThemeSysSize(IntPtr hTheme, int iSizeId);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern bool GetThemeSysBool(IntPtr hTheme, int iBoolId);

	[DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
	internal static extern ulong GetThemeSysFont(IntPtr hTheme, int iFontId, [In][Out] ref LOGFONT lf);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeSysString(IntPtr hTheme, int iStringId, [In][Out] ref string pszStringBuff, int cchMaxStringChars);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeSysInt(IntPtr hTheme, int iIntId, [In][Out] ref int iValue);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsAppThemed();

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr GetWindowTheme(IntPtr hwnd);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong EnableThemeDialogTexture(IntPtr hwnd, bool fEnable);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern bool IsThemeDialogTextureEnabled(IntPtr hwnd);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeAppProperties();

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern void SetThemeAppProperties(ulong dwFlags);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetCurrentThemeName([MarshalAs(UnmanagedType.LPWStr)] string pszThemeFileName, int cchMaxNameChars, [MarshalAs(UnmanagedType.LPWStr)] string pszColorBuff, int cchMaxColorChars, [MarshalAs(UnmanagedType.LPWStr)] string pszSizeBuff, int cchMaxSizeChars);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern ulong GetThemeDocumentationProperty(string pszThemeName, string pszPropertyName, [In][Out] ref string pszValueBuff, int cchMaxValChars);

	[DllImport("uxtheme.dll", CharSet = CharSet.Auto)]
	internal static extern IntPtr DrawThemeParentBackground(IntPtr hwnd, IntPtr hdc, ref RECT prc);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int IntersectClipRect(IntPtr hDC, int x1, int y1, int x2, int y2);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetClipBox(IntPtr hDC, ref RECT lpRect);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetClipRgn(IntPtr hDC, IntPtr hRgn);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int SelectClipRgn(IntPtr hDC, IntPtr hRgn);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr CreateCompatibleDC(IntPtr hDC);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr CreateCompatibleBitmap(IntPtr hDC, int width, int height);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetWindowDC(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern IntPtr GetDC(IntPtr hWnd);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern int GetVersion();

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, bool wParam, FORMATRANGE fr);

	[DllImport("Kernel32.dll")]
	internal static extern int GetUserDefaultLCID();

	[DllImport("gdi32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetRegionData(IntPtr hRgn, int size, byte[] data);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr BeginPaint(IntPtr hWnd, ref PAINTSTRUCT lpPaint);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool EndPaint(IntPtr hWnd, ref PAINTSTRUCT lpPaint);

	[DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
	public static extern bool GetStringTypeEx(uint Locale, StringInfoType dwInfoType, string lpSrcStr, int cchSrc, [Out] ushort[] lpCharType);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern ushort GetAsyncKeyState(Keys key);

	[DllImport("user32.dll")]
	internal static extern IntPtr BeginDeferWindowPos(int nNumWindows);

	[DllImport("user32.dll")]
	internal static extern IntPtr DeferWindowPos(IntPtr hWinPosInfo, IntPtr hWnd, IntPtr hWndInsertAfter, int x, int y, int cx, int cy, uint uFlags);

	[DllImport("user32.dll")]
	internal static extern bool EndDeferWindowPos(IntPtr hWinPosInfo);

	[DllImport("user32.dll")]
	internal static extern IntPtr GetDCEx(IntPtr hWnd, IntPtr hrgnClip, uint flags);

	[DllImport("ole32.dll")]
	internal static extern int GetRunningObjectTable(int reserved, out IRunningObjectTable prot);

	[DllImport("ole32.dll")]
	internal static extern int CreateBindCtx(int reserved, out IBindCtx ppbc);

	[DllImport("dwmapi.dll", PreserveSig = false)]
	internal static extern bool DwmIsCompositionEnabled();

	[DllImport("dwmapi.dll")]
	internal static extern IntPtr DwmIsCompositionEnabled(ref bool isEnabled);

	[DllImport("DwmApi.dll")]
	internal static extern int DwmEnableComposition(bool fEnabled);

	[DllImport("dwmapi.dll", PreserveSig = false)]
	internal static extern bool DwmDefWindowProc(IntPtr hWnd, int msg, IntPtr wParam, IntPtr lParam, out int plResult);

	[DllImport("dwmapi.dll", PreserveSig = false)]
	internal static extern void DwmExtendFrameIntoClientArea(IntPtr hWnd, MARGINS pMargins);

	[DllImport("dwmapi.dll", PreserveSig = false)]
	internal static extern void DwmGetColorizationColor(out int pcrColorization, [MarshalAs(UnmanagedType.Bool)] out bool pfOpaqueBlend);

	[DllImport("DwmApi.dll", EntryPoint = "#103")]
	internal static extern int DwmRestartComposition();

	[DllImport("dwmapi.dll")]
	internal static extern int DwmGetWindowAttribute(IntPtr hWnd, uint dwAttribute, out int pvAttribute, uint cbAttribute);

	[DllImport("dwmapi.dll")]
	[SuppressUnmanagedCodeSecurity]
	internal static extern int DwmSetWindowAttribute(IntPtr hWnd, uint dwAttribute, IntPtr pvAttribute, uint cbAttribute);

	internal static bool SetDwmNCRendering(IntPtr hWnd, bool enable)
	{
		DWMNCRENDERINGPOLICY val = ((!enable) ? DWMNCRENDERINGPOLICY.DWMNCRP_DISABLED : DWMNCRENDERINGPOLICY.DWMNCRP_ENABLED);
		IntPtr intPtr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(int)));
		Marshal.WriteInt32(intPtr, (int)val);
		int num = DwmSetWindowAttribute(hWnd, 2u, intPtr, (uint)Marshal.SizeOf(typeof(int)));
		Marshal.FreeHGlobal(intPtr);
		if (num == 0)
		{
			return true;
		}
		return false;
	}

	internal static bool IsDwmNCRenderingEnabled(IntPtr hWnd)
	{
		if (!IsCompositionEnabled())
		{
			return false;
		}
		DwmGetWindowAttribute(hWnd, 1u, out var pvAttribute, (uint)Marshal.SizeOf(typeof(int)));
		if (pvAttribute > 0)
		{
			return true;
		}
		return false;
	}

	public static bool IsCompositionEnabled()
	{
		if (Environment.OSVersion.Version.Major < 6)
		{
			return false;
		}
		bool isEnabled = false;
		if (DwmIsCompositionEnabled(ref isEnabled) == new IntPtr(0))
		{
			return isEnabled;
		}
		return false;
	}
}
