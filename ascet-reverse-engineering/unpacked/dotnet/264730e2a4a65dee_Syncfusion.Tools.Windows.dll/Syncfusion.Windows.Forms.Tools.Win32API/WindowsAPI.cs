using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public class WindowsAPI
{
	public delegate IntPtr HookProc(int nCode, IntPtr wParam, IntPtr lParam);

	public delegate IntPtr WindowProc(IntPtr hWnd, int nMsg, IntPtr wParam, IntPtr lParam);

	public delegate IntPtr BrowseCallbackProc(IntPtr hwnd, int uMsg, IntPtr lParam, IntPtr lpData);

	public const string TOOLBARCLASSNAME = "ToolbarWindow32";

	public const string REBARCLASSNAME = "ReBarWindow32";

	public const string PROGRESSBARCLASSNAME = "msctls_progress32";

	public const string SCROLLBAR = "SCROLLBAR";

	private WindowsAPI()
	{
	}

	[DllImport("kernel32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetCurrentThreadId();

	[DllImport("kernel32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetLastError();

	[DllImport("kernel32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern void SetLastError(int error);

	[DllImport("gdi32.dll")]
	public static extern bool StretchBlt(IntPtr hDCDest, int XOriginDest, int YOriginDest, int WidthDest, int HeightDest, IntPtr hDCSrc, int XOriginScr, int YOriginSrc, int WidthScr, int HeightScr, PatBltTypes Rop);

	[DllImport("gdi32.dll")]
	public static extern IntPtr CreateCompatibleDC(IntPtr hDC);

	[DllImport("gdi32.dll")]
	public static extern IntPtr CreateCompatibleBitmap(IntPtr hDC, int Width, int Heigth);

	[DllImport("gdi32.dll")]
	public static extern IntPtr SelectObject(IntPtr hDC, IntPtr hObject);

	[DllImport("gdi32.dll")]
	[CLSCompliant(false)]
	public static extern bool BitBlt(IntPtr hDCDest, int XOriginDest, int YOriginDest, int WidthDest, int HeightDest, IntPtr hDCSrc, int XOriginScr, int YOriginSrc, uint Rop);

	[DllImport("gdi32.dll")]
	public static extern IntPtr DeleteDC(IntPtr hDC);

	[DllImport("gdi32.dll")]
	[CLSCompliant(false)]
	public static extern bool PatBlt(IntPtr hDC, int XLeft, int YLeft, int Width, int Height, uint Rop);

	[DllImport("gdi32.dll")]
	public static extern bool DeleteObject(IntPtr hObject);

	[DllImport("gdi32.dll")]
	[CLSCompliant(false)]
	public static extern uint GetPixel(IntPtr hDC, int XPos, int YPos);

	[DllImport("gdi32.dll")]
	[CLSCompliant(false)]
	public static extern uint SetPixel(IntPtr hdc, int XPox, int YPos, int crColor);

	[DllImport("gdi32.dll")]
	public static extern int SetMapMode(IntPtr hDC, int fnMapMode);

	[DllImport("gdi32.dll")]
	public static extern int GetObjectType(IntPtr handle);

	[DllImport("gdi32")]
	public static extern IntPtr CreateDIBSection(IntPtr hdc, ref BITMAPINFO_FLAT bmi, int iUsage, ref IntPtr ppvBits, IntPtr hSection, int dwOffset);

	[DllImport("gdi32")]
	public static extern int GetDIBits(IntPtr hDC, IntPtr hbm, int StartScan, int ScanLines, int lpBits, BITMAPINFOHEADER bmi, int usage);

	[DllImport("gdi32")]
	public static extern int GetDIBits(IntPtr hdc, IntPtr hbm, int StartScan, int ScanLines, int lpBits, ref BITMAPINFO_FLAT bmi, int usage);

	[DllImport("gdi32")]
	public static extern IntPtr GetPaletteEntries(IntPtr hpal, int iStartIndex, int nEntries, byte[] lppe);

	[DllImport("gdi32")]
	public static extern IntPtr GetSystemPaletteEntries(IntPtr hdc, int iStartIndex, int nEntries, byte[] lppe);

	[DllImport("gdi32")]
	[CLSCompliant(false)]
	public static extern uint SetDCBrushColor(IntPtr hdc, uint crColor);

	[DllImport("gdi32")]
	[CLSCompliant(false)]
	public static extern IntPtr CreateSolidBrush(uint crColor);

	[DllImport("gdi32")]
	public static extern int SetBkMode(IntPtr hDC, BackgroundMode mode);

	[DllImport("gdi32")]
	public static extern int SetViewportOrgEx(IntPtr hdc, int x, int y, int param);

	[DllImport("gdi32")]
	[CLSCompliant(false)]
	public static extern uint SetTextColor(IntPtr hDC, uint colorRef);

	[DllImport("gdi32")]
	public static extern int SetStretchBltMode(IntPtr hDC, StrechModeFlags StrechMode);

	[DllImport("gdi32")]
	public static extern int ExcludeClipRect(IntPtr hdc, int nLeft, int nTop, int nRight, int nBottom);

	[DllImport("gdi32.dll")]
	public static extern IntPtr CreateRoundRectRgn(int nLeft, int nTop, int nRight, int nBottom, int nWidthEllipse, int nHeightEllipse);

	[DllImport("uxtheme.dll")]
	public static extern int SetWindowTheme(IntPtr hWnd, string AppID, string ClassID);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr ChildWindowFromPoint(IntPtr hWndParent, POINT point);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr WindowFromPoint(POINT pt);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool IsChild(IntPtr hWndParent, IntPtr hWnd);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool IsIconic(IntPtr hWnd);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int CallWindowProc(IntPtr wndProc, IntPtr hwnd, int msg, IntPtr wparam, IntPtr lparam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetDC(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern void PostQuitMessage(int exitCode);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetDesktopWindow();

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool ShowWindow(IntPtr hWnd, short State);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool UpdateWindow(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool RedrawWindow(IntPtr hWnd, IntPtr rcUpdate, IntPtr hrgnUpdate, RedrawWindowFlags flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool RedrawWindow(IntPtr hWnd, ref RECT rcUpdate, IntPtr hrgnUpdate, RedrawWindowFlags flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool SetForegroundWindow(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int x, int y, int Width, int Height, SetWindowPosFlags flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool SetLayeredWindowAttributes(IntPtr hwnd, int crKey, int bAlpha, LayeredWindowFlags dwFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool OpenClipboard(IntPtr hWndNewOwner);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool CloseClipboard();

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool EmptyClipboard();

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern IntPtr SetClipboardData(uint Format, IntPtr hData);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern bool GetMenuItemRect(IntPtr hWnd, IntPtr hMenu, uint Item, ref RECT rc);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetParent(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr GetWindow(IntPtr hWnd, GetWindowCmd cmd);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetTopWindow(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, string lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, ref int wParam, ref int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int SendMessage(IntPtr hWnd, Msg msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int SendMessage(IntPtr hWnd, int msg, int wParam, ref MSG lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int SendMessage(IntPtr hWnd, int msg, int wParam, ref TOOLINFO lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int SendMessage(IntPtr hWnd, SpinControlMsg msg, int wParam, ref UDACCEL lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, IntPtr lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref RECT lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int SendMessage(IntPtr hWnd, int msg, int wParam, ref POINT lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref TBBUTTON lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref TBBUTTONINFO lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int SendMessage(IntPtr hWnd, int msg, int wParam, ref REBARBANDINFO lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref TVITEM lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref LVITEM lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref HDITEM lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern void SendMessage(IntPtr hWnd, int msg, int wParam, ref HD_HITTESTINFO hti);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int SendMessage(IntPtr hWnd, int msg, int wParam, ref PARAFORMAT2 format);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int SendDlgItemMessage(IntPtr hWnd, int Id, int msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern IntPtr PostThreadMessage(uint idThread, int msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr PostMessage(IntPtr hWnd, int msg, int wParam, int lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SetWindowsHookEx(int hookid, HookProc pfnhook, IntPtr hinst, int threadid);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool UnhookWindowsHookEx(IntPtr hhook);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CallNextHookEx(IntPtr hhook, int code, IntPtr wparam, IntPtr lparam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SetFocus(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int DrawText(IntPtr hdc, string lpString, int nCount, ref RECT lpRect, int uFormat);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SetParent(IntPtr hChild, IntPtr hParent);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetDlgItem(IntPtr hDlg, int nControlID);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int GetClientRect(IntPtr hWnd, ref RECT rc);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int InvalidateRect(IntPtr hWnd, IntPtr rect, int bErase);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int InvalidateRect(IntPtr hWnd, ref RECT rect, int bErase);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool WaitMessage();

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern bool PeekMessage(ref MSG msg, int hWnd, uint wFilterMin, uint wFilterMax, uint wFlag);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern bool GetMessage(ref MSG msg, int hWnd, uint wFilterMin, uint wFilterMax);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool TranslateMessage(ref MSG msg);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool DispatchMessage(ref MSG msg);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern IntPtr LoadCursor(IntPtr hInstance, uint cursor);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SetCursor(IntPtr hCursor);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetCursor();

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetFocus();

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool ReleaseCapture();

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool GetUpdateRect(IntPtr hWnd, ref RECT lpRect, bool bErase);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr BeginPaint(IntPtr hWnd, ref PAINTSTRUCT ps);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool EndPaint(IntPtr hWnd, ref PAINTSTRUCT ps);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool UpdateLayeredWindow(IntPtr hwnd, IntPtr hdcDst, ref POINT pptDst, ref WIN32SIZE psize, IntPtr hdcSrc, ref POINT pprSrc, int crKey, ref BLENDFUNCTION pblend, int dwFlags);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool GetWindowRect(IntPtr hWnd, ref RECT rect);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool ClientToScreen(IntPtr hWnd, ref POINT pt);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool ScreenToClient(IntPtr hWnd, ref POINT pt);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int MapWindowPoints(IntPtr hWndFrom, IntPtr hWndTo, ref POINT lpPoints, uint cPoints);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern bool TrackMouseEvent(ref TRACKMOUSEEVENTS tme);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool SetWindowRgn(IntPtr hWnd, IntPtr hRgn, bool redraw);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern ushort GetKeyState(int virtKey);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern short GetAsyncKeyState(VirtualKeys vkey);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern bool MoveWindow(IntPtr hWnd, int x, int y, int width, int height, bool repaint);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int GetClassName(IntPtr hWnd, out STRINGBUFFER ClassName, int nMaxCount);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int SetWindowLong(IntPtr hWnd, int nIndex, IntPtr dwNewLong);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int SetWindowLong(IntPtr hWnd, int nIndex, WindowProc wndProc);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int GetWindowLong(IntPtr hWnd, int nIndex);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetDCEx(IntPtr hWnd, IntPtr hRegion, GetDCExFlags flags);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetWindowDC(IntPtr hWnd);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int FillRect(IntPtr hDC, ref RECT rect, IntPtr hBrush);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int GetWindowPlacement(IntPtr hWnd, ref WINDOWPLACEMENT wp);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int SetWindowText(IntPtr hWnd, string text);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	public static extern int GetWindowText(IntPtr hWnd, out STRINGBUFFER text, int maxCount);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr SetClipboardViewer(IntPtr hWndNewViewer);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int ChangeClipboardChain(IntPtr hWndRemove, IntPtr hWndNewNext);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int GetSystemMetrics(SystemMetricsCodes nIndex);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int SetScrollInfo(IntPtr hwnd, int bar, ref SCROLLINFO si, int fRedraw);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int ShowScrollBar(IntPtr hWnd, int bar, int show);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int EnableScrollBar(IntPtr hWnd, uint flags, uint arrows);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int BringWindowToTop(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int GetScrollInfo(IntPtr hwnd, int bar, ref SCROLLINFO si);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int ScrollWindowEx(IntPtr hWnd, int dx, int dy, ref RECT rcScroll, ref RECT rcClip, IntPtr UpdateRegion, ref RECT rcInvalidated, uint flags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int IsWindow(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool IsWindowEnabled(IntPtr hWnd);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool IsWindowVisible(IntPtr hWnd);

	[DllImport("shell32.Dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int Shell_NotifyIcon(NotifyCommand cmd, ref NOTIFYICONDATA data);

	[DllImport("User32.Dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int TrackPopupMenuEx(IntPtr hMenu, uint uFlags, int x, int y, IntPtr hWnd, IntPtr ignore);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int GetCursorPos(ref POINT pnt);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int GetCaretPos(ref POINT pnt);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int ValidateRect(IntPtr hWnd, ref RECT rc);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr FindWindowEx(IntPtr hWnd, IntPtr hChild, string strClassName, string strName);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr FindWindowEx(IntPtr hWnd, IntPtr hChild, string strClassName, IntPtr strName);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern int AnimateWindow(IntPtr hWnd, uint dwTime, uint dwFlags);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int AdjustWindowRectEx([In][Out] ref RECT lpRect, int dwStyle, bool bMenu, int dwExStyle);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool PtInRect(ref RECT rc, POINT pt);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int DefWindowProc(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern int DefWindowProc(IntPtr hWnd, Msg Msg, IntPtr wParam, ref RECT lParam);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	public static extern bool InflateRect(ref RECT lpRect, int dx, int dy);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	[CLSCompliant(false)]
	public static extern bool GetComboBoxInfo(IntPtr hWnd, ref COMBOBOXINFO cbi);

	[DllImport("comctl32.dll")]
	public static extern bool InitCommonControlsEx(INITCOMMONCONTROLSEX icc);

	[DllImport("comctl32.dll")]
	public static extern bool InitCommonControls();

	[DllImport("comctl32.dll", EntryPoint = "DllGetVersion")]
	public static extern int GetCommonControlDLLVersion(ref DLLVERSIONINFO dvi);

	[DllImport("comctl32.dll")]
	[CLSCompliant(false)]
	public static extern IntPtr ImageList_Create(int width, int height, uint flags, int count, int grow);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_Destroy(IntPtr handle);

	[DllImport("comctl32.dll")]
	public static extern int ImageList_Add(IntPtr imageHandle, IntPtr hBitmap, IntPtr hMask);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_Remove(IntPtr imageHandle, int index);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_BeginDrag(IntPtr imageHandle, int imageIndex, int xHotSpot, int yHotSpot);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_DragEnter(IntPtr hWndLock, int x, int y);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_DragMove(int x, int y);

	[DllImport("comctl32.dll")]
	public static extern bool ImageList_DragLeave(IntPtr hWndLock);

	[DllImport("comctl32.dll")]
	public static extern void ImageList_EndDrag();

	public static int GET_X_LPARAM(int lParam)
	{
		return (short)(lParam & 0xFFFF);
	}

	public static int GET_Y_LPARAM(int lParam)
	{
		return (short)(lParam >> 16);
	}

	public static int GET_X_LPARAM(IntPtr lParam)
	{
		return (short)(lParam.ToInt64() & 0xFFFF);
	}

	public static int GET_Y_LPARAM(IntPtr lParam)
	{
		return (short)(lParam.ToInt64() >> 16);
	}

	public static Point GetPointFromLPARAM(int lParam)
	{
		return new Point(GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam));
	}

	public static Point GetPointFromLPARAM(IntPtr lParam)
	{
		return new Point(GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam));
	}

	public static int LOW_ORDER(int param)
	{
		return param & 0xFFFF;
	}

	public static int HIGH_ORDER(int param)
	{
		return param >> 16;
	}

	public static int LOW_ORDER(IntPtr param)
	{
		return (short)(param.ToInt64() & 0xFFFF);
	}

	public static int HIGH_ORDER(IntPtr param)
	{
		return (short)(param.ToInt64() >> 16);
	}

	public static int MAKELONG(int x, int y)
	{
		return x + (y << 16);
	}

	[DllImport("shell32.dll")]
	internal static extern IntPtr SHAppBarMessage(int dwMessage, ref APPBARDATA pData);

	[DllImport("shell32.dll")]
	public static extern IntPtr ShellExecute(IntPtr hwnd, string lpOperation, string lpFile, string lpParameters, string lpDirectory, int nShowCmd);

	[DllImport("shell32.dll")]
	public static extern int SHGetMalloc(out IntPtr hObject);

	[DllImport("shell32.dll")]
	[CLSCompliant(false)]
	public static extern int SHGetFolderLocation(IntPtr hwndOwner, int nFolder, IntPtr hToken, uint dwReserved, out IntPtr ppidl);

	[DllImport("shell32.dll")]
	public static extern int SHGetPathFromIDList(IntPtr pidl, StringBuilder pszPath);

	[DllImport("shell32.dll")]
	[CLSCompliant(false)]
	public static extern int SHGetFolderPath(IntPtr hwndOwner, int nFolder, IntPtr hToken, uint dwFlags, StringBuilder pszPath);

	[DllImport("shell32.dll")]
	[CLSCompliant(false)]
	public static extern int SHParseDisplayName([MarshalAs(UnmanagedType.LPWStr)] string pszName, IntPtr pBndContext, out IntPtr ppidl, uint AttrToQuery, out uint ResultAttr);

	[DllImport("shell32.dll")]
	public static extern int SHGetDesktopFolder(out IntPtr ppshf);

	[DllImport("shell32.dll")]
	public static extern int SHBindToParent(IntPtr pidl, [MarshalAs(UnmanagedType.LPStruct)] Guid riid, out IntPtr ppv, ref IntPtr ppidlLast);

	[DllImport("shlwapi.dll")]
	[CLSCompliant(false)]
	public static extern int StrRetToBSTR(ref STRRET pstr, IntPtr pidl, [MarshalAs(UnmanagedType.BStr)] out string pbstr);

	[DllImport("shlwapi.dll")]
	[CLSCompliant(false)]
	public static extern int StrRetToBuf(ref STRRET pstr, IntPtr pidl, StringBuilder pszBuf, uint cchBuf);

	[DllImport("shell32.dll")]
	[CLSCompliant(false)]
	public static extern IntPtr SHBrowseForFolder(ref BROWSEINFO lbpi);

	public static void SetRedraw(Control ctrl, bool bRedraw)
	{
		if (ctrl.IsHandleCreated)
		{
			SendMessage(ctrl.Handle, Msg.WM_SETREDRAW, bRedraw ? 1 : 0, 0);
		}
	}

	public static int GetStyle(Control ctrl)
	{
		int result = 0;
		if (ctrl.IsHandleCreated)
		{
			result = GetWindowLong(ctrl.Handle, -16);
		}
		return result;
	}

	public static int GetExStyle(Control ctrl)
	{
		int result = 0;
		if (ctrl.IsHandleCreated)
		{
			result = GetWindowLong(ctrl.Handle, -20);
		}
		return result;
	}
}
