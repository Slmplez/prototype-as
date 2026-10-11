/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.NMCUSTOMDRAW;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMTBHOTITEM;
import org.eclipse.swt.internal.win32.NMTOOLBAR;
import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TBBUTTON;
import org.eclipse.swt.internal.win32.TBBUTTONINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Widget;

public class ToolBar
extends Composite {
    int lastFocusId;
    int lastArrowId;
    int lastHotId;
    ToolItem[] items;
    ToolItem[] tabItemList;
    boolean ignoreResize;
    boolean ignoreMouse;
    ImageList imageList;
    ImageList disabledImageList;
    ImageList hotImageList;
    static final int ToolBarProc;
    static final TCHAR ToolBarClass;
    static final int DEFAULT_WIDTH = 24;
    static final int DEFAULT_HEIGHT = 22;

    static {
        ToolBarClass = new TCHAR(0, "ToolbarWindow32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ToolBarClass, lpWndClass);
        ToolBarProc = lpWndClass.lpfnWndProc;
    }

    public ToolBar(Composite parent, int style) {
        super(parent, ToolBar.checkStyle(style));
        if ((style & 0x200) != 0) {
            this.style |= 0x200;
            int bits = OS.GetWindowLong(this.handle, -16);
            if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (style & 0x20000) != 0) {
                bits |= 0x1000;
            }
            OS.SetWindowLong(this.handle, -16, bits | 0x80);
        } else {
            this.style |= 0x100;
        }
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (msg == 262) {
            return OS.DefWindowProc(hwnd, msg, wParam, lParam);
        }
        return OS.CallWindowProc(ToolBarProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        if ((style & 0x800000) == 0) {
            style |= 0x80000;
        }
        if ((style & 0x200) != 0) {
            style &= 0xFFFFFFBF;
        }
        return style & 0xFFFFFCFF;
    }

    void checkBuffered() {
        super.checkBuffered();
        if (OS.COMCTL32_MAJOR >= 6) {
            this.style |= 0x20000000;
        }
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
        if ((this.style & 0x200) != 0) {
            RECT rect = new RECT();
            TBBUTTON lpButton = new TBBUTTON();
            int count = OS.SendMessage(this.handle, 1048, 0, 0);
            int i = 0;
            while (i < count) {
                OS.SendMessage(this.handle, 1053, i, rect);
                height = Math.max(height, rect.bottom);
                OS.SendMessage(this.handle, 1047, i, lpButton);
                if ((lpButton.fsStyle & 1) != 0) {
                    TBBUTTONINFO info = new TBBUTTONINFO();
                    info.cbSize = TBBUTTONINFO.sizeof;
                    info.dwMask = 64;
                    OS.SendMessage(this.handle, OS.TB_GETBUTTONINFO, lpButton.idCommand, info);
                    width = Math.max(width, info.cx);
                } else {
                    width = Math.max(width, rect.right);
                }
                ++i;
            }
        } else {
            RECT oldRect = new RECT();
            OS.GetWindowRect(this.handle, oldRect);
            int oldWidth = oldRect.right - oldRect.left;
            int oldHeight = oldRect.bottom - oldRect.top;
            int border = this.getBorderWidth();
            int newWidth = wHint == -1 ? 16383 : wHint + border * 2;
            int newHeight = hHint == -1 ? 16383 : hHint + border * 2;
            boolean redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            this.ignoreResize = true;
            if (redraw) {
                OS.UpdateWindow(this.handle);
            }
            int flags = 30;
            this.SetWindowPos(this.handle, 0, 0, 0, newWidth, newHeight, flags);
            int count = OS.SendMessage(this.handle, 1048, 0, 0);
            if (count != 0) {
                RECT rect = new RECT();
                OS.SendMessage(this.handle, 1053, count - 1, rect);
                width = Math.max(width, rect.right);
                height = Math.max(height, rect.bottom);
            }
            this.SetWindowPos(this.handle, 0, 0, 0, oldWidth, oldHeight, flags);
            if (redraw) {
                OS.ValidateRect(this.handle, null);
            }
            this.ignoreResize = false;
        }
        if (width == 0) {
            width = 24;
        }
        if (height == 0) {
            height = 22;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        Rectangle trim = this.computeTrim(0, 0, width, height);
        width = trim.width;
        height = trim.height;
        return new Point(width, height);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        Rectangle trim = super.computeTrim(x, y, width, height);
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0x40) == 0) {
            trim.height += 2;
        }
        return trim;
    }

    Widget computeTabGroup() {
        int index;
        ToolItem[] items = this._getItems();
        if (this.tabItemList == null) {
            int i = 0;
            while (i < items.length && items[i].control == null) {
                ++i;
            }
            if (i == items.length) {
                return super.computeTabGroup();
            }
        }
        if ((index = OS.SendMessage(this.handle, 1095, 0, 0)) == -1) {
            index = this.lastHotId;
        }
        while (index >= 0) {
            ToolItem item = items[index];
            if (item.isTabGroup()) {
                return item;
            }
            --index;
        }
        return super.computeTabGroup();
    }

    Widget[] computeTabList() {
        ToolItem[] items = this._getItems();
        if (this.tabItemList == null) {
            int i = 0;
            while (i < items.length && items[i].control == null) {
                ++i;
            }
            if (i == items.length) {
                return super.computeTabList();
            }
        }
        Widget[] result = new Widget[]{};
        if (!(this.isTabGroup() && this.isEnabled() && this.isVisible())) {
            return result;
        }
        ToolItem[] list = this.tabList != null ? this._getTabItemList() : items;
        int i = 0;
        while (i < list.length) {
            ToolItem child = list[i];
            Widget[] childList = child.computeTabList();
            if (childList.length != 0) {
                Widget[] newResult = new Widget[result.length + childList.length];
                System.arraycopy(result, 0, newResult, 0, result.length);
                System.arraycopy(childList, 0, newResult, result.length, childList.length);
                result = newResult;
            }
            ++i;
        }
        if (result.length == 0) {
            result = new Widget[]{this};
        }
        return result;
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFFFD;
        if (!((this.style & 0x800000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed())) {
            int bits = OS.GetWindowLong(this.handle, -16);
            OS.SetWindowLong(this.handle, -16, bits &= 0xFFFF7FFF);
        }
        int hFont = OS.GetStockObject(13);
        OS.SendMessage(this.handle, 48, hFont, 0);
        OS.SendMessage(this.handle, 1054, TBBUTTON.sizeof, 0);
        OS.SendMessage(this.handle, 1056, 0, 0);
        OS.SendMessage(this.handle, 1055, 0, 0);
        int bits = 25;
        if (OS.COMCTL32_MAJOR >= 6) {
            bits |= 0x80;
        }
        OS.SendMessage(this.handle, 1108, 0, bits);
    }

    void createItem(ToolItem item, int index) {
        int count = OS.SendMessage(this.handle, 1048, 0, 0);
        if (index < 0 || index > count) {
            this.error(6);
        }
        int id = 0;
        while (id < this.items.length && this.items[id] != null) {
            ++id;
        }
        if (id == this.items.length) {
            ToolItem[] newItems = new ToolItem[this.items.length + 4];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
        }
        int bits = item.widgetStyle();
        TBBUTTON lpButton = new TBBUTTON();
        lpButton.idCommand = id;
        lpButton.fsStyle = (byte)bits;
        lpButton.fsState = (byte)4;
        if ((bits & 1) == 0) {
            lpButton.iBitmap = -2;
        }
        if (OS.SendMessage(this.handle, OS.TB_INSERTBUTTON, index, lpButton) == 0) {
            this.error(14);
        }
        item.id = id;
        this.items[item.id] = item;
        if ((this.style & 0x200) != 0) {
            this.setRowCount(count + 1);
        }
        this.layoutItems();
    }

    void createWidget() {
        super.createWidget();
        this.items = new ToolItem[4];
        this.lastHotId = -1;
        this.lastArrowId = -1;
        this.lastFocusId = -1;
    }

    int defaultBackground() {
        if (OS.IsWinCE) {
            return OS.GetSysColor(OS.COLOR_BTNFACE);
        }
        return super.defaultBackground();
    }

    void destroyItem(ToolItem item) {
        TBBUTTONINFO info = new TBBUTTONINFO();
        info.cbSize = TBBUTTONINFO.sizeof;
        info.dwMask = 9;
        int index = OS.SendMessage(this.handle, OS.TB_GETBUTTONINFO, item.id, info);
        if ((info.fsStyle & 1) == 0 && info.iImage != -2) {
            if (this.imageList != null) {
                this.imageList.put(info.iImage, null);
            }
            if (this.hotImageList != null) {
                this.hotImageList.put(info.iImage, null);
            }
            if (this.disabledImageList != null) {
                this.disabledImageList.put(info.iImage, null);
            }
        }
        OS.SendMessage(this.handle, 1046, index, 0);
        if (item.id == this.lastFocusId) {
            this.lastFocusId = -1;
        }
        if (item.id == this.lastArrowId) {
            this.lastArrowId = -1;
        }
        if (item.id == this.lastHotId) {
            this.lastHotId = -1;
        }
        this.items[item.id] = null;
        item.id = -1;
        int count = OS.SendMessage(this.handle, 1048, 0, 0);
        if (count == 0) {
            if (this.imageList != null) {
                OS.SendMessage(this.handle, 1072, 0, 0);
                this.display.releaseToolImageList(this.imageList);
            }
            if (this.hotImageList != null) {
                OS.SendMessage(this.handle, 1076, 0, 0);
                this.display.releaseToolHotImageList(this.hotImageList);
            }
            if (this.disabledImageList != null) {
                OS.SendMessage(this.handle, 1078, 0, 0);
                this.display.releaseToolDisabledImageList(this.disabledImageList);
            }
            this.disabledImageList = null;
            this.hotImageList = null;
            this.imageList = null;
            this.items = new ToolItem[4];
        }
        if ((this.style & 0x200) != 0) {
            this.setRowCount(count - 1);
        }
        this.layoutItems();
    }

    void enableWidget(boolean enabled) {
        super.enableWidget(enabled);
        int i = 0;
        while (i < this.items.length) {
            ToolItem item = this.items[i];
            if (item != null && (item.style & 2) == 0) {
                item.updateImages(enabled && item.getEnabled());
            }
            ++i;
        }
    }

    ImageList getDisabledImageList() {
        return this.disabledImageList;
    }

    ImageList getHotImageList() {
        return this.hotImageList;
    }

    ImageList getImageList() {
        return this.imageList;
    }

    public ToolItem getItem(int index) {
        TBBUTTON lpButton;
        int result;
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 1048, 0, 0);
        if (index < 0 || index >= count) {
            this.error(6);
        }
        if ((result = OS.SendMessage(this.handle, 1047, index, lpButton = new TBBUTTON())) == 0) {
            this.error(8);
        }
        return this.items[lpButton.idCommand];
    }

    public ToolItem getItem(Point point) {
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        ToolItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            Rectangle rect = items[i].getBounds();
            if (rect.contains(point)) {
                return items[i];
            }
            ++i;
        }
        return null;
    }

    public int getItemCount() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 1048, 0, 0);
    }

    public ToolItem[] getItems() {
        this.checkWidget();
        return this._getItems();
    }

    ToolItem[] _getItems() {
        int count = OS.SendMessage(this.handle, 1048, 0, 0);
        TBBUTTON lpButton = new TBBUTTON();
        ToolItem[] result = new ToolItem[count];
        int i = 0;
        while (i < count) {
            OS.SendMessage(this.handle, 1047, i, lpButton);
            result[i] = this.items[lpButton.idCommand];
            ++i;
        }
        return result;
    }

    public int getRowCount() {
        this.checkWidget();
        if ((this.style & 0x200) != 0) {
            return OS.SendMessage(this.handle, 1048, 0, 0);
        }
        return OS.SendMessage(this.handle, 1064, 0, 0);
    }

    ToolItem[] _getTabItemList() {
        if (this.tabItemList == null) {
            return this.tabItemList;
        }
        int count = 0;
        int i = 0;
        while (i < this.tabItemList.length) {
            if (!this.tabItemList[i].isDisposed()) {
                ++count;
            }
            ++i;
        }
        if (count == this.tabItemList.length) {
            return this.tabItemList;
        }
        ToolItem[] newList = new ToolItem[count];
        int index = 0;
        int i2 = 0;
        while (i2 < this.tabItemList.length) {
            if (!this.tabItemList[i2].isDisposed()) {
                newList[index++] = this.tabItemList[i2];
            }
            ++i2;
        }
        this.tabItemList = newList;
        return this.tabItemList;
    }

    public int indexOf(ToolItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        return OS.SendMessage(this.handle, 1049, item.id, 0);
    }

    void layoutItems() {
        int bits;
        int itemCount;
        int i;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (this.style & 0x20000) != 0 && (this.style & 0x200) == 0) {
            int oldBits;
            boolean hasText = false;
            boolean hasImage = false;
            i = 0;
            while (i < this.items.length) {
                ToolItem item = this.items[i];
                if (item != null) {
                    if (!hasText) {
                        boolean bl = hasText = item.text.length() != 0;
                    }
                    if (!hasImage) {
                        boolean bl = hasImage = item.image != null;
                    }
                    if (hasText && hasImage) break;
                }
                ++i;
            }
            int newBits = oldBits = OS.GetWindowLong(this.handle, -16);
            newBits = hasText && hasImage ? (newBits |= 0x1000) : (newBits &= 0xFFFFEFFF);
            if (newBits != oldBits) {
                this.setDropDownItems(false);
                OS.SetWindowLong(this.handle, -16, newBits);
                int hFont = OS.SendMessage(this.handle, 49, 0, 0);
                OS.SendMessage(this.handle, 48, hFont, 0);
                this.setDropDownItems(true);
            }
        }
        if ((this.style & 0x40) != 0) {
            OS.SendMessage(this.handle, 1057, 0, 0);
        }
        if ((this.style & 0x200) != 0 && (itemCount = OS.SendMessage(this.handle, 1048, 0, 0)) > 1) {
            TBBUTTONINFO info = new TBBUTTONINFO();
            info.cbSize = TBBUTTONINFO.sizeof;
            info.dwMask = 64;
            int size = OS.SendMessage(this.handle, 1082, 0, 0);
            info.cx = (short)OS.LOWORD(size);
            int index = 0;
            while (index < this.items.length) {
                ToolItem item = this.items[index];
                if (item != null && (item.style & 4) != 0) break;
                ++index;
            }
            if (index < this.items.length) {
                int padding = OS.SendMessage(this.handle, 1110, 0, 0);
                info.cx = (short)(info.cx + OS.LOWORD(padding) * 2);
            }
            int i2 = 0;
            while (i2 < this.items.length) {
                ToolItem item = this.items[i2];
                if (item != null && (item.style & 2) == 0) {
                    OS.SendMessage(this.handle, OS.TB_SETBUTTONINFO, item.id, info);
                }
                ++i2;
            }
        }
        if ((this.style & 0x240) != 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) != 0) {
            TBBUTTONINFO info = new TBBUTTONINFO();
            info.cbSize = TBBUTTONINFO.sizeof;
            info.dwMask = 64;
            i = 0;
            while (i < this.items.length) {
                ToolItem item = this.items[i];
                if (item != null && item.cx > 0) {
                    info.cx = item.cx;
                    OS.SendMessage(this.handle, OS.TB_SETBUTTONINFO, item.id, info);
                }
                ++i;
            }
        }
        int i3 = 0;
        while (i3 < this.items.length) {
            ToolItem item = this.items[i3];
            if (item != null) {
                item.resizeControl();
            }
            ++i3;
        }
    }

    boolean mnemonicHit(char ch) {
        int[] id;
        int key = Display.wcsToMbcs(ch);
        if (OS.SendMessage(this.handle, OS.TB_MAPACCELERATOR, key, id = new int[1]) == 0) {
            return false;
        }
        if ((this.style & 0x800000) != 0 && !this.setTabGroupFocus()) {
            return false;
        }
        int index = OS.SendMessage(this.handle, 1049, id[0], 0);
        if (index == -1) {
            return false;
        }
        OS.SendMessage(this.handle, 1096, index, 0);
        this.items[id[0]].click(false);
        return true;
    }

    boolean mnemonicMatch(char ch) {
        int[] id;
        int key = Display.wcsToMbcs(ch);
        if (OS.SendMessage(this.handle, OS.TB_MAPACCELERATOR, key, id = new int[1]) == 0) {
            return false;
        }
        int index = OS.SendMessage(this.handle, 1049, id[0], 0);
        if (index == -1) {
            return false;
        }
        return this.findMnemonic(this.items[id[0]].text) != '\u0000';
    }

    void releaseChildren(boolean destroy) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                ToolItem item = this.items[i];
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                ++i;
            }
            this.items = null;
        }
        super.releaseChildren(destroy);
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.imageList != null) {
            OS.SendMessage(this.handle, 1072, 0, 0);
            this.display.releaseToolImageList(this.imageList);
        }
        if (this.hotImageList != null) {
            OS.SendMessage(this.handle, 1076, 0, 0);
            this.display.releaseToolHotImageList(this.hotImageList);
        }
        if (this.disabledImageList != null) {
            OS.SendMessage(this.handle, 1078, 0, 0);
            this.display.releaseToolDisabledImageList(this.disabledImageList);
        }
        this.disabledImageList = null;
        this.hotImageList = null;
        this.imageList = null;
    }

    void removeControl(Control control) {
        super.removeControl(control);
        int i = 0;
        while (i < this.items.length) {
            ToolItem item = this.items[i];
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
                ToolItem item = this.items[i];
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    void setBackgroundImage(int hBitmap) {
        super.setBackgroundImage(hBitmap);
        this.setBackgroundTransparent(hBitmap != 0);
    }

    void setBackgroundPixel(int pixel) {
        super.setBackgroundPixel(pixel);
        this.setBackgroundTransparent(pixel != -1);
    }

    void setBackgroundTransparent(boolean transparent) {
        if (!((this.style & 0x800000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed())) {
            int bits = OS.GetWindowLong(this.handle, -16);
            bits = !transparent && this.findBackgroundControl() == null ? (bits &= 0xFFFF7FFF) : (bits |= 0x8000);
            OS.SetWindowLong(this.handle, -16, bits);
        }
    }

    void setBounds(int x, int y, int width, int height, int flags) {
        if (this.parent.lpwp != null && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
            this.parent.setResizeChildren(false);
            this.parent.setResizeChildren(true);
        }
        super.setBounds(x, y, width, height, flags);
    }

    void setDefaultFont() {
        super.setDefaultFont();
        OS.SendMessage(this.handle, 1056, 0, 0);
        OS.SendMessage(this.handle, 1055, 0, 0);
    }

    void setDropDownItems(boolean set) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            ToolItem item;
            boolean hasText = false;
            boolean hasImage = false;
            int i = 0;
            while (i < this.items.length) {
                item = this.items[i];
                if (item != null) {
                    if (!hasText) {
                        boolean bl = hasText = item.text.length() != 0;
                    }
                    if (!hasImage) {
                        boolean bl = hasImage = item.image != null;
                    }
                    if (hasText && hasImage) break;
                }
                ++i;
            }
            if (hasImage && !hasText) {
                i = 0;
                while (i < this.items.length) {
                    item = this.items[i];
                    if (item != null && (item.style & 4) != 0) {
                        TBBUTTONINFO info = new TBBUTTONINFO();
                        info.cbSize = TBBUTTONINFO.sizeof;
                        info.dwMask = 8;
                        OS.SendMessage(this.handle, OS.TB_GETBUTTONINFO, item.id, info);
                        info.fsStyle = set ? (byte)(info.fsStyle | 8) : (byte)(info.fsStyle & 0xFFFFFFF7);
                        OS.SendMessage(this.handle, OS.TB_SETBUTTONINFO, item.id, info);
                    }
                    ++i;
                }
            }
        }
    }

    void setDisabledImageList(ImageList imageList) {
        if (this.disabledImageList == imageList) {
            return;
        }
        int hImageList = 0;
        this.disabledImageList = imageList;
        if (this.disabledImageList != null) {
            hImageList = this.disabledImageList.getHandle();
        }
        this.setDropDownItems(false);
        OS.SendMessage(this.handle, 1078, 0, hImageList);
        this.setDropDownItems(true);
    }

    public void setFont(Font font) {
        this.checkWidget();
        this.setDropDownItems(false);
        super.setFont(font);
        this.setDropDownItems(true);
        int index = 0;
        int mask = 60;
        while (index < this.items.length) {
            ToolItem item = this.items[index];
            if (item != null && (item.style & mask) != 0) break;
            ++index;
        }
        if (index == this.items.length) {
            OS.SendMessage(this.handle, 1056, 0, 0);
            OS.SendMessage(this.handle, 1055, 0, 0);
        }
        this.layoutItems();
    }

    void setHotImageList(ImageList imageList) {
        if (this.hotImageList == imageList) {
            return;
        }
        int hImageList = 0;
        this.hotImageList = imageList;
        if (this.hotImageList != null) {
            hImageList = this.hotImageList.getHandle();
        }
        this.setDropDownItems(false);
        OS.SendMessage(this.handle, 1076, 0, hImageList);
        this.setDropDownItems(true);
    }

    void setImageList(ImageList imageList) {
        if (this.imageList == imageList) {
            return;
        }
        int hImageList = 0;
        this.imageList = imageList;
        if (this.imageList != null) {
            hImageList = imageList.getHandle();
        }
        this.setDropDownItems(false);
        OS.SendMessage(this.handle, 1072, 0, hImageList);
        this.setDropDownItems(true);
    }

    public boolean setParent(Composite parent) {
        this.checkWidget();
        if (!super.setParent(parent)) {
            return false;
        }
        int hwndParent = parent.handle;
        OS.SendMessage(this.handle, 1061, hwndParent, 0);
        int hwndShell = parent.getShell().handle;
        int hwndToolTip = OS.SendMessage(this.handle, 1059, 0, 0);
        OS.SetWindowLongPtr(hwndToolTip, -8, hwndShell);
        return true;
    }

    public void setRedraw(boolean redraw) {
        this.checkWidget();
        this.setDropDownItems(false);
        super.setRedraw(redraw);
        this.setDropDownItems(true);
    }

    void setRowCount(int count) {
        if ((this.style & 0x200) != 0) {
            RECT rect = new RECT();
            OS.GetWindowRect(this.handle, rect);
            OS.MapWindowPoints(0, this.parent.handle, rect, 2);
            this.ignoreResize = true;
            OS.SendMessage(this.handle, 1063, OS.MAKEWPARAM(count += 2, 1), 0);
            int flags = 22;
            this.SetWindowPos(this.handle, 0, 0, 0, rect.right - rect.left, rect.bottom - rect.top, flags);
            this.ignoreResize = false;
        }
    }

    void setTabItemList(ToolItem[] tabList) {
        this.checkWidget();
        if (tabList != null) {
            int i = 0;
            while (i < tabList.length) {
                ToolItem item = tabList[i];
                if (item == null) {
                    this.error(5);
                }
                if (item.isDisposed()) {
                    this.error(5);
                }
                if (item.parent != this) {
                    this.error(32);
                }
                ++i;
            }
            ToolItem[] newList = new ToolItem[tabList.length];
            System.arraycopy(tabList, 0, newList, 0, tabList.length);
            tabList = newList;
        }
        this.tabItemList = tabList;
    }

    boolean setTabItemFocus() {
        int index = 0;
        while (index < this.items.length) {
            ToolItem item = this.items[index];
            if (item != null && (item.style & 2) == 0 && item.getEnabled()) break;
            ++index;
        }
        if (index == this.items.length) {
            return false;
        }
        return super.setTabItemFocus();
    }

    String toolTipText(NMTTDISPINFO hdr) {
        if ((hdr.uFlags & 1) != 0) {
            return null;
        }
        if (!this.hasCursor()) {
            return "";
        }
        int index = hdr.idFrom;
        int hwndToolTip = OS.SendMessage(this.handle, 1059, 0, 0);
        if (hwndToolTip == hdr.hwndFrom) {
            ToolItem item;
            hdr.uFlags = (this.style & 0x4000000) != 0 ? (hdr.uFlags |= 4) : (hdr.uFlags &= 0xFFFFFFFB);
            if (this.toolTipText != null) {
                return "";
            }
            if (index >= 0 && index < this.items.length && (item = this.items[index]) != null) {
                if (this.lastArrowId != -1) {
                    return "";
                }
                return item.toolTipText;
            }
        }
        return super.toolTipText(hdr);
    }

    void updateOrientation() {
        super.updateOrientation();
        if (this.imageList != null) {
            Point size = this.imageList.getImageSize();
            ImageList newImageList = this.display.getImageListToolBar(this.style & 0x4000000, size.x, size.y);
            ImageList newHotImageList = this.display.getImageListToolBarHot(this.style & 0x4000000, size.x, size.y);
            ImageList newDisabledImageList = this.display.getImageListToolBarDisabled(this.style & 0x4000000, size.x, size.y);
            TBBUTTONINFO info = new TBBUTTONINFO();
            info.cbSize = TBBUTTONINFO.sizeof;
            info.dwMask = 1;
            int count = OS.SendMessage(this.handle, 1048, 0, 0);
            int i = 0;
            while (i < count) {
                ToolItem item = this.items[i];
                if ((item.style & 2) == 0 && item.image != null) {
                    OS.SendMessage(this.handle, OS.TB_GETBUTTONINFO, item.id, info);
                    if (info.iImage != -2) {
                        Image image = this.imageList.get(info.iImage);
                        Image hot = this.hotImageList.get(info.iImage);
                        Image disabled = this.disabledImageList.get(info.iImage);
                        this.imageList.put(info.iImage, null);
                        this.hotImageList.put(info.iImage, null);
                        this.disabledImageList.put(info.iImage, null);
                        info.iImage = newImageList.add(image);
                        newHotImageList.add(hot);
                        newDisabledImageList.add(disabled);
                        OS.SendMessage(this.handle, OS.TB_SETBUTTONINFO, item.id, info);
                    }
                }
                ++i;
            }
            this.display.releaseToolImageList(this.imageList);
            this.display.releaseToolHotImageList(this.hotImageList);
            this.display.releaseToolDisabledImageList(this.disabledImageList);
            OS.SendMessage(this.handle, 1072, 0, newImageList.getHandle());
            OS.SendMessage(this.handle, 1076, 0, newHotImageList.getHandle());
            OS.SendMessage(this.handle, 1078, 0, newDisabledImageList.getHandle());
            this.imageList = newImageList;
            this.hotImageList = newHotImageList;
            this.disabledImageList = newDisabledImageList;
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 4 | 0x100 | 0x2000;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            bits |= 0x8000;
        }
        if ((this.style & 8) == 0) {
            bits |= 0x40;
        }
        if ((this.style & 0x40) != 0) {
            bits |= 0x200;
        }
        if ((this.style & 0x800000) != 0) {
            bits |= 0x800;
        }
        if (!(OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() || (this.style & 0x20000) == 0)) {
            bits |= 0x1000;
        }
        return bits;
    }

    TCHAR windowClass() {
        return ToolBarClass;
    }

    int windowProc() {
        return ToolBarProc;
    }

    LRESULT WM_CAPTURECHANGED(int wParam, int lParam) {
        LRESULT result = super.WM_CAPTURECHANGED(wParam, lParam);
        if (result != null) {
            return result;
        }
        int i = 0;
        while (i < this.items.length) {
            int fsState;
            ToolItem item = this.items[i];
            if (item != null && ((fsState = OS.SendMessage(this.handle, 1042, item.id, 0)) & 2) != 0) {
                OS.SendMessage(this.handle, 1041, item.id, fsState &= 0xFFFFFFFD);
            }
            ++i;
        }
        return result;
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 32: {
                TBBUTTON lpButton;
                int code;
                int index = OS.SendMessage(this.handle, 1095, 0, 0);
                if (index == -1 || (code = OS.SendMessage(this.handle, 1047, index, lpButton = new TBBUTTON())) == 0) break;
                this.items[lpButton.idCommand].click(false);
                return LRESULT.ZERO;
            }
        }
        return result;
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
        if (this.findBackgroundControl() != null && OS.COMCTL32_MAJOR < 6) {
            this.drawBackground(wParam);
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        LRESULT result = super.WM_GETDLGCODE(wParam, lParam);
        if (result != null) {
            return result;
        }
        return new LRESULT(8193);
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
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        TBBUTTON lpButton;
        int index = OS.SendMessage(this.handle, 1095, 0, 0);
        int code = OS.SendMessage(this.handle, 1047, index, lpButton = new TBBUTTON());
        if (code != 0) {
            this.lastFocusId = lpButton.idCommand;
        }
        return super.WM_KILLFOCUS(wParam, lParam);
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        if (this.ignoreMouse) {
            return null;
        }
        return super.WM_LBUTTONDOWN(wParam, lParam);
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        if (this.ignoreMouse) {
            return null;
        }
        return super.WM_LBUTTONUP(wParam, lParam);
    }

    LRESULT WM_MOUSELEAVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSELEAVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            int hwndToolTip = OS.SendMessage(this.handle, 1059, 0, 0);
            if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, lpti) != 0 && (lpti.uFlags & 1) == 0) {
                OS.SendMessage(hwndToolTip, OS.TTM_DELTOOL, 0, lpti);
                OS.SendMessage(hwndToolTip, OS.TTM_ADDTOOL, 0, lpti);
            }
        }
        return result;
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        if (OS.GetMessagePos() != this.display.lastMouse) {
            this.lastArrowId = -1;
        }
        return super.WM_MOUSEMOVE(wParam, lParam);
    }

    LRESULT WM_NOTIFY(int wParam, int lParam) {
        LRESULT result = super.WM_NOTIFY(wParam, lParam);
        if (result != null) {
            return result;
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if (this.lastFocusId != -1 && this.handle == OS.GetFocus()) {
            int index = OS.SendMessage(this.handle, 1049, this.lastFocusId, 0);
            OS.SendMessage(this.handle, 1096, index, 0);
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        if (this.ignoreResize) {
            int code = this.callWindowProc(this.handle, 5, wParam, lParam);
            if (code == 0) {
                return LRESULT.ZERO;
            }
            return new LRESULT(code);
        }
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (this.isDisposed()) {
            return result;
        }
        if ((this.style & 0x800) != 0 && (this.style & 0x40) != 0) {
            RECT windowRect = new RECT();
            OS.GetWindowRect(this.handle, windowRect);
            int index = 0;
            int border = this.getBorderWidth() * 2;
            RECT rect = new RECT();
            int count = OS.SendMessage(this.handle, 1048, 0, 0);
            while (index < count) {
                OS.SendMessage(this.handle, 1053, index, rect);
                OS.MapWindowPoints(this.handle, 0, rect, 2);
                if (rect.right > windowRect.right - border * 2) break;
                ++index;
            }
            int bits = OS.SendMessage(this.handle, 1109, 0, 0);
            bits = index == count ? (bits |= 0x10) : (bits &= 0xFFFFFFEF);
            OS.SendMessage(this.handle, 1108, 0, bits);
        }
        this.layoutItems();
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.ignoreResize) {
            return result;
        }
        if (!this.getDrawing()) {
            return result;
        }
        if ((this.style & 0x40) == 0) {
            return result;
        }
        if (!OS.IsWindowVisible(this.handle)) {
            return result;
        }
        if (OS.SendMessage(this.handle, 1064, 0, 0) == 1) {
            return result;
        }
        WINDOWPOS lpwp = new WINDOWPOS();
        OS.MoveMemory(lpwp, lParam, WINDOWPOS.sizeof);
        if ((lpwp.flags & 9) != 0) {
            return result;
        }
        RECT oldRect = new RECT();
        OS.GetClientRect(this.handle, oldRect);
        RECT newRect = new RECT();
        OS.SetRect(newRect, 0, 0, lpwp.cx, lpwp.cy);
        OS.SendMessage(this.handle, 131, 0, newRect);
        int oldWidth = oldRect.right - oldRect.left;
        int newWidth = newRect.right - newRect.left;
        if (newWidth > oldWidth) {
            RECT rect = new RECT();
            int newHeight = newRect.bottom - newRect.top;
            OS.SetRect(rect, oldWidth - 2, 0, oldWidth, newHeight);
            OS.InvalidateRect(this.handle, rect, false);
        }
        return result;
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        ToolItem child = this.items[OS.LOWORD(wParam)];
        if (child == null) {
            return null;
        }
        return child.wmCommandChild(wParam, lParam);
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -710: {
                NMTOOLBAR lpnmtb = new NMTOOLBAR();
                OS.MoveMemory(lpnmtb, lParam, NMTOOLBAR.sizeof);
                ToolItem child = this.items[lpnmtb.iItem];
                if (child == null) break;
                Event event = new Event();
                event.detail = 4;
                int index = OS.SendMessage(this.handle, 1049, lpnmtb.iItem, 0);
                RECT rect = new RECT();
                OS.SendMessage(this.handle, 1053, index, rect);
                event.x = rect.left;
                event.y = rect.bottom;
                child.sendSelectionEvent(13, event, false);
                break;
            }
            case -12: {
                if (OS.COMCTL32_MAJOR < 6) break;
                NMCUSTOMDRAW nmcd = new NMCUSTOMDRAW();
                OS.MoveMemory(nmcd, lParam, NMCUSTOMDRAW.sizeof);
                switch (nmcd.dwDrawStage) {
                    case 3: {
                        int bits = OS.GetWindowLong(this.handle, -16);
                        if ((bits & 0x800) == 0) {
                            this.drawBackground(nmcd.hdc);
                        } else {
                            RECT rect = new RECT();
                            OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                            this.drawBackground(nmcd.hdc, rect);
                        }
                        return new LRESULT(4);
                    }
                }
                break;
            }
            case -713: {
                if (OS.IsWinCE) break;
                NMTBHOTITEM lpnmhi = new NMTBHOTITEM();
                OS.MoveMemory(lpnmhi, lParam, NMTBHOTITEM.sizeof);
                switch (lpnmhi.dwFlags) {
                    case 1: {
                        if (this.lastArrowId == -1) break;
                        return LRESULT.ONE;
                    }
                    case 2: {
                        RECT client = new RECT();
                        OS.GetClientRect(this.handle, client);
                        int index = OS.SendMessage(this.handle, 1049, lpnmhi.idNew, 0);
                        RECT rect = new RECT();
                        OS.SendMessage(this.handle, 1053, index, rect);
                        if (rect.right > client.right || rect.bottom > client.bottom) {
                            return LRESULT.ONE;
                        }
                        this.lastArrowId = lpnmhi.idNew;
                        break;
                    }
                    default: {
                        this.lastArrowId = -1;
                    }
                }
                if ((lpnmhi.dwFlags & 0x20) != 0) break;
                this.lastHotId = lpnmhi.idNew;
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }
}

