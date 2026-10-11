/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TVITEM;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Tree;

public class TreeItem
extends Item {
    public int handle;
    Tree parent;
    String[] strings;
    Image[] images;
    Font font;
    Font[] cellFont;
    boolean cached;
    int background = -1;
    int foreground = -1;
    int[] cellBackground;
    int[] cellForeground;

    public TreeItem(Tree parent, int style) {
        this(parent, style, 0, -65534, 0);
    }

    public TreeItem(Tree parent, int style, int index) {
        this(parent, style, 0, TreeItem.findPrevious(parent, index), 0);
    }

    public TreeItem(TreeItem parentItem, int style) {
        this(TreeItem.checkNull((TreeItem)parentItem).parent, style, parentItem.handle, -65534, 0);
    }

    public TreeItem(TreeItem parentItem, int style, int index) {
        this(TreeItem.checkNull((TreeItem)parentItem).parent, style, parentItem.handle, TreeItem.findPrevious(parentItem, index), 0);
    }

    TreeItem(Tree parent, int style, int hParent, int hInsertAfter, int hItem) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, hParent, hInsertAfter, hItem);
    }

    static TreeItem checkNull(TreeItem item) {
        if (item == null) {
            SWT.error(4);
        }
        return item;
    }

    static int findPrevious(Tree parent, int index) {
        if (parent == null) {
            return 0;
        }
        if (index < 0) {
            SWT.error(6);
        }
        if (index == 0) {
            return -65535;
        }
        int hwnd = parent.handle;
        int hFirstItem = OS.SendMessage(hwnd, 4362, 0, 0);
        int hItem = parent.findItem(hFirstItem, index - 1);
        if (hItem == 0) {
            SWT.error(6);
        }
        return hItem;
    }

    static int findPrevious(TreeItem parentItem, int index) {
        if (parentItem == null) {
            return 0;
        }
        if (index < 0) {
            SWT.error(6);
        }
        if (index == 0) {
            return -65535;
        }
        Tree parent = parentItem.parent;
        int hwnd = parent.handle;
        int hParent = parentItem.handle;
        int hFirstItem = OS.SendMessage(hwnd, 4362, 4, hParent);
        int hItem = parent.findItem(hFirstItem, index - 1);
        if (hItem == 0) {
            SWT.error(6);
        }
        return hItem;
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void clear() {
        this.text = "";
        this.image = null;
        this.strings = null;
        this.images = null;
        if ((this.parent.style & 0x20) != 0) {
            int hwnd = this.parent.handle;
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 24;
            tvItem.stateMask = 61440;
            tvItem.state = 4096;
            tvItem.hItem = this.handle;
            OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
        }
        this.foreground = -1;
        this.background = -1;
        this.font = null;
        this.cellForeground = null;
        this.cellBackground = null;
        this.cellFont = null;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = false;
        }
    }

    public void clear(int index, boolean all) {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int hItem = OS.SendMessage(hwnd, 4362, 4, this.handle);
        if (hItem == 0) {
            this.error(6);
        }
        if ((hItem = this.parent.findItem(hItem, index)) == 0) {
            this.error(6);
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        this.parent.clear(hItem, tvItem);
        if (all) {
            hItem = OS.SendMessage(hwnd, 4362, 4, hItem);
            this.parent.clearAll(hItem, tvItem, all);
        }
    }

    public void clearAll(boolean all) {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int hItem = OS.SendMessage(hwnd, 4362, 4, this.handle);
        if (hItem == 0) {
            return;
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        this.parent.clearAll(hItem, tvItem, all);
    }

    void destroyWidget() {
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        this.parent.releaseItem(this.handle, tvItem, false);
        this.parent.destroyItem(this, this.handle);
        this.releaseHandle();
    }

    int fontHandle(int index) {
        if (this.cellFont != null && this.cellFont[index] != null) {
            return this.cellFont[index].handle;
        }
        if (this.font != null) {
            return this.font.handle;
        }
        return -1;
    }

    public Color getBackground() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (this.background == -1) {
            return this.parent.getBackground();
        }
        return Color.win32_new(this.display, this.background);
    }

    public Color getBackground(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return this.getBackground();
        }
        int pixel = this.cellBackground != null ? this.cellBackground[index] : -1;
        return pixel == -1 ? this.getBackground() : Color.win32_new(this.display, pixel);
    }

    public Rectangle getBounds() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        RECT rect = this.getBounds(0, true, false, false);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public Rectangle getBounds(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        RECT rect = this.getBounds(index, true, true, true);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    RECT getBounds(int index, boolean getText, boolean getImage, boolean fullText) {
        return this.getBounds(index, getText, getImage, fullText, false, true, 0);
    }

    RECT getBounds(int index, boolean getText, boolean getImage, boolean fullText, boolean fullImage, boolean clip, int hDC) {
        int gridWidth;
        if (!getText && !getImage) {
            return new RECT();
        }
        int hwnd = this.parent.handle;
        if ((this.parent.style & 0x10000000) == 0 && !this.cached && !this.parent.painted) {
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 17;
            tvItem.hItem = this.handle;
            tvItem.pszText = -1;
            this.parent.ignoreCustomDraw = true;
            OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
            this.parent.ignoreCustomDraw = false;
        }
        boolean firstColumn = index == 0;
        int columnCount = 0;
        int hwndHeader = this.parent.hwndHeader;
        if (hwndHeader != 0) {
            columnCount = this.parent.columnCount;
            firstColumn = index == OS.SendMessage(hwndHeader, 4623, 0, 0);
        }
        RECT rect = new RECT();
        if (firstColumn) {
            boolean full = columnCount == 0 && getText && getImage && fullText && fullImage;
            if (!OS.TreeView_GetItemRect(hwnd, this.handle, rect, !full)) {
                return new RECT();
            }
            if (getImage && !fullImage) {
                if (OS.SendMessage(hwnd, 4360, 0, 0) != 0) {
                    Point size = this.parent.getImageSize();
                    rect.left -= size.x + 3;
                    if (!getText) {
                        rect.right = rect.left + size.x;
                    }
                } else if (!getText) {
                    rect.right = rect.left;
                }
            }
            if ((fullText || fullImage || clip) && hwndHeader != 0) {
                RECT headerRect = new RECT();
                if (columnCount != 0) {
                    if (OS.SendMessage(hwndHeader, 4615, index, headerRect) == 0) {
                        return new RECT();
                    }
                } else {
                    headerRect.right = this.parent.scrollWidth;
                    if (headerRect.right == 0) {
                        headerRect = rect;
                    }
                }
                if (fullText && clip) {
                    rect.right = headerRect.right;
                }
                if (fullImage) {
                    rect.left = headerRect.left;
                }
                if (clip && headerRect.right < rect.right) {
                    rect.right = headerRect.right;
                }
            }
        } else {
            if (index < 0 || index >= columnCount) {
                return new RECT();
            }
            RECT headerRect = new RECT();
            if (OS.SendMessage(hwndHeader, 4615, index, headerRect) == 0) {
                return new RECT();
            }
            if (!OS.TreeView_GetItemRect(hwnd, this.handle, rect, false)) {
                return new RECT();
            }
            rect.left = headerRect.left;
            if (fullText && getImage && clip) {
                rect.right = headerRect.right;
            } else {
                rect.right = headerRect.left;
                Image image = null;
                if (index == 0) {
                    image = this.image;
                } else if (this.images != null) {
                    image = this.images[index];
                }
                if (image != null) {
                    Point size = this.parent.getImageSize();
                    rect.right += size.x;
                }
                if (getText) {
                    if (fullText && clip) {
                        rect.left = rect.right + 3;
                        rect.right = headerRect.right;
                    } else {
                        String string;
                        String string2 = index == 0 ? this.text : (string = this.strings != null ? this.strings[index] : null);
                        if (string != null) {
                            RECT textRect = new RECT();
                            TCHAR buffer = new TCHAR(this.parent.getCodePage(), string, false);
                            int flags = 3104;
                            int hNewDC = hDC;
                            int hFont = 0;
                            if (hDC == 0) {
                                hNewDC = OS.GetDC(hwnd);
                                hFont = this.fontHandle(index);
                                if (hFont == -1) {
                                    hFont = OS.SendMessage(hwnd, 49, 0, 0);
                                }
                                hFont = OS.SelectObject(hNewDC, hFont);
                            }
                            OS.DrawText(hNewDC, buffer, buffer.length(), textRect, flags);
                            if (hDC == 0) {
                                OS.SelectObject(hNewDC, hFont);
                                OS.ReleaseDC(hwnd, hNewDC);
                            }
                            if (getImage) {
                                rect.right += textRect.right - textRect.left + 9;
                            } else {
                                rect.left = rect.right + 3;
                                rect.right = rect.left + (textRect.right - textRect.left) + 3;
                            }
                        }
                    }
                }
                if (clip && headerRect.right < rect.right) {
                    rect.right = headerRect.right;
                }
            }
        }
        int n = gridWidth = this.parent.linesVisible && columnCount != 0 ? 1 : 0;
        if (getText || !getImage) {
            rect.right = Math.max(rect.left, rect.right - gridWidth);
        }
        rect.bottom = Math.max(rect.top, rect.bottom - gridWidth);
        return rect;
    }

    public boolean getChecked() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((this.parent.style & 0x20) == 0) {
            return false;
        }
        int hwnd = this.parent.handle;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 61440;
        tvItem.hItem = this.handle;
        int result = OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
        return result != 0 && (tvItem.state >> 12 & 1) == 0;
    }

    public boolean getExpanded() {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int state = 0;
        if (OS.IsWinCE) {
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = this.handle;
            tvItem.mask = 8;
            OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
            state = tvItem.state;
        } else {
            state = OS.SendMessage(hwnd, 4391, this.handle, 32);
        }
        return (state & 0x20) != 0;
    }

    public Font getFont() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return this.font != null ? this.font : this.parent.getFont();
    }

    public Font getFont(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return this.getFont();
        }
        if (this.cellFont == null || this.cellFont[index] == null) {
            return this.getFont();
        }
        return this.cellFont[index];
    }

    public Color getForeground() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (this.foreground == -1) {
            return this.parent.getForeground();
        }
        return Color.win32_new(this.display, this.foreground);
    }

    public Color getForeground(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return this.getForeground();
        }
        int pixel = this.cellForeground != null ? this.cellForeground[index] : -1;
        return pixel == -1 ? this.getForeground() : Color.win32_new(this.display, pixel);
    }

    public boolean getGrayed() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((this.parent.style & 0x20) == 0) {
            return false;
        }
        int hwnd = this.parent.handle;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 61440;
        tvItem.hItem = this.handle;
        int result = OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
        return result != 0 && tvItem.state >> 12 > 2;
    }

    public TreeItem getItem(int index) {
        int hItem;
        int hwnd;
        int hFirstItem;
        this.checkWidget();
        if (index < 0) {
            this.error(6);
        }
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((hFirstItem = OS.SendMessage(hwnd = this.parent.handle, 4362, 4, this.handle)) == 0) {
            this.error(6);
        }
        if ((hItem = this.parent.findItem(hFirstItem, index)) == 0) {
            this.error(6);
        }
        return this.parent._getItem(hItem);
    }

    public int getItemCount() {
        int hwnd;
        int hItem;
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((hItem = OS.SendMessage(hwnd = this.parent.handle, 4362, 4, this.handle)) == 0) {
            return 0;
        }
        return this.parent.getItemCount(hItem);
    }

    public TreeItem[] getItems() {
        int hwnd;
        int hItem;
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((hItem = OS.SendMessage(hwnd = this.parent.handle, 4362, 4, this.handle)) == 0) {
            return new TreeItem[0];
        }
        return this.parent.getItems(hItem);
    }

    public Image getImage() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return super.getImage();
    }

    public Image getImage(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (index == 0) {
            return this.getImage();
        }
        if (this.images != null && index >= 0 && index < this.images.length) {
            return this.images[index];
        }
        return null;
    }

    public Rectangle getImageBounds(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        RECT rect = this.getBounds(index, false, true, false);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public Tree getParent() {
        this.checkWidget();
        return this.parent;
    }

    public TreeItem getParentItem() {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int hItem = OS.SendMessage(hwnd, 4362, 3, this.handle);
        return hItem != 0 ? this.parent._getItem(hItem) : null;
    }

    public String getText() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return super.getText();
    }

    public String getText(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (index == 0) {
            return this.getText();
        }
        if (this.strings != null && index >= 0 && index < this.strings.length) {
            String string = this.strings[index];
            return string != null ? string : "";
        }
        return "";
    }

    public Rectangle getTextBounds(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        RECT rect = this.getBounds(index, true, false, true);
        if (index == 0) {
            rect.left += 2;
        }
        rect.left = Math.min(rect.left, rect.right);
        rect.right -= 3;
        int width = Math.max(0, rect.right - rect.left);
        int height = Math.max(0, rect.bottom - rect.top);
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public int indexOf(TreeItem item) {
        int hwnd;
        int hItem;
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        return (hItem = OS.SendMessage(hwnd = this.parent.handle, 4362, 4, this.handle)) == 0 ? -1 : this.parent.findIndex(hItem, item.handle);
    }

    void redraw() {
        RECT rect;
        boolean full;
        if (this.parent.currentItem == this || !this.parent.getDrawing()) {
            return;
        }
        int hwnd = this.parent.handle;
        if (!OS.IsWindowVisible(hwnd)) {
            return;
        }
        boolean bl = full = (this.parent.style & 0x10010000) != 0;
        if (!full) {
            boolean bl2 = full = this.parent.columnCount != 0;
            if (!full && (this.parent.hooks(40) || this.parent.hooks(42))) {
                full = true;
            }
        }
        if (OS.TreeView_GetItemRect(hwnd, this.handle, rect = new RECT(), !full)) {
            OS.InvalidateRect(hwnd, rect, true);
        }
    }

    void redraw(int column, boolean drawText, boolean drawImage) {
        if (this.parent.currentItem == this || !this.parent.getDrawing()) {
            return;
        }
        int hwnd = this.parent.handle;
        if (!OS.IsWindowVisible(hwnd)) {
            return;
        }
        boolean fullImage = column == 0 && drawText && drawImage;
        RECT rect = this.getBounds(column, drawText, drawImage, true, fullImage, true, 0);
        OS.InvalidateRect(hwnd, rect, true);
    }

    void releaseChildren(boolean destroy) {
        if (destroy) {
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 20;
            this.parent.releaseItems(this.handle, tvItem);
        }
        super.releaseChildren(destroy);
    }

    void releaseHandle() {
        super.releaseHandle();
        this.handle = 0;
        this.parent = null;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.strings = null;
        this.images = null;
        this.cellForeground = null;
        this.cellBackground = null;
        this.cellFont = null;
    }

    public void removeAll() {
        this.checkWidget();
        int hwnd = this.parent.handle;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        tvItem.hItem = OS.SendMessage(hwnd, 4362, 4, this.handle);
        while (tvItem.hItem != 0) {
            TreeItem item;
            OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
            TreeItem treeItem = item = tvItem.lParam != -1 ? this.parent.items[tvItem.lParam] : null;
            if (item != null && !item.isDisposed()) {
                item.dispose();
            } else {
                this.parent.releaseItem(tvItem.hItem, tvItem, false);
                this.parent.destroyItem(null, tvItem.hItem);
            }
            tvItem.hItem = OS.SendMessage(hwnd, 4362, 4, this.handle);
        }
    }

    public void setBackground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int pixel = -1;
        if (color != null) {
            this.parent.customDraw = true;
            pixel = color.handle;
        }
        if (this.background == pixel) {
            return;
        }
        this.background = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw();
    }

    public void setBackground(int index, Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        int pixel = -1;
        if (color != null) {
            this.parent.customDraw = true;
            pixel = color.handle;
        }
        if (this.cellBackground == null) {
            this.cellBackground = new int[count];
            int i = 0;
            while (i < count) {
                this.cellBackground[i] = -1;
                ++i;
            }
        }
        if (this.cellBackground[index] == pixel) {
            return;
        }
        this.cellBackground[index] = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw(index, true, true);
    }

    public void setChecked(boolean checked) {
        RECT rect;
        this.checkWidget();
        if ((this.parent.style & 0x20) == 0) {
            return;
        }
        int hwnd = this.parent.handle;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 61440;
        tvItem.hItem = this.handle;
        OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
        int state = tvItem.state >> 12;
        if (checked) {
            if ((state & 1) != 0) {
                ++state;
            }
        } else if ((state & 1) == 0) {
            --state;
        }
        if (tvItem.state == (state <<= 12)) {
            return;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        tvItem.state = state;
        OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
        if ((this.parent.style & 0x10000000) != 0 && this.parent.currentItem == this && OS.IsWindowVisible(hwnd) && OS.TreeView_GetItemRect(hwnd, this.handle, rect = new RECT(), false)) {
            OS.InvalidateRect(hwnd, rect, true);
        }
    }

    public void setExpanded(boolean expanded) {
        int hNewItem;
        this.checkWidget();
        int hwnd = this.parent.handle;
        if (OS.SendMessage(hwnd, 4362, 4, this.handle) == 0) {
            return;
        }
        int state = 0;
        if (OS.IsWinCE) {
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = this.handle;
            tvItem.mask = 8;
            OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
            state = tvItem.state;
        } else {
            state = OS.SendMessage(hwnd, 4391, this.handle, 32);
        }
        if ((state & 0x20) != 0 == expanded) {
            return;
        }
        RECT oldRect = null;
        RECT[] rects = null;
        SCROLLINFO oldInfo = null;
        int count = 0;
        int hBottomItem = 0;
        boolean redraw = false;
        boolean noScroll = true;
        int hTopItem = OS.SendMessage(hwnd, 4362, 5, 0);
        if (noScroll && hTopItem != 0) {
            oldInfo = new SCROLLINFO();
            oldInfo.cbSize = SCROLLINFO.sizeof;
            oldInfo.fMask = 23;
            if (!OS.GetScrollInfo(hwnd, 0, oldInfo)) {
                oldInfo = null;
            }
            if (this.parent.getDrawing() && OS.IsWindowVisible(hwnd)) {
                boolean noAnimate = true;
                count = OS.SendMessage(hwnd, 4368, 0, 0);
                rects = new RECT[count + 1];
                int hItem = hTopItem;
                int index = 0;
                while (hItem != 0 && (noAnimate || hItem != this.handle) && index < count) {
                    RECT rect = new RECT();
                    if (OS.TreeView_GetItemRect(hwnd, hItem, rect, true)) {
                        rects[index++] = rect;
                    }
                    hItem = OS.SendMessage(hwnd, 4362, 6, hItem);
                }
                if (noAnimate || hItem != this.handle) {
                    redraw = true;
                    count = index;
                    hBottomItem = hItem;
                    oldRect = new RECT();
                    OS.GetClientRect(hwnd, oldRect);
                    int topHandle = this.parent.topHandle();
                    OS.UpdateWindow(topHandle);
                    OS.DefWindowProc(topHandle, 11, 0, 0);
                    if (hwnd != topHandle) {
                        OS.UpdateWindow(hwnd);
                        OS.DefWindowProc(hwnd, 11, 0, 0);
                    }
                }
            }
        }
        int hOldItem = OS.SendMessage(hwnd, 4362, 9, 0);
        this.parent.ignoreExpand = true;
        OS.SendMessage(hwnd, 4354, expanded ? 2 : 1, this.handle);
        this.parent.ignoreExpand = false;
        if (noScroll && hTopItem != 0) {
            boolean collapsed = false;
            if (!expanded) {
                RECT rect = new RECT();
                while (hTopItem != 0 && !OS.TreeView_GetItemRect(hwnd, hTopItem, rect, false)) {
                    hTopItem = OS.SendMessage(hwnd, 4362, 3, hTopItem);
                    collapsed = true;
                }
            }
            boolean scrolled = true;
            if (hTopItem != 0) {
                OS.SendMessage(hwnd, 4363, 5, hTopItem);
                boolean bl = scrolled = hTopItem != OS.SendMessage(hwnd, 4362, 5, 0);
            }
            if (!collapsed && !scrolled && oldInfo != null) {
                SCROLLINFO newInfo = new SCROLLINFO();
                newInfo.cbSize = SCROLLINFO.sizeof;
                newInfo.fMask = 23;
                if (OS.GetScrollInfo(hwnd, 0, newInfo) && oldInfo.nPos != newInfo.nPos) {
                    int lParam = OS.MAKELPARAM(4, oldInfo.nPos);
                    OS.SendMessage(hwnd, 276, lParam, 0);
                }
            }
            if (redraw) {
                boolean fixScroll = false;
                if (!collapsed && !scrolled) {
                    RECT newRect = new RECT();
                    OS.GetClientRect(hwnd, newRect);
                    if (OS.EqualRect(oldRect, newRect)) {
                        int hItem = hTopItem;
                        int index = 0;
                        while (hItem != 0 && index < count) {
                            RECT rect = new RECT();
                            if (OS.TreeView_GetItemRect(hwnd, hItem, rect, true) && !OS.EqualRect(rect, rects[index])) break;
                            hItem = OS.SendMessage(hwnd, 4362, 6, hItem);
                            ++index;
                        }
                        fixScroll = index == count && hItem == hBottomItem;
                    }
                }
                int topHandle = this.parent.topHandle();
                OS.DefWindowProc(topHandle, 11, 1, 0);
                if (hwnd != topHandle) {
                    OS.DefWindowProc(hwnd, 11, 1, 0);
                }
                if (fixScroll) {
                    RECT rect;
                    this.parent.updateScrollBar();
                    SCROLLINFO info = new SCROLLINFO();
                    info.cbSize = SCROLLINFO.sizeof;
                    info.fMask = 23;
                    if (OS.GetScrollInfo(hwnd, 1, info)) {
                        OS.SetScrollInfo(hwnd, 1, info, true);
                    }
                    if (this.handle == hBottomItem && OS.TreeView_GetItemRect(hwnd, hBottomItem, rect = new RECT(), false)) {
                        OS.InvalidateRect(hwnd, rect, true);
                    }
                } else if (OS.IsWinCE) {
                    OS.InvalidateRect(topHandle, null, true);
                    if (hwnd != topHandle) {
                        OS.InvalidateRect(hwnd, null, true);
                    }
                } else {
                    int flags = 1157;
                    OS.RedrawWindow(topHandle, null, 0, flags);
                }
            }
        }
        if ((hNewItem = OS.SendMessage(hwnd, 4362, 9, 0)) != hOldItem) {
            Event event = new Event();
            if (hNewItem != 0) {
                event.item = this.parent._getItem(hNewItem);
                this.parent.hAnchor = hNewItem;
            }
            this.parent.sendSelectionEvent(13, event, true);
        }
    }

    public void setFont(Font font) {
        Font oldFont;
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        if ((oldFont = this.font) == font) {
            return;
        }
        this.font = font;
        if (oldFont != null && oldFont.equals(font)) {
            return;
        }
        if (font != null) {
            this.parent.customDraw = true;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if ((this.parent.style & 0x10000000) == 0 && !this.cached && !this.parent.painted) {
            return;
        }
        int hwnd = this.parent.handle;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 17;
        tvItem.hItem = this.handle;
        tvItem.pszText = -1;
        OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
    }

    public void setFont(int index, Font font) {
        Font oldFont;
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        if (this.cellFont == null) {
            if (font == null) {
                return;
            }
            this.cellFont = new Font[count];
        }
        if ((oldFont = this.cellFont[index]) == font) {
            return;
        }
        this.cellFont[index] = font;
        if (oldFont != null && oldFont.equals(font)) {
            return;
        }
        if (font != null) {
            this.parent.customDraw = true;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if (index == 0) {
            if ((this.parent.style & 0x10000000) == 0 && !this.cached && !this.parent.painted) {
                return;
            }
            int hwnd = this.parent.handle;
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 17;
            tvItem.hItem = this.handle;
            tvItem.pszText = -1;
            OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
        } else {
            this.redraw(index, true, false);
        }
    }

    public void setForeground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int pixel = -1;
        if (color != null) {
            this.parent.customDraw = true;
            pixel = color.handle;
        }
        if (this.foreground == pixel) {
            return;
        }
        this.foreground = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw();
    }

    public void setForeground(int index, Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        int pixel = -1;
        if (color != null) {
            this.parent.customDraw = true;
            pixel = color.handle;
        }
        if (this.cellForeground == null) {
            this.cellForeground = new int[count];
            int i = 0;
            while (i < count) {
                this.cellForeground[i] = -1;
                ++i;
            }
        }
        if (this.cellForeground[index] == pixel) {
            return;
        }
        this.cellForeground[index] = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw(index, true, false);
    }

    public void setGrayed(boolean grayed) {
        RECT rect;
        this.checkWidget();
        if ((this.parent.style & 0x20) == 0) {
            return;
        }
        int hwnd = this.parent.handle;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 61440;
        tvItem.hItem = this.handle;
        OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
        int state = tvItem.state >> 12;
        if (grayed) {
            if (state <= 2) {
                state += 2;
            }
        } else if (state > 2) {
            state -= 2;
        }
        if (tvItem.state == (state <<= 12)) {
            return;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        tvItem.state = state;
        OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
        if ((this.parent.style & 0x10000000) != 0 && this.parent.currentItem == this && OS.IsWindowVisible(hwnd) && OS.TreeView_GetItemRect(hwnd, this.handle, rect = new RECT(), false)) {
            OS.InvalidateRect(hwnd, rect, true);
        }
    }

    public void setImage(Image[] images) {
        this.checkWidget();
        if (images == null) {
            this.error(4);
        }
        int i = 0;
        while (i < images.length) {
            this.setImage(i, images[i]);
            ++i;
        }
    }

    public void setImage(int index, Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        Image oldImage = null;
        if (index == 0) {
            if (image != null && image.type == 1 && image.equals(this.image)) {
                return;
            }
            oldImage = this.image;
            super.setImage(image);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        if (this.images == null && index != 0) {
            this.images = new Image[count];
            this.images[0] = image;
        }
        if (this.images != null) {
            if (image != null && image.type == 1 && image.equals(this.images[index])) {
                return;
            }
            oldImage = this.images[index];
            this.images[index] = image;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.parent.imageIndex(image, index);
        if (index == 0) {
            if ((this.parent.style & 0x10000000) == 0 && !this.cached && !this.parent.painted) {
                return;
            }
            int hwnd = this.parent.handle;
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 50;
            tvItem.hItem = this.handle;
            tvItem.iSelectedImage = -1;
            tvItem.iImage = -1;
            tvItem.mask |= 1;
            tvItem.pszText = -1;
            OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
        } else {
            boolean drawText = image == null && oldImage != null || image != null && oldImage == null;
            this.redraw(index, drawText, true);
        }
    }

    public void setImage(Image image) {
        this.checkWidget();
        this.setImage(0, image);
    }

    public void setItemCount(int count) {
        this.checkWidget();
        count = Math.max(0, count);
        int hwnd = this.parent.handle;
        int hItem = OS.SendMessage(hwnd, 4362, 4, this.handle);
        this.parent.setItemCount(count, this.handle, hItem);
    }

    public void setText(String[] strings) {
        this.checkWidget();
        if (strings == null) {
            this.error(4);
        }
        int i = 0;
        while (i < strings.length) {
            String string = strings[i];
            if (string != null) {
                this.setText(i, string);
            }
            ++i;
        }
    }

    public void setText(int index, String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if (index == 0) {
            if (string.equals(this.text)) {
                return;
            }
            super.setText(string);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        if (this.strings == null && index != 0) {
            this.strings = new String[count];
            this.strings[0] = this.text;
        }
        if (this.strings != null) {
            if (string.equals(this.strings[index])) {
                return;
            }
            this.strings[index] = string;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if (index == 0) {
            if ((this.parent.style & 0x10000000) == 0 && !this.cached && !this.parent.painted) {
                return;
            }
            int hwnd = this.parent.handle;
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 17;
            tvItem.hItem = this.handle;
            tvItem.pszText = -1;
            OS.SendMessage(hwnd, OS.TVM_SETITEM, 0, tvItem);
        } else {
            this.redraw(index, true, false);
        }
    }

    public void setText(String string) {
        this.checkWidget();
        this.setText(0, string);
    }

    void sort() {
        this.checkWidget();
        if ((this.parent.style & 0x10000000) != 0) {
            return;
        }
        this.parent.sort(this.handle, false);
    }
}

