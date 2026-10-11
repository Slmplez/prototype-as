/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ExpandListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICS;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICSA;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICSW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ExpandItem;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.TypedListener;

public class ExpandBar
extends Composite {
    ExpandItem[] items;
    int itemCount;
    ExpandItem focusItem;
    int spacing = 4;
    int yCurrentScroll;
    int hFont;

    public ExpandBar(Composite parent, int style) {
        super(parent, ExpandBar.checkStyle(style));
    }

    public void addExpandListener(ExpandListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(17, typedListener);
        this.addListener(18, typedListener);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    static int checkStyle(int style) {
        return (style &= 0xFFFFFEFF) | 0x40000;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int height = 0;
        int width = 0;
        if ((wHint == -1 || hHint == -1) && this.itemCount > 0) {
            int hDC = OS.GetDC(this.handle);
            int hTheme = 0;
            if (this.isAppThemed()) {
                hTheme = this.display.hExplorerBarTheme();
            }
            int hCurrentFont = 0;
            int oldFont = 0;
            if (hTheme == 0) {
                if (this.hFont != 0) {
                    hCurrentFont = this.hFont;
                } else if (!OS.IsWinCE) {
                    NONCLIENTMETRICS info = OS.IsUnicode ? new NONCLIENTMETRICSW() : new NONCLIENTMETRICSA();
                    info.cbSize = NONCLIENTMETRICS.sizeof;
                    if (OS.SystemParametersInfo(41, 0, info, 0)) {
                        LOGFONT logFont = OS.IsUnicode ? info.lfCaptionFont : ((NONCLIENTMETRICSA)info).lfCaptionFont;
                        hCurrentFont = OS.CreateFontIndirect(logFont);
                    }
                }
                if (hCurrentFont != 0) {
                    oldFont = OS.SelectObject(hDC, hCurrentFont);
                }
            }
            height += this.spacing;
            int i = 0;
            while (i < this.itemCount) {
                ExpandItem item = this.items[i];
                height += item.getHeaderHeight();
                if (item.expanded) {
                    height += item.height;
                }
                height += this.spacing;
                width = Math.max(width, item.getPreferredWidth(hTheme, hDC));
                ++i;
            }
            if (hCurrentFont != 0) {
                OS.SelectObject(hDC, oldFont);
                if (hCurrentFont != this.hFont) {
                    OS.DeleteObject(hCurrentFont);
                }
            }
            OS.ReleaseDC(this.handle, hDC);
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
        Rectangle trim = this.computeTrim(0, 0, width, height);
        return new Point(trim.width, trim.height);
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFFFD;
        this.state |= 0x2000;
    }

    void createItem(ExpandItem item, int style, int index) {
        if (index < 0 || index > this.itemCount) {
            this.error(6);
        }
        if (this.itemCount == this.items.length) {
            ExpandItem[] newItems = new ExpandItem[this.itemCount + 4];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
        }
        System.arraycopy(this.items, index, this.items, index + 1, this.itemCount - index);
        this.items[index] = item;
        ++this.itemCount;
        if (this.focusItem == null) {
            this.focusItem = item;
        }
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        item.width = Math.max(0, rect.right - rect.left - this.spacing * 2);
        this.layoutItems(index, true);
    }

    void createWidget() {
        super.createWidget();
        this.items = new ExpandItem[4];
        if (!this.isAppThemed()) {
            this.backgroundMode = 1;
        }
    }

    int defaultBackground() {
        if (!this.isAppThemed()) {
            return OS.GetSysColor(OS.COLOR_WINDOW);
        }
        return super.defaultBackground();
    }

    void destroyItem(ExpandItem item) {
        int index = 0;
        while (index < this.itemCount) {
            if (this.items[index] == item) break;
            ++index;
        }
        if (index == this.itemCount) {
            return;
        }
        if (item == this.focusItem) {
            int focusIndex;
            int n = focusIndex = index > 0 ? index - 1 : 1;
            if (focusIndex < this.itemCount) {
                this.focusItem = this.items[focusIndex];
                this.focusItem.redraw(true);
            } else {
                this.focusItem = null;
            }
        }
        System.arraycopy(this.items, index + 1, this.items, index, --this.itemCount - index);
        this.items[this.itemCount] = null;
        item.redraw(true);
        this.layoutItems(index, true);
    }

    void drawThemeBackground(int hDC, int hwnd, RECT rect) {
        RECT rect2 = new RECT();
        OS.GetClientRect(this.handle, rect2);
        OS.MapWindowPoints(this.handle, hwnd, rect2, 2);
        OS.DrawThemeBackground(this.display.hExplorerBarTheme(), hDC, 5, 0, rect2, null);
    }

    void drawWidget(GC gc, RECT clipRect) {
        int hTheme = 0;
        if (this.isAppThemed()) {
            hTheme = this.display.hExplorerBarTheme();
        }
        if (hTheme != 0) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            OS.DrawThemeBackground(hTheme, gc.handle, 1, 0, rect, clipRect);
        } else {
            this.drawBackground(gc.handle);
        }
        boolean drawFocus = false;
        if (this.handle == OS.GetFocus()) {
            int uiState = OS.SendMessage(this.handle, 297, 0, 0);
            drawFocus = (uiState & 1) == 0;
        }
        int hCurrentFont = 0;
        int oldFont = 0;
        if (hTheme == 0) {
            if (this.hFont != 0) {
                hCurrentFont = this.hFont;
            } else if (!OS.IsWinCE) {
                NONCLIENTMETRICS info = OS.IsUnicode ? new NONCLIENTMETRICSW() : new NONCLIENTMETRICSA();
                info.cbSize = NONCLIENTMETRICS.sizeof;
                if (OS.SystemParametersInfo(41, 0, info, 0)) {
                    LOGFONT logFont = OS.IsUnicode ? info.lfCaptionFont : ((NONCLIENTMETRICSA)info).lfCaptionFont;
                    hCurrentFont = OS.CreateFontIndirect(logFont);
                }
            }
            if (hCurrentFont != 0) {
                oldFont = OS.SelectObject(gc.handle, hCurrentFont);
            }
            if (this.foreground != -1) {
                OS.SetTextColor(gc.handle, this.foreground);
            }
        }
        int i = 0;
        while (i < this.itemCount) {
            ExpandItem item;
            item.drawItem(gc, hTheme, clipRect, (item = this.items[i]) == this.focusItem && drawFocus);
            ++i;
        }
        if (hCurrentFont != 0) {
            OS.SelectObject(gc.handle, oldFont);
            if (hCurrentFont != this.hFont) {
                OS.DeleteObject(hCurrentFont);
            }
        }
    }

    Control findBackgroundControl() {
        Control control = super.findBackgroundControl();
        if (!this.isAppThemed() && control == null) {
            control = this;
        }
        return control;
    }

    Control findThemeControl() {
        return this.isAppThemed() ? this : super.findThemeControl();
    }

    int getBandHeight() {
        if (this.hFont == 0) {
            return 24;
        }
        int hDC = OS.GetDC(this.handle);
        int oldHFont = OS.SelectObject(hDC, this.hFont);
        TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(hDC, lptm);
        OS.SelectObject(hDC, oldHFont);
        OS.ReleaseDC(this.handle, hDC);
        return Math.max(24, lptm.tmHeight + 4);
    }

    public ExpandItem getItem(int index) {
        this.checkWidget();
        if (index < 0 || index >= this.itemCount) {
            this.error(6);
        }
        return this.items[index];
    }

    public int getItemCount() {
        this.checkWidget();
        return this.itemCount;
    }

    public ExpandItem[] getItems() {
        this.checkWidget();
        ExpandItem[] result = new ExpandItem[this.itemCount];
        System.arraycopy(this.items, 0, result, 0, this.itemCount);
        return result;
    }

    public int getSpacing() {
        this.checkWidget();
        return this.spacing;
    }

    public int indexOf(ExpandItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        int i = 0;
        while (i < this.itemCount) {
            if (this.items[i] == item) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    boolean isAppThemed() {
        if (this.background != -1) {
            return false;
        }
        if (this.foreground != -1) {
            return false;
        }
        if (this.hFont != 0) {
            return false;
        }
        return OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed();
    }

    void layoutItems(int index, boolean setScrollbar) {
        if (index < this.itemCount) {
            ExpandItem item;
            int y = this.spacing - this.yCurrentScroll;
            int i = 0;
            while (i < index) {
                item = this.items[i];
                if (item.expanded) {
                    y += item.height;
                }
                y += item.getHeaderHeight() + this.spacing;
                ++i;
            }
            i = index;
            while (i < this.itemCount) {
                item = this.items[i];
                item.setBounds(this.spacing, y, 0, 0, true, false);
                if (item.expanded) {
                    y += item.height;
                }
                y += item.getHeaderHeight() + this.spacing;
                ++i;
            }
        }
        if (setScrollbar) {
            this.setScrollbar();
        }
    }

    void releaseChildren(boolean destroy) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                ExpandItem item = this.items[i];
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                ++i;
            }
            this.items = null;
        }
        this.focusItem = null;
        super.releaseChildren(destroy);
    }

    public void removeExpandListener(ExpandListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(17, listener);
        this.eventTable.unhook(18, listener);
    }

    void reskinChildren(int flags) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                ExpandItem item = this.items[i];
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    void setBackgroundPixel(int pixel) {
        super.setBackgroundPixel(pixel);
        if (!OS.IsWinCE) {
            int flags = 1157;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.hFont = font != null ? font.handle : 0;
        this.layoutItems(0, true);
    }

    void setForegroundPixel(int pixel) {
        super.setForegroundPixel(pixel);
        if (!OS.IsWinCE) {
            int flags = 1157;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    void setScrollbar() {
        if (this.itemCount == 0) {
            return;
        }
        if ((this.style & 0x200) == 0) {
            return;
        }
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int height = rect.bottom - rect.top;
        ExpandItem item = this.items[this.itemCount - 1];
        int maxHeight = item.y + this.getBandHeight() + this.spacing;
        if (item.expanded) {
            maxHeight += item.height;
        }
        if (this.yCurrentScroll > 0 && height > maxHeight) {
            this.yCurrentScroll = Math.max(0, this.yCurrentScroll + maxHeight - height);
            this.layoutItems(0, false);
        }
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 7;
        info.nMin = 0;
        info.nMax = maxHeight += this.yCurrentScroll;
        info.nPage = height;
        info.nPos = Math.min(this.yCurrentScroll, info.nMax);
        if (info.nPage != 0) {
            ++info.nPage;
        }
        OS.SetScrollInfo(this.handle, 1, info, true);
    }

    public void setSpacing(int spacing) {
        this.checkWidget();
        if (spacing < 0) {
            return;
        }
        if (spacing == this.spacing) {
            return;
        }
        this.spacing = spacing;
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int width = Math.max(0, rect.right - rect.left - spacing * 2);
        int i = 0;
        while (i < this.itemCount) {
            ExpandItem item = this.items[i];
            if (item.width != width) {
                item.setBounds(0, 0, width, item.height, false, true);
            }
            ++i;
        }
        this.layoutItems(0, true);
        OS.InvalidateRect(this.handle, null, true);
    }

    void showItem(ExpandItem item) {
        Control control = item.control;
        if (control != null && !control.isDisposed()) {
            control.setVisible(item.expanded);
        }
        item.redraw(true);
        int index = this.indexOf(item);
        this.layoutItems(index + 1, true);
    }

    void showFocus(boolean up) {
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int height = rect.bottom - rect.top;
        int updateY = 0;
        if (up) {
            if (this.focusItem.y < 0) {
                updateY = Math.min(this.yCurrentScroll, -this.focusItem.y);
            }
        } else {
            int itemHeight = this.focusItem.y + this.getBandHeight();
            if (this.focusItem.expanded && height >= this.getBandHeight() + this.focusItem.height) {
                itemHeight += this.focusItem.height;
            }
            if (itemHeight > height) {
                updateY = height - itemHeight;
            }
        }
        if (updateY != 0) {
            this.yCurrentScroll = Math.max(0, this.yCurrentScroll - updateY);
            if ((this.style & 0x200) != 0) {
                SCROLLINFO info = new SCROLLINFO();
                info.cbSize = SCROLLINFO.sizeof;
                info.fMask = 4;
                info.nPos = this.yCurrentScroll;
                OS.SetScrollInfo(this.handle, 1, info, true);
            }
            OS.ScrollWindowEx(this.handle, 0, updateY, null, null, 0, null, 3);
            int i = 0;
            while (i < this.itemCount) {
                this.items[i].y += updateY;
                ++i;
            }
        }
    }

    TCHAR windowClass() {
        return this.display.windowClass;
    }

    int windowProc() {
        return this.display.windowProc;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.focusItem == null) {
            return result;
        }
        switch (wParam) {
            case 13: 
            case 32: {
                Event event = new Event();
                event.item = this.focusItem;
                this.sendEvent(this.focusItem.expanded ? 18 : 17, event);
                this.focusItem.expanded = !this.focusItem.expanded;
                this.showItem(this.focusItem);
                return LRESULT.ZERO;
            }
            case 38: {
                int focusIndex = this.indexOf(this.focusItem);
                if (focusIndex <= 0) break;
                this.focusItem.redraw(true);
                this.focusItem = this.items[focusIndex - 1];
                this.focusItem.redraw(true);
                this.showFocus(true);
                return LRESULT.ZERO;
            }
            case 40: {
                int focusIndex = this.indexOf(this.focusItem);
                if (focusIndex >= this.itemCount - 1) break;
                this.focusItem.redraw(true);
                this.focusItem = this.items[focusIndex + 1];
                this.focusItem.redraw(true);
                this.showFocus(false);
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_KILLFOCUS(wParam, lParam);
        if (this.focusItem != null) {
            this.focusItem.redraw(true);
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        int x = OS.GET_X_LPARAM(lParam);
        int y = OS.GET_Y_LPARAM(lParam);
        int i = 0;
        while (i < this.itemCount) {
            ExpandItem item = this.items[i];
            boolean hover = item.isHover(x, y);
            if (hover && this.focusItem != item) {
                this.focusItem.redraw(true);
                this.focusItem = item;
                this.focusItem.redraw(true);
                this.forceFocus();
                break;
            }
            ++i;
        }
        return result;
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        int y;
        LRESULT result = super.WM_LBUTTONUP(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (this.focusItem == null) {
            return result;
        }
        int x = OS.GET_X_LPARAM(lParam);
        boolean hover = this.focusItem.isHover(x, y = OS.GET_Y_LPARAM(lParam));
        if (hover) {
            Event event = new Event();
            event.item = this.focusItem;
            this.sendEvent(this.focusItem.expanded ? 18 : 17, event);
            this.focusItem.expanded = !this.focusItem.expanded;
            this.showItem(this.focusItem);
        }
        return result;
    }

    LRESULT WM_MOUSELEAVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSELEAVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        int i = 0;
        while (i < this.itemCount) {
            ExpandItem item = this.items[i];
            if (item.hover) {
                item.hover = false;
                item.redraw(false);
                break;
            }
            ++i;
        }
        return result;
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSEMOVE(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        int x = OS.GET_X_LPARAM(lParam);
        int y = OS.GET_Y_LPARAM(lParam);
        int i = 0;
        while (i < this.itemCount) {
            ExpandItem item = this.items[i];
            boolean hover = item.isHover(x, y);
            if (item.hover != hover) {
                item.hover = hover;
                item.redraw(false);
            }
            ++i;
        }
        return result;
    }

    LRESULT WM_MOUSEWHEEL(int wParam, int lParam) {
        return this.wmScrollWheel(true, wParam, lParam);
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        PAINTSTRUCT ps = new PAINTSTRUCT();
        GCData data = new GCData();
        data.ps = ps;
        data.hwnd = this.handle;
        GC gc = this.new_GC(data);
        if (gc != null) {
            int width = ps.right - ps.left;
            int height = ps.bottom - ps.top;
            if (width != 0 && height != 0) {
                RECT rect = new RECT();
                OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                this.drawWidget(gc, rect);
                if (this.hooks(9) || this.filters(9)) {
                    Event event = new Event();
                    event.gc = gc;
                    event.x = rect.left;
                    event.y = rect.top;
                    event.width = width;
                    event.height = height;
                    this.sendEvent(9, event);
                    event.gc = null;
                }
            }
            gc.dispose();
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PRINTCLIENT(int wParam, int lParam) {
        LRESULT result = super.WM_PRINTCLIENT(wParam, lParam);
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        GCData data = new GCData();
        data.device = this.display;
        data.foreground = this.getForegroundPixel();
        GC gc = GC.win32_new(wParam, data);
        this.drawWidget(gc, rect);
        gc.dispose();
        return result;
    }

    LRESULT WM_SETCURSOR(int wParam, int lParam) {
        LRESULT result = super.WM_SETCURSOR(wParam, lParam);
        if (result != null) {
            return result;
        }
        short hitTest = (short)OS.LOWORD(lParam);
        if (hitTest == 1) {
            int i = 0;
            while (i < this.itemCount) {
                ExpandItem item = this.items[i];
                if (item.hover) {
                    int hCursor = OS.LoadCursor(0, 32649);
                    OS.SetCursor(hCursor);
                    return LRESULT.ONE;
                }
                ++i;
            }
        }
        return result;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if (this.focusItem != null) {
            this.focusItem.redraw(true);
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int width = Math.max(0, rect.right - rect.left - this.spacing * 2);
        int i = 0;
        while (i < this.itemCount) {
            ExpandItem item = this.items[i];
            if (item.width != width) {
                item.setBounds(0, 0, width, item.height, false, true);
            }
            ++i;
        }
        this.setScrollbar();
        OS.InvalidateRect(this.handle, null, true);
        return result;
    }

    LRESULT wmScroll(ScrollBar bar, boolean update, int hwnd, int msg, int wParam, int lParam) {
        LRESULT result = super.wmScroll(bar, true, hwnd, msg, wParam, lParam);
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 4;
        OS.GetScrollInfo(this.handle, 1, info);
        int updateY = this.yCurrentScroll - info.nPos;
        OS.ScrollWindowEx(this.handle, 0, updateY, null, null, 0, null, 3);
        this.yCurrentScroll = info.nPos;
        if (updateY != 0) {
            int i = 0;
            while (i < this.itemCount) {
                this.items[i].y += updateY;
                ++i;
            }
        }
        return result;
    }
}

