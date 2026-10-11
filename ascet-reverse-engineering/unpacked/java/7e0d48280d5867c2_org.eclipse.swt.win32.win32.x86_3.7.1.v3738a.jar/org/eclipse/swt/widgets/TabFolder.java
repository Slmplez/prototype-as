/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TCHITTESTINFO;
import org.eclipse.swt.internal.win32.TCITEM;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.TypedListener;

public class TabFolder
extends Composite {
    TabItem[] items;
    ImageList imageList;
    static final int TabFolderProc;
    static final TCHAR TabFolderClass;
    boolean createdAsRTL;
    static final int ID_UPDOWN = 1;

    static {
        TabFolderClass = new TCHAR(0, "SysTabControl32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, TabFolderClass, lpWndClass);
        TabFolderProc = lpWndClass.lpfnWndProc;
        int hInstance = OS.GetModuleHandle(null);
        int hHeap = OS.GetProcessHeap();
        lpWndClass.hInstance = hInstance;
        lpWndClass.style &= 0xFFFFBFFC;
        int byteCount = TabFolderClass.length() * TCHAR.sizeof;
        int lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpszClassName, TabFolderClass, byteCount);
        lpWndClass.lpszClassName = lpszClassName;
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpszClassName);
    }

    public TabFolder(Composite parent, int style) {
        super(parent, TabFolder.checkStyle(style));
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
        if (this.handle == 0) {
            return 0;
        }
        return OS.CallWindowProc(TabFolderProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        if (OS.IsPPC && (style & 0x80) == 0) {
            style |= 0x400;
        }
        style = TabFolder.checkBits(style, 128, 1024, 0, 0, 0, 0);
        return style & 0xFFFFFCFF;
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        Point size = super.computeSize(wHint, hHint, changed);
        RECT insetRect = new RECT();
        RECT itemRect = new RECT();
        OS.SendMessage(this.handle, 4904, 0, insetRect);
        int width = insetRect.left - insetRect.right;
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        if (count != 0) {
            OS.SendMessage(this.handle, 4874, count - 1, itemRect);
            width = Math.max(width, itemRect.right - insetRect.right);
        }
        RECT rect = new RECT();
        OS.SetRect(rect, 0, 0, width, size.y);
        OS.SendMessage(this.handle, 4904, 1, rect);
        int border = this.getBorderWidth();
        rect.left -= border;
        rect.right += border;
        width = rect.right - rect.left;
        size.x = Math.max(width, size.x);
        return size;
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        OS.SendMessage(this.handle, 4904, 1, rect);
        int border = this.getBorderWidth();
        rect.left -= border;
        rect.right += border;
        rect.top -= border;
        rect.bottom += border;
        int newWidth = rect.right - rect.left;
        int newHeight = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, newWidth, newHeight);
    }

    void createItem(TabItem item, int index) {
        TCITEM tcItem;
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        if (index < 0 || index > count) {
            this.error(6);
        }
        if (count == this.items.length) {
            TabItem[] newItems = new TabItem[this.items.length + 4];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
        }
        if (OS.SendMessage(this.handle, OS.TCM_INSERTITEM, index, tcItem = new TCITEM()) == -1) {
            this.error(14);
        }
        System.arraycopy(this.items, index, this.items, index + 1, count - index);
        this.items[index] = item;
        if (count == 0) {
            Event event = new Event();
            event.item = this.items[0];
            this.sendSelectionEvent(13, event, true);
        }
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFEFD;
        if (OS.IsPPC) {
            OS.SendMessage(this.handle, 8199, 524, 0);
        }
        int hwndToolTip = OS.SendMessage(this.handle, 4909, 0, 0);
        OS.SendMessage(hwndToolTip, 1048, 0, Short.MAX_VALUE);
        this.createdAsRTL = (this.style & 0x4000000) != 0;
    }

    void createWidget() {
        super.createWidget();
        this.items = new TabItem[4];
    }

    void destroyItem(TabItem item) {
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        int index = 0;
        while (index < count) {
            if (this.items[index] == item) break;
            ++index;
        }
        if (index == count) {
            return;
        }
        int selectionIndex = OS.SendMessage(this.handle, 4875, 0, 0);
        if (OS.SendMessage(this.handle, 4872, index, 0) == 0) {
            this.error(15);
        }
        System.arraycopy(this.items, index + 1, this.items, index, --count - index);
        this.items[count] = null;
        if (count == 0) {
            if (this.imageList != null) {
                OS.SendMessage(this.handle, 4867, 0, 0);
                this.display.releaseImageList(this.imageList);
            }
            this.imageList = null;
            this.items = new TabItem[4];
        }
        if (count > 0 && index == selectionIndex) {
            this.setSelection(Math.max(0, selectionIndex - 1), true);
        }
    }

    void drawThemeBackground(int hDC, int hwnd, RECT rect) {
        RECT rect2 = new RECT();
        OS.GetClientRect(this.handle, rect2);
        OS.MapWindowPoints(this.handle, hwnd, rect2, 2);
        if (OS.IntersectRect(new RECT(), rect2, rect)) {
            OS.DrawThemeBackground(this.display.hTabTheme(), hDC, 10, 0, rect2, null);
        }
    }

    Control findThemeControl() {
        return this;
    }

    public Rectangle getClientArea() {
        this.checkWidget();
        this.forceResize();
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        OS.SendMessage(this.handle, 4904, 0, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public TabItem getItem(int index) {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        if (index < 0 || index >= count) {
            this.error(6);
        }
        return this.items[index];
    }

    public TabItem getItem(Point point) {
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        TCHITTESTINFO pinfo = new TCHITTESTINFO();
        pinfo.x = point.x;
        pinfo.y = point.y;
        int index = OS.SendMessage(this.handle, 4877, 0, pinfo);
        if (index == -1) {
            return null;
        }
        return this.items[index];
    }

    public int getItemCount() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 4868, 0, 0);
    }

    public TabItem[] getItems() {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        TabItem[] result = new TabItem[count];
        System.arraycopy(this.items, 0, result, 0, count);
        return result;
    }

    public TabItem[] getSelection() {
        this.checkWidget();
        int index = OS.SendMessage(this.handle, 4875, 0, 0);
        if (index == -1) {
            return new TabItem[0];
        }
        return new TabItem[]{this.items[index]};
    }

    public int getSelectionIndex() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 4875, 0, 0);
    }

    int imageIndex(Image image) {
        if (image == null) {
            return -2;
        }
        if (this.imageList == null) {
            Rectangle bounds = image.getBounds();
            this.imageList = this.display.getImageList(this.style & 0x4000000, bounds.width, bounds.height);
            int index = this.imageList.add(image);
            int hImageList = this.imageList.getHandle();
            OS.SendMessage(this.handle, 4867, 0, hImageList);
            return index;
        }
        int index = this.imageList.indexOf(image);
        if (index == -1) {
            index = this.imageList.add(image);
        } else {
            this.imageList.put(index, image);
        }
        return index;
    }

    public int indexOf(TabItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        int i = 0;
        while (i < count) {
            if (this.items[i] == item) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    Point minimumSize(int wHint, int hHint, boolean flushCache) {
        Control[] children = this._getChildren();
        int width = 0;
        int height = 0;
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            int index = 0;
            int count = OS.SendMessage(this.handle, 4868, 0, 0);
            while (index < count) {
                if (this.items[index].control == child) break;
                ++index;
            }
            if (index == count) {
                Rectangle rect = child.getBounds();
                width = Math.max(width, rect.x + rect.width);
                height = Math.max(height, rect.y + rect.height);
            } else {
                Point size = child.computeSize(wHint, hHint, flushCache);
                width = Math.max(width, size.x);
                height = Math.max(height, size.y);
            }
            ++i;
        }
        return new Point(width, height);
    }

    boolean mnemonicHit(char key) {
        int i = 0;
        while (i < this.items.length) {
            TabItem item = this.items[i];
            if (item != null) {
                char ch = this.findMnemonic(item.getText());
                if (Character.toUpperCase(key) == Character.toUpperCase(ch) && this.forceFocus()) {
                    if (i != this.getSelectionIndex()) {
                        this.setSelection(i, true);
                    }
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    boolean mnemonicMatch(char key) {
        int i = 0;
        while (i < this.items.length) {
            TabItem item = this.items[i];
            if (item != null) {
                char ch = this.findMnemonic(item.getText());
                if (Character.toUpperCase(key) == Character.toUpperCase(ch)) {
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    void releaseChildren(boolean destroy) {
        if (this.items != null) {
            int count = OS.SendMessage(this.handle, 4868, 0, 0);
            int i = 0;
            while (i < count) {
                TabItem item = this.items[i];
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
            OS.SendMessage(this.handle, 4867, 0, 0);
            this.display.releaseImageList(this.imageList);
        }
        this.imageList = null;
    }

    void removeControl(Control control) {
        super.removeControl(control);
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        int i = 0;
        while (i < count) {
            TabItem item = this.items[i];
            if (item.control == control) {
                item.setControl(null);
            }
            ++i;
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

    void reskinChildren(int flags) {
        if (this.items != null) {
            int count = OS.SendMessage(this.handle, 4868, 0, 0);
            int i = 0;
            while (i < count) {
                TabItem item = this.items[i];
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    public void setSelection(TabItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        this.setSelection(new TabItem[]{item});
    }

    public void setSelection(TabItem[] items) {
        this.checkWidget();
        if (items == null) {
            this.error(4);
        }
        if (items.length == 0) {
            this.setSelection(-1, false);
        } else {
            int i = items.length - 1;
            while (i >= 0) {
                int index = this.indexOf(items[i]);
                if (index != -1) {
                    this.setSelection(index, false);
                }
                --i;
            }
        }
    }

    public void setFont(Font font) {
        this.checkWidget();
        Rectangle oldRect = this.getClientArea();
        super.setFont(font);
        Rectangle newRect = this.getClientArea();
        if (!oldRect.equals(newRect)) {
            this.sendResize();
            int index = OS.SendMessage(this.handle, 4875, 0, 0);
            if (index != -1) {
                TabItem item = this.items[index];
                Control control = item.control;
                if (control != null && !control.isDisposed()) {
                    control.setBounds(this.getClientArea());
                }
            }
        }
    }

    public void setSelection(int index) {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 4868, 0, 0);
        if (index < 0 || index >= count) {
            return;
        }
        this.setSelection(index, false);
    }

    void setSelection(int index, boolean notify) {
        int oldIndex = OS.SendMessage(this.handle, 4875, 0, 0);
        if (oldIndex == index) {
            return;
        }
        if (oldIndex != -1) {
            TabItem item = this.items[oldIndex];
            Control control = item.control;
            if (control != null && !control.isDisposed()) {
                control.setVisible(false);
            }
        }
        OS.SendMessage(this.handle, 4876, index, 0);
        int newIndex = OS.SendMessage(this.handle, 4875, 0, 0);
        if (newIndex != -1) {
            TabItem item = this.items[newIndex];
            Control control = item.control;
            if (control != null && !control.isDisposed()) {
                control.setBounds(this.getClientArea());
                control.setVisible(true);
            }
            if (notify) {
                Event event = new Event();
                event.item = item;
                this.sendSelectionEvent(13, event, true);
            }
        }
    }

    String toolTipText(NMTTDISPINFO hdr) {
        if ((hdr.uFlags & 1) != 0) {
            return null;
        }
        int index = hdr.idFrom;
        int hwndToolTip = OS.SendMessage(this.handle, 4909, 0, 0);
        if (hwndToolTip == hdr.hwndFrom) {
            TabItem item;
            hdr.uFlags = (this.style & 0x4000000) != 0 ? (hdr.uFlags |= 4) : (hdr.uFlags &= 0xFFFFFFFB);
            if (this.toolTipText != null) {
                return "";
            }
            if (index >= 0 && index < this.items.length && (item = this.items[index]) != null) {
                return item.toolTipText;
            }
        }
        return super.toolTipText(hdr);
    }

    boolean traversePage(boolean next) {
        int count = this.getItemCount();
        if (count <= 1) {
            return false;
        }
        int index = this.getSelectionIndex();
        if (index == -1) {
            index = 0;
        } else {
            int offset = next ? 1 : -1;
            index = (index + offset + count) % count;
        }
        this.setSelection(index, true);
        if (index == this.getSelectionIndex()) {
            OS.SendMessage(this.handle, 295, 3, 0);
            return true;
        }
        return false;
    }

    void updateOrientation() {
        super.updateOrientation();
        int hwndChild = OS.GetWindow(this.handle, 5);
        while (hwndChild != 0) {
            TCHAR buffer = new TCHAR(0, 128);
            OS.GetClassName(hwndChild, buffer, buffer.length());
            String className = buffer.toString(0, buffer.strlen());
            if (className.equals("msctls_updown32")) {
                int bits = OS.GetWindowLong(hwndChild, -20);
                bits = (this.style & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
                OS.SetWindowLong(hwndChild, -20, bits);
                OS.InvalidateRect(hwndChild, null, true);
                break;
            }
            hwndChild = OS.GetWindow(hwndChild, 2);
        }
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        OS.SetWindowPos(this.handle, 0, 0, 0, width - 1, height - 1, 6);
        OS.SetWindowPos(this.handle, 0, 0, 0, width, height, 6);
        if (this.imageList != null) {
            Point size = this.imageList.getImageSize();
            this.display.releaseImageList(this.imageList);
            this.imageList = this.display.getImageList(this.style & 0x4000000, size.x, size.y);
            int hImageList = this.imageList.getHandle();
            OS.SendMessage(this.handle, 4867, 0, hImageList);
            TCITEM tcItem = new TCITEM();
            tcItem.mask = 2;
            int i = 0;
            while (i < this.items.length) {
                TabItem item = this.items[i];
                if (item == null) break;
                Image image = item.image;
                if (image != null) {
                    tcItem.iImage = this.imageIndex(image);
                    OS.SendMessage(this.handle, OS.TCM_SETITEM, i, tcItem);
                }
                ++i;
            }
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x2000000;
        if ((this.style & 0x80000) != 0) {
            bits |= 0x8000;
        }
        if ((this.style & 0x400) != 0) {
            bits |= 2;
        }
        return bits | 0x4000;
    }

    TCHAR windowClass() {
        return TabFolderClass;
    }

    int windowProc() {
        return TabFolderProc;
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
            case 37: 
            case 39: {
                boolean isRTL;
                boolean bl = isRTL = (this.style & 0x4000000) != 0;
                if (isRTL == this.createdAsRTL) break;
                int code = this.callWindowProc(this.handle, 256, wParam == 39 ? 37 : 39, lParam);
                return new LRESULT(code);
            }
        }
        return result;
    }

    LRESULT WM_MOUSELEAVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSELEAVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            int hwndToolTip = OS.SendMessage(this.handle, 4909, 0, 0);
            if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, lpti) != 0 && (lpti.uFlags & 1) == 0) {
                OS.SendMessage(hwndToolTip, OS.TTM_DELTOOL, 0, lpti);
                OS.SendMessage(hwndToolTip, OS.TTM_ADDTOOL, 0, lpti);
            }
        }
        return result;
    }

    LRESULT WM_NCHITTEST(int wParam, int lParam) {
        LRESULT result = super.WM_NCHITTEST(wParam, lParam);
        if (result != null) {
            return result;
        }
        int hittest = OS.DefWindowProc(this.handle, 132, wParam, lParam);
        return new LRESULT(hittest);
    }

    LRESULT WM_NOTIFY(int wParam, int lParam) {
        LRESULT result = super.WM_NOTIFY(wParam, lParam);
        if (result != null) {
            return result;
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PARENTNOTIFY(int wParam, int lParam) {
        LRESULT result = super.WM_PARENTNOTIFY(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return result;
        }
        if ((this.style & 0x4000000) != 0) {
            int code = OS.LOWORD(wParam);
            switch (code) {
                case 1: {
                    int id = OS.HIWORD(wParam);
                    int hwnd = lParam;
                    if (id != 1) break;
                    int bits = OS.GetWindowLong(hwnd, -20);
                    OS.SetWindowLong(hwnd, -20, bits | 0x400000);
                }
            }
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (this.isDisposed()) {
            return result;
        }
        int index = OS.SendMessage(this.handle, 4875, 0, 0);
        if (index != -1) {
            TabItem item = this.items[index];
            Control control = item.control;
            if (control != null && !control.isDisposed()) {
                control.setBounds(this.getClientArea());
            }
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!OS.IsWindowVisible(this.handle)) {
            return result;
        }
        WINDOWPOS lpwp = new WINDOWPOS();
        OS.MoveMemory(lpwp, lParam, WINDOWPOS.sizeof);
        if ((lpwp.flags & 9) != 0) {
            return result;
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0x200) != 0) {
            OS.InvalidateRect(this.handle, null, true);
            return result;
        }
        RECT rect = new RECT();
        OS.SetRect(rect, 0, 0, lpwp.cx, lpwp.cy);
        OS.SendMessage(this.handle, 131, 0, rect);
        int newWidth = rect.right - rect.left;
        int newHeight = rect.bottom - rect.top;
        OS.GetClientRect(this.handle, rect);
        int oldWidth = rect.right - rect.left;
        int oldHeight = rect.bottom - rect.top;
        if (newWidth == oldWidth && newHeight == oldHeight) {
            return result;
        }
        RECT inset = new RECT();
        OS.SendMessage(this.handle, 4904, 0, inset);
        int marginX = -inset.right;
        int marginY = -inset.bottom;
        if (newWidth != oldWidth) {
            int left = oldWidth;
            if (newWidth < oldWidth) {
                left = newWidth;
            }
            OS.SetRect(rect, left - marginX, 0, newWidth, newHeight);
            OS.InvalidateRect(this.handle, rect, true);
        }
        if (newHeight != oldHeight) {
            int bottom = oldHeight;
            if (newHeight < oldHeight) {
                bottom = newHeight;
            }
            if (newWidth < oldWidth) {
                oldWidth -= marginX;
            }
            OS.SetRect(rect, 0, bottom - marginY, oldWidth, newHeight);
            OS.InvalidateRect(this.handle, rect, true);
        }
        return result;
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        int code = hdr.code;
        switch (code) {
            case -552: 
            case -551: {
                Control control;
                TabItem item = null;
                int index = OS.SendMessage(this.handle, 4875, 0, 0);
                if (index != -1) {
                    item = this.items[index];
                }
                if (item != null && (control = item.control) != null && !control.isDisposed()) {
                    if (code == -551) {
                        control.setBounds(this.getClientArea());
                    }
                    control.setVisible(code == -551);
                }
                if (code != -551) break;
                Event event = new Event();
                event.item = item;
                this.sendSelectionEvent(13, event, false);
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }
}

