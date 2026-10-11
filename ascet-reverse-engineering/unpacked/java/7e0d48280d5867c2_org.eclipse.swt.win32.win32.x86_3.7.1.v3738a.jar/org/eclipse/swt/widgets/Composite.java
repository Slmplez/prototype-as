/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.NMTTDISPINFOA;
import org.eclipse.swt.internal.win32.NMTTDISPINFOW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.widgets.Widget;

public class Composite
extends Scrollable {
    Layout layout;
    WINDOWPOS[] lpwp;
    Control[] tabList;
    int layoutCount;
    int backgroundMode;

    Composite() {
    }

    public Composite(Composite parent, int style) {
        super(parent, style);
    }

    /*
     * Unable to fully structure code
     */
    Control[] _getChildren() {
        count = 0;
        hwndChild = OS.GetWindow(this.handle, 5);
        if (hwndChild != 0) ** GOTO lbl7
        return new Control[0];
lbl-1000:
        // 1 sources

        {
            ++count;
            hwndChild = OS.GetWindow(hwndChild, 2);
lbl7:
            // 2 sources

            ** while (hwndChild != 0)
        }
lbl8:
        // 1 sources

        children = new Control[count];
        index = 0;
        hwndChild = OS.GetWindow(this.handle, 5);
        while (hwndChild != 0) {
            control = this.display.getControl(hwndChild);
            if (control != null && control != this) {
                children[index++] = control;
            }
            hwndChild = OS.GetWindow(hwndChild, 2);
        }
        if (count == index) {
            return children;
        }
        newChildren = new Control[index];
        System.arraycopy(children, 0, newChildren, 0, index);
        return newChildren;
    }

    Control[] _getTabList() {
        if (this.tabList == null) {
            return this.tabList;
        }
        int count = 0;
        int i = 0;
        while (i < this.tabList.length) {
            if (!this.tabList[i].isDisposed()) {
                ++count;
            }
            ++i;
        }
        if (count == this.tabList.length) {
            return this.tabList;
        }
        Control[] newList = new Control[count];
        int index = 0;
        int i2 = 0;
        while (i2 < this.tabList.length) {
            if (!this.tabList[i2].isDisposed()) {
                newList[index++] = this.tabList[i2];
            }
            ++i2;
        }
        this.tabList = newList;
        return this.tabList;
    }

    public void changed(Control[] changed) {
        this.checkWidget();
        if (changed == null) {
            this.error(5);
        }
        int i = 0;
        while (i < changed.length) {
            Control control = changed[i];
            if (control == null) {
                this.error(5);
            }
            if (control.isDisposed()) {
                this.error(5);
            }
            boolean ancestor = false;
            Composite composite = control.parent;
            while (composite != null) {
                boolean bl = ancestor = composite == this;
                if (ancestor) break;
                composite = composite.parent;
            }
            if (!ancestor) {
                this.error(32);
            }
            ++i;
        }
        i = 0;
        while (i < changed.length) {
            Control child = changed[i];
            Composite composite = child.parent;
            while (child != this) {
                if (composite.layout == null || !composite.layout.flushCache(child)) {
                    composite.state |= 0x40;
                }
                child = composite;
                composite = child.parent;
            }
            ++i;
        }
    }

    void checkBuffered() {
        if (OS.IsWinCE || (this.state & 2) == 0) {
            super.checkBuffered();
        }
    }

    void checkComposited() {
        if ((this.state & 2) != 0 && (this.style & 0x40000000) != 0) {
            int hwndParent = this.parent.handle;
            int bits = OS.GetWindowLong(hwndParent, -20);
            OS.SetWindowLong(hwndParent, -20, bits |= 0x2000000);
        }
    }

    protected void checkSubclass() {
    }

    Widget[] computeTabList() {
        Widget[] result = super.computeTabList();
        if (result.length == 0) {
            return result;
        }
        Control[] list = this.tabList != null ? this._getTabList() : this._getChildren();
        int i = 0;
        while (i < list.length) {
            Control child = list[i];
            Widget[] childList = child.computeTabList();
            if (childList.length != 0) {
                Widget[] newResult = new Widget[result.length + childList.length];
                System.arraycopy(result, 0, newResult, 0, result.length);
                System.arraycopy(childList, 0, newResult, result.length, childList.length);
                result = newResult;
            }
            ++i;
        }
        return result;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        Point size;
        this.checkWidget();
        this.display.runSkin();
        if (this.layout != null) {
            if (wHint == -1 || hHint == -1) {
                boolean bl = (this.state & 0x40) != 0;
                this.state &= 0xFFFFFFBF;
                size = this.layout.computeSize(this, wHint, hHint, changed |= bl);
            } else {
                size = new Point(wHint, hHint);
            }
        } else {
            size = this.minimumSize(wHint, hHint, changed);
            if (size.x == 0) {
                size.x = 64;
            }
            if (size.y == 0) {
                size.y = 64;
            }
        }
        if (wHint != -1) {
            size.x = wHint;
        }
        if (hHint != -1) {
            size.y = hHint;
        }
        Rectangle trim = this.computeTrim(0, 0, size.x, size.y);
        return new Point(trim.width, trim.height);
    }

    void copyArea(GC gc, int x, int y, int width, int height) {
        this.checkWidget();
        if (gc == null) {
            this.error(4);
        }
        if (gc.isDisposed()) {
            this.error(5);
        }
        int hDC = gc.handle;
        int nSavedDC = OS.SaveDC(hDC);
        OS.IntersectClipRect(hDC, 0, 0, width, height);
        POINT lpPoint = new POINT();
        int hwndParent = OS.GetParent(this.handle);
        OS.MapWindowPoints(this.handle, hwndParent, lpPoint, 1);
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        POINT lpPoint1 = new POINT();
        POINT lpPoint2 = new POINT();
        OS.SetWindowOrgEx(hDC, x += lpPoint.x - rect.left, y += lpPoint.y - rect.top, lpPoint1);
        OS.SetBrushOrgEx(hDC, x, y, lpPoint2);
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0x10000000) == 0) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
        }
        OS.RedrawWindow(this.handle, null, 0, 384);
        OS.PrintWindow(this.handle, hDC, 0);
        if ((bits & 0x10000000) == 0) {
            OS.DefWindowProc(this.handle, 11, 0, 0);
        }
        OS.RestoreDC(hDC, nSavedDC);
    }

    void createHandle() {
        super.createHandle();
        this.state |= 2;
        if ((this.style & 0x300) == 0) {
            this.state |= 0x100;
        }
        if ((this.style & 0x40000000) != 0) {
            int bits = OS.GetWindowLong(this.handle, -20);
            OS.SetWindowLong(this.handle, -20, bits |= 0x20);
        }
    }

    public void drawBackground(GC gc, int x, int y, int width, int height, int offsetX, int offsetY) {
        this.checkWidget();
        if (gc == null) {
            this.error(4);
        }
        if (gc.isDisposed()) {
            this.error(5);
        }
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        int hDC = gc.handle;
        int pixel = this.background == -1 ? gc.getBackground().handle : -1;
        this.drawBackground(hDC, rect, pixel, offsetX, offsetY);
    }

    Composite findDeferredControl() {
        return this.layoutCount > 0 ? this : this.parent.findDeferredControl();
    }

    Menu[] findMenus(Control control) {
        if (control == this) {
            return new Menu[0];
        }
        Menu[] result = super.findMenus(control);
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            Menu[] menuList = child.findMenus(control);
            if (menuList.length != 0) {
                Menu[] newResult = new Menu[result.length + menuList.length];
                System.arraycopy(result, 0, newResult, 0, result.length);
                System.arraycopy(menuList, 0, newResult, result.length, menuList.length);
                result = newResult;
            }
            ++i;
        }
        return result;
    }

    void fixChildren(Shell newShell, Shell oldShell, Decorations newDecorations, Decorations oldDecorations, Menu[] menus) {
        super.fixChildren(newShell, oldShell, newDecorations, oldDecorations, menus);
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            children[i].fixChildren(newShell, oldShell, newDecorations, oldDecorations, menus);
            ++i;
        }
    }

    void fixTabList(Control control) {
        if (this.tabList == null) {
            return;
        }
        int count = 0;
        int i = 0;
        while (i < this.tabList.length) {
            if (this.tabList[i] == control) {
                ++count;
            }
            ++i;
        }
        if (count == 0) {
            return;
        }
        Control[] newList = null;
        int length = this.tabList.length - count;
        if (length != 0) {
            newList = new Control[length];
            int index = 0;
            int i2 = 0;
            while (i2 < this.tabList.length) {
                if (this.tabList[i2] != control) {
                    newList[index++] = this.tabList[i2];
                }
                ++i2;
            }
        }
        this.tabList = newList;
    }

    public int getBackgroundMode() {
        this.checkWidget();
        return this.backgroundMode;
    }

    public Control[] getChildren() {
        this.checkWidget();
        return this._getChildren();
    }

    int getChildrenCount() {
        int count = 0;
        int hwndChild = OS.GetWindow(this.handle, 5);
        while (hwndChild != 0) {
            ++count;
            hwndChild = OS.GetWindow(hwndChild, 2);
        }
        return count;
    }

    public Layout getLayout() {
        this.checkWidget();
        return this.layout;
    }

    public Control[] getTabList() {
        this.checkWidget();
        Control[] tabList = this._getTabList();
        if (tabList == null) {
            int count = 0;
            Control[] list = this._getChildren();
            int i = 0;
            while (i < list.length) {
                if (list[i].isTabGroup()) {
                    ++count;
                }
                ++i;
            }
            tabList = new Control[count];
            int index = 0;
            int i2 = 0;
            while (i2 < list.length) {
                if (list[i2].isTabGroup()) {
                    tabList[index++] = list[i2];
                }
                ++i2;
            }
        }
        return tabList;
    }

    boolean hooksKeys() {
        return this.hooks(1) || this.hooks(2);
    }

    public boolean getLayoutDeferred() {
        this.checkWidget();
        return this.layoutCount > 0;
    }

    public boolean isLayoutDeferred() {
        this.checkWidget();
        return this.findDeferredControl() != null;
    }

    public void layout() {
        this.checkWidget();
        this.layout(true);
    }

    public void layout(boolean changed) {
        this.checkWidget();
        if (this.layout == null) {
            return;
        }
        this.layout(changed, false);
    }

    public void layout(boolean changed, boolean all) {
        this.checkWidget();
        if (this.layout == null && !all) {
            return;
        }
        this.markLayout(changed, all);
        this.updateLayout(all);
    }

    public void layout(Control[] changed) {
        this.checkWidget();
        if (changed == null) {
            this.error(5);
        }
        this.layout(changed, 0);
    }

    public void layout(Control[] changed, int flags) {
        this.checkWidget();
        if (changed != null) {
            int i = 0;
            while (i < changed.length) {
                Control control = changed[i];
                if (control == null) {
                    this.error(5);
                }
                if (control.isDisposed()) {
                    this.error(5);
                }
                boolean ancestor = false;
                Composite composite = control.parent;
                while (composite != null) {
                    boolean bl = ancestor = composite == this;
                    if (ancestor) break;
                    composite = composite.parent;
                }
                if (!ancestor) {
                    this.error(32);
                }
                ++i;
            }
            int updateCount = 0;
            Composite[] update = new Composite[16];
            int i2 = 0;
            while (i2 < changed.length) {
                Control child = changed[i2];
                Composite composite = child.parent;
                while (child != this) {
                    if (composite.layout != null) {
                        composite.state |= 0x20;
                        if (!composite.layout.flushCache(child)) {
                            composite.state |= 0x40;
                        }
                    }
                    if (updateCount == update.length) {
                        Composite[] newUpdate = new Composite[update.length + 16];
                        System.arraycopy(update, 0, newUpdate, 0, update.length);
                        update = newUpdate;
                    }
                    int n = updateCount++;
                    Composite composite2 = composite;
                    update[n] = composite2;
                    child = composite2;
                    composite = child.parent;
                }
                ++i2;
            }
            if ((flags & 4) != 0) {
                this.setLayoutDeferred(true);
                this.display.addLayoutDeferred(this);
            }
            i2 = updateCount - 1;
            while (i2 >= 0) {
                update[i2].updateLayout(false);
                --i2;
            }
        } else {
            if (this.layout == null && (flags & 1) == 0) {
                return;
            }
            this.markLayout((flags & 2) != 0, (flags & 1) != 0);
            if ((flags & 4) != 0) {
                this.setLayoutDeferred(true);
                this.display.addLayoutDeferred(this);
            }
            this.updateLayout((flags & 1) != 0);
        }
    }

    void markLayout(boolean changed, boolean all) {
        if (this.layout != null) {
            this.state |= 0x20;
            if (changed) {
                this.state |= 0x40;
            }
        }
        if (all) {
            Control[] children = this._getChildren();
            int i = 0;
            while (i < children.length) {
                children[i].markLayout(changed, all);
                ++i;
            }
        }
    }

    Point minimumSize(int wHint, int hHint, boolean changed) {
        Control[] children = this._getChildren();
        Rectangle clientArea = this.getClientArea();
        int width = 0;
        int height = 0;
        int i = 0;
        while (i < children.length) {
            Rectangle rect = children[i].getBounds();
            width = Math.max(width, rect.x - clientArea.x + rect.width);
            height = Math.max(height, rect.y - clientArea.y + rect.height);
            ++i;
        }
        return new Point(width, height);
    }

    boolean redrawChildren() {
        if (!super.redrawChildren()) {
            return false;
        }
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            children[i].redrawChildren();
            ++i;
        }
        return true;
    }

    void releaseParent() {
        super.releaseParent();
        if ((this.state & 2) != 0 && (this.style & 0x40000000) != 0) {
            int bits;
            int hwndParent = this.parent.handle;
            int hwndChild = OS.GetWindow(hwndParent, 5);
            while (hwndChild != 0) {
                if (hwndChild != this.handle && ((bits = OS.GetWindowLong(hwndParent, -20)) & 0x20) != 0) {
                    return;
                }
                hwndChild = OS.GetWindow(hwndChild, 2);
            }
            bits = OS.GetWindowLong(hwndParent, -20);
            OS.SetWindowLong(hwndParent, -20, bits &= 0xFDFFFFFF);
        }
    }

    void releaseChildren(boolean destroy) {
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (child != null && !child.isDisposed()) {
                child.release(false);
            }
            ++i;
        }
        super.releaseChildren(destroy);
    }

    void releaseWidget() {
        int threadId;
        int hwndChild;
        super.releaseWidget();
        if ((this.state & 2) != 0 && (this.style & 0x1000000) != 0 && (hwndChild = OS.GetWindow(this.handle, 5)) != 0 && (threadId = OS.GetWindowThreadProcessId(hwndChild, null)) != OS.GetCurrentThreadId()) {
            OS.ShowWindow(hwndChild, 0);
            OS.SetParent(hwndChild, 0);
        }
        this.layout = null;
        this.tabList = null;
        this.lpwp = null;
    }

    void removeControl(Control control) {
        this.fixTabList(control);
        this.resizeChildren();
    }

    void reskinChildren(int flags) {
        super.reskinChildren(flags);
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (child != null) {
                child.reskin(flags);
            }
            ++i;
        }
    }

    void resizeChildren() {
        if (this.lpwp == null) {
            return;
        }
        do {
            WINDOWPOS[] currentLpwp = this.lpwp;
            this.lpwp = null;
            if (this.resizeChildren(true, currentLpwp)) continue;
            this.resizeChildren(false, currentLpwp);
        } while (this.lpwp != null);
    }

    boolean resizeChildren(boolean defer, WINDOWPOS[] pwp) {
        if (pwp == null) {
            return true;
        }
        int hdwp = 0;
        if (defer && (hdwp = OS.BeginDeferWindowPos(pwp.length)) == 0) {
            return false;
        }
        int i = 0;
        while (i < pwp.length) {
            WINDOWPOS wp = pwp[i];
            if (wp != null) {
                if (defer) {
                    if ((hdwp = this.DeferWindowPos(hdwp, wp.hwnd, 0, wp.x, wp.y, wp.cx, wp.cy, wp.flags)) == 0) {
                        return false;
                    }
                } else {
                    this.SetWindowPos(wp.hwnd, 0, wp.x, wp.y, wp.cx, wp.cy, wp.flags);
                }
            }
            ++i;
        }
        if (defer) {
            return OS.EndDeferWindowPos(hdwp);
        }
        return true;
    }

    void resizeEmbeddedHandle(int embeddedHandle, int width, int height) {
        if (embeddedHandle == 0) {
            return;
        }
        int[] processID = new int[1];
        int threadId = OS.GetWindowThreadProcessId(embeddedHandle, processID);
        if (threadId != OS.GetCurrentThreadId()) {
            if (processID[0] == OS.GetCurrentProcessId() && this.display.msgHook == 0 && !OS.IsWinCE) {
                this.display.getMsgCallback = new Callback(this.display, "getMsgProc", 3);
                this.display.getMsgProc = this.display.getMsgCallback.getAddress();
                if (this.display.getMsgProc == 0) {
                    this.error(3);
                }
                this.display.msgHook = OS.SetWindowsHookEx(3, this.display.getMsgProc, OS.GetLibraryHandle(), threadId);
                OS.PostThreadMessage(threadId, 0, 0, 0);
            }
            int flags = 16436;
            OS.SetWindowPos(embeddedHandle, 0, 0, 0, width, height, flags);
        }
    }

    void sendResize() {
        this.setResizeChildren(false);
        super.sendResize();
        if (this.isDisposed()) {
            return;
        }
        if (this.layout != null) {
            this.markLayout(false, false);
            this.updateLayout(false, false);
        }
        this.setResizeChildren(true);
    }

    public void setBackgroundMode(int mode) {
        this.checkWidget();
        this.backgroundMode = mode;
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            children[i].updateBackgroundMode();
            ++i;
        }
    }

    void setBounds(int x, int y, int width, int height, int flags, boolean defer) {
        if (this.display.resizeCount > 4) {
            defer = false;
        }
        if (!defer && (this.state & 2) != 0) {
            this.state &= 0xFFFAFFFF;
            this.state |= 0xA0000;
        }
        super.setBounds(x, y, width, height, flags, defer);
        if (!defer && (this.state & 2) != 0) {
            boolean wasMoved = (this.state & 0x10000) != 0;
            boolean wasResized = (this.state & 0x40000) != 0;
            this.state &= 0xFFF5FFFF;
            if (wasMoved && !this.isDisposed()) {
                this.sendMove();
            }
            if (wasResized && !this.isDisposed()) {
                this.sendResize();
            }
        }
    }

    public boolean setFocus() {
        Control child;
        this.checkWidget();
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            child = children[i];
            if (child.setRadioFocus(false)) {
                return true;
            }
            ++i;
        }
        i = 0;
        while (i < children.length) {
            child = children[i];
            if (child.setFocus()) {
                return true;
            }
            ++i;
        }
        return super.setFocus();
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
        this.layout = layout;
    }

    public void setLayoutDeferred(boolean defer) {
        this.checkWidget();
        if (!defer) {
            if (--this.layoutCount == 0 && ((this.state & 0x80) != 0 || (this.state & 0x20) != 0)) {
                this.updateLayout(true);
            }
        } else {
            ++this.layoutCount;
        }
    }

    public void setTabList(Control[] tabList) {
        this.checkWidget();
        if (tabList != null) {
            int i = 0;
            while (i < tabList.length) {
                Control control = tabList[i];
                if (control == null) {
                    this.error(5);
                }
                if (control.isDisposed()) {
                    this.error(5);
                }
                if (control.parent != this) {
                    this.error(32);
                }
                ++i;
            }
            Control[] newList = new Control[tabList.length];
            System.arraycopy(tabList, 0, newList, 0, tabList.length);
            tabList = newList;
        }
        this.tabList = tabList;
    }

    void setResizeChildren(boolean resize) {
        if (resize) {
            this.resizeChildren();
        } else {
            if (this.display.resizeCount > 4) {
                return;
            }
            int count = this.getChildrenCount();
            if (count > 1 && this.lpwp == null) {
                this.lpwp = new WINDOWPOS[count];
            }
        }
    }

    boolean setTabGroupFocus() {
        Control child;
        boolean takeFocus;
        if (this.isTabItem()) {
            return this.setTabItemFocus();
        }
        boolean bl = takeFocus = (this.style & 0x80000) == 0;
        if ((this.state & 2) != 0) {
            takeFocus = this.hooksKeys();
            if ((this.style & 0x1000000) != 0) {
                takeFocus = true;
            }
        }
        if (takeFocus && this.setTabItemFocus()) {
            return true;
        }
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            child = children[i];
            if (child.isTabItem() && child.setRadioFocus(true)) {
                return true;
            }
            ++i;
        }
        i = 0;
        while (i < children.length) {
            child = children[i];
            if (child.isTabItem() && !child.isTabGroup() && child.setTabItemFocus()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    String toolTipText(NMTTDISPINFO hdr) {
        Shell shell = this.getShell();
        if ((hdr.uFlags & 1) == 0) {
            String string = null;
            ToolTip toolTip = shell.findToolTip(hdr.idFrom);
            if (toolTip != null && ((string = toolTip.message) == null || string.length() == 0)) {
                string = " ";
            }
            return string;
        }
        shell.setToolTipTitle(hdr.hwndFrom, null, 0);
        OS.SendMessage(hdr.hwndFrom, 1048, 0, Short.MAX_VALUE);
        Control control = this.display.getControl(hdr.idFrom);
        return control != null ? control.toolTipText : null;
    }

    boolean translateMnemonic(Event event, Control control) {
        if (super.translateMnemonic(event, control)) {
            return true;
        }
        if (control != null) {
            Control[] children = this._getChildren();
            int i = 0;
            while (i < children.length) {
                Control child = children[i];
                if (child.translateMnemonic(event, control)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    boolean translateTraversal(MSG msg) {
        if ((this.state & 2) != 0) {
            if ((this.style & 0x1000000) != 0) {
                return false;
            }
            switch (msg.wParam) {
                case 33: 
                case 34: 
                case 37: 
                case 38: 
                case 39: 
                case 40: {
                    int uiState = OS.SendMessage(msg.hwnd, 297, 0, 0);
                    if ((uiState & 1) == 0) break;
                    OS.SendMessage(msg.hwnd, 296, OS.MAKEWPARAM(2, 1), 0);
                }
            }
        }
        return super.translateTraversal(msg);
    }

    void updateBackgroundColor() {
        super.updateBackgroundColor();
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            if ((children[i].state & 0x400) != 0) {
                children[i].updateBackgroundColor();
            }
            ++i;
        }
    }

    void updateBackgroundImage() {
        super.updateBackgroundImage();
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            if ((children[i].state & 0x400) != 0) {
                children[i].updateBackgroundImage();
            }
            ++i;
        }
    }

    void updateBackgroundMode() {
        super.updateBackgroundMode();
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            children[i].updateBackgroundMode();
            ++i;
        }
    }

    void updateFont(Font oldFont, Font newFont) {
        super.updateFont(oldFont, newFont);
        Control[] children = this._getChildren();
        int i = 0;
        while (i < children.length) {
            Control control = children[i];
            if (!control.isDisposed()) {
                control.updateFont(oldFont, newFont);
            }
            ++i;
        }
    }

    void updateLayout(boolean all) {
        this.updateLayout(true, all);
    }

    void updateLayout(boolean resize, boolean all) {
        Composite parent = this.findDeferredControl();
        if (parent != null) {
            parent.state |= 0x80;
            return;
        }
        if ((this.state & 0x20) != 0) {
            boolean changed = (this.state & 0x40) != 0;
            this.state &= 0xFFFFFF9F;
            this.display.runSkin();
            if (resize) {
                this.setResizeChildren(false);
            }
            this.layout.layout(this, changed);
            if (resize) {
                this.setResizeChildren(true);
            }
        }
        if (all) {
            this.state &= 0xFFFFFF7F;
            Control[] children = this._getChildren();
            int i = 0;
            while (i < children.length) {
                children[i].updateLayout(resize, all);
                ++i;
            }
        }
    }

    void updateOrientation() {
        Control[] controls = this._getChildren();
        RECT[] rects = new RECT[controls.length];
        int i = 0;
        while (i < controls.length) {
            Control control = controls[i];
            RECT rect = rects[i] = new RECT();
            control.forceResize();
            OS.GetWindowRect(control.topHandle(), rect);
            OS.MapWindowPoints(0, this.handle, rect, 2);
            ++i;
        }
        int orientation = this.style & 0x6000000;
        super.updateOrientation();
        int i2 = 0;
        while (i2 < controls.length) {
            Control control = controls[i2];
            RECT rect = rects[i2];
            control.setOrientation(orientation);
            int flags = 21;
            this.SetWindowPos(control.topHandle(), 0, rect.left, rect.top, 0, 0, flags);
            ++i2;
        }
    }

    void updateUIState() {
        int hwndShell = this.getShell().handle;
        int uiState = OS.SendMessage(hwndShell, 297, 0, 0);
        if ((uiState & 1) != 0) {
            OS.SendMessage(hwndShell, 295, OS.MAKEWPARAM(2, 1), 0);
        }
    }

    int widgetStyle() {
        return super.widgetStyle() | 0x2000000;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.state & 2) != 0 && (this.style & 0x40040000) != 0) {
            return LRESULT.ZERO;
        }
        return result;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        LRESULT result = super.WM_GETDLGCODE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.state & 2) != 0) {
            int flags = 0;
            if (this.hooksKeys()) {
                flags |= 7;
            }
            if ((this.style & 0x80000) != 0) {
                flags |= 0x100;
            }
            if (OS.GetWindow(this.handle, 5) != 0) {
                flags |= 0x100;
            }
            if (flags != 0) {
                return new LRESULT(flags);
            }
        }
        return result;
    }

    LRESULT WM_GETFONT(int wParam, int lParam) {
        LRESULT result = super.WM_GETFONT(wParam, lParam);
        if (result != null) {
            return result;
        }
        int code = this.callWindowProc(this.handle, 49, wParam, lParam);
        if (code != 0) {
            return new LRESULT(code);
        }
        return new LRESULT(this.font != null ? this.font.handle : this.defaultFont());
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if ((this.state & 2) != 0 && (this.style & 0x80000) == 0 && this.hooksKeys() && OS.GetWindow(this.handle, 5) == 0) {
            this.setFocus();
        }
        return result;
    }

    LRESULT WM_NCHITTEST(int wParam, int lParam) {
        LRESULT result = super.WM_NCHITTEST(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!OS.IsWinCE && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (this.state & 2) != 0) {
            int code = this.callWindowProc(this.handle, 132, wParam, lParam);
            if (code == 1) {
                RECT rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                POINT pt = new POINT();
                pt.x = OS.GET_X_LPARAM(lParam);
                pt.y = OS.GET_Y_LPARAM(lParam);
                OS.MapWindowPoints(0, this.handle, pt, 1);
                if (!OS.PtInRect(rect, pt)) {
                    int flags = 1025;
                    OS.RedrawWindow(this.handle, null, 0, flags);
                }
            }
            return new LRESULT(code);
        }
        return result;
    }

    LRESULT WM_PARENTNOTIFY(int wParam, int lParam) {
        if ((this.state & 2) != 0 && (this.style & 0x1000000) != 0 && OS.LOWORD(wParam) == 1) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            this.resizeEmbeddedHandle(lParam, rect.right - rect.left, rect.bottom - rect.top);
        }
        return super.WM_PARENTNOTIFY(wParam, lParam);
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        if ((this.state & 2) == 0 || (this.state & 0x4000) != 0) {
            return super.WM_PAINT(wParam, lParam);
        }
        int oldBits = 0;
        int newBits = 0;
        if (!OS.IsWinCE && (newBits = (oldBits = OS.GetWindowLong(this.handle, -16)) | 0x4000000 | 0x2000000) != oldBits) {
            OS.SetWindowLong(this.handle, -16, newBits);
        }
        PAINTSTRUCT ps = new PAINTSTRUCT();
        if (this.hooks(9) || this.filters(9)) {
            boolean bufferedPaint = false;
            if ((this.style & 0x20000000) != 0 && !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && (this.style & 0x4200000) == 0 && (this.style & 0x40000000) == 0) {
                bufferedPaint = true;
            }
            if (bufferedPaint) {
                int hDC = OS.BeginPaint(this.handle, ps);
                int width = ps.right - ps.left;
                int height = ps.bottom - ps.top;
                if (width != 0 && height != 0) {
                    int[] phdc = new int[1];
                    int flags = 0;
                    RECT prcTarget = new RECT();
                    OS.SetRect(prcTarget, ps.left, ps.top, ps.right, ps.bottom);
                    int hBufferedPaint = OS.BeginBufferedPaint(hDC, prcTarget, flags, null, phdc);
                    GCData data = new GCData();
                    data.device = this.display;
                    data.foreground = this.getForegroundPixel();
                    Control control = this.findBackgroundControl();
                    if (control == null) {
                        control = this;
                    }
                    data.background = control.getBackgroundPixel();
                    data.font = Font.win32_new(this.display, OS.SendMessage(this.handle, 49, 0, 0));
                    data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
                    if ((this.style & 0x40000) == 0) {
                        RECT rect = new RECT();
                        OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                        this.drawBackground(phdc[0], rect);
                    }
                    GC gc = GC.win32_new(phdc[0], data);
                    Event event = new Event();
                    event.gc = gc;
                    event.x = ps.left;
                    event.y = ps.top;
                    event.width = width;
                    event.height = height;
                    this.sendEvent(9, event);
                    if (data.focusDrawn && !this.isDisposed()) {
                        this.updateUIState();
                    }
                    gc.dispose();
                    OS.EndBufferedPaint(hBufferedPaint, true);
                }
                OS.EndPaint(this.handle, ps);
            } else {
                GCData data = new GCData();
                data.ps = ps;
                data.hwnd = this.handle;
                GC gc = GC.win32_new(this, data);
                int sysRgn = 0;
                if (((this.style & 0x60000000) != 0 || (this.style & 0x200000) != 0) && OS.GetRandomRgn(gc.handle, sysRgn = OS.CreateRectRgn(0, 0, 0, 0), 4) == 1) {
                    if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && (OS.GetLayout(gc.handle) & 1) != 0) {
                        int nBytes = OS.GetRegionData(sysRgn, 0, null);
                        int[] lpRgnData = new int[nBytes / 4];
                        OS.GetRegionData(sysRgn, nBytes, lpRgnData);
                        int newSysRgn = OS.ExtCreateRegion(new float[]{-1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f}, nBytes, lpRgnData);
                        OS.DeleteObject(sysRgn);
                        sysRgn = newSysRgn;
                    }
                    if (OS.IsWinNT) {
                        POINT pt = new POINT();
                        OS.MapWindowPoints(0, this.handle, pt, 1);
                        OS.OffsetRgn(sysRgn, pt.x, pt.y);
                    }
                }
                int width = ps.right - ps.left;
                int height = ps.bottom - ps.top;
                if (width != 0 && height != 0) {
                    RECT rect;
                    GC paintGC = null;
                    Image image = null;
                    if ((this.style & 0x60000000) != 0) {
                        image = new Image((Device)this.display, width, height);
                        paintGC = gc;
                        gc = new GC(image, paintGC.getStyle() & 0x4000000);
                        GCData gcData = gc.getGCData();
                        gcData.uiState = data.uiState;
                        gc.setForeground(this.getForeground());
                        gc.setBackground(this.getBackground());
                        gc.setFont(this.getFont());
                        if ((this.style & 0x40000000) != 0) {
                            OS.BitBlt(gc.handle, 0, 0, width, height, paintGC.handle, ps.left, ps.top, 0xCC0020);
                        }
                        OS.OffsetRgn(sysRgn, -ps.left, -ps.top);
                        OS.SelectClipRgn(gc.handle, sysRgn);
                        OS.OffsetRgn(sysRgn, ps.left, ps.top);
                        OS.SetMetaRgn(gc.handle);
                        OS.SetWindowOrgEx(gc.handle, ps.left, ps.top, null);
                        OS.SetBrushOrgEx(gc.handle, ps.left, ps.top, null);
                        if ((this.style & 0x40040000) == 0) {
                            rect = new RECT();
                            OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                            this.drawBackground(gc.handle, rect);
                        }
                    }
                    Event event = new Event();
                    event.gc = gc;
                    rect = null;
                    if ((this.style & 0x200000) != 0 && OS.GetRgnBox(sysRgn, rect = new RECT()) == 3) {
                        int nBytes = OS.GetRegionData(sysRgn, 0, null);
                        int[] lpRgnData = new int[nBytes / 4];
                        OS.GetRegionData(sysRgn, nBytes, lpRgnData);
                        int count = lpRgnData[2];
                        int i = 0;
                        while (i < count) {
                            int offset = 8 + (i << 2);
                            OS.SetRect(rect, lpRgnData[offset], lpRgnData[offset + 1], lpRgnData[offset + 2], lpRgnData[offset + 3]);
                            if ((this.style & 0x60040000) == 0) {
                                this.drawBackground(gc.handle, rect);
                            }
                            event.x = rect.left;
                            event.y = rect.top;
                            event.width = rect.right - rect.left;
                            event.height = rect.bottom - rect.top;
                            event.count = count - 1 - i;
                            this.sendEvent(9, event);
                            ++i;
                        }
                    } else {
                        if ((this.style & 0x60040000) == 0) {
                            if (rect == null) {
                                rect = new RECT();
                            }
                            OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                            this.drawBackground(gc.handle, rect);
                        }
                        event.x = ps.left;
                        event.y = ps.top;
                        event.width = width;
                        event.height = height;
                        this.sendEvent(9, event);
                    }
                    event.gc = null;
                    if ((this.style & 0x60000000) != 0) {
                        if (!gc.isDisposed()) {
                            GCData gcData = gc.getGCData();
                            if (gcData.focusDrawn && !this.isDisposed()) {
                                this.updateUIState();
                            }
                        }
                        gc.dispose();
                        if (!this.isDisposed()) {
                            paintGC.drawImage(image, ps.left, ps.top);
                        }
                        image.dispose();
                        gc = paintGC;
                    }
                }
                if (sysRgn != 0) {
                    OS.DeleteObject(sysRgn);
                }
                if (data.focusDrawn && !this.isDisposed()) {
                    this.updateUIState();
                }
                gc.dispose();
            }
        } else {
            int hDC = OS.BeginPaint(this.handle, ps);
            if ((this.style & 0x40040000) == 0) {
                RECT rect = new RECT();
                OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                this.drawBackground(hDC, rect);
            }
            OS.EndPaint(this.handle, ps);
        }
        if (!(OS.IsWinCE || this.isDisposed() || newBits == oldBits || this.isDisposed())) {
            OS.SetWindowLong(this.handle, -16, oldBits);
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PRINTCLIENT(int wParam, int lParam) {
        LRESULT result = super.WM_PRINTCLIENT(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.state & 2) != 0) {
            this.forceResize();
            int nSavedDC = OS.SaveDC(wParam);
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            if ((this.style & 0x40040000) == 0) {
                this.drawBackground(wParam, rect);
            }
            if (this.hooks(9) || this.filters(9)) {
                GCData data = new GCData();
                data.device = this.display;
                data.foreground = this.getForegroundPixel();
                Control control = this.findBackgroundControl();
                if (control == null) {
                    control = this;
                }
                data.background = control.getBackgroundPixel();
                data.font = Font.win32_new(this.display, OS.SendMessage(this.handle, 49, 0, 0));
                data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
                GC gc = GC.win32_new(wParam, data);
                Event event = new Event();
                event.gc = gc;
                event.x = rect.left;
                event.y = rect.top;
                event.width = rect.right - rect.left;
                event.height = rect.bottom - rect.top;
                this.sendEvent(9, event);
                event.gc = null;
                gc.dispose();
            }
            OS.RestoreDC(wParam, nSavedDC);
        }
        return result;
    }

    LRESULT WM_SETFONT(int wParam, int lParam) {
        if (lParam != 0) {
            OS.InvalidateRect(this.handle, null, true);
        }
        return super.WM_SETFONT(wParam, lParam);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = null;
        if ((this.state & 0x80000) != 0) {
            result = super.WM_SIZE(wParam, lParam);
        } else {
            this.setResizeChildren(false);
            result = super.WM_SIZE(wParam, lParam);
            if (this.isDisposed()) {
                return result;
            }
            if (this.layout != null) {
                this.markLayout(false, false);
                this.updateLayout(false, false);
            }
            this.setResizeChildren(true);
        }
        if (OS.IsWindowVisible(this.handle)) {
            if ((this.state & 2) != 0 && (this.style & 0x100000) == 0 && this.hooks(9)) {
                OS.InvalidateRect(this.handle, null, true);
            }
            if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.findThemeControl() != null) {
                this.redrawChildren();
            }
        }
        if ((this.state & 2) != 0 && (this.style & 0x1000000) != 0) {
            this.resizeEmbeddedHandle(OS.GetWindow(this.handle, 5), OS.LOWORD(lParam), OS.HIWORD(lParam));
        }
        return result;
    }

    LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOLORCHANGE(wParam, lParam);
        if (result != null) {
            return result;
        }
        int hwndChild = OS.GetWindow(this.handle, 5);
        while (hwndChild != 0) {
            OS.SendMessage(hwndChild, 21, 0, 0);
            hwndChild = OS.GetWindow(hwndChild, 2);
        }
        return result;
    }

    LRESULT WM_SYSCOMMAND(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOMMAND(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((wParam & 0xF000) == 0) {
            return result;
        }
        if (!OS.IsWinCE) {
            int cmd = wParam & 0xFFF0;
            switch (cmd) {
                case 61552: 
                case 61568: {
                    boolean showHBar = this.horizontalBar != null && this.horizontalBar.getVisible();
                    boolean showVBar = this.verticalBar != null && this.verticalBar.getVisible();
                    int code = this.callWindowProc(this.handle, 274, wParam, lParam);
                    if (showHBar != (this.horizontalBar != null && this.horizontalBar.getVisible()) || showVBar != (this.verticalBar != null && this.verticalBar.getVisible())) {
                        int flags = 1281;
                        OS.RedrawWindow(this.handle, null, 0, flags);
                    }
                    if (code == 0) {
                        return LRESULT.ZERO;
                    }
                    return new LRESULT(code);
                }
            }
        }
        return result;
    }

    LRESULT WM_UPDATEUISTATE(int wParam, int lParam) {
        LRESULT result = super.WM_UPDATEUISTATE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.state & 2) != 0 && this.hooks(9)) {
            OS.InvalidateRect(this.handle, null, true);
        }
        return result;
    }

    LRESULT wmNCPaint(int hwnd, int wParam, int lParam) {
        int bits1;
        LRESULT result = super.wmNCPaint(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        int borderHandle = this.borderHandle();
        if (((this.state & 2) != 0 || hwnd == borderHandle && this.handle != borderHandle) && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && ((bits1 = OS.GetWindowLong(hwnd, -20)) & 0x200) != 0) {
            int code = 0;
            int bits2 = OS.GetWindowLong(hwnd, -16);
            if ((bits2 & 0x300000) != 0) {
                code = this.callWindowProc(hwnd, 133, wParam, lParam);
            }
            int hDC = OS.GetWindowDC(hwnd);
            RECT rect = new RECT();
            OS.GetWindowRect(hwnd, rect);
            rect.right -= rect.left;
            rect.bottom -= rect.top;
            rect.top = 0;
            rect.left = 0;
            int border = OS.GetSystemMetrics(45);
            OS.ExcludeClipRect(hDC, border, border, rect.right - border, rect.bottom - border);
            OS.DrawThemeBackground(this.display.hEditTheme(), hDC, 1, 1, rect, null);
            OS.ReleaseDC(hwnd, hDC);
            return new LRESULT(code);
        }
        return result;
    }

    LRESULT wmNotify(NMHDR hdr, int wParam, int lParam) {
        if (!OS.IsWinCE) {
            switch (hdr.code) {
                case -522: 
                case -521: {
                    int bits;
                    int hwndParent = hdr.hwndFrom;
                    while ((hwndParent = OS.GetParent(hwndParent)) != 0 && ((bits = OS.GetWindowLong(hwndParent, -20)) & 8) == 0) {
                    }
                    if (hwndParent != 0) break;
                    this.display.lockActiveWindow = true;
                    int flags = 19;
                    int hwndInsertAfter = hdr.code == -521 ? -1 : -2;
                    this.SetWindowPos(hdr.hwndFrom, hwndInsertAfter, 0, 0, 0, 0, flags);
                    this.display.lockActiveWindow = false;
                    break;
                }
                case -530: 
                case -520: {
                    NMTTDISPINFO lpnmtdi;
                    if (hdr.code == -520) {
                        lpnmtdi = new NMTTDISPINFOA();
                        OS.MoveMemory(lpnmtdi, lParam, NMTTDISPINFOA.sizeof);
                    } else {
                        lpnmtdi = new NMTTDISPINFOW();
                        OS.MoveMemory((NMTTDISPINFOW)lpnmtdi, lParam, NMTTDISPINFOW.sizeof);
                    }
                    String string = this.toolTipText(lpnmtdi);
                    if (string == null) break;
                    Shell shell = this.getShell();
                    string = Display.withCrLf(string);
                    char[] chars = this.fixMnemonic(string);
                    Widget widget = null;
                    int hwnd = hdr.idFrom;
                    if ((lpnmtdi.uFlags & 1) != 0) {
                        widget = this.display.getControl(hwnd);
                    } else if (hdr.hwndFrom == shell.toolTipHandle || hdr.hwndFrom == shell.balloonTipHandle) {
                        widget = shell.findToolTip(hdr.idFrom);
                    }
                    if (widget != null) {
                        lpnmtdi.uFlags = (widget.getStyle() & 0x4000000) != 0 ? (lpnmtdi.uFlags |= 4) : (lpnmtdi.uFlags &= 0xFFFFFFFB);
                    }
                    if (hdr.code == -520) {
                        byte[] bytes = new byte[chars.length * 2];
                        OS.WideCharToMultiByte(this.getCodePage(), 0, chars, chars.length, bytes, bytes.length, null, null);
                        shell.setToolTipText(lpnmtdi, bytes);
                        OS.MoveMemory(lParam, lpnmtdi, NMTTDISPINFOA.sizeof);
                    } else {
                        shell.setToolTipText(lpnmtdi, chars);
                        OS.MoveMemory(lParam, (NMTTDISPINFOW)lpnmtdi, NMTTDISPINFOW.sizeof);
                    }
                    return LRESULT.ZERO;
                }
            }
        }
        return super.wmNotify(hdr, wParam, lParam);
    }
}

