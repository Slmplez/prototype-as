/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class ProgressBar
extends Control {
    static final int DELAY = 100;
    static final int TIMER_ID = 100;
    static final int MINIMUM_WIDTH = 100;
    static final int ProgressBarProc;
    static final TCHAR ProgressBarClass;

    static {
        ProgressBarClass = new TCHAR(0, "msctls_progress32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ProgressBarClass, lpWndClass);
        ProgressBarProc = lpWndClass.lpfnWndProc;
        int hInstance = OS.GetModuleHandle(null);
        int hHeap = OS.GetProcessHeap();
        lpWndClass.hInstance = hInstance;
        lpWndClass.style &= 0xFFFFBFFF;
        lpWndClass.style |= 8;
        int byteCount = ProgressBarClass.length() * TCHAR.sizeof;
        int lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpszClassName, ProgressBarClass, byteCount);
        lpWndClass.lpszClassName = lpszClassName;
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpszClassName);
    }

    public ProgressBar(Composite parent, int style) {
        super(parent, ProgressBar.checkStyle(style));
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.CallWindowProc(ProgressBarProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        return ProgressBar.checkBits(style |= 0x80000, 256, 512, 0, 0, 0, 0);
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

    void createHandle() {
        super.createHandle();
        this.startTimer();
    }

    int defaultForeground() {
        return OS.GetSysColor(OS.COLOR_HIGHLIGHT);
    }

    public int getMaximum() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1031, 0, 0);
    }

    public int getMinimum() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1031, 1, 0);
    }

    public int getSelection() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1032, 0, 0);
    }

    public int getState() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            int state = OS.SendMessage(this.handle, 1041, 0, 0);
            switch (state) {
                case 1: {
                    return 0;
                }
                case 2: {
                    return 1;
                }
                case 3: {
                    return 4;
                }
            }
        }
        return 0;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.stopTimer();
    }

    void startTimer() {
        if ((this.style & 2) != 0) {
            int bits = OS.GetWindowLong(this.handle, -16);
            if (OS.COMCTL32_MAJOR < 6 || (bits & 8) == 0) {
                OS.SetTimer(this.handle, 100, 100, 0);
            } else {
                OS.SendMessage(this.handle, 1034, 1, 100);
            }
        }
    }

    void stopTimer() {
        if ((this.style & 2) != 0) {
            int bits = OS.GetWindowLong(this.handle, -16);
            if (OS.COMCTL32_MAJOR < 6 || (bits & 8) == 0) {
                OS.KillTimer(this.handle, 100);
            } else {
                OS.SendMessage(this.handle, 1034, 0, 0);
            }
        }
    }

    void setBackgroundPixel(int pixel) {
        if (pixel == -1) {
            pixel = -16777216;
        }
        OS.SendMessage(this.handle, 8193, 0, pixel);
    }

    void setForegroundPixel(int pixel) {
        if (pixel == -1) {
            pixel = -16777216;
        }
        OS.SendMessage(this.handle, 1033, 0, pixel);
    }

    public void setMaximum(int value) {
        this.checkWidget();
        int minimum = OS.SendMessage(this.handle, 1031, 1, 0);
        if (minimum >= 0 && minimum < value) {
            OS.SendMessage(this.handle, 1030, minimum, value);
        }
    }

    public void setMinimum(int value) {
        this.checkWidget();
        int maximum = OS.SendMessage(this.handle, 1031, 0, 0);
        if (value >= 0 && value < maximum) {
            OS.SendMessage(this.handle, 1030, value, maximum);
        }
    }

    public void setSelection(int value) {
        int state;
        this.checkWidget();
        OS.SendMessage(this.handle, 1026, value, 0);
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && (state = OS.SendMessage(this.handle, 1041, 0, 0)) != 1) {
            OS.SendMessage(this.handle, 1026, value, 0);
        }
    }

    public void setState(int state) {
        this.checkWidget();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            switch (state) {
                case 0: {
                    OS.SendMessage(this.handle, 1040, 1, 0);
                    break;
                }
                case 1: {
                    OS.SendMessage(this.handle, 1040, 2, 0);
                    break;
                }
                case 4: {
                    OS.SendMessage(this.handle, 1040, 3, 0);
                }
            }
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle();
        if ((this.style & 0x10000) != 0) {
            bits |= 1;
        }
        if ((this.style & 0x200) != 0) {
            bits |= 4;
        }
        if ((this.style & 2) != 0) {
            bits |= 8;
        }
        return bits;
    }

    TCHAR windowClass() {
        return ProgressBarClass;
    }

    int windowProc() {
        return ProgressBarProc;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        LRESULT result = super.WM_GETDLGCODE(wParam, lParam);
        if (result != null) {
            return result;
        }
        return new LRESULT(256);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.style & 2) != 0 && (OS.WIN32_VERSION == OS.VERSION(5, 1) || OS.COMCTL32_MAJOR >= 6 && !OS.IsAppThemed())) {
            int oldBits;
            this.forceResize();
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            int newBits = oldBits = OS.GetWindowLong(this.handle, -16);
            newBits = rect.right - rect.left < 100 ? (newBits &= 0xFFFFFFF7) : (newBits |= 8);
            if (newBits != oldBits) {
                this.stopTimer();
                OS.SetWindowLong(this.handle, -16, newBits);
                this.startTimer();
            }
        }
        return result;
    }

    LRESULT WM_TIMER(int wParam, int lParam) {
        LRESULT result = super.WM_TIMER(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.style & 2) != 0) {
            int bits = OS.GetWindowLong(this.handle, -16);
            if ((OS.COMCTL32_MAJOR < 6 || (bits & 8) == 0) && wParam == 100) {
                OS.SendMessage(this.handle, 1029, 0, 0);
            }
        }
        return result;
    }
}

