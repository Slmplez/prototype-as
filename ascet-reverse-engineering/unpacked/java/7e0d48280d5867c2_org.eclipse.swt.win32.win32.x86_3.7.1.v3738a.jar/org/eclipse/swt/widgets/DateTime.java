/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.INITCOMMONCONTROLSEX;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MCHITTESTINFO;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;
import org.eclipse.swt.internal.win32.SYSTEMTIME;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.TypedListener;

public class DateTime
extends Composite {
    static final int MIN_YEAR = 1752;
    static final int MAX_YEAR = 9999;
    boolean doubleClick;
    boolean ignoreSelection;
    SYSTEMTIME lastSystemTime;
    SYSTEMTIME time = new SYSTEMTIME();
    static final int DateTimeProc;
    static final TCHAR DateTimeClass;
    static final int CalendarProc;
    static final TCHAR CalendarClass;
    static final int MARGIN = 4;
    static final int MAX_DIGIT = 9;
    static final int MAX_DAY = 31;
    static final int MAX_12HOUR = 12;
    static final int MAX_24HOUR = 24;
    static final int MAX_MINUTE = 60;
    static final int MONTH_DAY_YEAR = 0;
    static final int DAY_MONTH_YEAR = 1;
    static final int YEAR_MONTH_DAY = 2;
    static final char SINGLE_QUOTE = '\'';
    static final char DAY_FORMAT_CONSTANT = 'd';
    static final char MONTH_FORMAT_CONSTANT = 'M';
    static final char YEAR_FORMAT_CONSTANT = 'y';
    static final char HOURS_FORMAT_CONSTANT = 'h';
    static final char MINUTES_FORMAT_CONSTANT = 'm';
    static final char SECONDS_FORMAT_CONSTANT = 's';
    static final char AMPM_FORMAT_CONSTANT = 't';
    static final int[] MONTH_NAMES;

    static {
        DateTimeClass = new TCHAR(0, "SysDateTimePick32", true);
        CalendarClass = new TCHAR(0, "SysMonthCal32", true);
        INITCOMMONCONTROLSEX icex = new INITCOMMONCONTROLSEX();
        icex.dwSize = INITCOMMONCONTROLSEX.sizeof;
        icex.dwICC = 256;
        OS.InitCommonControlsEx(icex);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, DateTimeClass, lpWndClass);
        DateTimeProc = lpWndClass.lpfnWndProc;
        int hInstance = OS.GetModuleHandle(null);
        int hHeap = OS.GetProcessHeap();
        lpWndClass.hInstance = hInstance;
        lpWndClass.style &= 0xFFFFBFFF;
        lpWndClass.style |= 8;
        int byteCount = DateTimeClass.length() * TCHAR.sizeof;
        int lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpszClassName, DateTimeClass, byteCount);
        lpWndClass.lpszClassName = lpszClassName;
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpszClassName);
        lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, CalendarClass, lpWndClass);
        CalendarProc = lpWndClass.lpfnWndProc;
        hInstance = OS.GetModuleHandle(null);
        hHeap = OS.GetProcessHeap();
        lpWndClass.hInstance = hInstance;
        lpWndClass.style &= 0xFFFFBFFF;
        lpWndClass.style |= 8;
        byteCount = CalendarClass.length() * TCHAR.sizeof;
        lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpszClassName, CalendarClass, byteCount);
        lpWndClass.lpszClassName = lpszClassName;
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpszClassName);
        MONTH_NAMES = new int[]{56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67};
    }

    public DateTime(Composite parent, int style) {
        super(parent, DateTime.checkStyle(style));
        if ((this.style & 0x8000) != 0) {
            String buffer = (this.style & 0x20) != 0 ? this.getCustomShortDateFormat() : this.getCustomShortTimeFormat();
            TCHAR lpszFormat = new TCHAR(0, buffer, true);
            OS.SendMessage(this.handle, OS.DTM_SETFORMAT, 0, lpszFormat);
        }
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.CallWindowProc(this.windowProc(), hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        style &= 0xFFFFFCFF;
        style = DateTime.checkBits(style, 32, 128, 1024, 0, 0, 0);
        if (((style = DateTime.checkBits(style, 65536, 32768, 0x10000000, 0, 0, 0)) & 0x20) == 0) {
            style &= 0xFFFFFFFB;
        }
        return style;
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 0;
        int height = 0;
        if (wHint == -1 || hHint == -1) {
            if ((this.style & 0x400) != 0) {
                RECT rect = new RECT();
                OS.SendMessage(this.handle, 4105, 0, rect);
                width = rect.right;
                height = rect.bottom;
            } else {
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    SIZE size = new SIZE();
                    OS.SendMessage(this.handle, 4111, 0, size);
                    width = size.cx;
                    height = size.cy;
                } else {
                    int dwFlags;
                    int oldFont = 0;
                    int hDC = OS.GetDC(this.handle);
                    int newFont = OS.SendMessage(this.handle, 49, 0, 0);
                    if (newFont != 0) {
                        oldFont = OS.SelectObject(hDC, newFont);
                    }
                    RECT rect = new RECT();
                    if ((this.style & 0x20) != 0) {
                        dwFlags = 0;
                        TCHAR lpFormat = null;
                        if ((this.style & 0x8000) != 0) {
                            lpFormat = new TCHAR(0, this.getCustomShortDateFormat(), true);
                        } else {
                            dwFlags = (this.style & 0x10000) != 0 ? 1 : 2;
                        }
                        int size = OS.GetDateFormat(1024, dwFlags, null, lpFormat, null, 0);
                        if (size > 0) {
                            TCHAR buffer = new TCHAR(this.getCodePage(), size);
                            OS.GetDateFormat(1024, dwFlags, null, lpFormat, buffer, buffer.length());
                            OS.DrawText(hDC, buffer, size, rect, 9216);
                        }
                    } else if ((this.style & 0x80) != 0) {
                        int size;
                        dwFlags = 0;
                        TCHAR lpFormat = null;
                        if ((this.style & 0x8000) != 0) {
                            dwFlags = 2;
                            lpFormat = new TCHAR(0, this.getCustomShortTimeFormat(), true);
                        }
                        if ((size = OS.GetTimeFormat(1024, dwFlags, null, lpFormat, null, 0)) > 0) {
                            TCHAR buffer = new TCHAR(this.getCodePage(), size);
                            OS.GetTimeFormat(1024, dwFlags, null, lpFormat, buffer, buffer.length());
                            OS.DrawText(hDC, buffer, size, rect, 9216);
                        }
                    }
                    width = rect.right - rect.left;
                    height = rect.bottom - rect.top;
                    if (newFont != 0) {
                        OS.SelectObject(hDC, oldFont);
                    }
                    OS.ReleaseDC(this.handle, hDC);
                    int upDownWidth = OS.GetSystemMetrics(2);
                    width += upDownWidth + 4;
                }
                int upDownHeight = OS.GetSystemMetrics(20);
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    upDownHeight += 7;
                }
                height = Math.max(height, upDownHeight);
            }
        }
        if (width == 0) {
            width = 64;
        }
        if (height == 0) {
            height = 64;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        int border = this.getBorderWidth();
        return new Point(width += border * 2, height += border * 2);
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFEFD;
        if ((this.style & 0x800) == 0) {
            int bits = OS.GetWindowLong(this.handle, -20);
            OS.SetWindowLong(this.handle, -20, bits &= 0xFFFDFDFF);
        }
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_WINDOW);
    }

    String getCustomShortDateFormat() {
        TCHAR tchar = new TCHAR(this.getCodePage(), 80);
        int size = OS.GetLocaleInfo(1024, 4102, tchar, 80);
        return size != 0 ? tchar.toString(0, size - 1) : "M/yyyy";
    }

    String getCustomShortTimeFormat() {
        StringBuffer buffer = new StringBuffer(this.getTimeFormat());
        int length = buffer.length();
        boolean inQuotes = false;
        int start = 0;
        int end = 0;
        while (start < length) {
            char ch = buffer.charAt(start);
            if (ch == '\'') {
                inQuotes = !inQuotes;
            } else if (ch == 's' && !inQuotes) {
                end = start + 1;
                while (end < length && buffer.charAt(end) == 's') {
                    ++end;
                }
                while (start > 0 && buffer.charAt(start) != 'm') {
                    --start;
                }
                ++start;
                break;
            }
            ++start;
        }
        if (start < end) {
            buffer.delete(start, end);
        }
        return buffer.toString();
    }

    String getTimeFormat() {
        TCHAR tchar = new TCHAR(this.getCodePage(), 80);
        int size = OS.GetLocaleInfo(1024, 4099, tchar, 80);
        return size > 0 ? tchar.toString(0, size - 1) : "h:mm:ss tt";
    }

    public int getDay() {
        this.checkWidget();
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        return systime.wDay;
    }

    public int getHours() {
        this.checkWidget();
        if ((this.style & 0x400) != 0) {
            return this.time.wHour;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        return systime.wHour;
    }

    public int getMinutes() {
        this.checkWidget();
        if ((this.style & 0x400) != 0) {
            return this.time.wMinute;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        return systime.wMinute;
    }

    public int getMonth() {
        this.checkWidget();
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        return systime.wMonth - 1;
    }

    String getNameText() {
        return (this.style & 0x80) != 0 ? String.valueOf(this.getHours()) + ":" + this.getMinutes() + ":" + this.getSeconds() : String.valueOf(this.getMonth() + 1) + "/" + this.getDay() + "/" + this.getYear();
    }

    public int getSeconds() {
        this.checkWidget();
        if ((this.style & 0x400) != 0) {
            return this.time.wSecond;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        return systime.wSecond;
    }

    public int getYear() {
        this.checkWidget();
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        return systime.wYear;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.lastSystemTime = null;
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(13, listener);
        this.eventTable.unhook(14, listener);
    }

    public void setDate(int year, int month, int day) {
        this.checkWidget();
        if (year < 1752 || year > 9999) {
            return;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wYear = (short)year;
        systime.wMonth = (short)(month + 1);
        systime.wDay = (short)day;
        OS.SendMessage(this.handle, msg, 0, systime);
        this.lastSystemTime = null;
    }

    public void setDay(int day) {
        this.checkWidget();
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wDay = (short)day;
        OS.SendMessage(this.handle, msg, 0, systime);
        this.lastSystemTime = null;
    }

    public void setHours(int hours) {
        this.checkWidget();
        if (hours < 0 || hours > 23) {
            return;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wHour = (short)hours;
        OS.SendMessage(this.handle, msg, 0, systime);
        if ((this.style & 0x400) != 0 && hours >= 0 && hours <= 23) {
            this.time.wHour = (short)hours;
        }
    }

    public void setMinutes(int minutes) {
        this.checkWidget();
        if (minutes < 0 || minutes > 59) {
            return;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wMinute = (short)minutes;
        OS.SendMessage(this.handle, msg, 0, systime);
        if ((this.style & 0x400) != 0 && minutes >= 0 && minutes <= 59) {
            this.time.wMinute = (short)minutes;
        }
    }

    public void setMonth(int month) {
        this.checkWidget();
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wMonth = (short)(month + 1);
        OS.SendMessage(this.handle, msg, 0, systime);
        this.lastSystemTime = null;
    }

    public void setOrientation(int orientation) {
        if ((this.style & 0x400) != 0) {
            super.setOrientation(orientation);
        }
    }

    public void setSeconds(int seconds) {
        this.checkWidget();
        if (seconds < 0 || seconds > 59) {
            return;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wSecond = (short)seconds;
        OS.SendMessage(this.handle, msg, 0, systime);
        if ((this.style & 0x400) != 0 && seconds >= 0 && seconds <= 59) {
            this.time.wSecond = (short)seconds;
        }
    }

    public void setTime(int hours, int minutes, int seconds) {
        this.checkWidget();
        if (hours < 0 || hours > 23 || minutes < 0 || minutes > 59 || seconds < 0 || seconds > 59) {
            return;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wHour = (short)hours;
        systime.wMinute = (short)minutes;
        systime.wSecond = (short)seconds;
        OS.SendMessage(this.handle, msg, 0, systime);
        if ((this.style & 0x400) != 0 && hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59 && seconds >= 0 && seconds <= 59) {
            this.time.wHour = (short)hours;
            this.time.wMinute = (short)minutes;
            this.time.wSecond = (short)seconds;
        }
    }

    public void setYear(int year) {
        this.checkWidget();
        if (year < 1752 || year > 9999) {
            return;
        }
        SYSTEMTIME systime = new SYSTEMTIME();
        int msg = (this.style & 0x400) != 0 ? 4097 : 4097;
        OS.SendMessage(this.handle, msg, 0, systime);
        msg = (this.style & 0x400) != 0 ? 4098 : 4098;
        systime.wYear = (short)year;
        OS.SendMessage(this.handle, msg, 0, systime);
        this.lastSystemTime = null;
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x10000;
        if ((this.style & 0x400) != 0) {
            return bits | 0x10;
        }
        bits &= 0xFDFFFFFF;
        if ((this.style & 0x80) != 0) {
            bits |= 9;
        }
        if ((this.style & 0x20) != 0) {
            bits |= (this.style & 0x10000) != 0 ? 12 : 4;
            if ((this.style & 4) == 0) {
                bits |= 1;
            }
        }
        return bits;
    }

    TCHAR windowClass() {
        return (this.style & 0x400) != 0 ? CalendarClass : DateTimeClass;
    }

    int windowProc() {
        return (this.style & 0x400) != 0 ? CalendarProc : DateTimeProc;
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -753: {
                this.display.captureChanged = true;
                break;
            }
            case -749: {
                if (this.ignoreSelection) break;
                SYSTEMTIME systime = new SYSTEMTIME();
                OS.SendMessage(this.handle, 4097, 0, systime);
                this.sendSelectionEvent(13);
                break;
            }
            case -759: {
                SYSTEMTIME systime = new SYSTEMTIME();
                OS.SendMessage(this.handle, 4097, 0, systime);
                if (this.lastSystemTime != null && systime.wDay == this.lastSystemTime.wDay && systime.wMonth == this.lastSystemTime.wMonth && systime.wYear == this.lastSystemTime.wYear) break;
                this.sendSelectionEvent(13);
                if ((this.style & 0x80) != 0) break;
                this.lastSystemTime = systime;
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 13: {
                this.sendSelectionEvent(14);
            }
            case 9: 
            case 27: {
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONDBLCLK(wParam, lParam);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        if ((this.style & 0x400) != 0) {
            MCHITTESTINFO pMCHitTest = new MCHITTESTINFO();
            pMCHitTest.cbSize = MCHITTESTINFO.sizeof;
            POINT pt = new POINT();
            pt.x = OS.GET_X_LPARAM(lParam);
            pt.y = OS.GET_Y_LPARAM(lParam);
            pMCHitTest.pt = pt;
            int code = OS.SendMessage(this.handle, 4110, 0, pMCHitTest);
            if ((code & 0x20001) == 131073) {
                this.doubleClick = true;
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        this.doubleClick = false;
        if ((this.style & 0x400) != 0 && (this.style & 0x80000) == 0) {
            OS.SetFocus(this.handle);
        }
        return result;
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONUP(wParam, lParam);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        if (this.doubleClick) {
            this.sendSelectionEvent(14);
        }
        this.doubleClick = false;
        return result;
    }

    LRESULT WM_TIMER(int wParam, int lParam) {
        LRESULT result = super.WM_TIMER(wParam, lParam);
        if (result != null) {
            return result;
        }
        this.ignoreSelection = true;
        int code = this.callWindowProc(this.handle, 275, wParam, lParam);
        this.ignoreSelection = false;
        return code == 0 ? LRESULT.ZERO : new LRESULT(code);
    }
}

