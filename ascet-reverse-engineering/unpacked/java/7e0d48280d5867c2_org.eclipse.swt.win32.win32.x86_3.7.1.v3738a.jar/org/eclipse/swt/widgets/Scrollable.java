/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLBARINFO;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ScrollBar;

public abstract class Scrollable
extends Control {
    ScrollBar horizontalBar;
    ScrollBar verticalBar;

    Scrollable() {
    }

    public Scrollable(Composite parent, int style) {
        super(parent, style);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        int scrolledHandle = this.scrolledHandle();
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        int bits1 = OS.GetWindowLong(scrolledHandle, -16);
        int bits2 = OS.GetWindowLong(scrolledHandle, -20);
        OS.AdjustWindowRectEx(rect, bits1, false, bits2);
        if (this.horizontalBar != null) {
            rect.bottom += OS.GetSystemMetrics(3);
        }
        if (this.verticalBar != null) {
            rect.right += OS.GetSystemMetrics(2);
        }
        int nWidth = rect.right - rect.left;
        int nHeight = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, nWidth, nHeight);
    }

    ScrollBar createScrollBar(int type) {
        ScrollBar bar = new ScrollBar(this, type);
        if ((this.state & 2) != 0) {
            bar.setMaximum(100);
            bar.setThumb(10);
        }
        return bar;
    }

    void createWidget() {
        super.createWidget();
        if ((this.style & 0x100) != 0) {
            this.horizontalBar = this.createScrollBar(256);
        }
        if ((this.style & 0x200) != 0) {
            this.verticalBar = this.createScrollBar(512);
        }
    }

    void destroyScrollBar(int type) {
        int hwnd = this.scrolledHandle();
        int bits = OS.GetWindowLong(hwnd, -16);
        if ((type & 0x100) != 0) {
            this.style &= 0xFFFFFEFF;
            bits &= 0xFFEFFFFF;
        }
        if ((type & 0x200) != 0) {
            this.style &= 0xFFFFFDFF;
            bits &= 0xFFDFFFFF;
        }
        OS.SetWindowLong(hwnd, -16, bits);
    }

    public Rectangle getClientArea() {
        this.checkWidget();
        this.forceResize();
        RECT rect = new RECT();
        int scrolledHandle = this.scrolledHandle();
        OS.GetClientRect(scrolledHandle, rect);
        int x = rect.left;
        int y = rect.top;
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        if (scrolledHandle != this.handle) {
            OS.GetClientRect(this.handle, rect);
            OS.MapWindowPoints(this.handle, scrolledHandle, rect, 2);
            x = -rect.left;
            y = -rect.top;
        }
        return new Rectangle(x, y, width, height);
    }

    public ScrollBar getHorizontalBar() {
        this.checkWidget();
        return this.horizontalBar;
    }

    public ScrollBar getVerticalBar() {
        this.checkWidget();
        return this.verticalBar;
    }

    void releaseChildren(boolean destroy) {
        if (this.horizontalBar != null) {
            this.horizontalBar.release(false);
            this.horizontalBar = null;
        }
        if (this.verticalBar != null) {
            this.verticalBar.release(false);
            this.verticalBar = null;
        }
        super.releaseChildren(destroy);
    }

    void reskinChildren(int flags) {
        if (this.horizontalBar != null) {
            this.horizontalBar.reskin(flags);
        }
        if (this.verticalBar != null) {
            this.verticalBar.reskin(flags);
        }
        super.reskinChildren(flags);
    }

    int scrolledHandle() {
        return this.handle;
    }

    int widgetExtStyle() {
        return super.widgetExtStyle();
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x10000;
        if ((this.style & 0x100) != 0) {
            bits |= 0x100000;
        }
        if ((this.style & 0x200) != 0) {
            bits |= 0x200000;
        }
        return bits;
    }

    TCHAR windowClass() {
        return this.display.windowClass;
    }

    int windowProc() {
        return this.display.windowProc;
    }

    LRESULT WM_HSCROLL(int wParam, int lParam) {
        LRESULT result = super.WM_HSCROLL(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.horizontalBar != null && (lParam == 0 || lParam == this.handle)) {
            return this.wmScroll(this.horizontalBar, (this.state & 2) != 0, this.handle, 276, wParam, lParam);
        }
        return result;
    }

    LRESULT WM_MOUSEWHEEL(int wParam, int lParam) {
        return this.wmScrollWheel((this.state & 2) != 0, wParam, lParam);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        int code = this.callWindowProc(this.handle, 5, wParam, lParam);
        super.WM_SIZE(wParam, lParam);
        if (code == 0) {
            return LRESULT.ZERO;
        }
        return new LRESULT(code);
    }

    LRESULT WM_VSCROLL(int wParam, int lParam) {
        LRESULT result = super.WM_VSCROLL(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.verticalBar != null && (lParam == 0 || lParam == this.handle)) {
            return this.wmScroll(this.verticalBar, (this.state & 2) != 0, this.handle, 277, wParam, lParam);
        }
        return result;
    }

    LRESULT wmNCPaint(int hwnd, int wParam, int lParam) {
        int bits1;
        LRESULT result = super.wmNCPaint(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && !OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0) && ((bits1 = OS.GetWindowLong(hwnd, -16)) & 0x300000) != 0) {
            RECT windowRect = new RECT();
            OS.GetWindowRect(hwnd, windowRect);
            RECT trimRect = new RECT();
            int bits2 = OS.GetWindowLong(hwnd, -20);
            OS.AdjustWindowRectEx(trimRect, bits1, false, bits2);
            boolean hVisible = false;
            boolean vVisible = false;
            SCROLLBARINFO psbi = new SCROLLBARINFO();
            psbi.cbSize = SCROLLBARINFO.sizeof;
            if (OS.GetScrollBarInfo(hwnd, -6, psbi)) {
                boolean bl = hVisible = (psbi.rgstate[0] & 0x8000) == 0;
            }
            if (OS.GetScrollBarInfo(hwnd, -5, psbi)) {
                vVisible = (psbi.rgstate[0] & 0x8000) == 0;
            }
            RECT cornerRect = new RECT();
            cornerRect.bottom = windowRect.bottom - windowRect.top - trimRect.bottom;
            cornerRect.top = cornerRect.bottom - (vVisible ? OS.GetSystemMetrics(3) : 0);
            if ((bits2 & 0x4000) != 0) {
                cornerRect.left = trimRect.left;
                cornerRect.right = cornerRect.left + (hVisible ? OS.GetSystemMetrics(2) : 0);
            } else {
                cornerRect.right = windowRect.right - windowRect.left - trimRect.right;
                cornerRect.left = cornerRect.right - (hVisible ? OS.GetSystemMetrics(2) : 0);
            }
            if (cornerRect.left != cornerRect.right && cornerRect.top != cornerRect.bottom) {
                int hDC = OS.GetWindowDC(hwnd);
                OS.FillRect(hDC, cornerRect, OS.COLOR_BTNFACE + 1);
                Decorations shell = this.menuShell();
                if ((shell.style & 0x10) != 0) {
                    boolean drawGripper;
                    int hwndScroll = shell.scrolledHandle();
                    boolean bl = drawGripper = hwnd == hwndScroll;
                    if (!drawGripper) {
                        RECT shellRect = new RECT();
                        OS.GetClientRect(hwndScroll, shellRect);
                        OS.MapWindowPoints(hwndScroll, 0, shellRect, 2);
                        boolean bl2 = drawGripper = shellRect.right == windowRect.right && shellRect.bottom == windowRect.bottom;
                    }
                    if (drawGripper) {
                        OS.DrawThemeBackground(this.display.hScrollBarTheme(), hDC, 10, 0, cornerRect, null);
                    }
                }
                OS.ReleaseDC(hwnd, hDC);
            }
        }
        return result;
    }

    LRESULT wmScrollWheel(boolean update, int wParam, int lParam) {
        Event event;
        int position;
        int scrollRemainder = this.display.scrollRemainder;
        LRESULT result = super.WM_MOUSEWHEEL(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (update) {
            boolean pageScroll;
            int msg;
            boolean horizontal;
            if ((wParam & 0xC) != 0) {
                return result;
            }
            boolean vertical = this.verticalBar != null && this.verticalBar.getEnabled();
            boolean bl = horizontal = this.horizontalBar != null && this.horizontalBar.getEnabled();
            int n = vertical ? 277 : (msg = horizontal ? 276 : 0);
            if (msg == 0) {
                return result;
            }
            int[] linesToScroll = new int[1];
            OS.SystemParametersInfo(104, 0, linesToScroll, 0);
            int delta = OS.GET_WHEEL_DELTA_WPARAM(wParam);
            boolean bl2 = pageScroll = linesToScroll[0] == -1;
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
                ScrollBar bar = vertical ? this.verticalBar : this.horizontalBar;
                SCROLLINFO info = new SCROLLINFO();
                info.cbSize = SCROLLINFO.sizeof;
                info.fMask = 4;
                OS.GetScrollInfo(this.handle, bar.scrollBarType(), info);
                if (vertical && !pageScroll) {
                    delta *= linesToScroll[0];
                }
                int increment = pageScroll ? bar.getPageIncrement() : bar.getIncrement();
                info.nPos -= increment * delta / 120;
                OS.SetScrollInfo(this.handle, bar.scrollBarType(), info, true);
                OS.SendMessage(this.handle, msg, 4, 0);
            } else {
                int code = 0;
                if (pageScroll) {
                    code = delta < 0 ? 3 : 2;
                } else {
                    int n2 = code = delta < 0 ? 1 : 0;
                    if (msg == 277) {
                        delta *= linesToScroll[0];
                    }
                }
                if ((delta ^ scrollRemainder) >= 0) {
                    delta += scrollRemainder;
                }
                int count = Math.abs(delta) / 120;
                int i = 0;
                while (i < count) {
                    OS.SendMessage(this.handle, msg, code, 0);
                    ++i;
                }
            }
            return LRESULT.ZERO;
        }
        int vPosition = this.verticalBar == null ? 0 : this.verticalBar.getSelection();
        int hPosition = this.horizontalBar == null ? 0 : this.horizontalBar.getSelection();
        int code = this.callWindowProc(this.handle, 522, wParam, lParam);
        if (this.verticalBar != null && (position = this.verticalBar.getSelection()) != vPosition) {
            event = new Event();
            event.detail = position < vPosition ? 0x1000005 : 0x1000006;
            this.verticalBar.sendSelectionEvent(13, event, true);
        }
        if (this.horizontalBar != null && (position = this.horizontalBar.getSelection()) != hPosition) {
            event = new Event();
            event.detail = position < hPosition ? 0x1000005 : 0x1000006;
            this.horizontalBar.sendSelectionEvent(13, event, true);
        }
        return new LRESULT(code);
    }

    LRESULT wmScroll(ScrollBar bar, boolean update, int hwnd, int msg, int wParam, int lParam) {
        LRESULT result = null;
        if (update) {
            int type = msg == 276 ? 0 : 1;
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 21;
            OS.GetScrollInfo(hwnd, type, info);
            info.fMask = 4;
            int code = OS.LOWORD(wParam);
            switch (code) {
                case 8: {
                    return null;
                }
                case 4: 
                case 5: {
                    info.nPos = info.nTrackPos;
                    break;
                }
                case 6: {
                    info.nPos = info.nMin;
                    break;
                }
                case 7: {
                    info.nPos = info.nMax;
                    break;
                }
                case 1: {
                    info.nPos += bar.getIncrement();
                    break;
                }
                case 0: {
                    int increment = bar.getIncrement();
                    info.nPos = Math.max(info.nMin, info.nPos - increment);
                    break;
                }
                case 3: {
                    info.nPos += bar.getPageIncrement();
                    break;
                }
                case 2: {
                    int pageIncrement = bar.getPageIncrement();
                    info.nPos = Math.max(info.nMin, info.nPos - pageIncrement);
                }
            }
            OS.SetScrollInfo(hwnd, type, info, true);
        } else {
            int code = this.callWindowProc(hwnd, msg, wParam, lParam);
            result = code == 0 ? LRESULT.ZERO : new LRESULT(code);
        }
        bar.wmScrollChild(wParam, lParam);
        return result;
    }
}

