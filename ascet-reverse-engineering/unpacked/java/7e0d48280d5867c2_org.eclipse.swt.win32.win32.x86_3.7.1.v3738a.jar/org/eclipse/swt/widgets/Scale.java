/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;

public class Scale
extends Control {
    boolean ignoreResize;
    boolean ignoreSelection;
    static final int TrackBarProc;
    static final TCHAR TrackBarClass;
    boolean createdAsRTL;

    static {
        TrackBarClass = new TCHAR(0, "msctls_trackbar32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, TrackBarClass, lpWndClass);
        TrackBarProc = lpWndClass.lpfnWndProc;
        int hInstance = OS.GetModuleHandle(null);
        int hHeap = OS.GetProcessHeap();
        lpWndClass.hInstance = hInstance;
        lpWndClass.style &= 0xFFFFBFFF;
        lpWndClass.style |= 8;
        int byteCount = TrackBarClass.length() * TCHAR.sizeof;
        int lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpszClassName, TrackBarClass, byteCount);
        lpWndClass.lpszClassName = lpszClassName;
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpszClassName);
    }

    public Scale(Composite parent, int style) {
        super(parent, Scale.checkStyle(style));
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
        return OS.CallWindowProc(TrackBarProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        return Scale.checkBits(style, 256, 512, 0, 0, 0, 0);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int border = this.getBorderWidth();
        int width = border * 2;
        int height = border * 2;
        RECT rect = new RECT();
        OS.SendMessage(this.handle, 1049, 0, rect);
        if ((this.style & 0x100) != 0) {
            width += OS.GetSystemMetrics(21) * 10;
            int scrollY = OS.GetSystemMetrics(3);
            height += rect.top * 2 + scrollY + scrollY / 3;
        } else {
            int scrollX = OS.GetSystemMetrics(2);
            width += rect.left * 2 + scrollX + scrollX / 3;
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

    void createHandle() {
        super.createHandle();
        this.state |= 0x300;
        OS.SendMessage(this.handle, 1032, 0, 100);
        OS.SendMessage(this.handle, 1045, 0, 10);
        OS.SendMessage(this.handle, 1044, 10, 0);
        this.createdAsRTL = (this.style & 0x4000000) != 0;
    }

    int defaultForeground() {
        return OS.GetSysColor(OS.COLOR_BTNFACE);
    }

    public int getIncrement() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1048, 0, 0);
    }

    public int getMaximum() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1026, 0, 0);
    }

    public int getMinimum() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1025, 0, 0);
    }

    public int getPageIncrement() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1046, 0, 0);
    }

    public int getSelection() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1024, 0, 0);
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

    void setBackgroundImage(int hImage) {
        super.setBackgroundImage(hImage);
        this.ignoreResize = true;
        OS.SendMessage(this.handle, 5, 0, 0);
        this.ignoreResize = false;
    }

    void setBackgroundPixel(int pixel) {
        super.setBackgroundPixel(pixel);
        this.ignoreResize = true;
        OS.SendMessage(this.handle, 5, 0, 0);
        this.ignoreResize = false;
    }

    void setBounds(int x, int y, int width, int height, int flags, boolean defer) {
        super.setBounds(x, y, width, height, flags &= 0xFFFFFFDF, true);
    }

    public void setIncrement(int increment) {
        this.checkWidget();
        if (increment < 1) {
            return;
        }
        int minimum = OS.SendMessage(this.handle, 1025, 0, 0);
        int maximum = OS.SendMessage(this.handle, 1026, 0, 0);
        if (increment > maximum - minimum) {
            return;
        }
        OS.SendMessage(this.handle, 1047, 0, increment);
    }

    public void setMaximum(int value) {
        this.checkWidget();
        int minimum = OS.SendMessage(this.handle, 1025, 0, 0);
        if (minimum >= 0 && minimum < value) {
            OS.SendMessage(this.handle, 1032, 1, value);
        }
    }

    public void setMinimum(int value) {
        this.checkWidget();
        int maximum = OS.SendMessage(this.handle, 1026, 0, 0);
        if (value >= 0 && value < maximum) {
            OS.SendMessage(this.handle, 1031, 1, value);
        }
    }

    public void setPageIncrement(int pageIncrement) {
        this.checkWidget();
        if (pageIncrement < 1) {
            return;
        }
        int minimum = OS.SendMessage(this.handle, 1025, 0, 0);
        int maximum = OS.SendMessage(this.handle, 1026, 0, 0);
        if (pageIncrement > maximum - minimum) {
            return;
        }
        OS.SendMessage(this.handle, 1045, 0, pageIncrement);
        OS.SendMessage(this.handle, 1044, pageIncrement, 0);
    }

    public void setSelection(int value) {
        this.checkWidget();
        OS.SendMessage(this.handle, 1029, 1, value);
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x10000 | 8 | 1;
        if ((this.style & 0x100) != 0) {
            return bits | 0x400;
        }
        return bits | 2;
    }

    TCHAR windowClass() {
        return TrackBarClass;
    }

    int windowProc() {
        return TrackBarProc;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 37: 
            case 39: {
                boolean isRTL;
                boolean bl = isRTL = (this.style & 0x4000000) != 0;
                if (isRTL == this.createdAsRTL) break;
                int code = this.callWindowProc(this.handle, 256, wParam == 39 ? 37 : 39, lParam);
                return new LRESULT(code);
            }
        }
        return result;
    }

    LRESULT WM_MOUSEWHEEL(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSEWHEEL(wParam, lParam);
        if (result != null) {
            return result;
        }
        int oldPosition = OS.SendMessage(this.handle, 1024, 0, 0);
        this.ignoreSelection = true;
        int code = this.callWindowProc(this.handle, 522, wParam, lParam);
        this.ignoreSelection = false;
        int newPosition = OS.SendMessage(this.handle, 1024, 0, 0);
        if (oldPosition != newPosition) {
            this.sendSelectionEvent(13, null, true);
        }
        return new LRESULT(code);
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        boolean fixPaint;
        boolean bl = fixPaint = this.findBackgroundControl() != null;
        if (!fixPaint && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            Control control = this.findThemeControl();
            boolean bl2 = fixPaint = control != null;
        }
        if (fixPaint) {
            boolean redraw;
            boolean bl3 = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            if (redraw) {
                OS.SendMessage(this.handle, 11, 0, 0);
            }
            this.ignoreResize = true;
            OS.SendMessage(this.handle, 5, 0, 0);
            this.ignoreResize = false;
            if (redraw) {
                OS.SendMessage(this.handle, 11, 1, 0);
                OS.InvalidateRect(this.handle, null, false);
            }
        }
        return super.WM_PAINT(wParam, lParam);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        if (this.ignoreResize) {
            return null;
        }
        return super.WM_SIZE(wParam, lParam);
    }

    LRESULT wmScrollChild(int wParam, int lParam) {
        int code = OS.LOWORD(wParam);
        switch (code) {
            case 4: 
            case 8: {
                return null;
            }
        }
        if (!this.ignoreSelection) {
            Event event = new Event();
            this.sendSelectionEvent(13, event, true);
        }
        return null;
    }
}

