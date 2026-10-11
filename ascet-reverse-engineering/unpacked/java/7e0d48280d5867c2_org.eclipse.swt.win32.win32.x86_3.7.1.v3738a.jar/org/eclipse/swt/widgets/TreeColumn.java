/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.HDITEM;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.internal.win32.TVITEM;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.TypedListener;

public class TreeColumn
extends Item {
    Tree parent;
    boolean resizable = true;
    boolean moveable;
    String toolTipText;
    int id;

    public TreeColumn(Tree parent, int style) {
        super(parent, TreeColumn.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, parent.getColumnCount());
    }

    public TreeColumn(Tree parent, int style, int index) {
        super(parent, TreeColumn.checkStyle(style));
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
        return TreeColumn.checkBits(style, 16384, 0x1000000, 131072, 0, 0, 0);
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

    public boolean getMoveable() {
        this.checkWidget();
        return this.moveable;
    }

    String getNameText() {
        return this.getText();
    }

    public Tree getParent() {
        this.checkWidget();
        return this.parent;
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
        int hwndHeader = this.parent.hwndHeader;
        if (hwndHeader == 0) {
            return 0;
        }
        HDITEM hdItem = new HDITEM();
        hdItem.mask = 1;
        OS.SendMessage(hwndHeader, OS.HDM_GETITEM, index, hdItem);
        return hdItem.cxy;
    }

    public void pack() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        int columnWidth = 0;
        int hwnd = this.parent.handle;
        int hwndHeader = this.parent.hwndHeader;
        RECT headerRect = new RECT();
        OS.SendMessage(hwndHeader, 4615, index, headerRect);
        int hDC = OS.GetDC(hwnd);
        int oldFont = 0;
        int newFont = OS.SendMessage(hwnd, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 28;
        tvItem.hItem = OS.SendMessage(hwnd, 4362, 0, 0);
        while (tvItem.hItem != 0) {
            TreeItem item;
            OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
            TreeItem treeItem = item = tvItem.lParam != -1 ? this.parent.items[tvItem.lParam] : null;
            if (item != null) {
                int itemRight = 0;
                if (this.parent.hooks(41)) {
                    int detail = (tvItem.state & 2) != 0 ? 2 : 0;
                    Event event = this.parent.sendMeasureItemEvent(item, index, hDC, detail);
                    if (this.isDisposed() || this.parent.isDisposed()) break;
                    itemRight = event.x + event.width;
                } else {
                    int hFont = item.fontHandle(index);
                    if (hFont != -1) {
                        hFont = OS.SelectObject(hDC, hFont);
                    }
                    RECT itemRect = item.getBounds(index, true, true, false, false, false, hDC);
                    if (hFont != -1) {
                        OS.SelectObject(hDC, hFont);
                    }
                    itemRight = itemRect.right;
                }
                columnWidth = Math.max(columnWidth, itemRight - headerRect.left);
            }
            tvItem.hItem = OS.SendMessage(hwnd, 4362, 6, tvItem.hItem);
        }
        RECT rect = new RECT();
        int flags = 3072;
        TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.text, false);
        OS.DrawText(hDC, buffer, buffer.length(), rect, flags);
        int headerWidth = rect.right - rect.left + 12;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            headerWidth += 3;
        }
        if (this.image != null || this.parent.sortColumn == this) {
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
            margin = hwndHeader != 0 && OS.COMCTL32_VERSION >= OS.VERSION(5, 80) ? OS.SendMessage(hwndHeader, 4629, 0, 0) : OS.GetSystemMetrics(45) * 3;
            headerWidth += margin * 2;
        }
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(hwnd, hDC);
        int gridWidth = this.parent.linesVisible ? 1 : 0;
        this.setWidth(Math.max(headerWidth, columnWidth + gridWidth));
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
        int hwndHeader = this.parent.hwndHeader;
        if (hwndHeader == 0) {
            return;
        }
        HDITEM hdItem = new HDITEM();
        hdItem.mask = 4;
        OS.SendMessage(hwndHeader, OS.HDM_GETITEM, index, hdItem);
        hdItem.fmt &= 0xFFFFFFFC;
        if ((this.style & 0x4000) == 16384) {
            hdItem.fmt |= 0;
        }
        if ((this.style & 0x1000000) == 0x1000000) {
            hdItem.fmt |= 2;
        }
        if ((this.style & 0x20000) == 131072) {
            hdItem.fmt |= 1;
        }
        OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
        if (index != 0) {
            int hwnd = this.parent.handle;
            this.parent.forceResize();
            RECT rect = new RECT();
            RECT headerRect = new RECT();
            OS.GetClientRect(hwnd, rect);
            OS.SendMessage(hwndHeader, 4615, index, headerRect);
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
        int hwndHeader = this.parent.hwndHeader;
        if (hwndHeader == 0) {
            return;
        }
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
            hdItem.mask &= 0xFFFFFFCF;
            hdItem.fmt &= 0xFFFFD7FF;
        }
        OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
    }

    public void setMoveable(boolean moveable) {
        this.checkWidget();
        this.moveable = moveable;
    }

    public void setResizable(boolean resizable) {
        this.checkWidget();
        this.resizable = resizable;
    }

    void setSortDirection(int direction) {
        if (OS.COMCTL32_MAJOR >= 6) {
            int hwndHeader = this.parent.hwndHeader;
            if (hwndHeader != 0) {
                int index = this.parent.indexOf(this);
                if (index == -1) {
                    return;
                }
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
                if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
                    int hwnd = this.parent.handle;
                    this.parent.forceResize();
                    RECT rect = new RECT();
                    RECT headerRect = new RECT();
                    OS.GetClientRect(hwnd, rect);
                    OS.SendMessage(hwndHeader, 4615, index, headerRect);
                    rect.left = headerRect.left;
                    rect.right = headerRect.right;
                    OS.InvalidateRect(hwnd, rect, true);
                }
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
        int hHeap = OS.GetProcessHeap();
        TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.fixMnemonic(string, true), true);
        int byteCount = buffer.length() * TCHAR.sizeof;
        int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(pszText, buffer, byteCount);
        int hwndHeader = this.parent.hwndHeader;
        if (hwndHeader == 0) {
            return;
        }
        HDITEM hdItem = new HDITEM();
        hdItem.mask = 2;
        hdItem.pszText = pszText;
        int result = OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
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
        int hwndHeader = this.parent.hwndHeader;
        if (hwndHeader == 0) {
            return;
        }
        HDITEM hdItem = new HDITEM();
        hdItem.mask = 1;
        hdItem.cxy = width;
        OS.SendMessage(hwndHeader, OS.HDM_SETITEM, index, hdItem);
        RECT headerRect = new RECT();
        OS.SendMessage(hwndHeader, 4615, index, headerRect);
        this.parent.forceResize();
        int hwnd = this.parent.handle;
        RECT rect = new RECT();
        OS.GetClientRect(hwnd, rect);
        rect.left = headerRect.left;
        OS.InvalidateRect(hwnd, rect, true);
        this.parent.setScrollWidth();
    }

    void updateToolTip(int index) {
        RECT rect;
        int hwndHeader;
        int hwndHeaderToolTip = this.parent.headerToolTipHandle;
        if (hwndHeaderToolTip != 0 && OS.SendMessage(hwndHeader = this.parent.hwndHeader, 4615, index, rect = new RECT()) != 0) {
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

