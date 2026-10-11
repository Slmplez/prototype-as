/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;

public class Slider
extends Control {
    int increment;
    int pageIncrement;
    boolean ignoreFocus;
    static final int ScrollBarProc;
    static final TCHAR ScrollBarClass;

    static {
        ScrollBarClass = new TCHAR(0, "SCROLLBAR", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ScrollBarClass, lpWndClass);
        ScrollBarProc = lpWndClass.lpfnWndProc;
    }

    public Slider(Composite parent, int style) {
        super(parent, Slider.checkStyle(style));
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
        switch (msg) {
            case 513: 
            case 515: {
                this.display.runDeferredEvents();
            }
        }
        return OS.CallWindowProc(ScrollBarProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        return Slider.checkBits(style, 256, 512, 0, 0, 0, 0);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int border = this.getBorderWidth();
        int width = border * 2;
        int height = border * 2;
        if ((this.style & 0x100) != 0) {
            width += OS.GetSystemMetrics(21) * 10;
            height += OS.GetSystemMetrics(3);
        } else {
            width += OS.GetSystemMetrics(2);
            height += OS.GetSystemMetrics(20) * 10;
        }
        if (wHint != -1) {
            width = wHint + border * 2;
        }
        if (hHint != -1) {
            height = hHint + border * 2;
        }
        return new Point(width, height);
    }

    void createWidget() {
        super.createWidget();
        this.increment = 1;
        this.pageIncrement = 10;
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 23;
        info.nMax = 100;
        info.nPage = 11;
        OS.SetScrollInfo(this.handle, 2, info, true);
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_SCROLLBAR);
    }

    int defaultForeground() {
        return OS.GetSysColor(OS.COLOR_BTNFACE);
    }

    void enableWidget(boolean enabled) {
        super.enableWidget(enabled);
        if (!OS.IsWinCE) {
            int flags = enabled ? 0 : 3;
            OS.EnableScrollBar(this.handle, 2, flags);
        }
        this.state = enabled ? (this.state &= 0xFFFFFFF7) : (this.state |= 8);
    }

    public boolean getEnabled() {
        this.checkWidget();
        return (this.state & 8) == 0;
    }

    public int getIncrement() {
        this.checkWidget();
        return this.increment;
    }

    public int getMaximum() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 1;
        OS.GetScrollInfo(this.handle, 2, info);
        return info.nMax;
    }

    public int getMinimum() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 1;
        OS.GetScrollInfo(this.handle, 2, info);
        return info.nMin;
    }

    public int getPageIncrement() {
        this.checkWidget();
        return this.pageIncrement;
    }

    public int getSelection() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 4;
        OS.GetScrollInfo(this.handle, 2, info);
        return info.nPos;
    }

    public int getThumb() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 2;
        OS.GetScrollInfo(this.handle, 2, info);
        if (info.nPage != 0) {
            --info.nPage;
        }
        return info.nPage;
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

    void setBounds(int x, int y, int width, int height, int flags) {
        super.setBounds(x, y, width, height, flags);
        if (OS.GetFocus() == this.handle) {
            this.ignoreFocus = true;
            OS.SendMessage(this.handle, 7, 0, 0);
            this.ignoreFocus = false;
        }
    }

    public void setIncrement(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        this.increment = value;
    }

    public void setMaximum(int value) {
        this.checkWidget();
        if (value < 0) {
            return;
        }
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 9;
        OS.GetScrollInfo(this.handle, 2, info);
        if (value - info.nMin - info.nPage < 1) {
            return;
        }
        info.nMax = value;
        this.SetScrollInfo(this.handle, 2, info, true);
    }

    public void setMinimum(int value) {
        this.checkWidget();
        if (value < 0) {
            return;
        }
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 9;
        OS.GetScrollInfo(this.handle, 2, info);
        if (info.nMax - value - info.nPage < 1) {
            return;
        }
        info.nMin = value;
        this.SetScrollInfo(this.handle, 2, info, true);
    }

    public void setPageIncrement(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        this.pageIncrement = value;
    }

    boolean SetScrollInfo(int hwnd, int flags, SCROLLINFO info, boolean fRedraw) {
        if ((this.state & 8) != 0) {
            fRedraw = false;
        }
        boolean result = OS.SetScrollInfo(hwnd, flags, info, fRedraw);
        if ((this.state & 8) != 0) {
            OS.EnableWindow(this.handle, false);
            if (!OS.IsWinCE) {
                OS.EnableScrollBar(this.handle, 2, 3);
            }
        }
        if (OS.GetFocus() == this.handle) {
            this.ignoreFocus = true;
            OS.SendMessage(this.handle, 7, 0, 0);
            this.ignoreFocus = false;
        }
        return result;
    }

    public void setSelection(int value) {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 4;
        info.nPos = value;
        this.SetScrollInfo(this.handle, 2, info, true);
    }

    public void setThumb(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 11;
        OS.GetScrollInfo(this.handle, 2, info);
        info.nPage = value;
        if (info.nPage != 0) {
            ++info.nPage;
        }
        this.SetScrollInfo(this.handle, 2, info, true);
    }

    public void setValues(int selection, int minimum, int maximum, int thumb, int increment, int pageIncrement) {
        this.checkWidget();
        if (minimum < 0) {
            return;
        }
        if (maximum < 0) {
            return;
        }
        if (thumb < 1) {
            return;
        }
        if (increment < 1) {
            return;
        }
        if (pageIncrement < 1) {
            return;
        }
        this.increment = increment;
        this.pageIncrement = pageIncrement;
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 15;
        info.nPos = selection;
        info.nMin = minimum;
        info.nMax = maximum;
        info.nPage = thumb;
        if (info.nPage != 0) {
            ++info.nPage;
        }
        this.SetScrollInfo(this.handle, 2, info, true);
    }

    int widgetExtStyle() {
        int bits = super.widgetExtStyle();
        if ((this.style & 0x800) != 0) {
            bits &= 0xFFFFFDFF;
        }
        return bits;
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x10000;
        if ((this.style & 0x800) != 0) {
            bits &= 0xFF7FFFFF;
        }
        if ((this.style & 0x100) != 0) {
            return bits;
        }
        return bits | 1;
    }

    TCHAR windowClass() {
        return ScrollBarClass;
    }

    int windowProc() {
        return ScrollBarProc;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.style & 0x200) != 0) {
            return result;
        }
        if ((this.style & 0x8000000) != 0) {
            switch (wParam) {
                case 37: 
                case 39: {
                    int key = wParam == 37 ? 39 : 37;
                    int code = this.callWindowProc(this.handle, 256, key, lParam);
                    return new LRESULT(code);
                }
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam) {
        int oldBits = OS.GetWindowLong(this.handle, -16);
        int newBits = oldBits & 0xFFFEFFFF;
        OS.SetWindowLong(this.handle, -16, newBits);
        LRESULT result = super.WM_LBUTTONDBLCLK(wParam, lParam);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        OS.SetWindowLong(this.handle, -16, oldBits);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (!OS.IsWinCE) {
            if (OS.GetCapture() == this.handle) {
                OS.ReleaseCapture();
            }
            if (!this.sendMouseEvent(4, 1, this.handle, 514, wParam, lParam)) {
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        int oldBits = OS.GetWindowLong(this.handle, -16);
        int newBits = oldBits & 0xFFFEFFFF;
        OS.SetWindowLong(this.handle, -16, newBits);
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        OS.SetWindowLong(this.handle, -16, oldBits);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (!OS.IsWinCE) {
            if (OS.GetCapture() == this.handle) {
                OS.ReleaseCapture();
            }
            if (!this.sendMouseEvent(4, 1, this.handle, 514, wParam, lParam)) {
                return LRESULT.ONE;
            }
        }
        return result;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        if (this.ignoreFocus) {
            return null;
        }
        return super.WM_SETFOCUS(wParam, lParam);
    }

    LRESULT wmScrollChild(int wParam, int lParam) {
        int code = OS.LOWORD(wParam);
        if (code == 8) {
            return null;
        }
        Event event = new Event();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 21;
        OS.GetScrollInfo(this.handle, 2, info);
        info.fMask = 4;
        switch (code) {
            case 4: {
                event.detail = 0;
                info.nPos = info.nTrackPos;
                break;
            }
            case 5: {
                event.detail = 1;
                info.nPos = info.nTrackPos;
                break;
            }
            case 6: {
                event.detail = 0x1000007;
                info.nPos = info.nMin;
                break;
            }
            case 7: {
                event.detail = 0x1000008;
                info.nPos = info.nMax;
                break;
            }
            case 1: {
                event.detail = 0x1000002;
                info.nPos += this.increment;
                break;
            }
            case 0: {
                event.detail = 0x1000001;
                info.nPos = Math.max(info.nMin, info.nPos - this.increment);
                break;
            }
            case 3: {
                event.detail = 0x1000006;
                info.nPos += this.pageIncrement;
                break;
            }
            case 2: {
                event.detail = 0x1000005;
                info.nPos = Math.max(info.nMin, info.nPos - this.pageIncrement);
            }
        }
        OS.SetScrollInfo(this.handle, 2, info, true);
        this.sendSelectionEvent(13, event, true);
        return null;
    }
}

