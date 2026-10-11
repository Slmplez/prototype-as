/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.INITCOMMONCONTROLSEX;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MARGINS;
import org.eclipse.swt.internal.win32.NMCUSTOMDRAW;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMREBARCHEVRON;
import org.eclipse.swt.internal.win32.NMREBARCHILDSIZE;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.REBARBANDINFO;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Event;

public class CoolBar
extends Composite {
    CoolItem[] items;
    CoolItem[] originalItems;
    boolean locked;
    boolean ignoreResize;
    static final int ReBarProc;
    static final TCHAR ReBarClass;
    static final int SEPARATOR_WIDTH = 2;
    static final int MAX_WIDTH = Short.MAX_VALUE;
    static final int DEFAULT_COOLBAR_WIDTH = 0;
    static final int DEFAULT_COOLBAR_HEIGHT = 0;

    static {
        ReBarClass = new TCHAR(0, "ReBarWindow32", true);
        INITCOMMONCONTROLSEX icex = new INITCOMMONCONTROLSEX();
        icex.dwSize = INITCOMMONCONTROLSEX.sizeof;
        icex.dwICC = 1024;
        OS.InitCommonControlsEx(icex);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ReBarClass, lpWndClass);
        ReBarProc = lpWndClass.lpfnWndProc;
    }

    public CoolBar(Composite parent, int style) {
        super(parent, CoolBar.checkStyle(style));
        if ((style & 0x200) != 0) {
            this.style |= 0x200;
            int bits = OS.GetWindowLong(this.handle, -16);
            OS.SetWindowLong(this.handle, -16, bits | 0x80);
        } else {
            this.style |= 0x100;
        }
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.CallWindowProc(ReBarProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        return (style |= 0x80000) & 0xFFFFFCFF;
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
        int border = this.getBorderWidth();
        int newWidth = wHint == -1 ? 16383 : wHint + border * 2;
        int newHeight = hHint == -1 ? 16383 : hHint + border * 2;
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (count != 0) {
            this.ignoreResize = true;
            boolean redraw = false;
            if (OS.IsWindowVisible(this.handle)) {
                if (OS.COMCTL32_MAJOR >= 6) {
                    redraw = true;
                    OS.UpdateWindow(this.handle);
                    OS.DefWindowProc(this.handle, 11, 0, 0);
                } else {
                    redraw = this.getDrawing();
                    if (redraw) {
                        OS.UpdateWindow(this.handle);
                        OS.SendMessage(this.handle, 11, 0, 0);
                    }
                }
            }
            RECT oldRect = new RECT();
            OS.GetWindowRect(this.handle, oldRect);
            int oldWidth = oldRect.right - oldRect.left;
            int oldHeight = oldRect.bottom - oldRect.top;
            int flags = 30;
            this.SetWindowPos(this.handle, 0, 0, 0, newWidth, newHeight, flags);
            RECT rect = new RECT();
            OS.SendMessage(this.handle, 1033, count - 1, rect);
            height = Math.max(height, rect.bottom);
            this.SetWindowPos(this.handle, 0, 0, 0, oldWidth, oldHeight, flags);
            REBARBANDINFO rbBand = new REBARBANDINFO();
            rbBand.cbSize = REBARBANDINFO.sizeof;
            rbBand.fMask = 513;
            int rowWidth = 0;
            int i = 0;
            while (i < count) {
                OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
                if ((rbBand.fStyle & 1) != 0) {
                    width = Math.max(width, rowWidth);
                    rowWidth = 0;
                }
                rowWidth += rbBand.cxIdeal + this.getMargin(i);
                ++i;
            }
            width = Math.max(width, rowWidth);
            if (redraw) {
                if (OS.COMCTL32_MAJOR >= 6) {
                    OS.DefWindowProc(this.handle, 11, 1, 0);
                } else {
                    OS.SendMessage(this.handle, 11, 1, 0);
                }
            }
            this.ignoreResize = false;
        }
        if (width == 0) {
            width = 0;
        }
        if (height == 0) {
            height = 0;
        }
        if ((this.style & 0x200) != 0) {
            int tmp = width;
            width = height;
            height = tmp;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width += border * 2, height += border * 2);
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFEFD;
        int hFont = OS.GetStockObject(13);
        OS.SendMessage(this.handle, 48, hFont, 0);
    }

    void createItem(CoolItem item, int index) {
        boolean fixLast;
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (index < 0 || index > count) {
            this.error(6);
        }
        int id = 0;
        while (id < this.items.length && this.items[id] != null) {
            ++id;
        }
        if (id == this.items.length) {
            CoolItem[] newItems = new CoolItem[this.items.length + 4];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
        }
        int hHeap = OS.GetProcessHeap();
        int lpText = OS.HeapAlloc(hHeap, 8, TCHAR.sizeof);
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 261;
        rbBand.fStyle = 192;
        if ((item.style & 4) != 0) {
            rbBand.fStyle |= 0x200;
        }
        rbBand.lpText = lpText;
        rbBand.wID = id;
        int lastIndex = this.getLastIndexOfRow(index - 1);
        boolean bl = fixLast = index == lastIndex + 1;
        if (fixLast) {
            rbBand.fMask |= 0x40;
            rbBand.cx = Short.MAX_VALUE;
        }
        if (index == 0 && count > 0) {
            this.getItem(0).setWrap(false);
        }
        if (OS.SendMessage(this.handle, OS.RB_INSERTBAND, index, rbBand) == 0) {
            this.error(14);
        }
        if (fixLast) {
            this.resizeToPreferredWidth(lastIndex);
        }
        OS.HeapFree(hHeap, 0, lpText);
        item.id = id;
        this.items[item.id] = item;
        int length = this.originalItems.length;
        CoolItem[] newOriginals = new CoolItem[length + 1];
        System.arraycopy(this.originalItems, 0, newOriginals, 0, index);
        System.arraycopy(this.originalItems, index, newOriginals, index + 1, length - index);
        newOriginals[index] = item;
        this.originalItems = newOriginals;
    }

    void createWidget() {
        super.createWidget();
        this.items = new CoolItem[4];
        this.originalItems = new CoolItem[0];
    }

    void destroyItem(CoolItem item) {
        Control control;
        int lastIndex;
        int index = OS.SendMessage(this.handle, 1040, item.id, 0);
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (count != 0 && index == (lastIndex = this.getLastIndexOfRow(index))) {
            this.resizeToMaximumWidth(lastIndex - 1);
        }
        boolean wasVisible = (control = item.control) != null && !control.isDisposed() && control.getVisible();
        CoolItem nextItem = null;
        if (item.getWrap() && index + 1 < count) {
            nextItem = this.getItem(index + 1);
            boolean bl = this.ignoreResize = !nextItem.getWrap();
        }
        if (OS.SendMessage(this.handle, 1026, index, 0) == 0) {
            this.error(15);
        }
        this.items[item.id] = null;
        item.id = -1;
        if (this.ignoreResize) {
            nextItem.setWrap(true);
            this.ignoreResize = false;
        }
        if (wasVisible) {
            control.setVisible(true);
        }
        index = 0;
        while (index < this.originalItems.length) {
            if (this.originalItems[index] == item) break;
            ++index;
        }
        int length = this.originalItems.length - 1;
        CoolItem[] newOriginals = new CoolItem[length];
        System.arraycopy(this.originalItems, 0, newOriginals, 0, index);
        System.arraycopy(this.originalItems, index + 1, newOriginals, index, length - index);
        this.originalItems = newOriginals;
    }

    void drawThemeBackground(int hDC, int hwnd, RECT rect) {
        Control control;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.background == -1 && (this.style & 0x800000) != 0 && (control = this.findBackgroundControl()) != null && control.backgroundImage != null) {
            this.fillBackground(hDC, control.getBackgroundPixel(), rect);
            return;
        }
        RECT rect2 = new RECT();
        OS.GetClientRect(this.handle, rect2);
        OS.MapWindowPoints(this.handle, hwnd, rect2, 2);
        POINT lpPoint = new POINT();
        OS.SetWindowOrgEx(hDC, -rect2.left, -rect2.top, lpPoint);
        OS.SendMessage(this.handle, 791, hDC, 12);
        OS.SetWindowOrgEx(hDC, lpPoint.x, lpPoint.y, null);
    }

    Control findThemeControl() {
        if ((this.style & 0x800000) != 0) {
            return this;
        }
        return this.background == -1 && this.backgroundImage == null ? this : super.findThemeControl();
    }

    int getMargin(int index) {
        int margin = 0;
        if (OS.COMCTL32_MAJOR >= 6) {
            MARGINS margins = new MARGINS();
            OS.SendMessage(this.handle, 1064, 0, margins);
            margin += margins.cxLeftWidth + margins.cxRightWidth;
        }
        RECT rect = new RECT();
        OS.SendMessage(this.handle, 1058, index, rect);
        margin = (this.style & 0x800000) != 0 ? ((this.style & 0x200) != 0 ? (margin += rect.top + 4) : (margin += rect.left + 4)) : ((this.style & 0x200) != 0 ? (margin += rect.top + rect.bottom) : (margin += rect.left + rect.right));
        if ((this.style & 0x800000) == 0 && !this.isLastItemOfRow(index)) {
            margin += 2;
        }
        return margin;
    }

    public CoolItem getItem(int index) {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (index < 0 || index >= count) {
            this.error(6);
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 256;
        OS.SendMessage(this.handle, OS.RB_GETBANDINFO, index, rbBand);
        return this.items[rbBand.wID];
    }

    public int getItemCount() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1036, 0, 0);
    }

    public int[] getItemOrder() {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        int[] indices = new int[count];
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 256;
        int i = 0;
        while (i < count) {
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
            CoolItem item = this.items[rbBand.wID];
            int index = 0;
            while (index < this.originalItems.length) {
                if (this.originalItems[index] == item) break;
                ++index;
            }
            if (index == this.originalItems.length) {
                this.error(8);
            }
            indices[i] = index;
            ++i;
        }
        return indices;
    }

    public CoolItem[] getItems() {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        CoolItem[] result = new CoolItem[count];
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 256;
        int i = 0;
        while (i < count) {
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
            result[i] = this.items[rbBand.wID];
            ++i;
        }
        return result;
    }

    public Point[] getItemSizes() {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        Point[] sizes = new Point[count];
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 32;
        int separator = (this.style & 0x800000) == 0 ? 2 : 0;
        MARGINS margins = new MARGINS();
        int i = 0;
        while (i < count) {
            RECT rect = new RECT();
            OS.SendMessage(this.handle, 1033, i, rect);
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
            if (OS.COMCTL32_MAJOR >= 6) {
                OS.SendMessage(this.handle, 1064, 0, margins);
                rect.left -= margins.cxLeftWidth;
                rect.right += margins.cxRightWidth;
            }
            if (!this.isLastItemOfRow(i)) {
                rect.right += separator;
            }
            sizes[i] = (this.style & 0x200) != 0 ? new Point(rbBand.cyChild, rect.right - rect.left) : new Point(rect.right - rect.left, rbBand.cyChild);
            ++i;
        }
        return sizes;
    }

    int getLastIndexOfRow(int index) {
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (count == 0) {
            return -1;
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 1;
        int i = index + 1;
        while (i < count) {
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
            if ((rbBand.fStyle & 1) != 0) {
                return i - 1;
            }
            ++i;
        }
        return count - 1;
    }

    boolean isLastItemOfRow(int index) {
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (index + 1 == count) {
            return true;
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 1;
        OS.SendMessage(this.handle, OS.RB_GETBANDINFO, index + 1, rbBand);
        return (rbBand.fStyle & 1) != 0;
    }

    public boolean getLocked() {
        this.checkWidget();
        return this.locked;
    }

    public int[] getWrapIndices() {
        this.checkWidget();
        CoolItem[] items = this.getItems();
        int[] indices = new int[items.length];
        int count = 0;
        int i = 0;
        while (i < items.length) {
            if (items[i].getWrap()) {
                indices[count++] = i;
            }
            ++i;
        }
        int[] result = new int[count];
        System.arraycopy(indices, 0, result, 0, count);
        return result;
    }

    public int indexOf(CoolItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        return OS.SendMessage(this.handle, 1040, item.id, 0);
    }

    void resizeToPreferredWidth(int index) {
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        if (index >= 0 && index < count) {
            REBARBANDINFO rbBand = new REBARBANDINFO();
            rbBand.cbSize = REBARBANDINFO.sizeof;
            rbBand.fMask = 512;
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, index, rbBand);
            RECT rect = new RECT();
            OS.SendMessage(this.handle, 1058, index, rect);
            rbBand.cx = rbBand.cxIdeal + rect.left;
            if ((this.style & 0x800000) == 0) {
                rbBand.cx += rect.right;
            }
            rbBand.fMask = 64;
            OS.SendMessage(this.handle, OS.RB_SETBANDINFO, index, rbBand);
        }
    }

    void resizeToMaximumWidth(int index) {
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 64;
        rbBand.cx = Short.MAX_VALUE;
        OS.SendMessage(this.handle, OS.RB_SETBANDINFO, index, rbBand);
    }

    void releaseChildren(boolean destroy) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                CoolItem item = this.items[i];
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                ++i;
            }
            this.items = null;
        }
        super.releaseChildren(destroy);
    }

    void removeControl(Control control) {
        super.removeControl(control);
        int i = 0;
        while (i < this.items.length) {
            CoolItem item = this.items[i];
            if (item != null && item.control == control) {
                item.setControl(null);
            }
            ++i;
        }
    }

    void reskinChildren(int flags) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                CoolItem item = this.items[i];
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    void setBackgroundPixel(int pixel) {
        if (pixel == -1) {
            pixel = this.defaultBackground();
        }
        OS.SendMessage(this.handle, 1043, 0, pixel);
        this.setItemColors(OS.SendMessage(this.handle, 1046, 0, 0), pixel);
        if (!OS.IsWindowVisible(this.handle)) {
            return;
        }
        if (OS.IsWinCE) {
            OS.InvalidateRect(this.handle, null, true);
        } else {
            int flags = 1157;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    void setForegroundPixel(int pixel) {
        if (pixel == -1) {
            pixel = this.defaultForeground();
        }
        OS.SendMessage(this.handle, 1045, 0, pixel);
        this.setItemColors(pixel, OS.SendMessage(this.handle, 1044, 0, 0));
    }

    void setItemColors(int foreColor, int backColor) {
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 2;
        rbBand.clrFore = foreColor;
        rbBand.clrBack = backColor;
        int i = 0;
        while (i < count) {
            OS.SendMessage(this.handle, OS.RB_SETBANDINFO, i, rbBand);
            ++i;
        }
    }

    public void setItemLayout(int[] itemOrder, int[] wrapIndices, Point[] sizes) {
        this.checkWidget();
        this.setRedraw(false);
        this.setItemOrder(itemOrder);
        this.setWrapIndices(wrapIndices);
        this.setItemSizes(sizes);
        this.setRedraw(true);
    }

    void setItemOrder(int[] itemOrder) {
        int itemCount;
        if (itemOrder == null) {
            this.error(4);
        }
        if (itemOrder.length != (itemCount = OS.SendMessage(this.handle, 1036, 0, 0))) {
            this.error(5);
        }
        boolean[] set = new boolean[itemCount];
        int i = 0;
        while (i < itemOrder.length) {
            int index = itemOrder[i];
            if (index < 0 || index >= itemCount) {
                this.error(6);
            }
            if (set[index]) {
                this.error(5);
            }
            set[index] = true;
            ++i;
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        int i2 = 0;
        while (i2 < itemOrder.length) {
            int id = this.originalItems[itemOrder[i2]].id;
            int index = OS.SendMessage(this.handle, 1040, id, 0);
            if (index != i2) {
                int lastItemSrcRow = this.getLastIndexOfRow(index);
                int lastItemDstRow = this.getLastIndexOfRow(i2);
                if (index == lastItemSrcRow) {
                    this.resizeToPreferredWidth(index);
                }
                if (i2 == lastItemDstRow) {
                    this.resizeToPreferredWidth(i2);
                }
                OS.SendMessage(this.handle, 1063, index, i2);
                if (index == lastItemSrcRow && index - 1 >= 0) {
                    this.resizeToMaximumWidth(index - 1);
                }
                if (i2 == lastItemDstRow) {
                    this.resizeToMaximumWidth(i2);
                }
            }
            ++i2;
        }
    }

    void setItemSizes(Point[] sizes) {
        int count;
        if (sizes == null) {
            this.error(4);
        }
        if (sizes.length != (count = OS.SendMessage(this.handle, 1036, 0, 0))) {
            this.error(5);
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 256;
        int i = 0;
        while (i < count) {
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
            this.items[rbBand.wID].setSize(sizes[i].x, sizes[i].y);
            ++i;
        }
    }

    public void setLocked(boolean locked) {
        this.checkWidget();
        this.locked = locked;
        int count = OS.SendMessage(this.handle, 1036, 0, 0);
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 1;
        int i = 0;
        while (i < count) {
            OS.SendMessage(this.handle, OS.RB_GETBANDINFO, i, rbBand);
            rbBand.fStyle = locked ? (rbBand.fStyle |= 0x100) : (rbBand.fStyle &= 0xFFFFFEFF);
            OS.SendMessage(this.handle, OS.RB_SETBANDINFO, i, rbBand);
            ++i;
        }
    }

    public void setWrapIndices(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            indices = new int[]{};
        }
        int count = this.getItemCount();
        int i = 0;
        while (i < indices.length) {
            if (indices[i] < 0 || indices[i] >= count) {
                this.error(6);
            }
            ++i;
        }
        this.setRedraw(false);
        CoolItem[] items = this.getItems();
        int i2 = 0;
        while (i2 < items.length) {
            CoolItem item = items[i2];
            if (item.getWrap()) {
                this.resizeToPreferredWidth(i2 - 1);
                item.setWrap(false);
            }
            ++i2;
        }
        this.resizeToMaximumWidth(count - 1);
        i2 = 0;
        while (i2 < indices.length) {
            int index = indices[i2];
            if (index >= 0 && index < items.length) {
                CoolItem item = items[index];
                item.setWrap(true);
                this.resizeToMaximumWidth(index - 1);
            }
            ++i2;
        }
        this.setRedraw(true);
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x40 | 4;
        bits |= 0x8200;
        if ((this.style & 0x800000) == 0) {
            bits |= 0x400;
        }
        return bits;
    }

    TCHAR windowClass() {
        return ReBarClass;
    }

    int windowProc() {
        return ReBarProc;
    }

    LRESULT WM_COMMAND(int wParam, int lParam) {
        LRESULT result = super.WM_COMMAND(wParam, lParam);
        if (result != null) {
            return result;
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
            this.drawBackground(wParam);
            return null;
        }
        return result;
    }

    LRESULT WM_NOTIFY(int wParam, int lParam) {
        LRESULT result = super.WM_NOTIFY(wParam, lParam);
        if (result != null) {
            return result;
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_SETREDRAW(int wParam, int lParam) {
        LRESULT result = super.WM_SETREDRAW(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            return LRESULT.ZERO;
        }
        Rectangle rect = this.getBounds();
        int code = this.callWindowProc(this.handle, 11, wParam, lParam);
        OS.DefWindowProc(this.handle, 11, wParam, lParam);
        if (!rect.equals(this.getBounds())) {
            this.parent.redraw(rect.x, rect.y, rect.width, rect.height, true);
        }
        return new LRESULT(code);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        if (this.ignoreResize) {
            int code = this.callWindowProc(this.handle, 5, wParam, lParam);
            if (code == 0) {
                return LRESULT.ZERO;
            }
            return new LRESULT(code);
        }
        return super.WM_SIZE(wParam, lParam);
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -835: {
                int button;
                int pos = OS.GetMessagePos();
                POINT pt = new POINT();
                OS.POINTSTOPOINT(pt, pos);
                OS.ScreenToClient(this.handle, pt);
                int n = button = this.display.lastButton != 0 ? this.display.lastButton : 1;
                if (this.sendDragEvent(button, pt.x, pt.y)) break;
                return LRESULT.ONE;
            }
            case -839: {
                NMREBARCHILDSIZE lprbcs = new NMREBARCHILDSIZE();
                OS.MoveMemory(lprbcs, lParam, NMREBARCHILDSIZE.sizeof);
                if (lprbcs.uBand == -1) break;
                CoolItem item = this.items[lprbcs.wID];
                Control control = item.control;
                if (control == null) break;
                int width = lprbcs.rcChild_right - lprbcs.rcChild_left;
                int height = lprbcs.rcChild_bottom - lprbcs.rcChild_top;
                control.setBounds(lprbcs.rcChild_left, lprbcs.rcChild_top, width, height);
                break;
            }
            case -831: {
                if (this.ignoreResize) break;
                Point size = this.getSize();
                int border = this.getBorderWidth();
                int barHeight = OS.SendMessage(this.handle, 1051, 0, 0);
                if ((this.style & 0x200) != 0) {
                    this.setSize(barHeight + 2 * border, size.y);
                    break;
                }
                this.setSize(size.x, barHeight + 2 * border);
                break;
            }
            case -841: {
                NMREBARCHEVRON lpnm = new NMREBARCHEVRON();
                OS.MoveMemory(lpnm, lParam, NMREBARCHEVRON.sizeof);
                CoolItem item = this.items[lpnm.wID];
                if (item == null) break;
                Event event = new Event();
                event.detail = 4;
                if ((this.style & 0x200) != 0) {
                    event.x = lpnm.right;
                    event.y = lpnm.top;
                } else {
                    event.x = lpnm.left;
                    event.y = lpnm.bottom;
                }
                item.sendSelectionEvent(13, event, false);
                break;
            }
            case -12: {
                if (OS.COMCTL32_MAJOR < 6 || this.findBackgroundControl() == null && (this.style & 0x800000) == 0) break;
                NMCUSTOMDRAW nmcd = new NMCUSTOMDRAW();
                OS.MoveMemory(nmcd, lParam, NMCUSTOMDRAW.sizeof);
                switch (nmcd.dwDrawStage) {
                    case 3: {
                        return new LRESULT(68);
                    }
                    case 4: {
                        this.drawBackground(nmcd.hdc);
                    }
                }
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }
}

