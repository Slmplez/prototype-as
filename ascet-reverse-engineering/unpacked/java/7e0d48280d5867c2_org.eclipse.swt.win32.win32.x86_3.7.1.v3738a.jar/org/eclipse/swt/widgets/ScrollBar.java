/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLBARINFO;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public class ScrollBar
extends Widget {
    Scrollable parent;
    int increment;
    int pageIncrement;

    ScrollBar(Scrollable parent, int style) {
        super(parent, ScrollBar.checkStyle(style));
        this.parent = parent;
        this.createWidget();
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

    static int checkStyle(int style) {
        return ScrollBar.checkBits(style, 256, 512, 0, 0, 0, 0);
    }

    void createWidget() {
        this.increment = 1;
        this.pageIncrement = 10;
    }

    void destroyWidget() {
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        if (OS.IsWinCE) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 3;
            info.nPage = 101;
            info.nMax = 100;
            info.nMin = 0;
            OS.SetScrollInfo(hwnd, type, info, true);
        } else {
            OS.ShowScrollBar(hwnd, type, false);
        }
        this.parent.destroyScrollBar(this.style);
        this.releaseHandle();
    }

    Rectangle getBounds() {
        int height;
        int width;
        this.parent.forceResize();
        RECT rect = new RECT();
        OS.GetClientRect(this.parent.scrolledHandle(), rect);
        int x = 0;
        int y = 0;
        if ((this.style & 0x100) != 0) {
            y = rect.bottom - rect.top;
            width = rect.right - rect.left;
            height = OS.GetSystemMetrics(3);
        } else {
            x = rect.right - rect.left;
            width = OS.GetSystemMetrics(2);
            height = rect.bottom - rect.top;
        }
        return new Rectangle(x, y, width, height);
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
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        OS.GetScrollInfo(hwnd, type, info);
        return info.nMax;
    }

    public int getMinimum() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 1;
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        OS.GetScrollInfo(hwnd, type, info);
        return info.nMin;
    }

    public int getPageIncrement() {
        this.checkWidget();
        return this.pageIncrement;
    }

    public Scrollable getParent() {
        this.checkWidget();
        return this.parent;
    }

    public int getSelection() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 4;
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        OS.GetScrollInfo(hwnd, type, info);
        return info.nPos;
    }

    public Point getSize() {
        int height;
        int width;
        this.checkWidget();
        this.parent.forceResize();
        RECT rect = new RECT();
        OS.GetClientRect(this.parent.scrolledHandle(), rect);
        if ((this.style & 0x100) != 0) {
            width = rect.right - rect.left;
            height = OS.GetSystemMetrics(3);
        } else {
            width = OS.GetSystemMetrics(2);
            height = rect.bottom - rect.top;
        }
        return new Point(width, height);
    }

    public int getThumb() {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 2;
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        OS.GetScrollInfo(hwnd, type, info);
        if (info.nPage != 0) {
            --info.nPage;
        }
        return info.nPage;
    }

    public Rectangle getThumbBounds() {
        int height;
        int width;
        int y;
        int x;
        this.checkWidget();
        this.parent.forceResize();
        SCROLLBARINFO info = new SCROLLBARINFO();
        info.cbSize = SCROLLBARINFO.sizeof;
        if ((this.style & 0x100) != 0) {
            OS.GetScrollBarInfo(this.parent.handle, -6, info);
            x = info.rcScrollBar.left + info.xyThumbTop;
            y = info.rcScrollBar.top;
            width = info.xyThumbBottom - info.xyThumbTop;
            height = info.rcScrollBar.bottom - info.rcScrollBar.top;
        } else {
            OS.GetScrollBarInfo(this.parent.handle, -5, info);
            x = info.rcScrollBar.left;
            y = info.rcScrollBar.top + info.xyThumbTop;
            width = info.rcScrollBar.right - info.rcScrollBar.left;
            height = info.xyThumbBottom - info.xyThumbTop;
        }
        RECT rect = new RECT();
        rect.left = x;
        rect.top = y;
        rect.right = x + width;
        rect.bottom = y + height;
        OS.MapWindowPoints(0, this.parent.handle, rect, 2);
        return new Rectangle(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
    }

    public Rectangle getThumbTrackBounds() {
        int height;
        int width;
        int size;
        this.checkWidget();
        this.parent.forceResize();
        SCROLLBARINFO info = new SCROLLBARINFO();
        info.cbSize = SCROLLBARINFO.sizeof;
        int x = 0;
        int y = 0;
        if ((this.style & 0x100) != 0) {
            OS.GetScrollBarInfo(this.parent.handle, -6, info);
            size = OS.GetSystemMetrics(3);
            y = info.rcScrollBar.top;
            width = info.rcScrollBar.right - info.rcScrollBar.left;
            height = size;
            if (width <= 2 * size) {
                x = info.rcScrollBar.left + width / 2;
                width = 0;
            } else {
                x = info.rcScrollBar.left + size;
                width -= 2 * size;
            }
        } else {
            OS.GetScrollBarInfo(this.parent.handle, -5, info);
            size = OS.GetSystemMetrics(20);
            x = info.rcScrollBar.left;
            width = size;
            height = info.rcScrollBar.bottom - info.rcScrollBar.top;
            if (height <= 2 * size) {
                y = info.rcScrollBar.top + height / 2;
                height = 0;
            } else {
                y = info.rcScrollBar.top + size;
                height -= 2 * size;
            }
        }
        RECT rect = new RECT();
        rect.left = x;
        rect.top = y;
        rect.right = x + width;
        rect.bottom = y + height;
        OS.MapWindowPoints(0, this.parent.handle, rect, 2);
        return new Rectangle(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
    }

    public boolean getVisible() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            SCROLLBARINFO psbi = new SCROLLBARINFO();
            psbi.cbSize = SCROLLBARINFO.sizeof;
            int idObject = (this.style & 0x200) != 0 ? -5 : -6;
            OS.GetScrollBarInfo(this.hwndScrollBar(), idObject, psbi);
            return (psbi.rgstate[0] & 0x8000) == 0;
        }
        return (this.state & 0x10) == 0;
    }

    int hwndScrollBar() {
        return this.parent.scrolledHandle();
    }

    public boolean isEnabled() {
        this.checkWidget();
        return this.getEnabled() && this.parent.isEnabled();
    }

    public boolean isVisible() {
        this.checkWidget();
        return this.getVisible() && this.parent.isVisible();
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseParent() {
        super.releaseParent();
        if (this.parent.horizontalBar == this) {
            this.parent.horizontalBar = null;
        }
        if (this.parent.verticalBar == this) {
            this.parent.verticalBar = null;
        }
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

    int scrollBarType() {
        return (this.style & 0x200) != 0 ? 1 : 0;
    }

    public void setEnabled(boolean enabled) {
        this.checkWidget();
        if (!OS.IsWinCE) {
            int hwnd = this.hwndScrollBar();
            int type = this.scrollBarType();
            int flags = enabled ? 0 : 3;
            OS.EnableScrollBar(hwnd, type, flags);
            this.state = enabled ? (this.state &= 0xFFFFFFF7) : (this.state |= 8);
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
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        info.fMask = 9;
        OS.GetScrollInfo(hwnd, type, info);
        if (value - info.nMin - info.nPage < 1) {
            return;
        }
        info.nMax = value;
        this.SetScrollInfo(hwnd, type, info, true);
    }

    public void setMinimum(int value) {
        this.checkWidget();
        if (value < 0) {
            return;
        }
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        info.fMask = 9;
        OS.GetScrollInfo(hwnd, type, info);
        if (info.nMax - value - info.nPage < 1) {
            return;
        }
        info.nMin = value;
        this.SetScrollInfo(hwnd, type, info, true);
    }

    public void setPageIncrement(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        this.pageIncrement = value;
    }

    boolean SetScrollInfo(int hwnd, int flags, SCROLLINFO info, boolean fRedraw) {
        boolean barVisible = false;
        boolean visible = this.getVisible();
        ScrollBar bar = null;
        if (!OS.IsWinCE) {
            switch (flags) {
                case 0: {
                    bar = this.parent.getVerticalBar();
                    break;
                }
                case 1: {
                    bar = this.parent.getHorizontalBar();
                }
            }
            boolean bl = barVisible = bar != null && bar.getVisible();
        }
        if (!visible || (this.state & 8) != 0) {
            fRedraw = false;
        }
        boolean result = OS.SetScrollInfo(hwnd, flags, info, fRedraw);
        if (!visible && !OS.IsWinCE) {
            OS.ShowScrollBar(hwnd, !barVisible ? 3 : flags, false);
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && visible && bar != null && !barVisible) {
            OS.ShowScrollBar(hwnd, flags == 0 ? 1 : 0, false);
        }
        if ((this.state & 8) != 0 && !OS.IsWinCE) {
            OS.EnableScrollBar(hwnd, flags, 3);
        }
        return result;
    }

    public void setSelection(int selection) {
        this.checkWidget();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        info.fMask = 4;
        info.nPos = selection;
        this.SetScrollInfo(hwnd, type, info, true);
    }

    public void setThumb(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        info.fMask = 11;
        OS.GetScrollInfo(hwnd, type, info);
        info.nPage = value;
        if (info.nPage != 0) {
            ++info.nPage;
        }
        this.SetScrollInfo(hwnd, type, info, true);
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
        int hwnd = this.hwndScrollBar();
        int type = this.scrollBarType();
        this.SetScrollInfo(hwnd, type, info, true);
    }

    public void setVisible(boolean visible) {
        int type;
        this.checkWidget();
        if (visible == this.getVisible()) {
            return;
        }
        if (OS.IsWinCE) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            int hwnd = this.hwndScrollBar();
            int type2 = this.scrollBarType();
            info.fMask = 3;
            if (visible) {
                info.fMask |= 8;
            }
            OS.GetScrollInfo(hwnd, type2, info);
            if (info.nPage == info.nMax - info.nMin + 1) {
                int max = info.nMax++;
                OS.SetScrollInfo(hwnd, type2, info, false);
                info.nMax = max;
                OS.SetScrollInfo(hwnd, type2, info, true);
            }
            return;
        }
        this.state = visible ? this.state & 0xFFFFFFEF : this.state | 0x10;
        int hwnd = this.hwndScrollBar();
        if (OS.ShowScrollBar(hwnd, type = this.scrollBarType(), visible)) {
            if ((this.state & 8) == 0) {
                SCROLLINFO info = new SCROLLINFO();
                info.cbSize = SCROLLINFO.sizeof;
                info.fMask = 3;
                OS.GetScrollInfo(hwnd, type, info);
                if (info.nMax - info.nMin - info.nPage >= 0) {
                    OS.EnableScrollBar(hwnd, type, 0);
                }
            }
            this.sendEvent(visible ? 22 : 23);
        }
    }

    LRESULT wmScrollChild(int wParam, int lParam) {
        int code = OS.LOWORD(wParam);
        if (code == 8) {
            return null;
        }
        Event event = new Event();
        switch (code) {
            case 4: {
                event.detail = 0;
                break;
            }
            case 5: {
                event.detail = 1;
                break;
            }
            case 6: {
                event.detail = 0x1000007;
                break;
            }
            case 7: {
                event.detail = 0x1000008;
                break;
            }
            case 1: {
                event.detail = 0x1000002;
                break;
            }
            case 0: {
                event.detail = 0x1000001;
                break;
            }
            case 3: {
                event.detail = 0x1000006;
                break;
            }
            case 2: {
                event.detail = 0x1000005;
            }
        }
        this.sendSelectionEvent(13, event, true);
        return null;
    }
}

