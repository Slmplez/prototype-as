/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.HDITEM;
import org.eclipse.swt.internal.win32.LVCOLUMN;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TypedListener;

public class TableColumn
extends Item {
    Table parent;
    boolean resizable = true;
    boolean moveable;
    String toolTipText;
    int id;

    public TableColumn(Table parent, int style) {
        super(parent, TableColumn.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, parent.getColumnCount());
    }

    public TableColumn(Table parent, int style, int index) {
        super(parent, TableColumn.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, index);
    }

    public void addControlListener(ControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(11, typedListener);
        this.addListener(10, typedListener);
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
        return TableColumn.checkBits(style, 16384, 0x1000000, 131072, 0, 0, 0);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public int getAlignment() {
        this.checkWidget();
        if ((this.style & 0x4000) != 0) {
            return 16384;
        }
        if ((this.style & 0x1000000) != 0) {
            return 0x1000000;
        }
        if ((this.style & 0x20000) != 0) {
            return 131072;
        }
        return 16384;
    }

    String getNameText() {
        return this.getText();
    }

    public Table getParent() {
        this.checkWidget();
        return this.parent;
    }

    public boolean getMoveable() {
        this.checkWidget();
        return this.moveable;
    }

    public boolean getResizable() {
        this.checkWidget();
        return this.resizable;
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.toolTipText;
    }

    public int getWidth() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return 0;
        }
        int hwnd = this.parent.handle;
        return OS.SendMessage(hwnd, 4125, index, 0);
    }

    public void pack() {
        int hwndHeader;
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        int hwnd = this.parent.handle;
        int oldWidth = OS.SendMessage(hwnd, 4125, index, 0);
        TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.text, true);
        int headerWidth = OS.SendMessage(hwnd, OS.LVM_GETSTRINGWIDTH, 0, buffer) + 12;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            headerWidth += 3;
        }
        boolean hasHeaderImage = false;
        if (this.image != null || this.parent.sortColumn == this) {
            hasHeaderImage = true;
            Image headerImage = null;
            if (this.parent.sortColumn == this && this.parent.sortDirection != 0) {
                if (OS.COMCTL32_MAJOR < 6) {
                    headerImage = this.display.getSortImage(this.parent.sortDirection);
                } else {
                    headerWidth += 10;
                }
            } else {
                headerImage = this.image;
            }
            if (headerImage != null) {
                Rectangle bounds = headerImage.getBounds();
                headerWidth += bounds.width;
            }
            int margin = 0;
            if (OS.COMCTL32_VERSION >= OS.VERSION(5, 80)) {
                hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
                margin = OS.SendMessage(hwndHeader, 4629, 0, 0);
            } else {
                margin = OS.GetSystemMetrics(45) * 3;
            }
            headerWidth += margin * 4;
        }
        this.parent.ignoreColumnResize = true;
        int columnWidth = 0;
        if (this.parent.hooks(41)) {
            RECT headerRect = new RECT();
            hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
            OS.SendMessage(hwndHeader, 4615, index, headerRect);
            OS.MapWindowPoints(hwndHeader, hwnd, headerRect, 2);
            int hDC = OS.GetDC(hwnd);
            int oldFont = 0;
            int newFont = OS.SendMessage(hwnd, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            int count = OS.SendMessage(hwnd, 4100, 0, 0);
            int i = 0;
            while (i < count) {
                TableItem item = this.parent._getItem(i, false);
                if (item != null) {
                    int hFont = item.fontHandle(index);
                    if (hFont != -1) {
                        hFont = OS.SelectObject(hDC, hFont);
                    }
                    Event event = this.parent.sendMeasureItemEvent(item, i, index, hDC);
                    if (hFont != -1) {
                        hFont = OS.SelectObject(hDC, hFont);
                    }
                    if (this.isDisposed() || this.parent.isDisposed()) break;
                    columnWidth = Math.max(columnWidth, event.x + event.width - headerRect.left);
                }
                ++i;
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(hwnd, hDC);
            OS.SendMessage(hwnd, 4126, index, columnWidth);
        } else {
            OS.SendMessage(hwnd, 4126, index, -1);
            columnWidth = OS.SendMessage(hwnd, 4125, index, 0);
            if (index == 0) {
                int hStateList;
                int[] cy;
                int hImageList;
                if (this.parent.imageList == null) {
                    columnWidth += 2;
                }
                if (!OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0) && !this.parent.firstColumnImage && (hImageList = OS.SendMessage(hwnd, 4098, 1, 0)) != 0) {
                    int[] cx = new int[1];
                    cy = new int[1];
                    OS.ImageList_GetIconSize(hImageList, cx, cy);
                    columnWidth += cx[0];
                }
                if ((this.parent.style & 0x20) != 0 && (hStateList = OS.SendMessage(hwnd, 4098, 2, 0)) != 0) {
                    int[] cx = new int[1];
                    cy = new int[1];
                    OS.ImageList_GetIconSize(hStateList, cx, cy);
                    columnWidth += cx[0];
                }
            }
        }
        if (headerWidth > columnWidth) {
            if (!hasHeaderImage) {
                int flags;
                boolean fixWidth;
                RECT rect = null;
                boolean bl = fixWidth = index == this.parent.getColumnCount() - 1;
                if (fixWidth) {
                    rect = new RECT();
                    OS.GetWindowRect(hwnd, rect);
                    OS.UpdateWindow(hwnd);
                    flags = 30;
                    this.SetWindowPos(hwnd, 0, 0, 0, 0, rect.bottom - rect.top, flags);
                }
                OS.SendMessage(hwnd, 4126, index, -2);
                if (fixWidth) {
                    flags = 22;
                    this.SetWindowPos(hwnd, 0, 0, 0, rect.right - rect.left, rect.bottom - rect.top, flags);
                }
            } else {
                OS.SendMessage(hwnd, 4126, index, headerWidth);
            }
        } else if (index == 0) {
            OS.SendMessage(hwnd, 4126, index, columnWidth);
        }
        this.parent.ignoreColumnResize = false;
        int newWidth = OS.SendMessage(hwnd, 4125, index, 0);
        if (oldWidth != newWidth) {
            this.updateToolTip(index);
            this.sendEvent(11);
            if (this.isDisposed()) {
                return;
            }
            boolean moved = false;
            int[] order = this.parent.getColumnOrder();
            TableColumn[] columns = this.parent.getColumns();
            int i = 0;
            while (i < order.length) {
                TableColumn column = columns[order[i]];
                if (moved && !column.isDisposed()) {
                    column.updateToolTip(order[i]);
                    column.sendEvent(10);
                }
                if (column == this) {
                    moved = true;
                }
                ++i;
            }
        }
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseParent() {
        super.releaseParent();
        if (this.parent.sortColumn == this) {
            this.parent.sortColumn = null;
        }
    }

    public void removeControlListener(ControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(10, listener);
        this.eventTable.unhook(11, listener);
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

    public void setAlignment(int alignment) {
        this.checkWidget();
        if ((alignment & 0x1024000) == 0) {
            return;
        }
        int index = this.parent.indexOf(this);
        if (index == -1 || index == 0) {
            return;
        }
        this.style &= 0xFEFDBFFF;
        this.style |= alignment & 0x1024000;
        int hwnd = this.parent.handle;
        LVCOLUMN lvColumn = new LVCOLUMN();
        lvColumn.mask = 1;
        OS.SendMessage(hwnd, OS.LVM_GETCOLUMN, index, lvColumn);
        lvColumn.fmt &= 0xFFFFFFFC;
        int fmt = 0;
        if ((this.style & 0x4000) == 16384) {
            fmt = 0;
        }
        if ((this.style & 0x1000000) == 0x1000000) {
            fmt = 2;
        }
        if ((this.style & 0x20000) == 131072) {
            fmt = 1;
        }
        lvColumn.fmt |= fmt;
        OS.SendMessage(hwnd, OS.LVM_SETCOLUMN, index, lvColumn);
        if (index != 0) {
            this.parent.forceResize();
            RECT rect = new RECT();
            RECT headerRect = new RECT();
            OS.GetClientRect(hwnd, rect);
            int hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
            OS.SendMessage(hwndHeader, 4615, index, headerRect);
            OS.MapWindowPoints(hwndHeader, hwnd, headerRect, 2);
            rect.left = headerRect.left;
            rect.right = headerRect.right;
            OS.InvalidateRect(hwnd, rect, true);
        }
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        super.setImage(image);
        if (this.parent.sortColumn != this || this.parent.sortDirection != 0) {
            this.setImage(image, false, false);
        }
    }

    void setImage(Image image, boolean sort, boolean right) {
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        int hwnd = this.parent.handle;
        if (OS.COMCTL32_MAJOR < 6) {
            int hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
            HDITEM hdItem = new HDITEM();
            hdItem.mask = 52;
            OS.SendMessage(hwndHeader, OS.HDM_GETITEM, index, hdItem);
            hdItem.fmt &= 0xFFFFEFFF;
            if (image != null) {
                if (sort) {
                    hdItem.mask &= 0xFFFFFFDF;
                    hdItem.fmt &= 0xFFFFF7FF;
                    hdItem.fmt |= 0x2000;
                    hdItem.hbm = image.handle;
                } else {
                    hdItem.mask &= 0xFFFFFFEF;
                    hdItem.fmt &= 0xFFFFDFFF;
                    hdItem.fmt |= 0x800;
                    hdItem.iImage = this.parent.imageIndexHeader(image);
                }
                if (right) {
                    hdItem.fmt |= 0x1000;
                }
            } else {
                hdItem.fmt &= 0xFFFFD7FF;
            }
            OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
        } else {
            LVCOLUMN lvColumn = new LVCOLUMN();
            lvColumn.mask = 17;
            OS.SendMessage(hwnd, OS.LVM_GETCOLUMN, index, lvColumn);
            if (image != null) {
                lvColumn.fmt |= 0x800;
                lvColumn.iImage = this.parent.imageIndexHeader(image);
                if (right) {
                    lvColumn.fmt |= 0x1000;
                }
            } else {
                lvColumn.mask &= 0xFFFFFFEF;
                lvColumn.fmt &= 0xFFFFE7FF;
            }
            OS.SendMessage(hwnd, OS.LVM_SETCOLUMN, index, lvColumn);
        }
    }

    public void setMoveable(boolean moveable) {
        this.checkWidget();
        this.moveable = moveable;
        this.parent.updateMoveable();
    }

    public void setResizable(boolean resizable) {
        this.checkWidget();
        this.resizable = resizable;
    }

    void setSortDirection(int direction) {
        if (OS.COMCTL32_MAJOR >= 6) {
            RECT headerRect;
            int index = this.parent.indexOf(this);
            if (index == -1) {
                return;
            }
            int hwnd = this.parent.handle;
            int hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
            HDITEM hdItem = new HDITEM();
            hdItem.mask = 36;
            OS.SendMessage(hwndHeader, OS.HDM_GETITEM, index, hdItem);
            switch (direction) {
                case 128: {
                    hdItem.fmt &= 0xFFFFF5FF;
                    hdItem.fmt |= 0x400;
                    if (this.image != null) break;
                    hdItem.mask &= 0xFFFFFFDF;
                    break;
                }
                case 1024: {
                    hdItem.fmt &= 0xFFFFF3FF;
                    hdItem.fmt |= 0x200;
                    if (this.image != null) break;
                    hdItem.mask &= 0xFFFFFFDF;
                    break;
                }
                case 0: {
                    hdItem.fmt &= 0xFFFFF9FF;
                    if (this.image != null) {
                        hdItem.fmt |= 0x800;
                        hdItem.iImage = this.parent.imageIndexHeader(this.image);
                        break;
                    }
                    hdItem.fmt &= 0xFFFFF7FF;
                    hdItem.mask &= 0xFFFFFFDF;
                }
            }
            OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
            this.parent.forceResize();
            RECT rect = new RECT();
            OS.GetClientRect(hwnd, rect);
            if (OS.SendMessage(hwnd, 4096, 0, 0) != -1) {
                int oldColumn = OS.SendMessage(hwnd, 4270, 0, 0);
                int newColumn = direction == 0 ? -1 : index;
                OS.SendMessage(hwnd, 4236, newColumn, 0);
                RECT headerRect2 = new RECT();
                if (oldColumn != -1 && OS.SendMessage(hwndHeader, 4615, oldColumn, headerRect2) != 0) {
                    OS.MapWindowPoints(hwndHeader, hwnd, headerRect2, 2);
                    rect.left = headerRect2.left;
                    rect.right = headerRect2.right;
                    OS.InvalidateRect(hwnd, rect, true);
                }
            }
            if (OS.SendMessage(hwndHeader, 4615, index, headerRect = new RECT()) != 0) {
                OS.MapWindowPoints(hwndHeader, hwnd, headerRect, 2);
                rect.left = headerRect.left;
                rect.right = headerRect.right;
                OS.InvalidateRect(hwnd, rect, true);
            }
        } else {
            switch (direction) {
                case 128: 
                case 1024: {
                    this.setImage(this.display.getSortImage(direction), true, true);
                    break;
                }
                case 0: {
                    this.setImage(this.image, false, false);
                }
            }
        }
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if (string.equals(this.text)) {
            return;
        }
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        super.setText(string);
        int hwnd = this.parent.handle;
        LVCOLUMN lvColumn = new LVCOLUMN();
        lvColumn.mask = 1;
        OS.SendMessage(hwnd, OS.LVM_GETCOLUMN, index, lvColumn);
        int hHeap = OS.GetProcessHeap();
        TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.fixMnemonic(string, true), true);
        int byteCount = buffer.length() * TCHAR.sizeof;
        int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(pszText, buffer, byteCount);
        lvColumn.mask |= 4;
        lvColumn.pszText = pszText;
        int result = OS.SendMessage(hwnd, OS.LVM_SETCOLUMN, index, lvColumn);
        if (pszText != 0) {
            OS.HeapFree(hHeap, 0, pszText);
        }
        if (result == 0) {
            this.error(13);
        }
    }

    public void setToolTipText(String string) {
        this.checkWidget();
        this.toolTipText = string;
        int hwndHeaderToolTip = this.parent.headerToolTipHandle;
        if (hwndHeaderToolTip == 0) {
            this.parent.createHeaderToolTips();
            this.parent.updateHeaderToolTips();
        }
    }

    public void setWidth(int width) {
        this.checkWidget();
        if (width < 0) {
            return;
        }
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        int hwnd = this.parent.handle;
        if (width != OS.SendMessage(hwnd, 4125, index, 0)) {
            OS.SendMessage(hwnd, 4126, index, width);
        }
    }

    void updateToolTip(int index) {
        RECT rect;
        int hwnd;
        int hwndHeader;
        int hwndHeaderToolTip = this.parent.headerToolTipHandle;
        if (hwndHeaderToolTip != 0 && OS.SendMessage(hwndHeader = OS.SendMessage(hwnd = this.parent.handle, 4127, 0, 0), 4615, index, rect = new RECT()) != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            lpti.hwnd = hwndHeader;
            lpti.uId = this.id;
            lpti.left = rect.left;
            lpti.top = rect.top;
            lpti.right = rect.right;
            lpti.bottom = rect.bottom;
            OS.SendMessage(hwndHeaderToolTip, OS.TTM_NEWTOOLRECT, 0, lpti);
        }
    }
}

