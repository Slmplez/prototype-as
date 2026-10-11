/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.HDHITTESTINFO;
import org.eclipse.swt.internal.win32.HDITEM;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.LVCOLUMN;
import org.eclipse.swt.internal.win32.LVHITTESTINFO;
import org.eclipse.swt.internal.win32.LVITEM;
import org.eclipse.swt.internal.win32.MEASUREITEMSTRUCT;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMHEADER;
import org.eclipse.swt.internal.win32.NMLISTVIEW;
import org.eclipse.swt.internal.win32.NMLVCUSTOMDRAW;
import org.eclipse.swt.internal.win32.NMLVDISPINFO;
import org.eclipse.swt.internal.win32.NMLVODSTATECHANGE;
import org.eclipse.swt.internal.win32.NMRGINFO;
import org.eclipse.swt.internal.win32.NMTTCUSTOMDRAW;
import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.NMTTDISPINFOA;
import org.eclipse.swt.internal.win32.NMTTDISPINFOW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.SHDRAGIMAGE;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TypedListener;

public class Table
extends Composite {
    TableItem[] items;
    int[] keys;
    TableColumn[] columns;
    int columnCount;
    int customCount;
    int keyCount;
    ImageList imageList;
    ImageList headerImageList;
    TableItem currentItem;
    TableColumn sortColumn;
    RECT focusRect;
    int headerToolTipHandle;
    boolean ignoreCustomDraw;
    boolean ignoreDrawForeground;
    boolean ignoreDrawBackground;
    boolean ignoreDrawFocus;
    boolean ignoreDrawSelection;
    boolean ignoreDrawHot;
    boolean customDraw;
    boolean dragStarted;
    boolean explorerTheme;
    boolean firstColumnImage;
    boolean fixScrollWidth;
    boolean tipRequested;
    boolean wasSelected;
    boolean wasResized;
    boolean painted;
    boolean ignoreActivate;
    boolean ignoreSelect;
    boolean ignoreShrink;
    boolean ignoreResize;
    boolean ignoreColumnMove;
    boolean ignoreColumnResize;
    boolean fullRowSelect;
    int itemHeight;
    int lastIndexOf;
    int lastWidth;
    int sortDirection;
    int resizeCount;
    int selectionForeground;
    int hotIndex;
    static int HeaderProc;
    static final int INSET = 4;
    static final int GRID_WIDTH = 1;
    static final int SORT_WIDTH = 10;
    static final int HEADER_MARGIN = 12;
    static final int HEADER_EXTRA = 3;
    static final int VISTA_EXTRA = 2;
    static final int EXPLORER_EXTRA = 2;
    static final int H_SCROLL_LIMIT = 32;
    static final int V_SCROLL_LIMIT = 16;
    static final int DRAG_IMAGE_SIZE = 301;
    static final boolean EXPLORER_THEME = true;
    static boolean COMPRESS_ITEMS;
    static final int TableProc;
    static final TCHAR TableClass;

    static {
        COMPRESS_ITEMS = true;
        TableClass = new TCHAR(0, "SysListView32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, TableClass, lpWndClass);
        TableProc = lpWndClass.lpfnWndProc;
    }

    public Table(Composite parent, int style) {
        super(parent, Table.checkStyle(style));
    }

    void _addListener(int eventType, Listener listener) {
        super._addListener(eventType, listener);
        switch (eventType) {
            case 40: 
            case 41: 
            case 42: {
                this.setCustomDraw(true);
                this.setBackgroundTransparent(true);
                if (OS.COMCTL32_MAJOR < 6) {
                    this.style |= 0x20000000;
                }
                if (!OS.IsWinCE) break;
                OS.SendMessage(this.handle, 4150, 16384, 0);
            }
        }
    }

    boolean _checkGrow(int count) {
        if (this.keys == null) {
            if (count == this.items.length) {
                boolean small = this.getDrawing() && OS.IsWindowVisible(this.handle);
                int length = small ? this.items.length + 4 : Math.max(4, this.items.length * 3 / 2);
                TableItem[] newItems = new TableItem[length];
                System.arraycopy(this.items, 0, newItems, 0, this.items.length);
                this.items = newItems;
            }
        } else {
            if (!this.ignoreShrink && this.keyCount > count / 2) {
                boolean small = this.getDrawing() && OS.IsWindowVisible(this.handle);
                int length = small ? count + 4 : Math.max(4, count * 3 / 2);
                TableItem[] newItems = new TableItem[length];
                int i = 0;
                while (i < this.keyCount) {
                    newItems[this.keys[i]] = this.items[i];
                    ++i;
                }
                this.items = newItems;
                this.keys = null;
                this.keyCount = 0;
                return true;
            }
            if (this.keyCount == this.keys.length) {
                boolean small = this.getDrawing() && OS.IsWindowVisible(this.handle);
                int length = small ? this.keys.length + 4 : Math.max(4, this.keys.length * 3 / 2);
                int[] newKeys = new int[length];
                System.arraycopy(this.keys, 0, newKeys, 0, this.keys.length);
                this.keys = newKeys;
                TableItem[] newItems = new TableItem[length];
                System.arraycopy(this.items, 0, newItems, 0, this.items.length);
                this.items = newItems;
            }
        }
        return false;
    }

    void _checkShrink() {
        if (this.keys == null) {
            if (!this.ignoreShrink) {
                int count = OS.SendMessage(this.handle, 4100, 0, 0);
                if (this.items.length > 4 && this.items.length - count > 3) {
                    int length = Math.max(4, (count + 3) / 4 * 4);
                    TableItem[] newItems = new TableItem[length];
                    System.arraycopy(this.items, 0, newItems, 0, count);
                    this.items = newItems;
                }
            }
        } else if (!this.ignoreShrink && this.keys.length > 4 && this.keys.length - this.keyCount > 3) {
            int length = Math.max(4, (this.keyCount + 3) / 4 * 4);
            int[] newKeys = new int[length];
            System.arraycopy(this.keys, 0, newKeys, 0, this.keyCount);
            this.keys = newKeys;
            TableItem[] newItems = new TableItem[length];
            System.arraycopy(this.items, 0, newItems, 0, this.keyCount);
            this.items = newItems;
        }
    }

    void _clearItems() {
        this.items = null;
        this.keys = null;
        this.keyCount = 0;
    }

    TableItem _getItem(int index) {
        return this._getItem(index, true);
    }

    TableItem _getItem(int index, boolean create) {
        return this._getItem(index, create, -1);
    }

    TableItem _getItem(int index, boolean create, int count) {
        if (this.keys == null) {
            if ((this.style & 0x10000000) == 0 || !create) {
                return this.items[index];
            }
            if (this.items[index] != null) {
                return this.items[index];
            }
            this.items[index] = new TableItem(this, 0, -1, false);
            return this.items[index];
        }
        if ((this.style & 0x10000000) == 0 || !create) {
            if (this.keyCount == 0) {
                return null;
            }
            if (index > this.keys[this.keyCount - 1]) {
                return null;
            }
        }
        int keyIndex = this.binarySearch(this.keys, 0, this.keyCount, index);
        if ((this.style & 0x10000000) == 0 || !create) {
            return keyIndex < 0 ? null : this.items[keyIndex];
        }
        if (keyIndex < 0) {
            if (count == -1) {
                count = OS.SendMessage(this.handle, 4100, 0, 0);
            }
            if (this._checkGrow(count)) {
                if (this.items[index] != null) {
                    return this.items[index];
                }
                this.items[index] = new TableItem(this, 0, -1, false);
                return this.items[index];
            }
            if ((keyIndex = -keyIndex - 1) < this.keyCount) {
                System.arraycopy(this.keys, keyIndex, this.keys, keyIndex + 1, this.keyCount - keyIndex);
                System.arraycopy(this.items, keyIndex, this.items, keyIndex + 1, this.keyCount - keyIndex);
            }
            ++this.keyCount;
            this.keys[keyIndex] = index;
        } else if (this.items[keyIndex] != null) {
            return this.items[keyIndex];
        }
        this.items[keyIndex] = new TableItem(this, 0, -1, false);
        return this.items[keyIndex];
    }

    void _getItems(TableItem[] result, int count) {
        if (this.keys == null) {
            System.arraycopy(this.items, 0, result, 0, count);
        } else {
            int i = 0;
            while (i < this.keyCount) {
                if (this.keys[i] >= count) break;
                result[this.keys[i]] = this.items[this.keys[i]];
                ++i;
            }
        }
    }

    boolean _hasItems() {
        return this.items != null;
    }

    void _initItems() {
        this.items = new TableItem[4];
        if (COMPRESS_ITEMS && (this.style & 0x10000000) != 0) {
            this.keyCount = 0;
            this.keys = new int[4];
        }
    }

    void _insertItem(int index, TableItem item, int count) {
        if (this.keys == null) {
            System.arraycopy(this.items, index, this.items, index + 1, count - index);
            this.items[index] = item;
        } else {
            int keyIndex = this.binarySearch(this.keys, 0, this.keyCount, index);
            if (keyIndex < 0) {
                keyIndex = -keyIndex - 1;
            }
            System.arraycopy(this.keys, keyIndex, this.keys, keyIndex + 1, this.keyCount - keyIndex);
            this.keys[keyIndex] = index;
            System.arraycopy(this.items, keyIndex, this.items, keyIndex + 1, this.keyCount - keyIndex);
            this.items[keyIndex] = item;
            ++this.keyCount;
            int i = keyIndex + 1;
            while (i < this.keyCount) {
                int n = i++;
                this.keys[n] = this.keys[n] + 1;
            }
        }
    }

    void _removeItem(int index, int count) {
        if (this.keys == null) {
            System.arraycopy(this.items, index + 1, this.items, index, --count - index);
            this.items[count] = null;
        } else {
            int keyIndex = this.binarySearch(this.keys, 0, this.keyCount, index);
            if (keyIndex < 0) {
                keyIndex = -keyIndex - 1;
            } else {
                --this.keyCount;
                System.arraycopy(this.keys, keyIndex + 1, this.keys, keyIndex, this.keyCount - keyIndex);
                this.keys[this.keyCount] = 0;
                System.arraycopy(this.items, keyIndex + 1, this.items, keyIndex, this.keyCount - keyIndex);
                this.items[this.keyCount] = null;
            }
            int i = keyIndex;
            while (i < this.keyCount) {
                int n = i++;
                this.keys[n] = this.keys[n] - 1;
            }
        }
    }

    void _removeItems(int start, int index, int count) {
        if (this.keys == null) {
            System.arraycopy(this.items, index, this.items, start, count - index);
            int i = count - (index - start);
            while (i < count) {
                this.items[i] = null;
                ++i;
            }
        } else {
            int right;
            int end = index;
            int left = this.binarySearch(this.keys, 0, this.keyCount, start);
            if (left < 0) {
                left = -left - 1;
            }
            if ((right = this.binarySearch(this.keys, left, this.keyCount, end)) < 0) {
                right = -right - 1;
            }
            System.arraycopy(this.keys, right, this.keys, left, this.keyCount - right);
            int i = this.keyCount - (right - left);
            while (i < this.keyCount) {
                this.keys[i] = 0;
                ++i;
            }
            System.arraycopy(this.items, right, this.items, left, this.keyCount - right);
            i = this.keyCount - (right - left);
            while (i < this.keyCount) {
                this.items[i] = null;
                ++i;
            }
            this.keyCount -= right - left;
            i = left;
            while (i < this.keyCount) {
                int n = i++;
                this.keys[n] = this.keys[n] - (right - left);
            }
        }
    }

    void _setItemCount(int count, int itemCount) {
        if (this.keys == null) {
            int length = Math.max(4, (count + 3) / 4 * 4);
            TableItem[] newItems = new TableItem[length];
            System.arraycopy(this.items, 0, newItems, 0, Math.min(count, itemCount));
            this.items = newItems;
        } else {
            int index = Math.min(count, itemCount);
            this.keyCount = this.binarySearch(this.keys, 0, this.keyCount, index);
            if (this.keyCount < 0) {
                this.keyCount = -this.keyCount - 1;
            }
            int length = Math.max(4, (this.keyCount + 3) / 4 * 4);
            int[] newKeys = new int[length];
            System.arraycopy(this.keys, 0, newKeys, 0, this.keyCount);
            this.keys = newKeys;
            TableItem[] newItems = new TableItem[length];
            System.arraycopy(this.items, 0, newItems, 0, this.keyCount);
            this.items = newItems;
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
        return this.callWindowProc(hwnd, msg, wParam, lParam, false);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam, boolean forceSelect) {
        int bits0;
        if (this.handle == 0) {
            return 0;
        }
        if (this.handle != hwnd) {
            return OS.CallWindowProc(HeaderProc, hwnd, msg, wParam, lParam);
        }
        int topIndex = 0;
        boolean checkSelection = false;
        boolean checkActivate = false;
        boolean redraw = false;
        switch (msg) {
            case 256: {
                checkActivate = true;
            }
            case 71: 
            case 257: 
            case 258: 
            case 260: 
            case 261: 
            case 262: 
            case 276: 
            case 277: 
            case 646: {
                boolean bl = redraw = this.findImageControl() != null && this.getDrawing() && OS.IsWindowVisible(this.handle);
                if (redraw) {
                    OS.DefWindowProc(this.handle, 11, 0, 0);
                    OS.SendMessage(this.handle, 4097, 0, 0xFFFFFF);
                }
            }
            case 512: 
            case 513: 
            case 514: 
            case 515: 
            case 516: 
            case 517: 
            case 518: 
            case 519: 
            case 520: 
            case 521: 
            case 522: 
            case 523: 
            case 524: 
            case 525: 
            case 673: 
            case 675: {
                checkSelection = true;
            }
            case 48: 
            case 275: {
                if (this.findImageControl() == null) break;
                topIndex = OS.SendMessage(this.handle, 4135, 0, 0);
            }
        }
        boolean oldSelected = this.wasSelected;
        if (checkSelection) {
            this.wasSelected = false;
        }
        if (checkActivate) {
            this.ignoreActivate = true;
        }
        boolean fixPaint = false;
        if (msg == 15 && ((bits0 = OS.GetWindowLong(this.handle, -16)) & 0x4000) == 0) {
            int hwndParent = OS.GetParent(this.handle);
            int hwndOwner = 0;
            while (hwndParent != 0) {
                int bits1 = OS.GetWindowLong(hwndParent, -20);
                if ((bits1 & 0x2000000) != 0) {
                    fixPaint = true;
                    break;
                }
                hwndOwner = OS.GetWindow(hwndParent, 4);
                if (hwndOwner != 0) break;
                hwndParent = OS.GetParent(hwndParent);
            }
        }
        boolean fixScroll = false;
        if ((this.style & 0x100) == 0 || (this.style & 0x200) == 0) {
            switch (msg) {
                case 15: 
                case 70: 
                case 133: {
                    int bits = OS.GetWindowLong(hwnd, -16);
                    if ((this.style & 0x100) == 0 && (bits & 0x100000) != 0) {
                        fixScroll = true;
                        bits &= 0xFFEFFFFF;
                    }
                    if ((this.style & 0x200) == 0 && (bits & 0x200000) != 0) {
                        fixScroll = true;
                        bits &= 0xFFDFFFFF;
                    }
                    if (!fixScroll) break;
                    OS.SetWindowLong(this.handle, -16, bits);
                }
            }
        }
        int code = 0;
        if (fixPaint) {
            PAINTSTRUCT ps = new PAINTSTRUCT();
            int hDC = OS.BeginPaint(hwnd, ps);
            code = OS.CallWindowProc(TableProc, hwnd, 15, hDC, lParam);
            OS.EndPaint(hwnd, ps);
        } else {
            code = OS.CallWindowProc(TableProc, hwnd, msg, wParam, lParam);
        }
        if (fixScroll) {
            int flags = 1025;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
        if (checkActivate) {
            this.ignoreActivate = false;
        }
        if (checkSelection) {
            if (this.wasSelected || forceSelect) {
                Event event = new Event();
                int index = OS.SendMessage(this.handle, 4108, -1, 1);
                if (index != -1) {
                    event.item = this._getItem(index);
                }
                this.sendSelectionEvent(13, event, false);
            }
            this.wasSelected = oldSelected;
        }
        switch (msg) {
            case 71: 
            case 256: 
            case 257: 
            case 258: 
            case 260: 
            case 261: 
            case 262: 
            case 276: 
            case 277: 
            case 646: {
                if (redraw) {
                    OS.SendMessage(this.handle, 4097, 0, -1);
                    OS.DefWindowProc(this.handle, 11, 1, 0);
                    OS.InvalidateRect(this.handle, null, true);
                    int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                    if (hwndHeader != 0) {
                        OS.InvalidateRect(hwndHeader, null, true);
                    }
                }
            }
            case 48: 
            case 275: 
            case 512: 
            case 513: 
            case 514: 
            case 515: 
            case 516: 
            case 517: 
            case 518: 
            case 519: 
            case 520: 
            case 521: 
            case 522: 
            case 523: 
            case 524: 
            case 525: 
            case 673: 
            case 675: {
                if (this.findImageControl() == null || topIndex == OS.SendMessage(this.handle, 4135, 0, 0)) break;
                OS.InvalidateRect(this.handle, null, true);
                break;
            }
            case 15: {
                this.painted = true;
            }
        }
        return code;
    }

    static int checkStyle(int style) {
        if ((style & 0x10) == 0) {
            style |= 0x300;
        }
        return Table.checkBits(style, 4, 2, 0, 0, 0, 0);
    }

    LRESULT CDDS_ITEMPOSTPAINT(NMLVCUSTOMDRAW nmcd, int wParam, int lParam) {
        int uiState;
        int dwExStyle;
        int hDC = nmcd.hdc;
        if (this.explorerTheme && !this.ignoreCustomDraw) {
            this.hotIndex = -1;
            if (this.hooks(40) && nmcd.left != nmcd.right) {
                OS.RestoreDC(hDC, -1);
            }
        }
        if (!this.ignoreCustomDraw && !this.ignoreDrawFocus && nmcd.left != nmcd.right && OS.IsWindowVisible(this.handle) && OS.IsWindowEnabled(this.handle) && !this.explorerTheme && (this.style & 0x10000) != 0 && OS.SendMessage(this.handle, 4096, 0, 0) == -1 && ((dwExStyle = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x20) == 0 && OS.SendMessage(this.handle, 4108, -1, 1) == nmcd.dwItemSpec && this.handle == OS.GetFocus() && ((uiState = OS.SendMessage(this.handle, 297, 0, 0)) & 1) == 0) {
            RECT rect = new RECT();
            rect.left = 0;
            boolean oldIgnore = this.ignoreCustomDraw;
            this.ignoreCustomDraw = true;
            OS.SendMessage(this.handle, 4110, nmcd.dwItemSpec, rect);
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            int index = OS.SendMessage(hwndHeader, 4623, 0, 0);
            RECT itemRect = new RECT();
            if (index == 0) {
                itemRect.left = 2;
                OS.SendMessage(this.handle, 4110, index, itemRect);
            } else {
                itemRect.top = index;
                itemRect.left = 1;
                OS.SendMessage(this.handle, 4152, nmcd.dwItemSpec, itemRect);
            }
            this.ignoreCustomDraw = oldIgnore;
            rect.left = itemRect.left;
            OS.DrawFocusRect(nmcd.hdc, rect);
        }
        return null;
    }

    LRESULT CDDS_ITEMPREPAINT(NMLVCUSTOMDRAW nmcd, int wParam, int lParam) {
        int dwExStyle;
        if (!this.ignoreCustomDraw && OS.IsWindowVisible(this.handle) && OS.IsWindowEnabled(this.handle) && !this.explorerTheme && (this.style & 0x10000) != 0 && OS.SendMessage(this.handle, 4096, 0, 0) == -1 && ((dwExStyle = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x20) == 0 && (nmcd.uItemState & 0x10) != 0) {
            nmcd.uItemState &= 0xFFFFFFEF;
            OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
        }
        if (this.explorerTheme && !this.ignoreCustomDraw) {
            int n = this.hotIndex = (nmcd.uItemState & 0x40) != 0 ? nmcd.dwItemSpec : -1;
            if (this.hooks(40) && nmcd.left != nmcd.right) {
                OS.SaveDC(nmcd.hdc);
                int hrgn = OS.CreateRectRgn(0, 0, 0, 0);
                OS.SelectClipRgn(nmcd.hdc, hrgn);
                OS.DeleteObject(hrgn);
            }
        }
        return new LRESULT(48);
    }

    LRESULT CDDS_POSTPAINT(NMLVCUSTOMDRAW nmcd, int wParam, int lParam) {
        int dwExStyle;
        if (this.ignoreCustomDraw) {
            return null;
        }
        if (--this.customCount == 0 && OS.IsWindowVisible(this.handle) && !this.explorerTheme && (this.style & 0x10000) != 0 && OS.SendMessage(this.handle, 4096, 0, 0) == -1 && ((dwExStyle = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x20) == 0) {
            int bits = 32;
            int hwndToolTip = OS.SendMessage(this.handle, 4170, 0, 0);
            if (OS.IsWinCE) {
                RECT rect = new RECT();
                boolean damaged = OS.GetUpdateRect(this.handle, rect, true);
                OS.SendMessage(this.handle, 4150, bits, bits);
                OS.ValidateRect(this.handle, null);
                if (damaged) {
                    OS.InvalidateRect(this.handle, rect, true);
                }
            } else {
                int rgn = OS.CreateRectRgn(0, 0, 0, 0);
                int result = OS.GetUpdateRgn(this.handle, rgn, true);
                OS.SendMessage(this.handle, 4150, bits, bits);
                OS.ValidateRect(this.handle, null);
                if (result != 1) {
                    OS.InvalidateRgn(this.handle, rgn, true);
                }
                OS.DeleteObject(rgn);
            }
            hwndToolTip = OS.SendMessage(this.handle, 4170, hwndToolTip, hwndToolTip);
        }
        return null;
    }

    LRESULT CDDS_PREPAINT(NMLVCUSTOMDRAW nmcd, int wParam, int lParam) {
        int dwExStyle;
        if (this.ignoreCustomDraw) {
            return new LRESULT(48);
        }
        if (this.customCount++ == 0 && OS.IsWindowVisible(this.handle) && !this.explorerTheme && (this.style & 0x10000) != 0 && OS.SendMessage(this.handle, 4096, 0, 0) == -1 && ((dwExStyle = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x20) != 0) {
            int bits = 32;
            int hwndToolTip = OS.SendMessage(this.handle, 4170, 0, 0);
            if (OS.IsWinCE) {
                RECT rect = new RECT();
                boolean damaged = OS.GetUpdateRect(this.handle, rect, true);
                OS.SendMessage(this.handle, 4150, bits, 0);
                OS.ValidateRect(this.handle, null);
                if (damaged) {
                    OS.InvalidateRect(this.handle, rect, true);
                }
            } else {
                int rgn = OS.CreateRectRgn(0, 0, 0, 0);
                int result = OS.GetUpdateRgn(this.handle, rgn, true);
                OS.SendMessage(this.handle, 4150, bits, 0);
                OS.ValidateRect(this.handle, null);
                if (result != 1) {
                    OS.InvalidateRgn(this.handle, rgn, true);
                }
                OS.DeleteObject(rgn);
            }
            hwndToolTip = OS.SendMessage(this.handle, 4170, hwndToolTip, hwndToolTip);
        }
        if (OS.IsWindowVisible(this.handle)) {
            boolean draw = true;
            if (this.explorerTheme && this.columnCount == 0) {
                int hDC = nmcd.hdc;
                RECT rect = new RECT();
                OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                if (OS.IsWindowEnabled(this.handle) || this.findImageControl() != null) {
                    this.drawBackground(hDC, rect);
                } else {
                    this.fillBackground(hDC, OS.GetSysColor(OS.COLOR_3DFACE), rect);
                }
                draw = false;
            }
            if (draw) {
                Control control = this.findBackgroundControl();
                if (control != null && control.backgroundImage != null) {
                    RECT rect = new RECT();
                    OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                    this.fillImageBackground(nmcd.hdc, control, rect, 0, 0);
                } else if (OS.SendMessage(this.handle, 4096, 0, 0) == -1 && OS.IsWindowEnabled(this.handle)) {
                    int index;
                    RECT rect = new RECT();
                    OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                    if (control == null) {
                        control = this;
                    }
                    this.fillBackground(nmcd.hdc, control.getBackgroundPixel(), rect);
                    if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.sortColumn != null && this.sortDirection != 0 && (index = this.indexOf(this.sortColumn)) != -1) {
                        this.parent.forceResize();
                        int clrSortBk = this.getSortColumnPixel();
                        RECT columnRect = new RECT();
                        RECT headerRect = new RECT();
                        OS.GetClientRect(this.handle, columnRect);
                        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                        if (OS.SendMessage(hwndHeader, 4615, index, headerRect) != 0) {
                            OS.MapWindowPoints(hwndHeader, this.handle, headerRect, 2);
                            columnRect.left = headerRect.left;
                            columnRect.right = headerRect.right;
                            if (OS.IntersectRect(columnRect, columnRect, rect)) {
                                this.fillBackground(nmcd.hdc, clrSortBk, columnRect);
                            }
                        }
                    }
                }
            }
        }
        return new LRESULT(48);
    }

    LRESULT CDDS_SUBITEMPOSTPAINT(NMLVCUSTOMDRAW nmcd, int wParam, int lParam) {
        if (this.ignoreCustomDraw) {
            return null;
        }
        if (nmcd.left == nmcd.right) {
            return new LRESULT(0);
        }
        int hDC = nmcd.hdc;
        if (this.ignoreDrawForeground) {
            OS.RestoreDC(hDC, -1);
        }
        if (OS.IsWindowVisible(this.handle)) {
            int oldColumn;
            if (OS.SendMessage(this.handle, 4096, 0, 0) != -1 && (this.sortDirection & 0x480) != 0 && this.sortColumn != null && !this.sortColumn.isDisposed() && (oldColumn = OS.SendMessage(this.handle, 4270, 0, 0)) == -1) {
                int newColumn = this.indexOf(this.sortColumn);
                int result = 0;
                int rgn = 0;
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    rgn = OS.CreateRectRgn(0, 0, 0, 0);
                    result = OS.GetUpdateRgn(this.handle, rgn, true);
                }
                OS.SendMessage(this.handle, 4236, newColumn, 0);
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    OS.ValidateRect(this.handle, null);
                    if (result != 1) {
                        OS.InvalidateRgn(this.handle, rgn, true);
                    }
                    OS.DeleteObject(rgn);
                }
            }
            if (this.hooks(42)) {
                TableItem item = this._getItem(nmcd.dwItemSpec);
                this.sendPaintItemEvent(item, nmcd);
            }
            if (!this.ignoreDrawFocus && this.focusRect != null) {
                OS.SetTextColor(nmcd.hdc, 0);
                OS.SetBkColor(nmcd.hdc, 0xFFFFFF);
                OS.DrawFocusRect(nmcd.hdc, this.focusRect);
                this.focusRect = null;
            }
        }
        return null;
    }

    LRESULT CDDS_SUBITEMPREPAINT(NMLVCUSTOMDRAW nmcd, int wParam, int lParam) {
        int bits;
        int clrTextBk;
        int clrText;
        TableItem item;
        int hDC = nmcd.hdc;
        if (this.explorerTheme && !this.ignoreCustomDraw && this.hooks(40) && nmcd.left != nmcd.right) {
            OS.RestoreDC(hDC, -1);
        }
        if ((item = this._getItem(nmcd.dwItemSpec)) == null || item.isDisposed()) {
            return null;
        }
        int hFont = item.fontHandle(nmcd.iSubItem);
        if (hFont != -1) {
            OS.SelectObject(hDC, hFont);
        }
        if (this.ignoreCustomDraw || nmcd.left == nmcd.right) {
            return new LRESULT(hFont == -1 ? 0 : 2);
        }
        int code = 0;
        this.selectionForeground = -1;
        this.ignoreDrawBackground = false;
        this.ignoreDrawFocus = false;
        this.ignoreDrawSelection = false;
        this.ignoreDrawForeground = false;
        if (OS.IsWindowVisible(this.handle)) {
            Event measureEvent = null;
            if (this.hooks(41)) {
                measureEvent = this.sendMeasureItemEvent(item, nmcd.dwItemSpec, nmcd.iSubItem, nmcd.hdc);
                if (this.isDisposed() || item.isDisposed()) {
                    return null;
                }
            }
            if (this.hooks(40)) {
                this.sendEraseItemEvent(item, nmcd, lParam, measureEvent);
                if (this.isDisposed() || item.isDisposed()) {
                    return null;
                }
                code |= 0x10;
            }
            if (this.ignoreDrawForeground || this.hooks(42)) {
                code |= 0x10;
            }
        }
        int n = clrText = item.cellForeground != null ? item.cellForeground[nmcd.iSubItem] : -1;
        if (clrText == -1) {
            clrText = item.foreground;
        }
        int n2 = clrTextBk = item.cellBackground != null ? item.cellBackground[nmcd.iSubItem] : -1;
        if (clrTextBk == -1) {
            clrTextBk = item.background;
        }
        if (this.selectionForeground != -1) {
            clrText = this.selectionForeground;
        }
        if (OS.IsWindowVisible(this.handle) && OS.IsWindowEnabled(this.handle) && !this.explorerTheme && !this.ignoreDrawSelection && (this.style & 0x10000) != 0 && ((bits = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x20) == 0) {
            LVITEM lvItem = new LVITEM();
            lvItem.mask = 8;
            lvItem.stateMask = 2;
            lvItem.iItem = nmcd.dwItemSpec;
            int result = OS.SendMessage(this.handle, OS.LVM_GETITEM, 0, lvItem);
            if (result != 0 && (lvItem.state & 2) != 0) {
                int clrSelection = -1;
                if (nmcd.iSubItem == 0) {
                    if (OS.GetFocus() == this.handle || this.display.getHighContrast()) {
                        clrSelection = OS.GetSysColor(OS.COLOR_HIGHLIGHT);
                    } else if ((this.style & 0x8000) == 0) {
                        clrSelection = OS.GetSysColor(OS.COLOR_3DFACE);
                    }
                } else if (OS.GetFocus() == this.handle || this.display.getHighContrast()) {
                    clrText = OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
                    clrTextBk = clrSelection = OS.GetSysColor(OS.COLOR_HIGHLIGHT);
                } else if ((this.style & 0x8000) == 0) {
                    clrTextBk = clrSelection = OS.GetSysColor(OS.COLOR_3DFACE);
                }
                if (clrSelection != -1) {
                    RECT rect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, nmcd.iSubItem != 0, true, false, hDC);
                    this.fillBackground(hDC, clrSelection, rect);
                }
            }
        }
        if (!this.ignoreDrawForeground) {
            int hwndHeader;
            int count;
            boolean hasAttributes = true;
            if (hFont == -1 && clrText == -1 && clrTextBk == -1 && item.cellForeground == null && item.cellBackground == null && item.cellFont == null && (count = OS.SendMessage(hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0), 4608, 0, 0)) == 1) {
                hasAttributes = false;
            }
            if (hasAttributes) {
                if (hFont == -1) {
                    hFont = OS.SendMessage(this.handle, 49, 0, 0);
                }
                OS.SelectObject(hDC, hFont);
                if (OS.IsWindowEnabled(this.handle)) {
                    int n3 = nmcd.clrText = clrText == -1 ? this.getForegroundPixel() : clrText;
                    if (clrTextBk == -1) {
                        nmcd.clrTextBk = -1;
                        if (this.selectionForeground == -1) {
                            Control control = this.findBackgroundControl();
                            if (control == null) {
                                control = this;
                            }
                            if (control.backgroundImage == null && OS.SendMessage(this.handle, 4096, 0, 0) != -1) {
                                nmcd.clrTextBk = control.getBackgroundPixel();
                            }
                        }
                    } else {
                        nmcd.clrTextBk = this.selectionForeground != -1 ? -1 : clrTextBk;
                    }
                    OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
                }
                code |= 2;
            }
        }
        if (OS.IsWindowEnabled(this.handle)) {
            int oldColumn;
            if (clrTextBk != -1 && (oldColumn = OS.SendMessage(this.handle, 4270, 0, 0)) != -1 && oldColumn == nmcd.iSubItem) {
                int result = 0;
                int rgn = 0;
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    rgn = OS.CreateRectRgn(0, 0, 0, 0);
                    result = OS.GetUpdateRgn(this.handle, rgn, true);
                }
                OS.SendMessage(this.handle, 4236, -1, 0);
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    OS.ValidateRect(this.handle, null);
                    if (result != 1) {
                        OS.InvalidateRgn(this.handle, rgn, true);
                    }
                    OS.DeleteObject(rgn);
                }
                code |= 0x10;
            }
        } else {
            nmcd.clrText = OS.GetSysColor(OS.COLOR_GRAYTEXT);
            nmcd.clrTextBk = this.findImageControl() != null ? -1 : OS.GetSysColor(OS.COLOR_3DFACE);
            nmcd.uItemState &= 0xFFFFFFFE;
            OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
            code |= 2;
        }
        return new LRESULT(code);
    }

    void checkBuffered() {
        super.checkBuffered();
        if (OS.COMCTL32_MAJOR >= 6) {
            this.style |= 0x20000000;
        }
        if ((this.style & 0x10000000) != 0) {
            this.style |= 0x20000000;
        }
    }

    boolean checkData(TableItem item, boolean redraw) {
        if ((this.style & 0x10000000) == 0) {
            return true;
        }
        return this.checkData(item, this.indexOf(item), redraw);
    }

    boolean checkData(TableItem item, int index, boolean redraw) {
        if ((this.style & 0x10000000) == 0) {
            return true;
        }
        if (!item.cached) {
            item.cached = true;
            Event event = new Event();
            event.item = item;
            event.index = index;
            this.currentItem = item;
            this.sendEvent(36, event);
            this.currentItem = null;
            if (this.isDisposed() || item.isDisposed()) {
                return false;
            }
            if (redraw && !this.setScrollWidth(item, false)) {
                item.redraw();
            }
        }
        return true;
    }

    boolean checkHandle(int hwnd) {
        if (hwnd == this.handle) {
            return true;
        }
        return hwnd == OS.SendMessage(this.handle, 4127, 0, 0);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    public void clear(int index) {
        TableItem item;
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (index < 0 || index >= count) {
            this.error(6);
        }
        if ((item = this._getItem(index, false)) != null) {
            if (item != this.currentItem) {
                item.clear();
            }
            if ((this.style & 0x10000000) == 0 && item.cached) {
                LVITEM lvItem = new LVITEM();
                lvItem.mask = 17;
                lvItem.pszText = -1;
                lvItem.iItem = index;
                OS.SendMessage(this.handle, OS.LVM_SETITEM, 0, lvItem);
                item.cached = false;
            }
            if (this.currentItem == null && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
                OS.SendMessage(this.handle, 4117, index, index);
            }
            this.setScrollWidth(item, false);
        }
    }

    public void clear(int start, int end) {
        this.checkWidget();
        if (start > end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (start < 0 || start > end || end >= count) {
            this.error(6);
        }
        if (start == 0 && end == count - 1) {
            this.clearAll();
        } else {
            LVITEM lvItem = null;
            boolean cleared = false;
            int i = start;
            while (i <= end) {
                TableItem item = this._getItem(i, false);
                if (item != null) {
                    if (item != this.currentItem) {
                        cleared = true;
                        item.clear();
                    }
                    if ((this.style & 0x10000000) == 0 && item.cached) {
                        if (lvItem == null) {
                            lvItem = new LVITEM();
                            lvItem.mask = 17;
                            lvItem.pszText = -1;
                        }
                        lvItem.iItem = i;
                        OS.SendMessage(this.handle, OS.LVM_SETITEM, 0, lvItem);
                        item.cached = false;
                    }
                }
                ++i;
            }
            if (cleared) {
                if (this.currentItem == null && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
                    OS.SendMessage(this.handle, 4117, start, end);
                }
                TableItem item = start == end ? this._getItem(start, false) : null;
                this.setScrollWidth(item, false);
            }
        }
    }

    public void clear(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if (indices.length == 0) {
            return;
        }
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        int i = 0;
        while (i < indices.length) {
            if (indices[i] < 0 || indices[i] >= count) {
                this.error(6);
            }
            ++i;
        }
        LVITEM lvItem = null;
        boolean cleared = false;
        int i2 = 0;
        while (i2 < indices.length) {
            int index = indices[i2];
            TableItem item = this._getItem(index, false);
            if (item != null) {
                if (item != this.currentItem) {
                    cleared = true;
                    item.clear();
                }
                if ((this.style & 0x10000000) == 0 && item.cached) {
                    if (lvItem == null) {
                        lvItem = new LVITEM();
                        lvItem.mask = 17;
                        lvItem.pszText = -1;
                    }
                    lvItem.iItem = i2;
                    OS.SendMessage(this.handle, OS.LVM_SETITEM, 0, lvItem);
                    item.cached = false;
                }
                if (this.currentItem == null && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
                    OS.SendMessage(this.handle, 4117, index, index);
                }
            }
            ++i2;
        }
        if (cleared) {
            this.setScrollWidth(null, false);
        }
    }

    public void clearAll() {
        this.checkWidget();
        LVITEM lvItem = null;
        boolean cleared = false;
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        int i = 0;
        while (i < count) {
            TableItem item = this._getItem(i, false);
            if (item != null) {
                if (item != this.currentItem) {
                    cleared = true;
                    item.clear();
                }
                if ((this.style & 0x10000000) == 0 && item.cached) {
                    if (lvItem == null) {
                        lvItem = new LVITEM();
                        lvItem.mask = 17;
                        lvItem.pszText = -1;
                    }
                    lvItem.iItem = i;
                    OS.SendMessage(this.handle, OS.LVM_SETITEM, 0, lvItem);
                    item.cached = false;
                }
            }
            ++i;
        }
        if (cleared) {
            if (this.currentItem == null && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
                OS.SendMessage(this.handle, 4117, 0, count - 1);
            }
            this.setScrollWidth(null, false);
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        if (this.fixScrollWidth) {
            this.setScrollWidth(null, true);
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        RECT rect = new RECT();
        OS.GetWindowRect(hwndHeader, rect);
        int height = rect.bottom - rect.top;
        int bits = 0;
        if (wHint != -1) {
            bits |= wHint & 0xFFFF;
        } else {
            int width = 0;
            int count = OS.SendMessage(hwndHeader, 4608, 0, 0);
            int i = 0;
            while (i < count) {
                width += OS.SendMessage(this.handle, 4125, i, 0);
                ++i;
            }
            bits |= width & 0xFFFF;
        }
        int result = OS.SendMessage(this.handle, 4160, -1, OS.MAKELPARAM(bits, 65535));
        int width = OS.LOWORD(result);
        int empty = OS.SendMessage(this.handle, 4160, 0, 0);
        int oneItem = OS.SendMessage(this.handle, 4160, 1, 0);
        int itemHeight = OS.HIWORD(oneItem) - OS.HIWORD(empty);
        height += OS.SendMessage(this.handle, 4100, 0, 0) * itemHeight;
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
        width += border * 2;
        height += border * 2;
        if ((this.style & 0x200) != 0) {
            width += OS.GetSystemMetrics(2);
        }
        if ((this.style & 0x100) != 0) {
            height += OS.GetSystemMetrics(3);
        }
        return new Point(width, height);
    }

    void createHandle() {
        int pszText;
        super.createHandle();
        this.state &= 0xFFFFFEFD;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.IsAppThemed()) {
            this.explorerTheme = true;
            OS.SetWindowTheme(this.handle, Display.EXPLORER, null);
        }
        if (HeaderProc == 0) {
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            HeaderProc = OS.GetWindowLongPtr(hwndHeader, -4);
        }
        if (!OS.IsWinCE && OS.COMCTL32_MAJOR < 6) {
            OS.SendMessage(this.handle, 8199, 5, 0);
        }
        if ((this.style & 0x20) != 0) {
            int width;
            int empty = OS.SendMessage(this.handle, 4160, 0, 0);
            int oneItem = OS.SendMessage(this.handle, 4160, 1, 0);
            int height = width = OS.HIWORD(oneItem) - OS.HIWORD(empty);
            this.setCheckboxImageList(width, height, false);
            OS.SendMessage(this.handle, 4107, 61440, 0);
        }
        int hFont = OS.GetStockObject(13);
        OS.SendMessage(this.handle, 48, hFont, 0);
        LVCOLUMN lvColumn = new LVCOLUMN();
        lvColumn.mask = 6;
        int hHeap = OS.GetProcessHeap();
        lvColumn.pszText = pszText = OS.HeapAlloc(hHeap, 8, TCHAR.sizeof);
        OS.SendMessage(this.handle, OS.LVM_INSERTCOLUMN, 0, lvColumn);
        OS.HeapFree(hHeap, 0, pszText);
        int bits1 = 16384;
        if ((this.style & 0x10000) != 0) {
            bits1 |= 0x20;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            bits1 |= 0x10000;
        }
        OS.SendMessage(this.handle, 4150, bits1, bits1);
        if (OS.WIN32_VERSION >= OS.VERSION(4, 10) && (this.style & 0x4000000) != 0) {
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            int bits2 = OS.GetWindowLong(hwndHeader, -20);
            OS.SetWindowLong(hwndHeader, -20, bits2 | 0x400000);
            int hwndTooltop = OS.SendMessage(this.handle, 4174, 0, 0);
            int bits3 = OS.GetWindowLong(hwndTooltop, -20);
            OS.SetWindowLong(hwndTooltop, -20, bits3 | 0x400000);
        }
    }

    void createHeaderToolTips() {
        if (OS.IsWinCE) {
            return;
        }
        if (this.headerToolTipHandle != 0) {
            return;
        }
        int bits = 0;
        if (OS.WIN32_VERSION >= OS.VERSION(4, 10) && (this.style & 0x4000000) != 0) {
            bits |= 0x400000;
        }
        this.headerToolTipHandle = OS.CreateWindowEx(bits, new TCHAR(0, "tooltips_class32", true), null, 2, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, this.handle, 0, OS.GetModuleHandle(null), null);
        if (this.headerToolTipHandle == 0) {
            this.error(2);
        }
        OS.SendMessage(this.headerToolTipHandle, 1048, 0, Short.MAX_VALUE);
    }

    void createItem(TableColumn column, int index) {
        int oldColumn;
        if (index < 0 || index > this.columnCount) {
            this.error(6);
        }
        if ((oldColumn = OS.SendMessage(this.handle, 4270, 0, 0)) >= index) {
            OS.SendMessage(this.handle, 4236, oldColumn + 1, 0);
        }
        if (this.columnCount == this.columns.length) {
            TableColumn[] newColumns = new TableColumn[this.columns.length + 4];
            System.arraycopy(this.columns, 0, newColumns, 0, this.columns.length);
            this.columns = newColumns;
        }
        int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
        int i = 0;
        while (i < itemCount) {
            TableItem item = this._getItem(i, false);
            if (item != null) {
                Object[] temp;
                Image[] images;
                String[] strings = item.strings;
                if (strings != null) {
                    String[] temp2 = new String[this.columnCount + 1];
                    System.arraycopy(strings, 0, temp2, 0, index);
                    System.arraycopy(strings, index, temp2, index + 1, this.columnCount - index);
                    item.strings = temp2;
                }
                if ((images = item.images) != null) {
                    Image[] temp3 = new Image[this.columnCount + 1];
                    System.arraycopy(images, 0, temp3, 0, index);
                    System.arraycopy(images, index, temp3, index + 1, this.columnCount - index);
                    item.images = temp3;
                }
                if (index == 0 && this.columnCount != 0) {
                    if (strings == null) {
                        item.strings = new String[this.columnCount + 1];
                        item.strings[1] = item.text;
                    }
                    item.text = "";
                    if (images == null) {
                        item.images = new Image[this.columnCount + 1];
                        item.images[1] = item.image;
                    }
                    item.image = null;
                }
                if (item.cellBackground != null) {
                    int[] cellBackground = item.cellBackground;
                    temp = new int[this.columnCount + 1];
                    System.arraycopy(cellBackground, 0, temp, 0, index);
                    System.arraycopy(cellBackground, index, temp, index + 1, this.columnCount - index);
                    temp[index] = -1;
                    item.cellBackground = temp;
                }
                if (item.cellForeground != null) {
                    int[] cellForeground = item.cellForeground;
                    temp = new int[this.columnCount + 1];
                    System.arraycopy(cellForeground, 0, temp, 0, index);
                    System.arraycopy(cellForeground, index, temp, index + 1, this.columnCount - index);
                    temp[index] = -1;
                    item.cellForeground = temp;
                }
                if (item.cellFont != null) {
                    Font[] cellFont = item.cellFont;
                    temp = new Font[this.columnCount + 1];
                    System.arraycopy(cellFont, 0, temp, 0, index);
                    System.arraycopy(cellFont, index, temp, index + 1, this.columnCount - index);
                    item.cellFont = (Font[])temp;
                }
            }
            ++i;
        }
        System.arraycopy(this.columns, index, this.columns, index + 1, this.columnCount++ - index);
        this.columns[index] = column;
        this.ignoreColumnResize = true;
        if (index == 0) {
            if (this.columnCount > 1) {
                LVCOLUMN lvColumn = new LVCOLUMN();
                lvColumn.mask = 2;
                OS.SendMessage(this.handle, OS.LVM_INSERTCOLUMN, 1, lvColumn);
                OS.SendMessage(this.handle, OS.LVM_GETCOLUMN, 1, lvColumn);
                int width = lvColumn.cx;
                int cchTextMax = 1024;
                int hHeap = OS.GetProcessHeap();
                int byteCount = cchTextMax * TCHAR.sizeof;
                int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
                lvColumn.mask = 23;
                lvColumn.pszText = pszText;
                lvColumn.cchTextMax = cchTextMax;
                OS.SendMessage(this.handle, OS.LVM_GETCOLUMN, 0, lvColumn);
                OS.SendMessage(this.handle, OS.LVM_SETCOLUMN, 1, lvColumn);
                lvColumn.fmt = 2048;
                lvColumn.cx = width;
                lvColumn.iImage = -2;
                lvColumn.cchTextMax = 0;
                lvColumn.pszText = 0;
                OS.SendMessage(this.handle, OS.LVM_SETCOLUMN, 0, lvColumn);
                lvColumn.mask = 1;
                lvColumn.fmt = 0;
                OS.SendMessage(this.handle, OS.LVM_SETCOLUMN, 0, lvColumn);
                if (pszText != 0) {
                    OS.HeapFree(hHeap, 0, pszText);
                }
            } else {
                OS.SendMessage(this.handle, 4126, 0, 0);
            }
            if ((this.style & 0x10000000) == 0) {
                LVITEM lvItem = new LVITEM();
                lvItem.mask = 3;
                lvItem.pszText = -1;
                lvItem.iImage = -1;
                int i2 = 0;
                while (i2 < itemCount) {
                    lvItem.iItem = i2++;
                    OS.SendMessage(this.handle, OS.LVM_SETITEM, 0, lvItem);
                }
            }
        } else {
            int fmt = 0;
            if ((column.style & 0x1000000) == 0x1000000) {
                fmt = 2;
            }
            if ((column.style & 0x20000) == 131072) {
                fmt = 1;
            }
            LVCOLUMN lvColumn = new LVCOLUMN();
            lvColumn.mask = 3;
            lvColumn.fmt = fmt;
            OS.SendMessage(this.handle, OS.LVM_INSERTCOLUMN, index, lvColumn);
        }
        this.ignoreColumnResize = false;
        if (this.headerToolTipHandle != 0) {
            RECT rect = new RECT();
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            if (OS.SendMessage(hwndHeader, 4615, index, rect) != 0) {
                TOOLINFO lpti = new TOOLINFO();
                lpti.cbSize = TOOLINFO.sizeof;
                lpti.uFlags = 16;
                lpti.hwnd = hwndHeader;
                column.id = this.display.nextToolTipId++;
                lpti.uId = column.id;
                lpti.left = rect.left;
                lpti.top = rect.top;
                lpti.right = rect.right;
                lpti.bottom = rect.bottom;
                lpti.lpszText = -1;
                OS.SendMessage(this.headerToolTipHandle, OS.TTM_ADDTOOL, 0, lpti);
            }
        }
    }

    void createItem(TableItem item, int index) {
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (index < 0 || index > count) {
            this.error(6);
        }
        this._checkGrow(count);
        LVITEM lvItem = new LVITEM();
        lvItem.mask = 3;
        lvItem.iItem = index;
        lvItem.pszText = -1;
        lvItem.iImage = -1;
        this.setDeferResize(true);
        this.ignoreShrink = true;
        this.ignoreSelect = true;
        int result = OS.SendMessage(this.handle, OS.LVM_INSERTITEM, 0, lvItem);
        this.ignoreShrink = false;
        this.ignoreSelect = false;
        if (result == -1) {
            this.error(14);
        }
        this._insertItem(index, item, count);
        this.setDeferResize(false);
        if (count == 0) {
            this.setScrollWidth(item, false);
        }
    }

    void createWidget() {
        super.createWidget();
        this.hotIndex = -1;
        this.itemHeight = -1;
        this._initItems();
        this.columns = new TableColumn[4];
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_WINDOW);
    }

    void deregister() {
        super.deregister();
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        if (hwndHeader != 0) {
            this.display.removeControl(hwndHeader);
        }
    }

    public void deselect(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if (indices.length == 0) {
            return;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.stateMask = 2;
        int i = 0;
        while (i < indices.length) {
            if (indices[i] >= 0) {
                this.ignoreSelect = true;
                OS.SendMessage(this.handle, 4139, indices[i], lvItem);
                this.ignoreSelect = false;
            }
            ++i;
        }
    }

    public void deselect(int index) {
        this.checkWidget();
        if (index < 0) {
            return;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.stateMask = 2;
        this.ignoreSelect = true;
        OS.SendMessage(this.handle, 4139, index, lvItem);
        this.ignoreSelect = false;
    }

    public void deselect(int start, int end) {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (start == 0 && end == count - 1) {
            this.deselectAll();
        } else {
            LVITEM lvItem = new LVITEM();
            lvItem.stateMask = 2;
            int i = start = Math.max(0, start);
            while (i <= end) {
                this.ignoreSelect = true;
                OS.SendMessage(this.handle, 4139, i, lvItem);
                this.ignoreSelect = false;
                ++i;
            }
        }
    }

    public void deselectAll() {
        this.checkWidget();
        LVITEM lvItem = new LVITEM();
        lvItem.mask = 8;
        lvItem.stateMask = 2;
        this.ignoreSelect = true;
        OS.SendMessage(this.handle, 4139, -1, lvItem);
        this.ignoreSelect = false;
    }

    void destroyItem(TableColumn column) {
        int index = 0;
        while (index < this.columnCount) {
            if (this.columns[index] == column) break;
            ++index;
        }
        int oldColumn = OS.SendMessage(this.handle, 4270, 0, 0);
        if (oldColumn == index) {
            OS.SendMessage(this.handle, 4236, -1, 0);
        } else if (oldColumn > index) {
            OS.SendMessage(this.handle, 4236, oldColumn - 1, 0);
        }
        int orderIndex = 0;
        int[] oldOrder = new int[this.columnCount];
        OS.SendMessage(this.handle, 4155, this.columnCount, oldOrder);
        while (orderIndex < this.columnCount) {
            if (oldOrder[orderIndex] == index) break;
            ++orderIndex;
        }
        this.ignoreColumnResize = true;
        boolean first = false;
        if (index == 0) {
            first = true;
            this.setRedraw(false);
            if (this.columnCount > 1) {
                index = 1;
                int cchTextMax = 1024;
                int hHeap = OS.GetProcessHeap();
                int byteCount = cchTextMax * TCHAR.sizeof;
                int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
                LVCOLUMN lvColumn = new LVCOLUMN();
                lvColumn.mask = 23;
                lvColumn.pszText = pszText;
                lvColumn.cchTextMax = cchTextMax;
                OS.SendMessage(this.handle, OS.LVM_GETCOLUMN, 1, lvColumn);
                lvColumn.fmt &= 0xFFFFFFFC;
                lvColumn.fmt |= 0;
                OS.SendMessage(this.handle, OS.LVM_SETCOLUMN, 0, lvColumn);
                if (pszText != 0) {
                    OS.HeapFree(hHeap, 0, pszText);
                }
            } else {
                int hHeap = OS.GetProcessHeap();
                int pszText = OS.HeapAlloc(hHeap, 8, TCHAR.sizeof);
                LVCOLUMN lvColumn = new LVCOLUMN();
                lvColumn.mask = 23;
                lvColumn.pszText = pszText;
                lvColumn.iImage = -2;
                lvColumn.fmt = 0;
                OS.SendMessage(this.handle, OS.LVM_SETCOLUMN, 0, lvColumn);
                if (pszText != 0) {
                    OS.HeapFree(hHeap, 0, pszText);
                }
                if (OS.COMCTL32_MAJOR >= 6) {
                    HDITEM hdItem = new HDITEM();
                    hdItem.mask = 4;
                    hdItem.fmt = 0;
                    int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                    OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
                }
            }
            this.setRedraw(true);
            if ((this.style & 0x10000000) == 0) {
                LVITEM lvItem = new LVITEM();
                lvItem.mask = 3;
                lvItem.pszText = -1;
                lvItem.iImage = -1;
                int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
                int i = 0;
                while (i < itemCount) {
                    lvItem.iItem = i++;
                    OS.SendMessage(this.handle, OS.LVM_SETITEM, 0, lvItem);
                }
            }
        }
        if (this.columnCount > 1 && OS.SendMessage(this.handle, 4124, index, 0) == 0) {
            this.error(15);
        }
        if (first) {
            index = 0;
        }
        System.arraycopy(this.columns, index + 1, this.columns, index, --this.columnCount - index);
        this.columns[this.columnCount] = null;
        int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
        int i = 0;
        while (i < itemCount) {
            TableItem item = this._getItem(i, false);
            if (item != null) {
                if (this.columnCount == 0) {
                    item.strings = null;
                    item.images = null;
                    item.cellBackground = null;
                    item.cellForeground = null;
                    item.cellFont = null;
                } else {
                    Object[] temp;
                    if (item.strings != null) {
                        String[] strings = item.strings;
                        if (index == 0) {
                            item.text = strings[1] != null ? strings[1] : "";
                        }
                        temp = new String[this.columnCount];
                        System.arraycopy(strings, 0, temp, 0, index);
                        System.arraycopy(strings, index + 1, temp, index, this.columnCount - index);
                        item.strings = temp;
                    } else if (index == 0) {
                        item.text = "";
                    }
                    if (item.images != null) {
                        Image[] images = item.images;
                        if (index == 0) {
                            item.image = images[1];
                        }
                        temp = new Image[this.columnCount];
                        System.arraycopy(images, 0, temp, 0, index);
                        System.arraycopy(images, index + 1, temp, index, this.columnCount - index);
                        item.images = temp;
                    } else if (index == 0) {
                        item.image = null;
                    }
                    if (item.cellBackground != null) {
                        int[] cellBackground = item.cellBackground;
                        temp = new int[this.columnCount];
                        System.arraycopy(cellBackground, 0, temp, 0, index);
                        System.arraycopy(cellBackground, index + 1, temp, index, this.columnCount - index);
                        item.cellBackground = (int[])temp;
                    }
                    if (item.cellForeground != null) {
                        int[] cellForeground = item.cellForeground;
                        temp = new int[this.columnCount];
                        System.arraycopy(cellForeground, 0, temp, 0, index);
                        System.arraycopy(cellForeground, index + 1, temp, index, this.columnCount - index);
                        item.cellForeground = (int[])temp;
                    }
                    if (item.cellFont != null) {
                        Font[] cellFont = item.cellFont;
                        temp = new Font[this.columnCount];
                        System.arraycopy(cellFont, 0, temp, 0, index);
                        System.arraycopy(cellFont, index + 1, temp, index, this.columnCount - index);
                        item.cellFont = temp;
                    }
                }
            }
            ++i;
        }
        if (this.columnCount == 0) {
            this.setScrollWidth(null, true);
        }
        this.updateMoveable();
        this.ignoreColumnResize = false;
        if (this.columnCount != 0) {
            int count = 0;
            int oldIndex = oldOrder[orderIndex];
            int[] newOrder = new int[this.columnCount];
            int i2 = 0;
            while (i2 < oldOrder.length) {
                if (oldOrder[i2] != oldIndex) {
                    int newIndex = oldOrder[i2] <= oldIndex ? oldOrder[i2] : oldOrder[i2] - 1;
                    newOrder[count++] = newIndex;
                }
                ++i2;
            }
            OS.SendMessage(this.handle, 4155, this.columnCount, oldOrder);
            int j = 0;
            while (j < newOrder.length) {
                if (oldOrder[j] != newOrder[j]) break;
                ++j;
            }
            if (j != newOrder.length) {
                OS.SendMessage(this.handle, 4154, newOrder.length, newOrder);
                OS.InvalidateRect(this.handle, null, true);
            }
            TableColumn[] newColumns = new TableColumn[this.columnCount - orderIndex];
            int i3 = orderIndex;
            while (i3 < newOrder.length) {
                newColumns[i3 - orderIndex] = this.columns[newOrder[i3]];
                newColumns[i3 - orderIndex].updateToolTip(newOrder[i3]);
                ++i3;
            }
            i3 = 0;
            while (i3 < newColumns.length) {
                if (!newColumns[i3].isDisposed()) {
                    newColumns[i3].sendEvent(10);
                }
                ++i3;
            }
        }
        if (this.headerToolTipHandle != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            lpti.uId = column.id;
            lpti.hwnd = OS.SendMessage(this.handle, 4127, 0, 0);
            OS.SendMessage(this.headerToolTipHandle, OS.TTM_DELTOOL, 0, lpti);
        }
    }

    void destroyItem(TableItem item) {
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        int index = 0;
        while (index < count) {
            if (this._getItem(index, false) == item) break;
            ++index;
        }
        if (index == count) {
            return;
        }
        this.setDeferResize(true);
        this.ignoreShrink = true;
        this.ignoreSelect = true;
        int code = OS.SendMessage(this.handle, 4104, index, 0);
        this.ignoreShrink = false;
        this.ignoreSelect = false;
        if (code == 0) {
            this.error(15);
        }
        this._removeItem(index, count);
        if (--count == 0) {
            this.setTableEmpty();
        }
        this.setDeferResize(false);
    }

    void fixCheckboxImageList(boolean fixScroll) {
        if ((this.style & 0x20) == 0) {
            return;
        }
        int hImageList = OS.SendMessage(this.handle, 4098, 1, 0);
        if (hImageList == 0) {
            return;
        }
        int[] cx = new int[1];
        int[] cy = new int[1];
        OS.ImageList_GetIconSize(hImageList, cx, cy);
        int hStateList = OS.SendMessage(this.handle, 4098, 2, 0);
        if (hStateList == 0) {
            return;
        }
        int[] stateCx = new int[1];
        int[] stateCy = new int[1];
        OS.ImageList_GetIconSize(hStateList, stateCx, stateCy);
        if (cx[0] == stateCx[0] && cy[0] == stateCy[0]) {
            return;
        }
        this.setCheckboxImageList(cx[0], cy[0], fixScroll);
    }

    void fixCheckboxImageListColor(boolean fixScroll) {
        if ((this.style & 0x20) == 0) {
            return;
        }
        int hStateList = OS.SendMessage(this.handle, 4098, 2, 0);
        if (hStateList == 0) {
            return;
        }
        int[] cx = new int[1];
        int[] cy = new int[1];
        OS.ImageList_GetIconSize(hStateList, cx, cy);
        this.setCheckboxImageList(cx[0], cy[0], fixScroll);
    }

    void fixItemHeight(boolean fixScroll) {
        int hOldList;
        if (this.itemHeight != -1) {
            return;
        }
        if (OS.COMCTL32_VERSION >= OS.VERSION(5, 80)) {
            return;
        }
        int bits = OS.SendMessage(this.handle, 4151, 0, 0);
        if ((bits & 1) == 0) {
            return;
        }
        bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0x4000) != 0) {
            return;
        }
        int topIndex = this.getTopIndex();
        if (fixScroll && topIndex != 0) {
            this.setRedraw(false);
            this.setTopIndex(0);
        }
        if ((hOldList = OS.SendMessage(this.handle, 4098, 1, 0)) != 0) {
            return;
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        RECT rect = new RECT();
        OS.GetWindowRect(hwndHeader, rect);
        int height = rect.bottom - rect.top - 1;
        int hImageList = OS.ImageList_Create(1, height, 0, 0, 0);
        OS.SendMessage(this.handle, 4099, 1, hImageList);
        this.fixCheckboxImageList(false);
        OS.SendMessage(this.handle, 4099, 1, 0);
        if (this.headerImageList != null) {
            int hHeaderImageList = this.headerImageList.getHandle();
            OS.SendMessage(hwndHeader, 4616, 0, hHeaderImageList);
        }
        OS.ImageList_Destroy(hImageList);
        if (fixScroll && topIndex != 0) {
            this.setTopIndex(topIndex);
            this.setRedraw(true);
        }
    }

    public TableColumn getColumn(int index) {
        this.checkWidget();
        if (index < 0 || index >= this.columnCount) {
            this.error(6);
        }
        return this.columns[index];
    }

    public int getColumnCount() {
        this.checkWidget();
        return this.columnCount;
    }

    public int[] getColumnOrder() {
        this.checkWidget();
        if (this.columnCount == 0) {
            return new int[0];
        }
        int[] order = new int[this.columnCount];
        OS.SendMessage(this.handle, 4155, this.columnCount, order);
        return order;
    }

    public TableColumn[] getColumns() {
        this.checkWidget();
        TableColumn[] result = new TableColumn[this.columnCount];
        System.arraycopy(this.columns, 0, result, 0, this.columnCount);
        return result;
    }

    int getFocusIndex() {
        return OS.SendMessage(this.handle, 4108, -1, 1);
    }

    public int getGridLineWidth() {
        this.checkWidget();
        return 1;
    }

    public int getHeaderHeight() {
        this.checkWidget();
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        if (hwndHeader == 0) {
            return 0;
        }
        RECT rect = new RECT();
        OS.GetWindowRect(hwndHeader, rect);
        return rect.bottom - rect.top;
    }

    public boolean getHeaderVisible() {
        this.checkWidget();
        int bits = OS.GetWindowLong(this.handle, -16);
        return (bits & 0x4000) == 0;
    }

    public TableItem getItem(int index) {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (index < 0 || index >= count) {
            this.error(6);
        }
        return this._getItem(index);
    }

    public TableItem getItem(Point point) {
        int count;
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        if ((count = OS.SendMessage(this.handle, 4100, 0, 0)) == 0) {
            return null;
        }
        LVHITTESTINFO pinfo = new LVHITTESTINFO();
        pinfo.x = point.x;
        pinfo.y = point.y;
        if ((this.style & 0x10000) == 0 && this.hooks(41)) {
            if (OS.SendMessage(this.handle, 4153, 0, pinfo) < 0) {
                RECT rect = new RECT();
                rect.left = 1;
                this.ignoreCustomDraw = true;
                int code = OS.SendMessage(this.handle, 4110, 0, rect);
                this.ignoreCustomDraw = false;
                if (code != 0) {
                    pinfo.x = rect.left;
                    OS.SendMessage(this.handle, 4153, 0, pinfo);
                    if (pinfo.iItem < 0) {
                        pinfo.iItem = -1;
                    }
                }
            }
            if (pinfo.iItem != -1 && pinfo.iSubItem == 0 && this.hitTestSelection(pinfo.iItem, pinfo.x, pinfo.y)) {
                return this._getItem(pinfo.iItem);
            }
            return null;
        }
        OS.SendMessage(this.handle, 4114, 0, pinfo);
        if (pinfo.iItem != -1) {
            int hwndHeader;
            int bits;
            if (pinfo.iItem == 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x4000) == 0 && (hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0)) != 0) {
                RECT rect = new RECT();
                OS.GetWindowRect(hwndHeader, rect);
                POINT pt = new POINT();
                pt.x = pinfo.x;
                pt.y = pinfo.y;
                OS.MapWindowPoints(this.handle, 0, pt, 1);
                if (OS.PtInRect(rect, pt)) {
                    return null;
                }
            }
            return this._getItem(pinfo.iItem);
        }
        return null;
    }

    public int getItemCount() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 4100, 0, 0);
    }

    public int getItemHeight() {
        this.checkWidget();
        if (!this.painted && this.hooks(41)) {
            this.hitTestSelection(0, 0, 0);
        }
        int empty = OS.SendMessage(this.handle, 4160, 0, 0);
        int oneItem = OS.SendMessage(this.handle, 4160, 1, 0);
        return OS.HIWORD(oneItem) - OS.HIWORD(empty);
    }

    public TableItem[] getItems() {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        TableItem[] result = new TableItem[count];
        if ((this.style & 0x10000000) != 0) {
            int i = 0;
            while (i < count) {
                result[i] = this._getItem(i);
                ++i;
            }
        } else {
            this._getItems(result, count);
        }
        return result;
    }

    public boolean getLinesVisible() {
        this.checkWidget();
        int bits = OS.SendMessage(this.handle, 4151, 0, 0);
        return (bits & 1) != 0;
    }

    public TableItem[] getSelection() {
        this.checkWidget();
        int i = -1;
        int j = 0;
        int count = OS.SendMessage(this.handle, 4146, 0, 0);
        TableItem[] result = new TableItem[count];
        while ((i = OS.SendMessage(this.handle, 4108, i, 2)) != -1) {
            result[j++] = this._getItem(i);
        }
        return result;
    }

    public int getSelectionCount() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 4146, 0, 0);
    }

    public int getSelectionIndex() {
        this.checkWidget();
        int focusIndex = OS.SendMessage(this.handle, 4108, -1, 1);
        int selectedIndex = OS.SendMessage(this.handle, 4108, -1, 2);
        if (focusIndex == selectedIndex) {
            return selectedIndex;
        }
        int i = -1;
        while ((i = OS.SendMessage(this.handle, 4108, i, 2)) != -1) {
            if (i != focusIndex) continue;
            return i;
        }
        return selectedIndex;
    }

    public int[] getSelectionIndices() {
        this.checkWidget();
        int i = -1;
        int j = 0;
        int count = OS.SendMessage(this.handle, 4146, 0, 0);
        int[] result = new int[count];
        while ((i = OS.SendMessage(this.handle, 4108, i, 2)) != -1) {
            result[j++] = i;
        }
        return result;
    }

    public TableColumn getSortColumn() {
        this.checkWidget();
        return this.sortColumn;
    }

    int getSortColumnPixel() {
        int pixel = OS.IsWindowEnabled(this.handle) ? this.getBackgroundPixel() : OS.GetSysColor(OS.COLOR_3DFACE);
        int red = pixel & 0xFF;
        int green = (pixel & 0xFF00) >> 8;
        int blue = (pixel & 0xFF0000) >> 16;
        if (red > 240 && green > 240 && blue > 240) {
            red -= 8;
            green -= 8;
            blue -= 8;
        } else {
            red = Math.min(255, red / 10 + red);
            green = Math.min(255, green / 10 + green);
            blue = Math.min(255, blue / 10 + blue);
        }
        return red & 0xFF | (green & 0xFF) << 8 | (blue & 0xFF) << 16;
    }

    public int getSortDirection() {
        this.checkWidget();
        return this.sortDirection;
    }

    public int getTopIndex() {
        this.checkWidget();
        return Math.max(0, OS.SendMessage(this.handle, 4135, 0, 0));
    }

    boolean hasChildren() {
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        int hwndChild = OS.GetWindow(this.handle, 5);
        while (hwndChild != 0) {
            if (hwndChild != hwndHeader) {
                return true;
            }
            hwndChild = OS.GetWindow(hwndChild, 2);
        }
        return false;
    }

    boolean hitTestSelection(int index, int x, int y) {
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (count == 0) {
            return false;
        }
        if (!this.hooks(41)) {
            return false;
        }
        boolean result = false;
        if (index >= 0 && index < count) {
            Event event;
            int hFont;
            TableItem item = this._getItem(index);
            int hDC = OS.GetDC(this.handle);
            int oldFont = 0;
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            if ((hFont = item.fontHandle(0)) != -1) {
                hFont = OS.SelectObject(hDC, hFont);
            }
            if ((event = this.sendMeasureItemEvent(item, index, 0, hDC)).getBounds().contains(x, y)) {
                result = true;
            }
            if (hFont != -1) {
                hFont = OS.SelectObject(hDC, hFont);
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
        }
        return result;
    }

    int imageIndex(Image image, int column) {
        if (image == null) {
            return -2;
        }
        if (column == 0) {
            this.firstColumnImage = true;
        } else {
            this.setSubImagesVisible(true);
        }
        if (this.imageList == null) {
            Rectangle bounds = image.getBounds();
            this.imageList = this.display.getImageList(this.style & 0x4000000, bounds.width, bounds.height);
            int index = this.imageList.indexOf(image);
            if (index == -1) {
                index = this.imageList.add(image);
            }
            int hImageList = this.imageList.getHandle();
            int topIndex = this.getTopIndex();
            if (topIndex != 0) {
                this.setRedraw(false);
                this.setTopIndex(0);
            }
            OS.SendMessage(this.handle, 4099, 1, hImageList);
            if (this.headerImageList != null) {
                int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                int hHeaderImageList = this.headerImageList.getHandle();
                OS.SendMessage(hwndHeader, 4616, 0, hHeaderImageList);
            }
            this.fixCheckboxImageList(false);
            this.setItemHeight(false);
            if (topIndex != 0) {
                this.setTopIndex(topIndex);
                this.setRedraw(true);
            }
            return index;
        }
        int index = this.imageList.indexOf(image);
        if (index != -1) {
            return index;
        }
        return this.imageList.add(image);
    }

    int imageIndexHeader(Image image) {
        if (image == null) {
            return -2;
        }
        if (this.headerImageList == null) {
            Rectangle bounds = image.getBounds();
            this.headerImageList = this.display.getImageList(this.style & 0x4000000, bounds.width, bounds.height);
            int index = this.headerImageList.indexOf(image);
            if (index == -1) {
                index = this.headerImageList.add(image);
            }
            int hImageList = this.headerImageList.getHandle();
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            OS.SendMessage(hwndHeader, 4616, 0, hImageList);
            return index;
        }
        int index = this.headerImageList.indexOf(image);
        if (index != -1) {
            return index;
        }
        return this.headerImageList.add(image);
    }

    public int indexOf(TableColumn column) {
        this.checkWidget();
        if (column == null) {
            this.error(4);
        }
        int i = 0;
        while (i < this.columnCount) {
            if (this.columns[i] == column) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public int indexOf(TableItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (this.keys == null) {
            int count = OS.SendMessage(this.handle, 4100, 0, 0);
            if (1 <= this.lastIndexOf && this.lastIndexOf < count - 1) {
                if (this._getItem(this.lastIndexOf, false) == item) {
                    return this.lastIndexOf;
                }
                if (this._getItem(this.lastIndexOf + 1, false) == item) {
                    return ++this.lastIndexOf;
                }
                if (this._getItem(this.lastIndexOf - 1, false) == item) {
                    return --this.lastIndexOf;
                }
            }
            if (this.lastIndexOf < count / 2) {
                int i = 0;
                while (i < count) {
                    if (this._getItem(i, false) == item) {
                        this.lastIndexOf = i;
                        return this.lastIndexOf;
                    }
                    ++i;
                }
            } else {
                int i = count - 1;
                while (i >= 0) {
                    if (this._getItem(i, false) == item) {
                        this.lastIndexOf = i;
                        return this.lastIndexOf;
                    }
                    --i;
                }
            }
        } else {
            int i = 0;
            while (i < this.keyCount) {
                if (this.items[i] == item) {
                    return this.keys[i];
                }
                ++i;
            }
        }
        return -1;
    }

    boolean isCustomToolTip() {
        return this.hooks(41);
    }

    boolean isOptimizedRedraw() {
        if ((this.style & 0x100) == 0 || (this.style & 0x200) == 0) {
            return false;
        }
        return !this.hasChildren() && !this.hooks(9) && !this.filters(9);
    }

    public boolean isSelected(int index) {
        this.checkWidget();
        LVITEM lvItem = new LVITEM();
        lvItem.mask = 8;
        lvItem.stateMask = 2;
        lvItem.iItem = index;
        int result = OS.SendMessage(this.handle, OS.LVM_GETITEM, 0, lvItem);
        return result != 0 && (lvItem.state & 2) != 0;
    }

    void register() {
        super.register();
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        if (hwndHeader != 0) {
            this.display.addControl(hwndHeader, this);
        }
    }

    void releaseChildren(boolean destroy) {
        if (this._hasItems()) {
            TableItem item;
            int i;
            int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
            if (OS.IsWin95 && this.columnCount > 1) {
                this.resizeCount = 1;
                OS.SendMessage(this.handle, 11, 0, 0);
                i = itemCount - 1;
                while (i >= 0) {
                    item = this._getItem(i, false);
                    if (item != null && !item.isDisposed()) {
                        item.release(false);
                    }
                    this.ignoreShrink = true;
                    this.ignoreSelect = true;
                    OS.SendMessage(this.handle, 4104, i, 0);
                    this.ignoreShrink = false;
                    this.ignoreSelect = false;
                    --i;
                }
            } else if (this.keys == null) {
                i = 0;
                while (i < itemCount) {
                    item = this._getItem(i, false);
                    if (item != null && !item.isDisposed()) {
                        item.release(false);
                    }
                    ++i;
                }
            } else {
                i = 0;
                while (i < this.keyCount) {
                    item = this.items[i];
                    if (item != null && !item.isDisposed()) {
                        item.release(false);
                    }
                    ++i;
                }
            }
            this._clearItems();
        }
        if (this.columns != null) {
            int i = 0;
            while (i < this.columnCount) {
                TableColumn column = this.columns[i];
                if (!column.isDisposed()) {
                    column.release(false);
                }
                ++i;
            }
            this.columns = null;
        }
        super.releaseChildren(destroy);
    }

    void releaseWidget() {
        super.releaseWidget();
        this.customDraw = false;
        this.currentItem = null;
        if (this.imageList != null) {
            OS.SendMessage(this.handle, 4099, 1, 0);
            this.display.releaseImageList(this.imageList);
        }
        if (this.headerImageList != null) {
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            OS.SendMessage(hwndHeader, 4616, 0, 0);
            this.display.releaseImageList(this.headerImageList);
        }
        this.headerImageList = null;
        this.imageList = null;
        int hStateList = OS.SendMessage(this.handle, 4098, 2, 0);
        OS.SendMessage(this.handle, 4099, 2, 0);
        if (hStateList != 0) {
            OS.ImageList_Destroy(hStateList);
        }
        if (this.headerToolTipHandle != 0) {
            OS.DestroyWindow(this.headerToolTipHandle);
        }
        this.headerToolTipHandle = 0;
    }

    public void remove(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if (indices.length == 0) {
            return;
        }
        int[] newIndices = new int[indices.length];
        System.arraycopy(indices, 0, newIndices, 0, indices.length);
        this.sort(newIndices);
        int start = newIndices[newIndices.length - 1];
        int end = newIndices[0];
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (start < 0 || start > end || end >= count) {
            this.error(6);
        }
        this.setDeferResize(true);
        int last = -1;
        int i = 0;
        while (i < newIndices.length) {
            int index = newIndices[i];
            if (index != last) {
                TableItem item = this._getItem(index, false);
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                this.ignoreShrink = true;
                this.ignoreSelect = true;
                int code = OS.SendMessage(this.handle, 4104, index, 0);
                this.ignoreShrink = false;
                this.ignoreSelect = false;
                if (code == 0) {
                    this.error(15);
                }
                this._removeItem(index, count);
                --count;
                last = index;
            }
            ++i;
        }
        if (count == 0) {
            this.setTableEmpty();
        }
        this.setDeferResize(false);
    }

    public void remove(int index) {
        TableItem item;
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (index < 0 || index >= count) {
            this.error(6);
        }
        if ((item = this._getItem(index, false)) != null && !item.isDisposed()) {
            item.release(false);
        }
        this.setDeferResize(true);
        this.ignoreShrink = true;
        this.ignoreSelect = true;
        int code = OS.SendMessage(this.handle, 4104, index, 0);
        this.ignoreShrink = false;
        this.ignoreSelect = false;
        if (code == 0) {
            this.error(15);
        }
        this._removeItem(index, count);
        if (--count == 0) {
            this.setTableEmpty();
        }
        this.setDeferResize(false);
    }

    public void remove(int start, int end) {
        this.checkWidget();
        if (start > end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (start < 0 || start > end || end >= count) {
            this.error(6);
        }
        if (start == 0 && end == count - 1) {
            this.removeAll();
        } else {
            this.setDeferResize(true);
            int index = start;
            while (index <= end) {
                TableItem item = this._getItem(index, false);
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                this.ignoreShrink = true;
                this.ignoreSelect = true;
                int code = OS.SendMessage(this.handle, 4104, start, 0);
                this.ignoreShrink = false;
                this.ignoreSelect = false;
                if (code == 0) break;
                ++index;
            }
            this._removeItems(start, index, count);
            if (index <= end) {
                this.error(15);
            }
            this.setDeferResize(false);
        }
    }

    public void removeAll() {
        this.checkWidget();
        int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
        int i = 0;
        while (i < itemCount) {
            TableItem item = this._getItem(i, false);
            if (item != null && !item.isDisposed()) {
                item.release(false);
            }
            ++i;
        }
        this.setDeferResize(true);
        if (OS.IsWin95 && this.columnCount > 1) {
            boolean redraw;
            boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            if (redraw) {
                OS.SendMessage(this.handle, 11, 0, 0);
            }
            int index = itemCount - 1;
            while (index >= 0) {
                this.ignoreShrink = true;
                this.ignoreSelect = true;
                int code = OS.SendMessage(this.handle, 4104, index, 0);
                this.ignoreShrink = false;
                this.ignoreSelect = false;
                if (code == 0) break;
                --index;
            }
            if (redraw) {
                OS.SendMessage(this.handle, 11, 1, 0);
            }
            if (index != -1) {
                this.error(15);
            }
        } else {
            this.ignoreShrink = true;
            this.ignoreSelect = true;
            int code = OS.SendMessage(this.handle, 4105, 0, 0);
            this.ignoreShrink = false;
            this.ignoreSelect = false;
            if (code == 0) {
                this.error(15);
            }
        }
        this.setTableEmpty();
        this.setDeferResize(false);
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

    public void select(int[] indices) {
        int length;
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if ((length = indices.length) == 0 || (this.style & 4) != 0 && length > 1) {
            return;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.state = 2;
        lvItem.stateMask = 2;
        int i = length - 1;
        while (i >= 0) {
            if (indices[i] >= 0) {
                this.ignoreSelect = true;
                OS.SendMessage(this.handle, 4139, indices[i], lvItem);
                this.ignoreSelect = false;
            }
            --i;
        }
    }

    void reskinChildren(int flags) {
        if (this._hasItems()) {
            int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
            int i = 0;
            while (i < itemCount) {
                TableItem item = this._getItem(i, false);
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        if (this.columns != null) {
            int i = 0;
            while (i < this.columnCount) {
                TableColumn column = this.columns[i];
                if (!column.isDisposed()) {
                    column.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    public void select(int index) {
        this.checkWidget();
        if (index < 0) {
            return;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.state = 2;
        lvItem.stateMask = 2;
        this.ignoreSelect = true;
        OS.SendMessage(this.handle, 4139, index, lvItem);
        this.ignoreSelect = false;
    }

    public void select(int start, int end) {
        this.checkWidget();
        if (end < 0 || start > end || (this.style & 4) != 0 && start != end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (count == 0 || start >= count) {
            return;
        }
        start = Math.max(0, start);
        end = Math.min(end, count - 1);
        if (start == 0 && end == count - 1) {
            this.selectAll();
        } else {
            LVITEM lvItem = new LVITEM();
            lvItem.state = 2;
            lvItem.stateMask = 2;
            int i = start;
            while (i <= end) {
                this.ignoreSelect = true;
                OS.SendMessage(this.handle, 4139, i, lvItem);
                this.ignoreSelect = false;
                ++i;
            }
        }
    }

    public void selectAll() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.mask = 8;
        lvItem.state = 2;
        lvItem.stateMask = 2;
        this.ignoreSelect = true;
        OS.SendMessage(this.handle, 4139, -1, lvItem);
        this.ignoreSelect = false;
    }

    void sendEraseItemEvent(TableItem item, NMLVCUSTOMDRAW nmcd, int lParam, Event measureEvent) {
        int hwndHeader;
        boolean firstColumn;
        boolean focused;
        int uiState;
        int clrText;
        int hDC = nmcd.hdc;
        int n = clrText = item.cellForeground != null ? item.cellForeground[nmcd.iSubItem] : -1;
        if (clrText == -1) {
            clrText = item.foreground;
        }
        int clrTextBk = -1;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.sortColumn != null && this.sortDirection != 0 && this.findImageControl() == null && this.indexOf(this.sortColumn) == nmcd.iSubItem) {
            clrTextBk = this.getSortColumnPixel();
        }
        int n2 = clrTextBk = item.cellBackground != null ? item.cellBackground[nmcd.iSubItem] : -1;
        if (clrTextBk == -1) {
            clrTextBk = item.background;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.mask = 8;
        lvItem.stateMask = 2;
        lvItem.iItem = nmcd.dwItemSpec;
        int result = OS.SendMessage(this.handle, OS.LVM_GETITEM, 0, lvItem);
        boolean selected = result != 0 && (lvItem.state & 2) != 0;
        GCData data = new GCData();
        data.device = this.display;
        int clrSelectionBk = -1;
        boolean drawSelected = false;
        boolean drawBackground = false;
        boolean drawHot = false;
        boolean drawDrophilited = false;
        if (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0) {
            drawHot = this.hotIndex == nmcd.dwItemSpec;
            boolean bl = drawDrophilited = (nmcd.uItemState & 0x1000) != 0;
        }
        if (OS.IsWindowEnabled(this.handle)) {
            if (selected && (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0)) {
                if (OS.GetFocus() == this.handle || this.display.getHighContrast()) {
                    drawSelected = true;
                    data.foreground = OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
                    data.background = clrSelectionBk = OS.GetSysColor(OS.COLOR_HIGHLIGHT);
                } else {
                    drawSelected = (this.style & 0x8000) == 0;
                    data.foreground = OS.GetTextColor(hDC);
                    data.background = clrSelectionBk = OS.GetSysColor(OS.COLOR_3DFACE);
                }
                if (this.explorerTheme) {
                    data.foreground = clrText != -1 ? clrText : this.getForegroundPixel();
                }
            } else {
                boolean bl = drawBackground = clrTextBk != -1;
                if (clrText == -1 || clrTextBk == -1) {
                    Control control = this.findBackgroundControl();
                    if (control == null) {
                        control = this;
                    }
                    if (clrText == -1) {
                        clrText = control.getForegroundPixel();
                    }
                    if (clrTextBk == -1) {
                        clrTextBk = control.getBackgroundPixel();
                    }
                }
                data.foreground = clrText != -1 ? clrText : OS.GetTextColor(hDC);
                data.background = clrTextBk != -1 ? clrTextBk : OS.GetBkColor(hDC);
            }
        } else {
            data.foreground = OS.GetSysColor(OS.COLOR_GRAYTEXT);
            data.background = OS.GetSysColor(OS.COLOR_3DFACE);
            if (selected) {
                clrSelectionBk = data.background;
            }
        }
        data.font = item.getFont(nmcd.iSubItem);
        data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
        int nSavedDC = OS.SaveDC(hDC);
        GC gc = GC.win32_new(hDC, data);
        RECT cellRect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, true, true, true, hDC);
        Event event = new Event();
        event.item = item;
        event.gc = gc;
        event.index = nmcd.iSubItem;
        event.detail |= 0x10;
        if (OS.SendMessage(this.handle, 4108, -1, 1) == nmcd.dwItemSpec && (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0) && this.handle == OS.GetFocus() && ((uiState = OS.SendMessage(this.handle, 297, 0, 0)) & 1) == 0) {
            event.detail |= 4;
        }
        boolean bl = focused = (event.detail & 4) != 0;
        if (drawHot) {
            event.detail |= 0x20;
        }
        if (drawSelected) {
            event.detail |= 2;
        }
        if (drawBackground) {
            event.detail |= 8;
        }
        event.x = cellRect.left;
        event.y = cellRect.top;
        event.width = cellRect.right - cellRect.left;
        event.height = cellRect.bottom - cellRect.top;
        gc.setClipping(event.x, event.y, event.width, event.height);
        this.sendEvent(40, event);
        event.gc = null;
        int clrSelectionText = data.foreground;
        gc.dispose();
        OS.RestoreDC(hDC, nSavedDC);
        if (this.isDisposed() || item.isDisposed()) {
            return;
        }
        if (event.doit) {
            this.ignoreDrawForeground = (event.detail & 0x10) == 0;
            this.ignoreDrawBackground = (event.detail & 8) == 0;
            this.ignoreDrawSelection = (event.detail & 2) == 0;
            this.ignoreDrawFocus = (event.detail & 4) == 0;
            this.ignoreDrawHot = (event.detail & 0x20) == 0;
        } else {
            this.ignoreDrawHot = true;
            this.ignoreDrawFocus = true;
            this.ignoreDrawSelection = true;
            this.ignoreDrawBackground = true;
            this.ignoreDrawForeground = true;
        }
        if (drawSelected) {
            if (this.ignoreDrawSelection) {
                this.ignoreDrawHot = true;
                if (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0) {
                    this.selectionForeground = clrSelectionText;
                }
                nmcd.uItemState &= 0xFFFFFFFE;
                OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
            }
        } else if (this.ignoreDrawSelection) {
            nmcd.uItemState |= 1;
            OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
        }
        boolean bl2 = firstColumn = nmcd.iSubItem == OS.SendMessage(hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0), 4623, 0, 0);
        if (this.ignoreDrawForeground && this.ignoreDrawHot && !drawDrophilited && !this.ignoreDrawBackground && drawBackground) {
            RECT backgroundRect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, false, true, false, hDC);
            this.fillBackground(hDC, clrTextBk, backgroundRect);
        }
        this.focusRect = null;
        if (!this.ignoreDrawHot || !this.ignoreDrawSelection || !this.ignoreDrawFocus || drawDrophilited) {
            boolean fullText = (this.style & 0x10000) != 0 || !firstColumn;
            RECT textRect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, false, fullText, false, hDC);
            if ((this.style & 0x10000) == 0) {
                if (measureEvent != null) {
                    textRect.right = Math.min(cellRect.right, measureEvent.x + measureEvent.width);
                }
                if (!this.ignoreDrawFocus) {
                    nmcd.uItemState &= 0xFFFFFFEF;
                    OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
                    this.focusRect = textRect;
                }
            }
            if (this.explorerTheme) {
                if (!this.ignoreDrawHot || drawDrophilited || !this.ignoreDrawSelection && clrSelectionBk != -1) {
                    int iStateId;
                    RECT pClipRect = new RECT();
                    OS.SetRect(pClipRect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                    RECT rect = new RECT();
                    OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                    if ((this.style & 0x10000) != 0) {
                        int count = OS.SendMessage(hwndHeader, 4608, 0, 0);
                        int index = OS.SendMessage(hwndHeader, 4623, count - 1, 0);
                        RECT headerRect = new RECT();
                        OS.SendMessage(hwndHeader, 4615, index, headerRect);
                        OS.MapWindowPoints(hwndHeader, this.handle, headerRect, 2);
                        rect.right = headerRect.right;
                        index = OS.SendMessage(hwndHeader, 4623, 0, 0);
                        OS.SendMessage(hwndHeader, 4615, index, headerRect);
                        OS.MapWindowPoints(hwndHeader, this.handle, headerRect, 2);
                        rect.left = headerRect.left;
                        pClipRect.left = cellRect.left;
                        pClipRect.right += 2;
                    } else {
                        rect.right += 2;
                        pClipRect.right += 2;
                    }
                    int hTheme = OS.OpenThemeData(this.handle, Display.LISTVIEW);
                    int n3 = iStateId = selected ? 3 : 2;
                    if (OS.GetFocus() != this.handle && selected && !drawHot) {
                        iStateId = 5;
                    }
                    if (drawDrophilited) {
                        iStateId = 3;
                    }
                    OS.DrawThemeBackground(hTheme, hDC, 1, iStateId, rect, pClipRect);
                    OS.CloseThemeData(hTheme);
                }
            } else if (!this.ignoreDrawSelection && clrSelectionBk != -1) {
                this.fillBackground(hDC, clrSelectionBk, textRect);
            }
        }
        if (focused && this.ignoreDrawFocus) {
            nmcd.uItemState &= 0xFFFFFFEF;
            OS.MoveMemory(lParam, nmcd, NMLVCUSTOMDRAW.sizeof);
        }
        if (this.ignoreDrawForeground) {
            RECT clipRect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, true, true, false, hDC);
            OS.SaveDC(hDC);
            OS.SelectClipRgn(hDC, 0);
            OS.ExcludeClipRect(hDC, clipRect.left, clipRect.top, clipRect.right, clipRect.bottom);
        }
    }

    Event sendEraseItemEvent(TableItem item, NMTTCUSTOMDRAW nmcd, int column, RECT cellRect) {
        int nSavedDC = OS.SaveDC(nmcd.hdc);
        RECT insetRect = this.toolTipInset(cellRect);
        OS.SetWindowOrgEx(nmcd.hdc, insetRect.left, insetRect.top, null);
        GCData data = new GCData();
        data.device = this.display;
        data.foreground = OS.GetTextColor(nmcd.hdc);
        data.background = OS.GetBkColor(nmcd.hdc);
        data.font = item.getFont(column);
        data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
        GC gc = GC.win32_new(nmcd.hdc, data);
        Event event = new Event();
        event.item = item;
        event.index = column;
        event.gc = gc;
        event.detail |= 0x10;
        event.x = cellRect.left;
        event.y = cellRect.top;
        event.width = cellRect.right - cellRect.left;
        event.height = cellRect.bottom - cellRect.top;
        this.sendEvent(40, event);
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(nmcd.hdc, nSavedDC);
        return event;
    }

    Event sendMeasureItemEvent(TableItem item, int row, int column, int hDC) {
        GCData data = new GCData();
        data.device = this.display;
        data.font = item.getFont(column);
        int nSavedDC = OS.SaveDC(hDC);
        GC gc = GC.win32_new(hDC, data);
        RECT itemRect = item.getBounds(row, column, true, true, false, false, hDC);
        Event event = new Event();
        event.item = item;
        event.gc = gc;
        event.index = column;
        event.x = itemRect.left;
        event.y = itemRect.top;
        event.width = itemRect.right - itemRect.left;
        event.height = itemRect.bottom - itemRect.top;
        boolean drawSelected = false;
        if (OS.IsWindowEnabled(this.handle)) {
            boolean selected;
            LVITEM lvItem = new LVITEM();
            lvItem.mask = 8;
            lvItem.stateMask = 2;
            lvItem.iItem = row;
            int result = OS.SendMessage(this.handle, OS.LVM_GETITEM, 0, lvItem);
            boolean bl = selected = result != 0 && (lvItem.state & 2) != 0;
            if (selected && (column == 0 || (this.style & 0x10000) != 0)) {
                if (OS.GetFocus() == this.handle || this.display.getHighContrast()) {
                    drawSelected = true;
                } else {
                    boolean bl2 = drawSelected = (this.style & 0x8000) == 0;
                }
            }
        }
        if (drawSelected) {
            event.detail |= 2;
        }
        this.sendEvent(41, event);
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(hDC, nSavedDC);
        if (!this.isDisposed() && !item.isDisposed()) {
            int width;
            if (this.columnCount == 0 && event.x + event.width > (width = OS.SendMessage(this.handle, 4125, 0, 0))) {
                this.setScrollWidth(event.x + event.width);
            }
            int empty = OS.SendMessage(this.handle, 4160, 0, 0);
            int oneItem = OS.SendMessage(this.handle, 4160, 1, 0);
            int itemHeight = OS.HIWORD(oneItem) - OS.HIWORD(empty);
            if (event.height > itemHeight) {
                this.setItemHeight(event.height);
            }
        }
        return event;
    }

    LRESULT sendMouseDownEvent(int type, int button, int msg, int wParam, int lParam) {
        boolean dragDetect;
        Display display = this.display;
        display.captureChanged = false;
        if (!this.sendMouseEvent(type, button, this.handle, msg, wParam, lParam)) {
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return LRESULT.ZERO;
        }
        LVHITTESTINFO pinfo = new LVHITTESTINFO();
        pinfo.x = OS.GET_X_LPARAM(lParam);
        pinfo.y = OS.GET_Y_LPARAM(lParam);
        OS.SendMessage(this.handle, 4114, 0, pinfo);
        if ((this.style & 0x10000) == 0 && this.hooks(41)) {
            if (OS.SendMessage(this.handle, 4153, 0, pinfo) < 0) {
                int count = OS.SendMessage(this.handle, 4100, 0, 0);
                if (count != 0) {
                    RECT rect = new RECT();
                    rect.left = 1;
                    this.ignoreCustomDraw = true;
                    int code = OS.SendMessage(this.handle, 4110, 0, rect);
                    this.ignoreCustomDraw = false;
                    if (code != 0) {
                        pinfo.x = rect.left;
                        OS.SendMessage(this.handle, 4153, 0, pinfo);
                        if (pinfo.iItem < 0) {
                            pinfo.iItem = -1;
                        }
                        pinfo.flags &= 0xFFFFFFF9;
                    }
                }
            } else if (pinfo.iSubItem != 0) {
                pinfo.iItem = -1;
            }
        }
        OS.SetFocus(this.handle);
        if (((this.style & 4) != 0 || this.hooks(3) || this.hooks(4)) && pinfo.iItem == -1) {
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return LRESULT.ZERO;
        }
        boolean forceSelect = false;
        int count = OS.SendMessage(this.handle, 4146, 0, 0);
        if (count == 1 && pinfo.iItem != -1) {
            LVITEM lvItem = new LVITEM();
            lvItem.mask = 8;
            lvItem.stateMask = 2;
            lvItem.iItem = pinfo.iItem;
            OS.SendMessage(this.handle, OS.LVM_GETITEM, 0, lvItem);
            if ((lvItem.state & 2) != 0) {
                forceSelect = true;
            }
        }
        this.fullRowSelect = false;
        if (pinfo.iItem != -1 && (this.style & 0x10000) == 0 && this.hooks(41)) {
            int flags;
            this.fullRowSelect = this.hitTestSelection(pinfo.iItem, pinfo.x, pinfo.y);
            if (this.fullRowSelect && (pinfo.flags & (flags = 6)) != 0) {
                this.fullRowSelect = false;
            }
        }
        boolean bl = dragDetect = (this.state & 0x8000) != 0 && this.hooks(29);
        if (!dragDetect) {
            int flags = 6;
            boolean bl2 = dragDetect = pinfo.iItem == -1 || (pinfo.flags & flags) == 0;
            if (this.fullRowSelect) {
                dragDetect = true;
            }
        }
        if (this.fullRowSelect) {
            OS.UpdateWindow(this.handle);
            OS.DefWindowProc(this.handle, 11, 0, 0);
            OS.SendMessage(this.handle, 4150, 32, 32);
        }
        this.dragStarted = false;
        display.dragCancelled = false;
        if (!dragDetect) {
            display.runDragDrop = false;
        }
        int code = this.callWindowProc(this.handle, msg, wParam, lParam, forceSelect);
        if (!dragDetect) {
            display.runDragDrop = true;
        }
        if (this.fullRowSelect) {
            this.fullRowSelect = false;
            OS.DefWindowProc(this.handle, 11, 1, 0);
            OS.SendMessage(this.handle, 4150, 32, 0);
        }
        if (this.dragStarted || display.dragCancelled) {
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
        } else {
            boolean fakeMouseUp;
            int flags = 6;
            boolean bl3 = fakeMouseUp = (pinfo.flags & flags) != 0;
            if (!fakeMouseUp && (this.style & 2) != 0) {
                boolean bl4 = fakeMouseUp = (pinfo.flags & 8) == 0;
            }
            if (fakeMouseUp) {
                this.sendMouseEvent(4, button, this.handle, msg, wParam, lParam);
            }
        }
        return new LRESULT(code);
    }

    void sendPaintItemEvent(TableItem item, NMLVCUSTOMDRAW nmcd) {
        int uiState;
        int hDC = nmcd.hdc;
        GCData data = new GCData();
        data.device = this.display;
        data.font = item.getFont(nmcd.iSubItem);
        LVITEM lvItem = new LVITEM();
        lvItem.mask = 8;
        lvItem.stateMask = 2;
        lvItem.iItem = nmcd.dwItemSpec;
        int result = OS.SendMessage(this.handle, OS.LVM_GETITEM, 0, lvItem);
        boolean selected = result != 0 && (lvItem.state & 2) != 0;
        boolean drawSelected = false;
        boolean drawBackground = false;
        boolean drawHot = false;
        if (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0) {
            boolean bl = drawHot = this.hotIndex == nmcd.dwItemSpec;
        }
        if (OS.IsWindowEnabled(this.handle)) {
            int clrText;
            if (selected && (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0)) {
                if (OS.GetFocus() == this.handle || this.display.getHighContrast()) {
                    drawSelected = true;
                    data.foreground = this.selectionForeground != -1 ? this.selectionForeground : OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
                    data.background = OS.GetSysColor(OS.COLOR_HIGHLIGHT);
                } else {
                    drawSelected = (this.style & 0x8000) == 0;
                    data.foreground = OS.GetTextColor(hDC);
                    data.background = OS.GetSysColor(OS.COLOR_3DFACE);
                }
                if (this.explorerTheme && this.selectionForeground == -1) {
                    int n = clrText = item.cellForeground != null ? item.cellForeground[nmcd.iSubItem] : -1;
                    if (clrText == -1) {
                        clrText = item.foreground;
                    }
                    data.foreground = clrText != -1 ? clrText : this.getForegroundPixel();
                }
            } else {
                int clrTextBk;
                int n = clrText = item.cellForeground != null ? item.cellForeground[nmcd.iSubItem] : -1;
                if (clrText == -1) {
                    clrText = item.foreground;
                }
                int n2 = clrTextBk = item.cellBackground != null ? item.cellBackground[nmcd.iSubItem] : -1;
                if (clrTextBk == -1) {
                    clrTextBk = item.background;
                }
                boolean bl = drawBackground = clrTextBk != -1;
                if (clrText == -1 || clrTextBk == -1) {
                    Control control = this.findBackgroundControl();
                    if (control == null) {
                        control = this;
                    }
                    if (clrText == -1) {
                        clrText = control.getForegroundPixel();
                    }
                    if (clrTextBk == -1) {
                        clrTextBk = control.getBackgroundPixel();
                    }
                }
                data.foreground = clrText != -1 ? clrText : OS.GetTextColor(hDC);
                data.background = clrTextBk != -1 ? clrTextBk : OS.GetBkColor(hDC);
            }
        } else {
            data.foreground = OS.GetSysColor(OS.COLOR_GRAYTEXT);
            data.background = OS.GetSysColor(OS.COLOR_3DFACE);
        }
        data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
        int nSavedDC = OS.SaveDC(hDC);
        GC gc = GC.win32_new(hDC, data);
        RECT itemRect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, true, false, false, hDC);
        Event event = new Event();
        event.item = item;
        event.gc = gc;
        event.index = nmcd.iSubItem;
        event.detail |= 0x10;
        if (OS.SendMessage(this.handle, 4108, -1, 1) == nmcd.dwItemSpec && (nmcd.iSubItem == 0 || (this.style & 0x10000) != 0) && this.handle == OS.GetFocus() && ((uiState = OS.SendMessage(this.handle, 297, 0, 0)) & 1) == 0) {
            event.detail |= 4;
        }
        if (drawHot) {
            event.detail |= 0x20;
        }
        if (drawSelected) {
            event.detail |= 2;
        }
        if (drawBackground) {
            event.detail |= 8;
        }
        event.x = itemRect.left;
        event.y = itemRect.top;
        event.width = itemRect.right - itemRect.left;
        event.height = itemRect.bottom - itemRect.top;
        RECT cellRect = item.getBounds(nmcd.dwItemSpec, nmcd.iSubItem, true, true, true, true, hDC);
        int cellWidth = cellRect.right - cellRect.left;
        int cellHeight = cellRect.bottom - cellRect.top;
        gc.setClipping(cellRect.left, cellRect.top, cellWidth, cellHeight);
        this.sendEvent(42, event);
        if (data.focusDrawn) {
            this.focusRect = null;
        }
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(hDC, nSavedDC);
    }

    Event sendPaintItemEvent(TableItem item, NMTTCUSTOMDRAW nmcd, int column, RECT itemRect) {
        int nSavedDC = OS.SaveDC(nmcd.hdc);
        RECT insetRect = this.toolTipInset(itemRect);
        OS.SetWindowOrgEx(nmcd.hdc, insetRect.left, insetRect.top, null);
        GCData data = new GCData();
        data.device = this.display;
        data.font = item.getFont(column);
        data.foreground = OS.GetTextColor(nmcd.hdc);
        data.background = OS.GetBkColor(nmcd.hdc);
        data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
        GC gc = GC.win32_new(nmcd.hdc, data);
        Event event = new Event();
        event.item = item;
        event.index = column;
        event.gc = gc;
        event.detail |= 0x10;
        event.x = itemRect.left;
        event.y = itemRect.top;
        event.width = itemRect.right - itemRect.left;
        event.height = itemRect.bottom - itemRect.top;
        this.sendEvent(42, event);
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(nmcd.hdc, nSavedDC);
        return event;
    }

    void setBackgroundImage(int hBitmap) {
        super.setBackgroundImage(hBitmap);
        if (hBitmap != 0) {
            this.setBackgroundTransparent(true);
        } else if (!(this.hooks(41) || this.hooks(40) || this.hooks(42))) {
            this.setBackgroundTransparent(false);
        }
    }

    void setBackgroundPixel(int newPixel) {
        int oldPixel = OS.SendMessage(this.handle, 4096, 0, 0);
        if (oldPixel != -1) {
            if (this.findImageControl() != null) {
                return;
            }
            if (newPixel == -1) {
                newPixel = this.defaultBackground();
            }
            if (oldPixel != newPixel) {
                OS.SendMessage(this.handle, 4097, 0, newPixel);
                OS.SendMessage(this.handle, 4134, 0, newPixel);
                if ((this.style & 0x20) != 0) {
                    this.fixCheckboxImageListColor(true);
                }
            }
        }
        OS.InvalidateRect(this.handle, null, true);
    }

    void setBackgroundTransparent(boolean transparent) {
        int oldPixel = OS.SendMessage(this.handle, 4096, 0, 0);
        if (transparent) {
            if (oldPixel != -1) {
                OS.SendMessage(this.handle, 4097, 0, -1);
                OS.SendMessage(this.handle, 4134, 0, -1);
                OS.InvalidateRect(this.handle, null, true);
                if (!this.explorerTheme && (this.style & 0x10000) != 0) {
                    int bits = 32;
                    OS.SendMessage(this.handle, 4150, bits, 0);
                }
                if ((this.sortDirection & 0x480) != 0 && this.sortColumn != null && !this.sortColumn.isDisposed()) {
                    OS.SendMessage(this.handle, 4236, -1, 0);
                    OS.InvalidateRect(this.handle, null, true);
                }
            }
        } else if (oldPixel == -1) {
            int column;
            Control control = this.findBackgroundControl();
            if (control == null) {
                control = this;
            }
            if (control.backgroundImage == null) {
                int newPixel = control.getBackgroundPixel();
                OS.SendMessage(this.handle, 4097, 0, newPixel);
                OS.SendMessage(this.handle, 4134, 0, newPixel);
                if ((this.style & 0x20) != 0) {
                    this.fixCheckboxImageListColor(true);
                }
                OS.InvalidateRect(this.handle, null, true);
            }
            if (!(this.explorerTheme || (this.style & 0x10000) == 0 || this.hooks(40) || this.hooks(42))) {
                int bits = 32;
                OS.SendMessage(this.handle, 4150, bits, bits);
            }
            if ((this.sortDirection & 0x480) != 0 && this.sortColumn != null && !this.sortColumn.isDisposed() && (column = this.indexOf(this.sortColumn)) != -1) {
                OS.SendMessage(this.handle, 4236, column, 0);
                OS.InvalidateRect(this.handle, null, true);
            }
        }
    }

    void setBounds(int x, int y, int width, int height, int flags, boolean defer) {
        this.setDeferResize(true);
        super.setBounds(x, y, width, height, flags, false);
        this.setDeferResize(false);
    }

    public void setColumnOrder(int[] order) {
        this.checkWidget();
        if (order == null) {
            this.error(4);
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        if (this.columnCount == 0) {
            if (order.length != 0) {
                this.error(5);
            }
            return;
        }
        if (order.length != this.columnCount) {
            this.error(5);
        }
        int[] oldOrder = new int[this.columnCount];
        OS.SendMessage(this.handle, 4155, this.columnCount, oldOrder);
        boolean reorder = false;
        boolean[] seen = new boolean[this.columnCount];
        int i = 0;
        while (i < order.length) {
            int index = order[i];
            if (index < 0 || index >= this.columnCount) {
                this.error(6);
            }
            if (seen[index]) {
                this.error(5);
            }
            seen[index] = true;
            if (index != oldOrder[i]) {
                reorder = true;
            }
            ++i;
        }
        if (reorder) {
            RECT[] oldRects = new RECT[this.columnCount];
            int i2 = 0;
            while (i2 < this.columnCount) {
                oldRects[i2] = new RECT();
                OS.SendMessage(hwndHeader, 4615, i2, oldRects[i2]);
                ++i2;
            }
            OS.SendMessage(this.handle, 4154, order.length, order);
            OS.InvalidateRect(this.handle, null, true);
            TableColumn[] newColumns = new TableColumn[this.columnCount];
            System.arraycopy(this.columns, 0, newColumns, 0, this.columnCount);
            RECT newRect = new RECT();
            int i3 = 0;
            while (i3 < this.columnCount) {
                TableColumn column = newColumns[i3];
                if (!column.isDisposed()) {
                    OS.SendMessage(hwndHeader, 4615, i3, newRect);
                    if (newRect.left != oldRects[i3].left) {
                        column.updateToolTip(i3);
                        column.sendEvent(10);
                    }
                }
                ++i3;
            }
        }
    }

    void setCustomDraw(boolean customDraw) {
        if (this.customDraw == customDraw) {
            return;
        }
        if (!this.customDraw && customDraw && this.currentItem != null) {
            OS.InvalidateRect(this.handle, null, true);
        }
        this.customDraw = customDraw;
    }

    void setDeferResize(boolean defer) {
        if (defer) {
            if (this.resizeCount++ == 0) {
                this.wasResized = false;
                if ((this.hooks(41) || this.hooks(40) || this.hooks(42)) && this.drawCount++ == 0 && OS.IsWindowVisible(this.handle)) {
                    OS.DefWindowProc(this.handle, 11, 0, 0);
                    OS.SendMessage(this.handle, 4097, 0, 0xFFFFFF);
                }
            }
        } else if (--this.resizeCount == 0) {
            if ((this.hooks(41) || this.hooks(40) || this.hooks(42)) && --this.drawCount == 0) {
                OS.SendMessage(this.handle, 4097, 0, -1);
                OS.DefWindowProc(this.handle, 11, 1, 0);
                if (OS.IsWinCE) {
                    int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                    if (hwndHeader != 0) {
                        OS.InvalidateRect(hwndHeader, null, true);
                    }
                    OS.InvalidateRect(this.handle, null, true);
                } else {
                    int flags = 1157;
                    OS.RedrawWindow(this.handle, null, 0, flags);
                }
            }
            if (this.wasResized) {
                this.wasResized = false;
                this.setResizeChildren(false);
                this.sendEvent(11);
                if (this.isDisposed()) {
                    return;
                }
                if (this.layout != null) {
                    this.markLayout(false, false);
                    this.updateLayout(false, false);
                }
                this.setResizeChildren(true);
            }
        }
    }

    void setCheckboxImageList(int width, int height, boolean fixScroll) {
        int clrBackground;
        if ((this.style & 0x20) == 0) {
            return;
        }
        int count = 8;
        int flags = 0;
        if (OS.IsWinCE) {
            flags |= 0;
        } else {
            int hDC = OS.GetDC(this.handle);
            int bits = OS.GetDeviceCaps(hDC, 12);
            int planes = OS.GetDeviceCaps(hDC, 14);
            OS.ReleaseDC(this.handle, hDC);
            int depth = bits * planes;
            switch (depth) {
                case 4: {
                    flags |= 4;
                    break;
                }
                case 8: {
                    flags |= 8;
                    break;
                }
                case 16: {
                    flags |= 0x10;
                    break;
                }
                case 24: {
                    flags |= 0x18;
                    break;
                }
                case 32: {
                    flags |= 0x20;
                    break;
                }
                default: {
                    flags |= 0;
                }
            }
        }
        if ((this.style & 0x4000000) != 0) {
            flags |= 0x2000;
        }
        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
            flags |= 1;
        }
        int hStateList = OS.ImageList_Create(width, height, flags, count, count);
        int hDC = OS.GetDC(this.handle);
        int memDC = OS.CreateCompatibleDC(hDC);
        int hBitmap = OS.CreateCompatibleBitmap(hDC, width * count, height);
        int hOldBitmap = OS.SelectObject(memDC, hBitmap);
        RECT rect = new RECT();
        OS.SetRect(rect, 0, 0, width * count, height);
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            Control control = this.findBackgroundControl();
            if (control == null) {
                control = this;
            }
            clrBackground = control.getBackgroundPixel();
        } else {
            clrBackground = 0x20000FF;
            if ((clrBackground & 0xFFFFFF) == OS.GetSysColor(OS.COLOR_WINDOW)) {
                clrBackground = 0x200FF00;
            }
        }
        int hBrush = OS.CreateSolidBrush(clrBackground);
        OS.FillRect(memDC, rect, hBrush);
        OS.DeleteObject(hBrush);
        int oldFont = OS.SelectObject(hDC, this.defaultFont());
        TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(hDC, tm);
        OS.SelectObject(hDC, oldFont);
        int itemWidth = Math.min(tm.tmHeight, width);
        int itemHeight = Math.min(tm.tmHeight, height);
        int left = (width - itemWidth) / 2;
        int top = (height - itemHeight) / 2 + 1;
        OS.SetRect(rect, left, top, left + itemWidth, top + itemHeight);
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = this.display.hButtonTheme();
            OS.DrawThemeBackground(hTheme, memDC, 3, 1, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 5, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 1, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 9, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 4, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 8, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 4, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 12, rect, null);
        } else {
            OS.DrawFrameControl(memDC, rect, 4, 16384);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 17408);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 16640);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 17664);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 16384);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 17408);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 16640);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 17664);
        }
        OS.SelectObject(memDC, hOldBitmap);
        OS.DeleteDC(memDC);
        OS.ReleaseDC(this.handle, hDC);
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            OS.ImageList_Add(hStateList, hBitmap, 0);
        } else {
            OS.ImageList_AddMasked(hStateList, hBitmap, clrBackground);
        }
        OS.DeleteObject(hBitmap);
        int topIndex = this.getTopIndex();
        if (fixScroll && topIndex != 0) {
            this.setRedraw(false);
            this.setTopIndex(0);
        }
        int hOldStateList = OS.SendMessage(this.handle, 4098, 2, 0);
        OS.SendMessage(this.handle, 4099, 2, hStateList);
        if (hOldStateList != 0) {
            OS.ImageList_Destroy(hOldStateList);
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            int hImageList = OS.SendMessage(this.handle, 4098, 1, 0);
            OS.SendMessage(this.handle, 4099, 1, hImageList);
        }
        if (fixScroll && topIndex != 0) {
            this.setTopIndex(topIndex);
            this.setRedraw(true);
        }
    }

    void setFocusIndex(int index) {
        if (index < 0) {
            return;
        }
        LVITEM lvItem = new LVITEM();
        lvItem.state = 1;
        lvItem.stateMask = 1;
        this.ignoreSelect = true;
        OS.SendMessage(this.handle, 4139, index, lvItem);
        this.ignoreSelect = false;
        OS.SendMessage(this.handle, 4163, 0, index);
    }

    public void setFont(Font font) {
        int bits;
        this.checkWidget();
        int topIndex = this.getTopIndex();
        if (topIndex != 0) {
            this.setRedraw(false);
            this.setTopIndex(0);
        }
        if (this.itemHeight != -1) {
            bits = OS.GetWindowLong(this.handle, -16);
            OS.SetWindowLong(this.handle, -16, bits | 0x400);
        }
        super.setFont(font);
        if (this.itemHeight != -1) {
            bits = OS.GetWindowLong(this.handle, -16);
            OS.SetWindowLong(this.handle, -16, bits & 0xFFFFFBFF);
        }
        this.setScrollWidth(null, true);
        if (topIndex != 0) {
            this.setTopIndex(topIndex);
            this.setRedraw(true);
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        OS.InvalidateRect(hwndHeader, null, true);
    }

    void setForegroundPixel(int pixel) {
        if (pixel == -1) {
            pixel = -16777216;
        }
        OS.SendMessage(this.handle, 4132, 0, pixel);
        OS.InvalidateRect(this.handle, null, true);
    }

    public void setHeaderVisible(boolean show) {
        int bits;
        this.checkWidget();
        int newBits = OS.GetWindowLong(this.handle, -16);
        newBits &= 0xFFFFBFFF;
        if (!show) {
            newBits |= 0x4000;
        }
        int oldIndex = this.getTopIndex();
        OS.SetWindowLong(this.handle, -16, newBits);
        int newIndex = this.getTopIndex();
        if (newIndex != 0) {
            this.setRedraw(false);
            this.setTopIndex(0);
        }
        if (show && ((bits = OS.SendMessage(this.handle, 4151, 0, 0)) & 1) != 0) {
            this.fixItemHeight(false);
        }
        this.setTopIndex(oldIndex);
        if (newIndex != 0) {
            this.setRedraw(true);
        }
        this.updateHeaderToolTips();
    }

    public void setItemCount(int count) {
        boolean isVirtual;
        this.checkWidget();
        count = Math.max(0, count);
        int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
        if (count == itemCount) {
            return;
        }
        this.setDeferResize(true);
        boolean bl = isVirtual = (this.style & 0x10000000) != 0;
        if (!isVirtual) {
            this.setRedraw(false);
        }
        int index = count;
        while (index < itemCount) {
            TableItem item = this._getItem(index, false);
            if (item != null && !item.isDisposed()) {
                item.release(false);
            }
            if (!isVirtual) {
                this.ignoreShrink = true;
                this.ignoreSelect = true;
                int code = OS.SendMessage(this.handle, 4104, count, 0);
                this.ignoreShrink = false;
                this.ignoreSelect = false;
                if (code == 0) break;
            }
            ++index;
        }
        if (index < itemCount) {
            this.error(15);
        }
        this._setItemCount(count, itemCount);
        if (isVirtual) {
            int flags = 3;
            OS.SendMessage(this.handle, 4143, count, flags);
            if (count == 0 && itemCount != 0) {
                OS.InvalidateRect(this.handle, null, true);
            }
        } else {
            int i = itemCount;
            while (i < count) {
                new TableItem(this, 0, i, true);
                ++i;
            }
        }
        if (!isVirtual) {
            this.setRedraw(true);
        }
        if (itemCount == 0) {
            this.setScrollWidth(null, false);
        }
        this.setDeferResize(false);
    }

    void setItemHeight(boolean fixScroll) {
        int topIndex = this.getTopIndex();
        if (fixScroll && topIndex != 0) {
            this.setRedraw(false);
            this.setTopIndex(0);
        }
        if (this.itemHeight == -1) {
            int hFont = OS.SendMessage(this.handle, 49, 0, 0);
            OS.SendMessage(this.handle, 48, hFont, 0);
        } else {
            this.forceResize();
            RECT rect = new RECT();
            OS.GetWindowRect(this.handle, rect);
            int width = rect.right - rect.left;
            int height = rect.bottom - rect.top;
            int bits = OS.GetWindowLong(this.handle, -16);
            OS.SetWindowLong(this.handle, -16, bits | 0x400);
            int flags = 30;
            this.ignoreResize = true;
            this.SetWindowPos(this.handle, 0, 0, 0, width, height + 1, flags);
            this.SetWindowPos(this.handle, 0, 0, 0, width, height, flags);
            this.ignoreResize = false;
            OS.SetWindowLong(this.handle, -16, bits);
        }
        if (fixScroll && topIndex != 0) {
            this.setTopIndex(topIndex);
            this.setRedraw(true);
        }
    }

    void setItemHeight(int itemHeight) {
        this.checkWidget();
        if (itemHeight < -1) {
            this.error(5);
        }
        this.itemHeight = itemHeight;
        this.setItemHeight(true);
        this.setScrollWidth(null, true);
    }

    public void setLinesVisible(boolean show) {
        int bits;
        this.checkWidget();
        int newBits = show ? 1 : 0;
        OS.SendMessage(this.handle, 4150, 1, newBits);
        if (show && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x4000) == 0) {
            this.fixItemHeight(true);
        }
    }

    public void setRedraw(boolean redraw) {
        int hwndHeader;
        int bits;
        this.checkWidget();
        if (this.drawCount == 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x10000000) == 0) {
            this.state |= 0x10;
        }
        if (redraw) {
            if (--this.drawCount == 0) {
                this.setScrollWidth(null, true);
                this.setDeferResize(true);
                OS.SendMessage(this.handle, 11, 1, 0);
                hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                if (hwndHeader != 0) {
                    OS.SendMessage(hwndHeader, 11, 1, 0);
                }
                if ((this.state & 0x10) != 0) {
                    this.state &= 0xFFFFFFEF;
                    OS.ShowWindow(this.handle, 0);
                } else if (OS.IsWinCE) {
                    OS.InvalidateRect(this.handle, null, false);
                    if (hwndHeader != 0) {
                        OS.InvalidateRect(hwndHeader, null, false);
                    }
                } else {
                    int flags = 1157;
                    OS.RedrawWindow(this.handle, null, 0, flags);
                }
                this.setDeferResize(false);
            }
        } else if (this.drawCount++ == 0) {
            OS.SendMessage(this.handle, 11, 0, 0);
            hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            if (hwndHeader != 0) {
                OS.SendMessage(hwndHeader, 11, 0, 0);
            }
        }
    }

    void setScrollWidth(int width) {
        if (width != OS.SendMessage(this.handle, 4125, 0, 0)) {
            boolean redraw = false;
            if (this.hooks(41)) {
                boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            }
            if (redraw) {
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
            OS.SendMessage(this.handle, 4126, 0, width);
            if (redraw) {
                OS.DefWindowProc(this.handle, 11, 1, 0);
                if (OS.IsWinCE) {
                    int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                    if (hwndHeader != 0) {
                        OS.InvalidateRect(hwndHeader, null, true);
                    }
                    OS.InvalidateRect(this.handle, null, true);
                } else {
                    int flags = 1157;
                    OS.RedrawWindow(this.handle, null, 0, flags);
                }
            }
        }
    }

    boolean setScrollWidth(TableItem item, boolean force) {
        if (this.currentItem != null) {
            if (this.currentItem != item) {
                this.fixScrollWidth = true;
            }
            return false;
        }
        if (!(force || this.getDrawing() && OS.IsWindowVisible(this.handle))) {
            this.fixScrollWidth = true;
            return false;
        }
        this.fixScrollWidth = false;
        if (this.columnCount == 0) {
            int hImageList;
            int hStateList;
            int newWidth = 0;
            int imageIndent = 0;
            int index = 0;
            int itemCount = OS.SendMessage(this.handle, 4100, 0, 0);
            while (index < itemCount) {
                String string = null;
                int hFont = -1;
                if (item != null) {
                    string = item.text;
                    imageIndent = Math.max(imageIndent, item.imageIndent);
                    hFont = item.fontHandle(0);
                } else {
                    TableItem tableItem = this._getItem(index, false);
                    if (tableItem != null) {
                        string = tableItem.text;
                        imageIndent = Math.max(imageIndent, tableItem.imageIndent);
                        hFont = tableItem.fontHandle(0);
                    }
                }
                if (string != null && string.length() != 0) {
                    if (hFont != -1) {
                        int hDC = OS.GetDC(this.handle);
                        int oldFont = OS.SelectObject(hDC, hFont);
                        int flags = 3104;
                        TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
                        RECT rect = new RECT();
                        OS.DrawText(hDC, buffer, buffer.length(), rect, flags);
                        OS.SelectObject(hDC, oldFont);
                        OS.ReleaseDC(this.handle, hDC);
                        newWidth = Math.max(newWidth, rect.right - rect.left);
                    } else {
                        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
                        newWidth = Math.max(newWidth, OS.SendMessage(this.handle, OS.LVM_GETSTRINGWIDTH, 0, buffer));
                    }
                }
                if (item != null) break;
                ++index;
            }
            if (newWidth == 0) {
                TCHAR buffer = new TCHAR(this.getCodePage(), " ", true);
                newWidth = Math.max(newWidth, OS.SendMessage(this.handle, OS.LVM_GETSTRINGWIDTH, 0, buffer));
            }
            if ((hStateList = OS.SendMessage(this.handle, 4098, 2, 0)) != 0) {
                int[] cx = new int[1];
                int[] cy = new int[1];
                OS.ImageList_GetIconSize(hStateList, cx, cy);
                newWidth += cx[0] + 4;
            }
            if ((hImageList = OS.SendMessage(this.handle, 4098, 1, 0)) != 0) {
                int[] cx = new int[1];
                int[] cy = new int[1];
                OS.ImageList_GetIconSize(hImageList, cx, cy);
                newWidth += (imageIndent + 1) * cx[0];
            } else {
                ++newWidth;
            }
            newWidth += 8;
            int oldWidth = OS.SendMessage(this.handle, 4125, 0, 0);
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                newWidth += 2;
            }
            if (newWidth > oldWidth) {
                this.setScrollWidth(newWidth);
                return true;
            }
        }
        return false;
    }

    public void setSelection(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        this.deselectAll();
        int length = indices.length;
        if (length == 0 || (this.style & 4) != 0 && length > 1) {
            return;
        }
        this.select(indices);
        int focusIndex = indices[0];
        if (focusIndex != -1) {
            this.setFocusIndex(focusIndex);
        }
        this.showSelection();
    }

    public void setSelection(TableItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        this.setSelection(new TableItem[]{item});
    }

    public void setSelection(TableItem[] items) {
        this.checkWidget();
        if (items == null) {
            this.error(4);
        }
        this.deselectAll();
        int length = items.length;
        if (length == 0 || (this.style & 4) != 0 && length > 1) {
            return;
        }
        int focusIndex = -1;
        int i = length - 1;
        while (i >= 0) {
            int index = this.indexOf(items[i]);
            if (index != -1) {
                focusIndex = index;
                this.select(focusIndex);
            }
            --i;
        }
        if (focusIndex != -1) {
            this.setFocusIndex(focusIndex);
        }
        this.showSelection();
    }

    public void setSelection(int index) {
        this.checkWidget();
        this.deselectAll();
        this.select(index);
        if (index != -1) {
            this.setFocusIndex(index);
        }
        this.showSelection();
    }

    public void setSelection(int start, int end) {
        this.checkWidget();
        this.deselectAll();
        if (end < 0 || start > end || (this.style & 4) != 0 && start != end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 4100, 0, 0);
        if (count == 0 || start >= count) {
            return;
        }
        start = Math.max(0, start);
        end = Math.min(end, count - 1);
        this.select(start, end);
        this.setFocusIndex(start);
        this.showSelection();
    }

    public void setSortColumn(TableColumn column) {
        this.checkWidget();
        if (column != null && column.isDisposed()) {
            this.error(5);
        }
        if (this.sortColumn != null && !this.sortColumn.isDisposed()) {
            this.sortColumn.setSortDirection(0);
        }
        this.sortColumn = column;
        if (this.sortColumn != null && this.sortDirection != 0) {
            this.sortColumn.setSortDirection(this.sortDirection);
        }
    }

    public void setSortDirection(int direction) {
        this.checkWidget();
        if ((direction & 0x480) == 0 && direction != 0) {
            return;
        }
        this.sortDirection = direction;
        if (this.sortColumn != null && !this.sortColumn.isDisposed()) {
            this.sortColumn.setSortDirection(direction);
        }
    }

    void setSubImagesVisible(boolean visible) {
        int dwExStyle = OS.SendMessage(this.handle, 4151, 0, 0);
        if ((dwExStyle & 2) != 0 == visible) {
            return;
        }
        int bits = visible ? 2 : 0;
        OS.SendMessage(this.handle, 4150, 2, bits);
    }

    void setTableEmpty() {
        if (this.imageList != null) {
            int hImageList = OS.ImageList_Create(1, 1, 0, 0, 0);
            OS.SendMessage(this.handle, 4099, 1, hImageList);
            OS.SendMessage(this.handle, 4099, 1, 0);
            if (this.headerImageList != null) {
                int hHeaderImageList = this.headerImageList.getHandle();
                int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                OS.SendMessage(hwndHeader, 4616, 0, hHeaderImageList);
            }
            OS.ImageList_Destroy(hImageList);
            this.display.releaseImageList(this.imageList);
            this.imageList = null;
            if (this.itemHeight != -1) {
                this.setItemHeight(false);
            }
        }
        if (!(this.hooks(41) || this.hooks(40) || this.hooks(42))) {
            Control control = this.findBackgroundControl();
            if (control == null) {
                control = this;
            }
            if (control.backgroundImage == null) {
                this.setCustomDraw(false);
                this.setBackgroundTransparent(false);
                if (OS.COMCTL32_MAJOR < 6) {
                    this.style &= 0xDFFFFFFF;
                }
            }
        }
        this._initItems();
        if (this.columnCount == 0) {
            OS.SendMessage(this.handle, 4126, 0, 0);
            this.setScrollWidth(null, false);
        }
    }

    public void setTopIndex(int index) {
        this.checkWidget();
        int topIndex = OS.SendMessage(this.handle, 4135, 0, 0);
        if (index == topIndex) {
            return;
        }
        if (!this.painted && this.hooks(41)) {
            this.hitTestSelection(index, 0, 0);
        }
        if (OS.SendMessage(this.handle, 4136, 0, 0) <= 0) {
            OS.SendMessage(this.handle, 4115, index, 1);
            if (index != OS.SendMessage(this.handle, 4135, 0, 0)) {
                OS.SendMessage(this.handle, 4115, index, 1);
            }
            return;
        }
        RECT rect = new RECT();
        rect.left = 0;
        this.ignoreCustomDraw = true;
        OS.SendMessage(this.handle, 4110, 0, rect);
        this.ignoreCustomDraw = false;
        int dy = (index - topIndex) * (rect.bottom - rect.top);
        OS.SendMessage(this.handle, 4116, 0, dy);
    }

    public void showColumn(TableColumn column) {
        this.checkWidget();
        if (column == null) {
            this.error(4);
        }
        if (column.isDisposed()) {
            this.error(5);
        }
        if (column.parent != this) {
            return;
        }
        int index = this.indexOf(column);
        if (index < 0 || index >= this.columnCount) {
            return;
        }
        RECT itemRect = new RECT();
        itemRect.left = 0;
        if (index == 0) {
            itemRect.top = 1;
            this.ignoreCustomDraw = true;
            OS.SendMessage(this.handle, 4152, -1, itemRect);
            this.ignoreCustomDraw = false;
            itemRect.right = itemRect.left;
            int width = OS.SendMessage(this.handle, 4125, 0, 0);
            itemRect.left = itemRect.right - width;
        } else {
            itemRect.top = index;
            this.ignoreCustomDraw = true;
            OS.SendMessage(this.handle, 4152, -1, itemRect);
            this.ignoreCustomDraw = false;
        }
        int oldPos = 0;
        int bits = OS.SendMessage(this.handle, 4151, 0, 0);
        if ((bits & 1) != 0) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 4;
            OS.GetScrollInfo(this.handle, 0, info);
            oldPos = info.nPos;
        }
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        if (itemRect.left < rect.left) {
            int dx = itemRect.left - rect.left;
            OS.SendMessage(this.handle, 4116, dx, 0);
        } else {
            int width = Math.min(rect.right - rect.left, itemRect.right - itemRect.left);
            if (itemRect.left + width > rect.right) {
                int dx = itemRect.left + width - rect.right;
                OS.SendMessage(this.handle, 4116, dx, 0);
            }
        }
        if ((bits & 1) != 0) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 4;
            OS.GetScrollInfo(this.handle, 0, info);
            int newPos = info.nPos;
            if (newPos < oldPos) {
                rect.right = oldPos - newPos + 1;
                OS.InvalidateRect(this.handle, rect, true);
            }
        }
    }

    void showItem(int index) {
        if (!this.painted && this.hooks(41)) {
            this.hitTestSelection(index, 0, 0);
        }
        if (OS.SendMessage(this.handle, 4136, 0, 0) <= 0) {
            OS.SendMessage(this.handle, 4115, index, 1);
            if (index != OS.SendMessage(this.handle, 4135, 0, 0)) {
                OS.SendMessage(this.handle, 4115, index, 1);
            }
        } else {
            OS.SendMessage(this.handle, 4115, index, 0);
        }
    }

    public void showItem(TableItem item) {
        int index;
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        if ((index = this.indexOf(item)) != -1) {
            this.showItem(index);
        }
    }

    public void showSelection() {
        this.checkWidget();
        int index = OS.SendMessage(this.handle, 4108, -1, 2);
        if (index != -1) {
            this.showItem(index);
        }
    }

    void sort() {
        this.checkWidget();
    }

    void subclass() {
        super.subclass();
        if (HeaderProc != 0) {
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            OS.SetWindowLongPtr(hwndHeader, -4, this.display.windowProc);
        }
    }

    RECT toolTipInset(RECT rect) {
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            RECT insetRect = new RECT();
            OS.SetRect(insetRect, rect.left - 1, rect.top - 1, rect.right + 1, rect.bottom + 1);
            return insetRect;
        }
        return rect;
    }

    RECT toolTipRect(RECT rect) {
        RECT toolRect = new RECT();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            OS.SetRect(toolRect, rect.left - 1, rect.top - 1, rect.right + 1, rect.bottom + 1);
        } else {
            int hwndToolTip = OS.SendMessage(this.handle, 4174, 0, 0);
            OS.SetRect(toolRect, rect.left, rect.top, rect.right, rect.bottom);
            int dwStyle = OS.GetWindowLong(hwndToolTip, -16);
            int dwExStyle = OS.GetWindowLong(hwndToolTip, -20);
            OS.AdjustWindowRectEx(toolRect, dwStyle, false, dwExStyle);
        }
        return toolRect;
    }

    String toolTipText(NMTTDISPINFO hdr) {
        int hwndToolTip = OS.SendMessage(this.handle, 4174, 0, 0);
        if (hwndToolTip == hdr.hwndFrom && this.toolTipText != null) {
            return "";
        }
        if (this.headerToolTipHandle == hdr.hwndFrom) {
            int i = 0;
            while (i < this.columnCount) {
                TableColumn column = this.columns[i];
                if (column.id == hdr.idFrom) {
                    return column.toolTipText;
                }
                ++i;
            }
        }
        return super.toolTipText(hdr);
    }

    void unsubclass() {
        super.unsubclass();
        if (HeaderProc != 0) {
            int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
            OS.SetWindowLongPtr(hwndHeader, -4, HeaderProc);
        }
    }

    void update(boolean all) {
        int oldHeaderProc = 0;
        int oldTableProc = 0;
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        boolean fixSubclass = this.isOptimizedRedraw();
        if (fixSubclass) {
            oldTableProc = OS.SetWindowLongPtr(this.handle, -4, TableProc);
            oldHeaderProc = OS.SetWindowLongPtr(hwndHeader, -4, HeaderProc);
        }
        super.update(all);
        if (fixSubclass) {
            OS.SetWindowLongPtr(this.handle, -4, oldTableProc);
            OS.SetWindowLongPtr(hwndHeader, -4, oldHeaderProc);
        }
    }

    void updateHeaderToolTips() {
        if (this.headerToolTipHandle == 0) {
            return;
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        RECT rect = new RECT();
        TOOLINFO lpti = new TOOLINFO();
        lpti.cbSize = TOOLINFO.sizeof;
        lpti.uFlags = 16;
        lpti.hwnd = hwndHeader;
        lpti.lpszText = -1;
        int i = 0;
        while (i < this.columnCount) {
            TableColumn column = this.columns[i];
            if (OS.SendMessage(hwndHeader, 4615, i, rect) != 0) {
                ++this.display.nextToolTipId;
                lpti.uId = column.id = column.id;
                lpti.left = rect.left;
                lpti.top = rect.top;
                lpti.right = rect.right;
                lpti.bottom = rect.bottom;
                OS.SendMessage(this.headerToolTipHandle, OS.TTM_ADDTOOL, 0, lpti);
            }
            ++i;
        }
    }

    void updateImages() {
        if (this.sortColumn != null && !this.sortColumn.isDisposed() && OS.COMCTL32_MAJOR < 6) {
            switch (this.sortDirection) {
                case 128: 
                case 1024: {
                    this.sortColumn.setImage(this.display.getSortImage(this.sortDirection), true, true);
                }
            }
        }
    }

    void updateMoveable() {
        int index = 0;
        while (index < this.columnCount) {
            if (this.columns[index].moveable) break;
            ++index;
        }
        int newBits = index < this.columnCount ? 16 : 0;
        OS.SendMessage(this.handle, 4150, 16, newBits);
    }

    void updateOrientation() {
        int index;
        super.updateOrientation();
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        if (hwndHeader != 0) {
            int bits = OS.GetWindowLong(hwndHeader, -20);
            bits = (this.style & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
            OS.SetWindowLong(hwndHeader, -20, bits);
            OS.InvalidateRect(hwndHeader, null, true);
            RECT rect = new RECT();
            OS.GetWindowRect(this.handle, rect);
            int width = rect.right - rect.left;
            int height = rect.bottom - rect.top;
            OS.SetWindowPos(this.handle, 0, 0, 0, width - 1, height - 1, 6);
            OS.SetWindowPos(this.handle, 0, 0, 0, width, height, 6);
        }
        if ((this.style & 0x20) != 0) {
            this.fixCheckboxImageListColor(false);
        }
        if (this.imageList != null) {
            Point size = this.imageList.getImageSize();
            this.display.releaseImageList(this.imageList);
            this.imageList = this.display.getImageList(this.style & 0x4000000, size.x, size.y);
            int count = OS.SendMessage(this.handle, 4100, 0, 0);
            int i = 0;
            while (i < count) {
                Image image;
                TableItem item = this._getItem(i, false);
                if (item != null && (image = item.image) != null && (index = this.imageList.indexOf(image)) == -1) {
                    this.imageList.add(image);
                }
                ++i;
            }
            int hImageList = this.imageList.getHandle();
            OS.SendMessage(this.handle, 4099, 1, hImageList);
        }
        if (hwndHeader != 0 && this.headerImageList != null) {
            Point size = this.headerImageList.getImageSize();
            this.display.releaseImageList(this.headerImageList);
            this.headerImageList = this.display.getImageList(this.style & 0x4000000, size.x, size.y);
            if (this.columns != null) {
                int i = 0;
                while (i < this.columns.length) {
                    Image image;
                    TableColumn column = this.columns[i];
                    if (column != null && (image = column.image) != null) {
                        if (OS.COMCTL32_MAJOR < 6) {
                            HDITEM hdItem = new HDITEM();
                            hdItem.mask = 4;
                            OS.SendMessage(hwndHeader, OS.HDM_GETITEM, i, hdItem);
                            if ((hdItem.fmt & 0x800) != 0) {
                                index = this.headerImageList.indexOf(image);
                                if (index == -1) {
                                    this.headerImageList.add(image);
                                }
                                hdItem.mask = 32;
                                hdItem.iImage = index;
                                OS.SendMessage(hwndHeader, OS.HDM_SETITEM, i, hdItem);
                            }
                        } else {
                            LVCOLUMN lvColumn = new LVCOLUMN();
                            lvColumn.mask = 1;
                            OS.SendMessage(hwndHeader, OS.LVM_GETCOLUMN, i, lvColumn);
                            if ((lvColumn.fmt & 0x800) != 0) {
                                index = this.headerImageList.indexOf(image);
                                if (index == -1) {
                                    this.headerImageList.add(image);
                                }
                                lvColumn.iImage = index;
                                lvColumn.mask = 16;
                                OS.SendMessage(hwndHeader, OS.LVM_SETCOLUMN, i, lvColumn);
                            }
                        }
                    }
                    ++i;
                }
            }
            int hHeaderImageList = this.headerImageList.getHandle();
            OS.SendMessage(hwndHeader, 4616, 0, hHeaderImageList);
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x40;
        if ((this.style & 0x8000) == 0) {
            bits |= 8;
        }
        if ((this.style & 4) != 0) {
            bits |= 4;
        }
        bits |= 0x4001;
        if ((this.style & 0x10000000) != 0) {
            bits |= 0x1000;
        }
        return bits;
    }

    TCHAR windowClass() {
        return TableClass;
    }

    int windowProc() {
        return TableProc;
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (hwnd != this.handle) {
            switch (msg) {
                case 123: {
                    LRESULT result = this.wmContextMenu(hwnd, wParam, lParam);
                    if (result == null) break;
                    return result.value;
                }
                case 533: {
                    int hwndHeader;
                    if (OS.COMCTL32_MAJOR >= 6 || lParam == 0 || lParam == (hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0))) break;
                    OS.InvalidateRect(hwndHeader, null, true);
                    break;
                }
                case 675: {
                    if (OS.COMCTL32_MAJOR >= 6) {
                        this.updateHeaderToolTips();
                    }
                    this.updateHeaderToolTips();
                    break;
                }
                case 78: {
                    NMHDR hdr = new NMHDR();
                    OS.MoveMemory(hdr, lParam, NMHDR.sizeof);
                    switch (hdr.code) {
                        case -530: 
                        case -522: 
                        case -521: 
                        case -520: {
                            return OS.SendMessage(this.handle, msg, wParam, lParam);
                        }
                    }
                    break;
                }
                case 32: {
                    short hitTest;
                    if (wParam != hwnd || (hitTest = (short)OS.LOWORD(lParam)) != 1) break;
                    HDHITTESTINFO pinfo = new HDHITTESTINFO();
                    int pos = OS.GetMessagePos();
                    POINT pt = new POINT();
                    OS.POINTSTOPOINT(pt, pos);
                    OS.ScreenToClient(hwnd, pt);
                    pinfo.x = pt.x;
                    pinfo.y = pt.y;
                    int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                    int index = OS.SendMessage(hwndHeader, 4614, 0, pinfo);
                    if (index < 0 || index >= this.columnCount || this.columns[index].resizable || (pinfo.flags & 0xC) == 0) break;
                    OS.SetCursor(OS.LoadCursor(0, 32512));
                    return 1;
                }
            }
            return this.callWindowProc(hwnd, msg, wParam, lParam);
        }
        if (msg == Display.DI_GETDRAGIMAGE && (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) || (this.style & 0x10000000) != 0 || this.hooks(40) || this.hooks(42))) {
            int topIndex = OS.SendMessage(this.handle, 4135, 0, 0);
            int selection = OS.SendMessage(this.handle, 4108, topIndex - 1, 2);
            if (selection == -1) {
                return 0;
            }
            POINT mousePos = new POINT();
            OS.POINTSTOPOINT(mousePos, OS.GetMessagePos());
            OS.MapWindowPoints(0, this.handle, mousePos, 1);
            RECT clientRect = new RECT();
            OS.GetClientRect(this.handle, clientRect);
            TableItem item = this._getItem(selection);
            RECT rect = item.getBounds(selection, 0, true, true, true);
            if ((this.style & 0x10000) != 0) {
                int width = 301;
                rect.left = Math.max(clientRect.left, mousePos.x - width / 2);
                if (clientRect.right > rect.left + width) {
                    rect.right = rect.left + width;
                } else {
                    rect.right = clientRect.right;
                    rect.left = Math.max(clientRect.left, rect.right - width);
                }
            }
            int hRgn = OS.CreateRectRgn(rect.left, rect.top, rect.right, rect.bottom);
            while ((selection = OS.SendMessage(this.handle, 4108, selection, 2)) != -1) {
                if (rect.bottom - rect.top > 301 || rect.bottom > clientRect.bottom) break;
                RECT itemRect = item.getBounds(selection, 0, true, true, true);
                int rectRgn = OS.CreateRectRgn(rect.left, itemRect.top, rect.right, itemRect.bottom);
                OS.CombineRgn(hRgn, hRgn, rectRgn, 2);
                OS.DeleteObject(rectRgn);
                rect.bottom = itemRect.bottom;
            }
            OS.GetRgnBox(hRgn, rect);
            int hdc = OS.GetDC(this.handle);
            int memHdc = OS.CreateCompatibleDC(hdc);
            BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
            bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
            bmiHeader.biWidth = rect.right - rect.left;
            bmiHeader.biHeight = -(rect.bottom - rect.top);
            bmiHeader.biPlanes = 1;
            bmiHeader.biBitCount = (short)32;
            bmiHeader.biCompression = 0;
            byte[] bmi = new byte[BITMAPINFOHEADER.sizeof];
            OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
            int[] pBits = new int[1];
            int memDib = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
            if (memDib == 0) {
                SWT.error(2);
            }
            int oldMemBitmap = OS.SelectObject(memHdc, memDib);
            int colorKey = 253;
            POINT pt = new POINT();
            OS.SetWindowOrgEx(memHdc, rect.left, rect.top, pt);
            OS.FillRect(memHdc, rect, this.findBrush(colorKey, 0));
            OS.OffsetRgn(hRgn, -rect.left, -rect.top);
            OS.SelectClipRgn(memHdc, hRgn);
            OS.PrintWindow(this.handle, memHdc, 0);
            OS.SetWindowOrgEx(memHdc, pt.x, pt.y, null);
            OS.SelectObject(memHdc, oldMemBitmap);
            OS.DeleteDC(memHdc);
            OS.ReleaseDC(0, hdc);
            OS.DeleteObject(hRgn);
            SHDRAGIMAGE shdi = new SHDRAGIMAGE();
            shdi.hbmpDragImage = memDib;
            shdi.crColorKey = colorKey;
            shdi.sizeDragImage.cx = bmiHeader.biWidth;
            shdi.sizeDragImage.cy = -bmiHeader.biHeight;
            shdi.ptOffset.x = mousePos.x - rect.left;
            shdi.ptOffset.y = mousePos.y - rect.top;
            if ((this.style & 0x8000000) != 0) {
                shdi.ptOffset.x = shdi.sizeDragImage.cx - shdi.ptOffset.x;
            }
            OS.MoveMemory(lParam, shdi, SHDRAGIMAGE.sizeof);
            return 1;
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 32: {
                int index;
                if ((this.style & 0x20) != 0 && (index = OS.SendMessage(this.handle, 4108, -1, 1)) != -1) {
                    TableItem item;
                    item.setChecked(!(item = this._getItem(index)).getChecked(), true);
                    if (!OS.IsWinCE) {
                        OS.NotifyWinEvent(32773, this.handle, -4, index + 1);
                    }
                }
                int code = this.callWindowProc(this.handle, 256, wParam, lParam);
                return new LRESULT(code);
            }
            case 13: {
                int index = OS.SendMessage(this.handle, 4108, -1, 1);
                if (index != -1) {
                    Event event = new Event();
                    event.item = this._getItem(index);
                    this.sendSelectionEvent(14, event, false);
                }
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_CONTEXTMENU(int wParam, int lParam) {
        if (!this.display.runDragDrop) {
            return LRESULT.ZERO;
        }
        return super.WM_CONTEXTMENU(wParam, lParam);
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        int bits;
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (this.findImageControl() != null) {
            return LRESULT.ONE;
        }
        if (!OS.IsWinCE && OS.COMCTL32_MAJOR < 6 && (this.style & 0x20000000) != 0 && ((bits = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x10000) == 0) {
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_GETOBJECT(int wParam, int lParam) {
        if ((this.style & 0x20) != 0 && this.accessible == null) {
            this.accessible = this.new_Accessible(this);
        }
        return super.WM_GETOBJECT(wParam, lParam);
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 32: {
                return LRESULT.ZERO;
            }
            case 107: {
                if (OS.GetKeyState(17) >= 0) break;
                int index = 0;
                while (index < this.columnCount) {
                    if (!this.columns[index].getResizable()) break;
                    ++index;
                }
                if (index == this.columnCount && !this.hooks(41)) break;
                TableColumn[] newColumns = new TableColumn[this.columnCount];
                System.arraycopy(this.columns, 0, newColumns, 0, this.columnCount);
                int i = 0;
                while (i < newColumns.length) {
                    TableColumn column = newColumns[i];
                    if (!column.isDisposed() && column.getResizable()) {
                        column.pack();
                    }
                    ++i;
                }
                return LRESULT.ZERO;
            }
            case 33: 
            case 34: 
            case 35: 
            case 36: {
                int code;
                int oldHeaderProc = 0;
                int oldTableProc = 0;
                int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                boolean fixSubclass = this.isOptimizedRedraw();
                if (fixSubclass) {
                    oldTableProc = OS.SetWindowLongPtr(this.handle, -4, TableProc);
                    oldHeaderProc = OS.SetWindowLongPtr(hwndHeader, -4, HeaderProc);
                }
                LRESULT lRESULT = result = (code = this.callWindowProc(this.handle, 256, wParam, lParam)) == 0 ? LRESULT.ZERO : new LRESULT(code);
                if (fixSubclass) {
                    OS.SetWindowLongPtr(this.handle, -4, oldTableProc);
                    OS.SetWindowLongPtr(hwndHeader, -4, oldHeaderProc);
                }
            }
            case 38: 
            case 40: {
                OS.SendMessage(this.handle, 295, 3, 0);
            }
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_KILLFOCUS(wParam, lParam);
        if (this.imageList != null || (this.style & 0x20) != 0) {
            OS.InvalidateRect(this.handle, null, false);
        }
        return result;
    }

    LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam) {
        LVHITTESTINFO pinfo = new LVHITTESTINFO();
        pinfo.x = OS.GET_X_LPARAM(lParam);
        pinfo.y = OS.GET_Y_LPARAM(lParam);
        int index = OS.SendMessage(this.handle, 4114, 0, pinfo);
        Display display = this.display;
        display.captureChanged = false;
        this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam);
        if (!this.sendMouseEvent(8, 1, this.handle, 515, wParam, lParam)) {
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return LRESULT.ZERO;
        }
        if (pinfo.iItem != -1) {
            this.callWindowProc(this.handle, 515, wParam, lParam);
        }
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
            OS.SetCapture(this.handle);
        }
        if ((this.style & 0x20) != 0 && index != -1 && pinfo.flags == 8) {
            TableItem item;
            item.setChecked(!(item = this._getItem(index)).getChecked(), true);
            if (!OS.IsWinCE) {
                OS.NotifyWinEvent(32773, this.handle, -4, index + 1);
            }
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result = this.sendMouseDownEvent(3, 1, 513, wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if ((this.style & 0x20) != 0) {
            LVHITTESTINFO pinfo = new LVHITTESTINFO();
            pinfo.x = OS.GET_X_LPARAM(lParam);
            pinfo.y = OS.GET_Y_LPARAM(lParam);
            int index = OS.SendMessage(this.handle, 4114, 0, pinfo);
            if (index != -1 && pinfo.flags == 8) {
                TableItem item;
                item.setChecked(!(item = this._getItem(index)).getChecked(), true);
                if (!OS.IsWinCE) {
                    OS.NotifyWinEvent(32773, this.handle, -4, index + 1);
                }
            }
        }
        return result;
    }

    LRESULT WM_MOUSEHOVER(int wParam, int lParam) {
        int mask;
        LRESULT result = super.WM_MOUSEHOVER(wParam, lParam);
        int bits = OS.SendMessage(this.handle, 4151, 0, 0);
        if ((bits & (mask = 200)) != 0) {
            return result;
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        int bits;
        this._checkShrink();
        if (this.fixScrollWidth) {
            this.setScrollWidth(null, true);
        }
        if (!(OS.IsWinCE || OS.COMCTL32_MAJOR >= 6 || (this.style & 0x20000000) == 0 && this.findImageControl() == null || ((bits = OS.SendMessage(this.handle, 4151, 0, 0)) & 0x10000) != 0)) {
            boolean hooksPaint;
            GC gc = null;
            int paintDC = 0;
            PAINTSTRUCT ps = new PAINTSTRUCT();
            boolean bl = hooksPaint = this.hooks(9) || this.filters(9);
            if (hooksPaint) {
                GCData data = new GCData();
                data.ps = ps;
                data.hwnd = this.handle;
                gc = GC.win32_new(this, data);
                paintDC = gc.handle;
            } else {
                paintDC = OS.BeginPaint(this.handle, ps);
            }
            int width = ps.right - ps.left;
            int height = ps.bottom - ps.top;
            if (width != 0 && height != 0) {
                int hDC = OS.CreateCompatibleDC(paintDC);
                POINT lpPoint1 = new POINT();
                POINT lpPoint2 = new POINT();
                OS.SetWindowOrgEx(hDC, ps.left, ps.top, lpPoint1);
                OS.SetBrushOrgEx(hDC, ps.left, ps.top, lpPoint2);
                int hBitmap = OS.CreateCompatibleBitmap(paintDC, width, height);
                int hOldBitmap = OS.SelectObject(hDC, hBitmap);
                if (OS.SendMessage(this.handle, 4096, 0, 0) != -1) {
                    RECT rect = new RECT();
                    OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                    this.drawBackground(hDC, rect);
                }
                this.callWindowProc(this.handle, 15, hDC, 0);
                OS.SetWindowOrgEx(hDC, lpPoint1.x, lpPoint1.y, null);
                OS.SetBrushOrgEx(hDC, lpPoint2.x, lpPoint2.y, null);
                OS.BitBlt(paintDC, ps.left, ps.top, width, height, hDC, 0, 0, 0xCC0020);
                OS.SelectObject(hDC, hOldBitmap);
                OS.DeleteObject(hBitmap);
                OS.DeleteObject(hDC);
                if (hooksPaint) {
                    Event event = new Event();
                    event.gc = gc;
                    event.x = ps.left;
                    event.y = ps.top;
                    event.width = ps.right - ps.left;
                    event.height = ps.bottom - ps.top;
                    this.sendEvent(9, event);
                    event.gc = null;
                }
            }
            if (hooksPaint) {
                gc.dispose();
            } else {
                OS.EndPaint(this.handle, ps);
            }
            return LRESULT.ZERO;
        }
        return super.WM_PAINT(wParam, lParam);
    }

    LRESULT WM_RBUTTONDBLCLK(int wParam, int lParam) {
        LVHITTESTINFO pinfo = new LVHITTESTINFO();
        pinfo.x = OS.GET_X_LPARAM(lParam);
        pinfo.y = OS.GET_Y_LPARAM(lParam);
        OS.SendMessage(this.handle, 4114, 0, pinfo);
        Display display = this.display;
        display.captureChanged = false;
        this.sendMouseEvent(3, 3, this.handle, 516, wParam, lParam);
        if (this.sendMouseEvent(8, 3, this.handle, 518, wParam, lParam) && pinfo.iItem != -1) {
            this.callWindowProc(this.handle, 518, wParam, lParam);
        }
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
            OS.SetCapture(this.handle);
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_RBUTTONDOWN(int wParam, int lParam) {
        return this.sendMouseDownEvent(3, 3, 516, wParam, lParam);
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        int count;
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if (this.imageList != null || (this.style & 0x20) != 0) {
            OS.InvalidateRect(this.handle, null, false);
        }
        if ((count = OS.SendMessage(this.handle, 4100, 0, 0)) == 0) {
            return result;
        }
        int index = OS.SendMessage(this.handle, 4108, -1, 1);
        if (index == -1) {
            LVITEM lvItem = new LVITEM();
            lvItem.state = 1;
            lvItem.stateMask = 1;
            this.ignoreSelect = true;
            OS.SendMessage(this.handle, 4139, 0, lvItem);
            this.ignoreSelect = false;
        }
        return result;
    }

    LRESULT WM_SETFONT(int wParam, int lParam) {
        LRESULT result = super.WM_SETFONT(wParam, lParam);
        if (result != null) {
            return result;
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        OS.SendMessage(hwndHeader, 48, 0, lParam);
        if (this.headerToolTipHandle != 0) {
            OS.SendMessage(this.headerToolTipHandle, 48, wParam, lParam);
        }
        return result;
    }

    LRESULT WM_SETREDRAW(int wParam, int lParam) {
        LRESULT result = super.WM_SETREDRAW(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (wParam == 1 && OS.SendMessage(this.handle, 4096, 0, 0) != -1 && (this.hooks(41) || this.hooks(40) || this.hooks(42))) {
            OS.SendMessage(this.handle, 4097, 0, -1);
        }
        OS.DefWindowProc(this.handle, 11, wParam, lParam);
        int code = this.callWindowProc(this.handle, 11, wParam, lParam);
        if (wParam == 0 && OS.SendMessage(this.handle, 4096, 0, 0) == -1) {
            OS.SendMessage(this.handle, 4097, 0, 0xFFFFFF);
        }
        return code == 0 ? LRESULT.ZERO : new LRESULT(code);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        if (this.ignoreResize) {
            return null;
        }
        if (this.hooks(40) || this.hooks(42)) {
            OS.InvalidateRect(this.handle, null, true);
        }
        if (this.resizeCount != 0) {
            this.wasResized = true;
            return null;
        }
        return super.WM_SIZE(wParam, lParam);
    }

    LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOLORCHANGE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.findBackgroundControl() == null) {
            this.setBackgroundPixel(this.defaultBackground());
        } else {
            int oldPixel = OS.SendMessage(this.handle, 4096, 0, 0);
            if (oldPixel != -1 && this.findImageControl() == null && (this.style & 0x20) != 0) {
                this.fixCheckboxImageListColor(true);
            }
        }
        return result;
    }

    LRESULT WM_HSCROLL(int wParam, int lParam) {
        RECT rect;
        int rowCount;
        int oldPos = 0;
        int bits = OS.SendMessage(this.handle, 4151, 0, 0);
        if ((bits & 1) != 0) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 4;
            OS.GetScrollInfo(this.handle, 0, info);
            oldPos = info.nPos;
        }
        int oldHeaderProc = 0;
        int oldTableProc = 0;
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        boolean fixSubclass = this.isOptimizedRedraw();
        if (fixSubclass) {
            oldTableProc = OS.SetWindowLongPtr(this.handle, -4, TableProc);
            oldHeaderProc = OS.SetWindowLongPtr(hwndHeader, -4, HeaderProc);
        }
        boolean fixScroll = false;
        if (OS.LOWORD(wParam) != 8 && OS.COMCTL32_MAJOR >= 6 && this.columnCount > 32 && (rowCount = OS.SendMessage(this.handle, 4136, 0, 0)) > 16) {
            boolean bl = fixScroll = this.getDrawing() && OS.IsWindowVisible(this.handle);
        }
        if (fixScroll) {
            OS.DefWindowProc(this.handle, 11, 0, 0);
        }
        LRESULT result = super.WM_HSCROLL(wParam, lParam);
        if (fixScroll) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            int flags = 1157;
            OS.RedrawWindow(this.handle, null, 0, flags);
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                RECT headerRect = new RECT();
                rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                boolean[] visible = new boolean[this.columnCount];
                int i = 0;
                while (i < this.columnCount) {
                    visible[i] = true;
                    if (OS.SendMessage(hwndHeader, 4615, i, headerRect) != 0) {
                        OS.MapWindowPoints(hwndHeader, this.handle, headerRect, 2);
                        visible[i] = OS.IntersectRect(headerRect, rect, headerRect);
                    }
                    ++i;
                }
                try {
                    this.display.hwndParent = OS.GetParent(this.handle);
                    this.display.columnVisible = visible;
                    OS.UpdateWindow(this.handle);
                }
                finally {
                    this.display.columnVisible = null;
                }
            }
        }
        if (fixSubclass) {
            OS.SetWindowLongPtr(this.handle, -4, oldTableProc);
            OS.SetWindowLongPtr(hwndHeader, -4, oldHeaderProc);
        }
        if ((bits & 1) != 0) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 4;
            OS.GetScrollInfo(this.handle, 0, info);
            int newPos = info.nPos;
            if (newPos < oldPos) {
                rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                rect.right = oldPos - newPos + 1;
                OS.InvalidateRect(this.handle, rect, true);
            }
        }
        return result;
    }

    LRESULT WM_VSCROLL(int wParam, int lParam) {
        int bits;
        RECT rect;
        int rowCount;
        int oldHeaderProc = 0;
        int oldTableProc = 0;
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        boolean fixSubclass = this.isOptimizedRedraw();
        if (fixSubclass) {
            oldTableProc = OS.SetWindowLongPtr(this.handle, -4, TableProc);
            oldHeaderProc = OS.SetWindowLongPtr(hwndHeader, -4, HeaderProc);
        }
        boolean fixScroll = false;
        if (OS.LOWORD(wParam) != 8 && OS.COMCTL32_MAJOR >= 6 && this.columnCount > 32 && (rowCount = OS.SendMessage(this.handle, 4136, 0, 0)) > 16) {
            boolean bl = fixScroll = this.getDrawing() && OS.IsWindowVisible(this.handle);
        }
        if (fixScroll) {
            OS.DefWindowProc(this.handle, 11, 0, 0);
        }
        LRESULT result = super.WM_VSCROLL(wParam, lParam);
        if (fixScroll) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            int flags = 1157;
            OS.RedrawWindow(this.handle, null, 0, flags);
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                RECT headerRect = new RECT();
                rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                boolean[] visible = new boolean[this.columnCount];
                int i = 0;
                while (i < this.columnCount) {
                    visible[i] = true;
                    if (OS.SendMessage(hwndHeader, 4615, i, headerRect) != 0) {
                        OS.MapWindowPoints(hwndHeader, this.handle, headerRect, 2);
                        visible[i] = OS.IntersectRect(headerRect, rect, headerRect);
                    }
                    ++i;
                }
                try {
                    this.display.hwndParent = OS.GetParent(this.handle);
                    this.display.columnVisible = visible;
                    OS.UpdateWindow(this.handle);
                }
                finally {
                    this.display.columnVisible = null;
                }
            }
        }
        if (fixSubclass) {
            OS.SetWindowLongPtr(this.handle, -4, oldTableProc);
            OS.SetWindowLongPtr(hwndHeader, -4, oldHeaderProc);
        }
        if (((bits = OS.SendMessage(this.handle, 4151, 0, 0)) & 1) != 0) {
            int code = OS.LOWORD(wParam);
            switch (code) {
                case 4: 
                case 5: 
                case 6: 
                case 7: 
                case 8: {
                    break;
                }
                case 0: 
                case 1: {
                    rect = new RECT();
                    OS.GetWindowRect(hwndHeader, rect);
                    int headerHeight = rect.bottom - rect.top;
                    RECT clientRect = new RECT();
                    OS.GetClientRect(this.handle, clientRect);
                    clientRect.top += headerHeight;
                    int empty = OS.SendMessage(this.handle, 4160, 0, 0);
                    int oneItem = OS.SendMessage(this.handle, 4160, 1, 0);
                    int itemHeight = OS.HIWORD(oneItem) - OS.HIWORD(empty);
                    if (code == 1) {
                        clientRect.top = clientRect.bottom - itemHeight - 1;
                    } else {
                        clientRect.bottom = clientRect.top + itemHeight + 1;
                    }
                    OS.InvalidateRect(this.handle, clientRect, true);
                    break;
                }
                case 2: 
                case 3: {
                    OS.InvalidateRect(this.handle, null, true);
                }
            }
        }
        return result;
    }

    LRESULT wmMeasureChild(int wParam, int lParam) {
        MEASUREITEMSTRUCT struct = new MEASUREITEMSTRUCT();
        OS.MoveMemory(struct, lParam, MEASUREITEMSTRUCT.sizeof);
        if (this.itemHeight == -1) {
            int empty = OS.SendMessage(this.handle, 4160, 0, 0);
            int oneItem = OS.SendMessage(this.handle, 4160, 1, 0);
            struct.itemHeight = OS.HIWORD(oneItem) - OS.HIWORD(empty);
        } else {
            struct.itemHeight = this.itemHeight;
        }
        OS.MoveMemory(lParam, struct, MEASUREITEMSTRUCT.sizeof);
        return null;
    }

    LRESULT wmNotify(NMHDR hdr, int wParam, int lParam) {
        LRESULT result;
        LRESULT result2;
        int hwndToolTip = OS.SendMessage(this.handle, 4174, 0, 0);
        if (hdr.hwndFrom == hwndToolTip && (result2 = this.wmNotifyToolTip(hdr, wParam, lParam)) != null) {
            return result2;
        }
        int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
        if (hdr.hwndFrom == hwndHeader && (result = this.wmNotifyHeader(hdr, wParam, lParam)) != null) {
            return result;
        }
        return super.wmNotify(hdr, wParam, lParam);
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -179: 
            case -152: {
                if ((this.style & 0x10000000) == 0) break;
                return new LRESULT(-1);
            }
            case -115: {
                boolean newSelected;
                if ((this.style & 0x10000000) == 0 || this.ignoreSelect) break;
                NMLVODSTATECHANGE lpStateChange = new NMLVODSTATECHANGE();
                OS.MoveMemory(lpStateChange, lParam, NMLVODSTATECHANGE.sizeof);
                boolean oldSelected = (lpStateChange.uOldState & 2) != 0;
                boolean bl = newSelected = (lpStateChange.uNewState & 2) != 0;
                if (oldSelected == newSelected) break;
                this.wasSelected = true;
                break;
            }
            case -177: 
            case -150: {
                TableItem item;
                NMLVDISPINFO plvfi = new NMLVDISPINFO();
                OS.MoveMemory(plvfi, lParam, NMLVDISPINFO.sizeof);
                boolean[] visible = this.display.columnVisible;
                if (visible != null && !visible[plvfi.iSubItem] || (item = this._getItem(plvfi.iItem)) == null) break;
                if (this.ignoreShrink) {
                    if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                        RECT rect = new RECT();
                        rect.left = 0;
                        this.ignoreCustomDraw = true;
                        int code = OS.SendMessage(this.handle, 4110, plvfi.iItem, rect);
                        this.ignoreCustomDraw = false;
                        if (code == 0) break;
                        OS.InvalidateRect(this.handle, rect, true);
                        break;
                    }
                    if ((this.style & 0x10000000) != 0 && !item.cached) {
                        OS.SendMessage(this.handle, 4117, plvfi.iItem, plvfi.iItem);
                        break;
                    }
                }
                if (!item.cached) {
                    if ((this.style & 0x10000000) != 0) {
                        TableItem newItem;
                        this.lastIndexOf = plvfi.iItem;
                        if (!this.checkData(item, this.lastIndexOf, false)) break;
                        TableItem tableItem = newItem = this.fixScrollWidth ? null : item;
                        if (this.setScrollWidth(newItem, true)) {
                            OS.InvalidateRect(this.handle, null, true);
                        }
                    }
                    item.cached = true;
                }
                if ((plvfi.mask & 1) != 0) {
                    String string = null;
                    if (plvfi.iSubItem == 0) {
                        string = item.text;
                    } else {
                        String[] strings = item.strings;
                        if (strings != null) {
                            string = strings[plvfi.iSubItem];
                        }
                    }
                    if (string != null) {
                        char[] buffer;
                        int length = Math.min(string.length(), plvfi.cchTextMax - 1);
                        if (!this.tipRequested && plvfi.iSubItem == 0 && length == 0) {
                            string = " ";
                            length = 1;
                        }
                        if ((buffer = this.display.tableBuffer) == null || plvfi.cchTextMax > buffer.length) {
                            buffer = this.display.tableBuffer = new char[plvfi.cchTextMax];
                        }
                        string.getChars(0, length, buffer, 0);
                        buffer[length++] = '\u0000';
                        if (OS.IsUnicode) {
                            OS.MoveMemory(plvfi.pszText, buffer, length * 2);
                        } else {
                            OS.WideCharToMultiByte(this.getCodePage(), 0, buffer, length, plvfi.pszText, plvfi.cchTextMax, null, null);
                            OS.MoveMemory(plvfi.pszText + plvfi.cchTextMax - 1, new byte[1], 1);
                        }
                    }
                }
                boolean move = false;
                if ((plvfi.mask & 2) != 0) {
                    Image image = null;
                    if (plvfi.iSubItem == 0) {
                        image = item.image;
                    } else {
                        Image[] images = item.images;
                        if (images != null) {
                            image = images[plvfi.iSubItem];
                        }
                    }
                    if (image != null) {
                        plvfi.iImage = this.imageIndex(image, plvfi.iSubItem);
                        move = true;
                    }
                }
                if ((plvfi.mask & 8) != 0 && plvfi.iSubItem == 0) {
                    int state = 1;
                    if (item.checked) {
                        ++state;
                    }
                    if (item.grayed) {
                        state += 2;
                    }
                    if (!OS.IsWindowEnabled(this.handle)) {
                        state += 4;
                    }
                    plvfi.state = state << 12;
                    plvfi.stateMask = 61440;
                    move = true;
                }
                if ((plvfi.mask & 0x10) != 0 && plvfi.iSubItem == 0) {
                    plvfi.iIndent = item.imageIndent;
                    move = true;
                }
                if (!move) break;
                OS.MoveMemory(lParam, plvfi, NMLVDISPINFO.sizeof);
                break;
            }
            case -12: {
                int hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0);
                if (hdr.hwndFrom == hwndHeader || !this.customDraw && this.findImageControl() == null && OS.IsWindowEnabled(this.handle) && (!this.explorerTheme || this.columnCount != 0)) break;
                NMLVCUSTOMDRAW nmcd = new NMLVCUSTOMDRAW();
                OS.MoveMemory(nmcd, lParam, NMLVCUSTOMDRAW.sizeof);
                switch (nmcd.dwDrawStage) {
                    case 1: {
                        return this.CDDS_PREPAINT(nmcd, wParam, lParam);
                    }
                    case 65537: {
                        return this.CDDS_ITEMPREPAINT(nmcd, wParam, lParam);
                    }
                    case 65538: {
                        return this.CDDS_ITEMPOSTPAINT(nmcd, wParam, lParam);
                    }
                    case 196609: {
                        return this.CDDS_SUBITEMPREPAINT(nmcd, wParam, lParam);
                    }
                    case 196610: {
                        return this.CDDS_SUBITEMPOSTPAINT(nmcd, wParam, lParam);
                    }
                    case 2: {
                        return this.CDDS_POSTPAINT(nmcd, wParam, lParam);
                    }
                }
                break;
            }
            case -156: {
                if ((this.style & 4) != 0) {
                    return LRESULT.ONE;
                }
                if (this.hooks(3) || this.hooks(4)) {
                    return LRESULT.ONE;
                }
                if ((this.style & 0x4000000) == 0 || this.findImageControl() == null) break;
                return LRESULT.ONE;
            }
            case -111: 
            case -109: {
                if (OS.GetKeyState(1) >= 0) break;
                this.dragStarted = true;
                if (hdr.code != -109) break;
                int pos = OS.GetMessagePos();
                POINT pt = new POINT();
                OS.POINTSTOPOINT(pt, pos);
                OS.ScreenToClient(this.handle, pt);
                this.sendDragEvent(1, pt.x, pt.y);
                break;
            }
            case -108: {
                NMLISTVIEW pnmlv = new NMLISTVIEW();
                OS.MoveMemory(pnmlv, lParam, NMLISTVIEW.sizeof);
                TableColumn column = this.columns[pnmlv.iSubItem];
                if (column == null) break;
                column.sendSelectionEvent(13);
                break;
            }
            case -114: {
                if (this.ignoreActivate) break;
                NMLISTVIEW pnmlv = new NMLISTVIEW();
                OS.MoveMemory(pnmlv, lParam, NMLISTVIEW.sizeof);
                if (pnmlv.iItem == -1) break;
                Event event = new Event();
                event.item = this._getItem(pnmlv.iItem);
                this.sendSelectionEvent(14, event, false);
                break;
            }
            case -101: {
                int hwndHeader;
                int count;
                if (this.fullRowSelect) {
                    this.fullRowSelect = false;
                    OS.DefWindowProc(this.handle, 11, 1, 0);
                    OS.SendMessage(this.handle, 4150, 32, 0);
                }
                if (!this.ignoreSelect) {
                    NMLISTVIEW pnmlv = new NMLISTVIEW();
                    OS.MoveMemory(pnmlv, lParam, NMLISTVIEW.sizeof);
                    if ((pnmlv.uChanged & 8) != 0) {
                        if (pnmlv.iItem == -1) {
                            this.wasSelected = true;
                        } else {
                            boolean newSelected;
                            boolean oldSelected = (pnmlv.uOldState & 2) != 0;
                            boolean bl = newSelected = (pnmlv.uNewState & 2) != 0;
                            if (oldSelected != newSelected) {
                                this.wasSelected = true;
                            }
                        }
                    }
                }
                if (!this.hooks(40) && !this.hooks(42) || (count = OS.SendMessage(hwndHeader = OS.SendMessage(this.handle, 4127, 0, 0), 4608, 0, 0)) == 0) break;
                this.forceResize();
                RECT rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                NMLISTVIEW pnmlv = new NMLISTVIEW();
                OS.MoveMemory(pnmlv, lParam, NMLISTVIEW.sizeof);
                if (pnmlv.iItem == -1) break;
                RECT itemRect = new RECT();
                itemRect.left = 0;
                this.ignoreCustomDraw = true;
                OS.SendMessage(this.handle, 4110, pnmlv.iItem, itemRect);
                this.ignoreCustomDraw = false;
                RECT headerRect = new RECT();
                int index = OS.SendMessage(hwndHeader, 4623, count - 1, 0);
                OS.SendMessage(hwndHeader, 4615, index, headerRect);
                OS.MapWindowPoints(hwndHeader, this.handle, headerRect, 2);
                rect.left = headerRect.right;
                rect.top = itemRect.top;
                rect.bottom = itemRect.bottom;
                OS.InvalidateRect(this.handle, rect, true);
                break;
            }
            case -16: {
                boolean hasMenu;
                if (!OS.IsPPC) break;
                boolean bl = hasMenu = this.menu != null && !this.menu.isDisposed();
                if (hasMenu || this.hooks(35)) break;
                return LRESULT.ONE;
            }
            case 1000: {
                boolean hasMenu;
                if (!OS.IsPPC) break;
                boolean bl = hasMenu = this.menu != null && !this.menu.isDisposed();
                if (!hasMenu && !this.hooks(35)) break;
                NMRGINFO nmrg = new NMRGINFO();
                OS.MoveMemory(nmrg, lParam, NMRGINFO.sizeof);
                this.showMenu(nmrg.x, nmrg.y);
                return LRESULT.ONE;
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }

    LRESULT wmNotifyHeader(NMHDR hdr, int wParam, int lParam) {
        block0 : switch (hdr.code) {
            case -326: 
            case -325: 
            case -306: 
            case -305: {
                if (this.columnCount == 0) {
                    return LRESULT.ONE;
                }
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                TableColumn column = this.columns[phdn.iItem];
                if (column != null && !column.getResizable()) {
                    return LRESULT.ONE;
                }
                this.ignoreColumnMove = true;
                switch (hdr.code) {
                    case -325: 
                    case -305: {
                        boolean fixPack = false;
                        if (!OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0)) {
                            boolean bl = fixPack = phdn.iItem == 0 && !this.firstColumnImage;
                        }
                        if (column == null || !fixPack && !this.hooks(41)) break block0;
                        column.pack();
                        return LRESULT.ONE;
                    }
                }
                break;
            }
            case -16: {
                if (!this.ignoreColumnMove) {
                    int i = 0;
                    while (i < this.columnCount) {
                        TableColumn column = this.columns[i];
                        column.updateToolTip(i);
                        ++i;
                    }
                }
                this.ignoreColumnMove = false;
                break;
            }
            case -310: {
                TableColumn column;
                if (this.ignoreColumnMove) {
                    return LRESULT.ONE;
                }
                int bits = OS.SendMessage(this.handle, 4151, 0, 0);
                if ((bits & 0x10) == 0) break;
                if (this.columnCount == 0) {
                    return LRESULT.ONE;
                }
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.iItem == -1 || (column = this.columns[phdn.iItem]) == null || column.getMoveable()) break;
                this.ignoreColumnMove = true;
                return LRESULT.ONE;
            }
            case -311: {
                int bits = OS.SendMessage(this.handle, 4151, 0, 0);
                if ((bits & 0x10) == 0) break;
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.iItem == -1 || phdn.pitem == 0) break;
                HDITEM pitem = new HDITEM();
                OS.MoveMemory(pitem, phdn.pitem, HDITEM.sizeof);
                if ((pitem.mask & 0x80) == 0 || pitem.iOrder == -1 || this.columnCount == 0) break;
                int[] order = new int[this.columnCount];
                OS.SendMessage(this.handle, 4155, this.columnCount, order);
                int index = 0;
                while (index < order.length) {
                    if (order[index] == phdn.iItem) break;
                    ++index;
                }
                if (index == order.length) {
                    index = 0;
                }
                if (index == pitem.iOrder) break;
                int start = Math.min(index, pitem.iOrder);
                int end = Math.max(index, pitem.iOrder);
                this.ignoreColumnMove = false;
                int i = start;
                while (i <= end) {
                    TableColumn column = this.columns[order[i]];
                    if (!column.isDisposed()) {
                        column.postEvent(10);
                    }
                    ++i;
                }
                break;
            }
            case -321: 
            case -301: {
                TableColumn column;
                int bits;
                int width = OS.SendMessage(this.handle, 4125, 0, 0);
                if (this.lastWidth == 0 && width > 0 && ((bits = OS.SendMessage(this.handle, 4151, 0, 0)) & 1) != 0) {
                    RECT rect = new RECT();
                    OS.GetClientRect(this.handle, rect);
                    rect.right = rect.left + width;
                    OS.InvalidateRect(this.handle, rect, true);
                }
                this.lastWidth = width;
                if (this.ignoreColumnResize) break;
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.pitem == 0) break;
                HDITEM pitem = new HDITEM();
                OS.MoveMemory(pitem, phdn.pitem, HDITEM.sizeof);
                if ((pitem.mask & 1) == 0 || (column = this.columns[phdn.iItem]) == null) break;
                column.updateToolTip(phdn.iItem);
                column.sendEvent(11);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
                TableColumn[] newColumns = new TableColumn[this.columnCount];
                System.arraycopy(this.columns, 0, newColumns, 0, this.columnCount);
                int[] order = new int[this.columnCount];
                OS.SendMessage(this.handle, 4155, this.columnCount, order);
                boolean moved = false;
                int i = 0;
                while (i < this.columnCount) {
                    TableColumn nextColumn = newColumns[order[i]];
                    if (moved && !nextColumn.isDisposed()) {
                        nextColumn.updateToolTip(order[i]);
                        nextColumn.sendEvent(10);
                    }
                    if (nextColumn == column) {
                        moved = true;
                    }
                    ++i;
                }
                break;
            }
            case -323: 
            case -303: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                TableColumn column = this.columns[phdn.iItem];
                if (column == null) break;
                column.sendSelectionEvent(14);
            }
        }
        return null;
    }

    LRESULT wmNotifyToolTip(NMHDR hdr, int wParam, int lParam) {
        if (OS.IsWinCE) {
            return null;
        }
        switch (hdr.code) {
            case -12: {
                if (this.toolTipText != null || !this.isCustomToolTip()) break;
                NMTTCUSTOMDRAW nmcd = new NMTTCUSTOMDRAW();
                OS.MoveMemory(nmcd, lParam, NMTTCUSTOMDRAW.sizeof);
                return this.wmNotifyToolTip(nmcd, lParam);
            }
            case -530: 
            case -521: 
            case -520: {
                LRESULT result = super.wmNotify(hdr, wParam, lParam);
                if (result != null) {
                    return result;
                }
                if (hdr.code != -521) {
                    this.tipRequested = true;
                }
                int code = this.callWindowProc(this.handle, 78, wParam, lParam);
                if (hdr.code != -521) {
                    this.tipRequested = false;
                }
                if (this.toolTipText != null) break;
                if (this.isCustomToolTip()) {
                    LVHITTESTINFO pinfo = new LVHITTESTINFO();
                    int pos = OS.GetMessagePos();
                    POINT pt = new POINT();
                    OS.POINTSTOPOINT(pt, pos);
                    OS.ScreenToClient(this.handle, pt);
                    pinfo.x = pt.x;
                    pinfo.y = pt.y;
                    if (OS.SendMessage(this.handle, 4153, 0, pinfo) >= 0) {
                        int hFont;
                        TableItem item = this._getItem(pinfo.iItem);
                        int hDC = OS.GetDC(this.handle);
                        int oldFont = 0;
                        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
                        if (newFont != 0) {
                            oldFont = OS.SelectObject(hDC, newFont);
                        }
                        if ((hFont = item.fontHandle(pinfo.iSubItem)) != -1) {
                            hFont = OS.SelectObject(hDC, hFont);
                        }
                        Event event = this.sendMeasureItemEvent(item, pinfo.iItem, pinfo.iSubItem, hDC);
                        if (!this.isDisposed() && !item.isDisposed()) {
                            RECT itemRect = new RECT();
                            OS.SetRect(itemRect, event.x, event.y, event.x + event.width, event.y + event.height);
                            if (hdr.code == -521) {
                                RECT toolRect = this.toolTipRect(itemRect);
                                OS.MapWindowPoints(this.handle, 0, toolRect, 2);
                                int hwndToolTip = OS.SendMessage(this.handle, 4174, 0, 0);
                                int flags = 20;
                                int width = toolRect.right - toolRect.left;
                                int height = toolRect.bottom - toolRect.top;
                                this.SetWindowPos(hwndToolTip, 0, toolRect.left, toolRect.top, width, height, flags);
                            } else {
                                String string;
                                NMTTDISPINFO lpnmtdi = null;
                                if (hdr.code == -520) {
                                    lpnmtdi = new NMTTDISPINFOA();
                                    OS.MoveMemory(lpnmtdi, lParam, NMTTDISPINFOA.sizeof);
                                    if (lpnmtdi.lpszText != 0) {
                                        OS.MoveMemory(lpnmtdi.lpszText, new byte[1], 1);
                                        OS.MoveMemory(lParam, lpnmtdi, NMTTDISPINFOA.sizeof);
                                    }
                                } else {
                                    lpnmtdi = new NMTTDISPINFOW();
                                    OS.MoveMemory((NMTTDISPINFOW)lpnmtdi, lParam, NMTTDISPINFOW.sizeof);
                                    if (lpnmtdi.lpszText != 0) {
                                        OS.MoveMemory(lpnmtdi.lpszText, new char[1], 2);
                                        OS.MoveMemory(lParam, (NMTTDISPINFOW)lpnmtdi, NMTTDISPINFOW.sizeof);
                                    }
                                }
                                RECT cellRect = item.getBounds(pinfo.iItem, pinfo.iSubItem, true, true, true, true, hDC);
                                RECT clientRect = new RECT();
                                OS.GetClientRect(this.handle, clientRect);
                                if ((itemRect.right > cellRect.right || itemRect.right > clientRect.right) && (string = " ") != null) {
                                    Shell shell = this.getShell();
                                    char[] chars = new char[string.length() + 1];
                                    string.getChars(0, string.length(), chars, 0);
                                    if (hdr.code == -520) {
                                        byte[] bytes = new byte[chars.length * 2];
                                        OS.WideCharToMultiByte(this.getCodePage(), 0, chars, chars.length, bytes, bytes.length, null, null);
                                        shell.setToolTipText(lpnmtdi, bytes);
                                        OS.MoveMemory(lParam, lpnmtdi, NMTTDISPINFOA.sizeof);
                                    } else {
                                        shell.setToolTipText(lpnmtdi, chars);
                                        OS.MoveMemory(lParam, (NMTTDISPINFOW)lpnmtdi, NMTTDISPINFOW.sizeof);
                                    }
                                }
                            }
                        }
                        if (hFont != -1) {
                            hFont = OS.SelectObject(hDC, hFont);
                        }
                        if (newFont != 0) {
                            OS.SelectObject(hDC, oldFont);
                        }
                        OS.ReleaseDC(this.handle, hDC);
                    }
                }
                return new LRESULT(code);
            }
        }
        return null;
    }

    LRESULT wmNotifyToolTip(NMTTCUSTOMDRAW nmcd, int lParam) {
        if (OS.IsWinCE) {
            return null;
        }
        switch (nmcd.dwDrawStage) {
            case 1: {
                if (!this.isCustomToolTip()) break;
                return new LRESULT(18);
            }
            case 2: {
                LVHITTESTINFO pinfo = new LVHITTESTINFO();
                int pos = OS.GetMessagePos();
                POINT pt = new POINT();
                OS.POINTSTOPOINT(pt, pos);
                OS.ScreenToClient(this.handle, pt);
                pinfo.x = pt.x;
                pinfo.y = pt.y;
                if (OS.SendMessage(this.handle, 4153, 0, pinfo) < 0) break;
                TableItem item = this._getItem(pinfo.iItem);
                int hDC = OS.GetDC(this.handle);
                int hFont = item.fontHandle(pinfo.iSubItem);
                if (hFont == -1) {
                    hFont = OS.SendMessage(this.handle, 49, 0, 0);
                }
                int oldFont = OS.SelectObject(hDC, hFont);
                boolean drawForeground = true;
                RECT cellRect = item.getBounds(pinfo.iItem, pinfo.iSubItem, true, true, false, false, hDC);
                if (this.hooks(40)) {
                    Event event = this.sendEraseItemEvent(item, nmcd, pinfo.iSubItem, cellRect);
                    if (this.isDisposed() || item.isDisposed()) break;
                    drawForeground = event.doit ? (event.detail & 0x10) != 0 : false;
                }
                if (drawForeground) {
                    Image image;
                    int nSavedDC = OS.SaveDC(nmcd.hdc);
                    int gridWidth = this.getLinesVisible() ? 1 : 0;
                    RECT insetRect = this.toolTipInset(cellRect);
                    OS.SetWindowOrgEx(nmcd.hdc, insetRect.left, insetRect.top, null);
                    GCData data = new GCData();
                    data.device = this.display;
                    data.foreground = OS.GetTextColor(nmcd.hdc);
                    data.background = OS.GetBkColor(nmcd.hdc);
                    data.font = Font.win32_new(this.display, hFont);
                    GC gc = GC.win32_new(nmcd.hdc, data);
                    int x = cellRect.left;
                    if (pinfo.iSubItem != 0) {
                        x -= gridWidth;
                    }
                    if ((image = item.getImage(pinfo.iSubItem)) != null) {
                        Rectangle rect = image.getBounds();
                        RECT imageRect = item.getBounds(pinfo.iItem, pinfo.iSubItem, false, true, false, false, hDC);
                        Point size = this.imageList == null ? new Point(rect.width, rect.height) : this.imageList.getImageSize();
                        int y = imageRect.top;
                        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                            y += Math.max(0, (imageRect.bottom - imageRect.top - size.y) / 2);
                        }
                        gc.drawImage(image, rect.x, rect.y, rect.width, rect.height, x, y, size.x, size.y);
                        x += size.x + 4 + (pinfo.iSubItem == 0 ? -2 : 4);
                    } else {
                        x += 6;
                    }
                    String string = item.getText(pinfo.iSubItem);
                    if (string != null) {
                        TableColumn column;
                        int flags = 2084;
                        TableColumn tableColumn = column = this.columns != null ? this.columns[pinfo.iSubItem] : null;
                        if (column != null) {
                            if ((column.style & 0x1000000) != 0) {
                                flags |= 1;
                            }
                            if ((column.style & 0x20000) != 0) {
                                flags |= 2;
                            }
                        }
                        TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
                        RECT textRect = new RECT();
                        OS.SetRect(textRect, x, cellRect.top, cellRect.right, cellRect.bottom);
                        OS.DrawText(nmcd.hdc, buffer, buffer.length(), textRect, flags);
                    }
                    gc.dispose();
                    OS.RestoreDC(nmcd.hdc, nSavedDC);
                }
                if (this.hooks(42)) {
                    RECT itemRect = item.getBounds(pinfo.iItem, pinfo.iSubItem, true, true, false, false, hDC);
                    this.sendPaintItemEvent(item, nmcd, pinfo.iSubItem, itemRect);
                }
                OS.SelectObject(hDC, oldFont);
                OS.ReleaseDC(this.handle, hDC);
            }
        }
        return null;
    }
}

