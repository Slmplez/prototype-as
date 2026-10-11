/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.MenuDetectListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.internal.win32.NOTIFYICONDATA;
import org.eclipse.swt.internal.win32.NOTIFYICONDATAA;
import org.eclipse.swt.internal.win32.NOTIFYICONDATAW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.widgets.Tray;
import org.eclipse.swt.widgets.TypedListener;

public class TrayItem
extends Item {
    Tray parent;
    int id;
    Image image2;
    ToolTip toolTip;
    String toolTipText;
    boolean visible = true;

    public TrayItem(Tray parent, int style) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, parent.getItemCount());
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

    public void addMenuDetectListener(MenuDetectListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(35, typedListener);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void createWidget() {
        NOTIFYICONDATA iconData = OS.IsUnicode ? new NOTIFYICONDATAW() : new NOTIFYICONDATAA();
        iconData.cbSize = NOTIFYICONDATA.sizeof;
        this.id = this.display.nextTrayId++;
        iconData.uID = this.id;
        iconData.hWnd = this.display.hwndMessage;
        iconData.uFlags = 1;
        iconData.uCallbackMessage = 32772;
        OS.Shell_NotifyIcon(0, iconData);
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public Tray getParent() {
        this.checkWidget();
        return this.parent;
    }

    public ToolTip getToolTip() {
        this.checkWidget();
        return this.toolTip;
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.toolTipText;
    }

    public boolean getVisible() {
        this.checkWidget();
        return this.visible;
    }

    int messageProc(int hwnd, int msg, int wParam, int lParam) {
        switch (lParam) {
            case 513: {
                if (!this.hooks(13)) break;
                OS.SetForegroundWindow(hwnd);
                this.sendSelectionEvent(13);
                break;
            }
            case 515: 
            case 518: {
                if (!this.hooks(14)) break;
                OS.SetForegroundWindow(hwnd);
                this.sendSelectionEvent(14);
                break;
            }
            case 517: {
                if (!this.hooks(35)) break;
                OS.SetForegroundWindow(hwnd);
                this.sendEvent(35);
                if (!this.isDisposed()) break;
                return 0;
            }
            case 1026: {
                if (this.toolTip == null || this.toolTip.visible) break;
                this.toolTip.visible = true;
                if (!this.toolTip.hooks(22)) break;
                OS.SetForegroundWindow(hwnd);
                this.toolTip.sendEvent(22);
                if (!this.isDisposed()) break;
                return 0;
            }
            case 1027: 
            case 1028: 
            case 1029: {
                if (this.toolTip == null) break;
                if (this.toolTip.visible) {
                    this.toolTip.visible = false;
                    if (this.toolTip.hooks(23)) {
                        OS.SetForegroundWindow(hwnd);
                        this.toolTip.sendEvent(23);
                        if (this.isDisposed()) {
                            return 0;
                        }
                    }
                }
                if (lParam != 1029 || !this.toolTip.hooks(13)) break;
                OS.SetForegroundWindow(hwnd);
                this.toolTip.sendSelectionEvent(13);
                if (!this.isDisposed()) break;
                return 0;
            }
        }
        this.display.wakeThread();
        return 0;
    }

    void recreate() {
        this.createWidget();
        if (!this.visible) {
            this.setVisible(false);
        }
        if (this.text.length() != 0) {
            this.setText(this.text);
        }
        if (this.image != null) {
            this.setImage(this.image);
        }
        if (this.toolTipText != null) {
            this.setToolTipText(this.toolTipText);
        }
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.toolTip != null) {
            this.toolTip.item = null;
        }
        this.toolTip = null;
        if (this.image2 != null) {
            this.image2.dispose();
        }
        this.image2 = null;
        this.toolTipText = null;
        NOTIFYICONDATA iconData = OS.IsUnicode ? new NOTIFYICONDATAW() : new NOTIFYICONDATAA();
        iconData.cbSize = NOTIFYICONDATA.sizeof;
        iconData.uID = this.id;
        iconData.hWnd = this.display.hwndMessage;
        OS.Shell_NotifyIcon(2, iconData);
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

    public void removeMenuDetectListener(MenuDetectListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(35, listener);
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        super.setImage(image);
        if (this.image2 != null) {
            this.image2.dispose();
        }
        this.image2 = null;
        int hIcon = 0;
        Image icon = image;
        if (icon != null) {
            switch (icon.type) {
                case 0: {
                    this.image2 = Display.createIcon(image);
                    hIcon = this.image2.handle;
                    break;
                }
                case 1: {
                    hIcon = icon.handle;
                }
            }
        }
        NOTIFYICONDATA iconData = OS.IsUnicode ? new NOTIFYICONDATAW() : new NOTIFYICONDATAA();
        iconData.cbSize = NOTIFYICONDATA.sizeof;
        iconData.uID = this.id;
        iconData.hWnd = this.display.hwndMessage;
        iconData.hIcon = hIcon;
        iconData.uFlags = 2;
        OS.Shell_NotifyIcon(1, iconData);
    }

    public void setToolTip(ToolTip toolTip) {
        this.checkWidget();
        ToolTip oldTip = this.toolTip;
        ToolTip newTip = toolTip;
        if (oldTip != null) {
            oldTip.item = null;
        }
        this.toolTip = newTip;
        if (newTip != null) {
            newTip.item = this;
        }
    }

    public void setToolTipText(String string) {
        int length;
        this.checkWidget();
        this.toolTipText = string;
        NOTIFYICONDATA iconData = OS.IsUnicode ? new NOTIFYICONDATAW() : new NOTIFYICONDATAA();
        TCHAR buffer = new TCHAR(0, this.toolTipText == null ? "" : this.toolTipText, true);
        int n = length = OS.SHELL32_MAJOR < 5 ? 64 : 128;
        if (OS.IsUnicode) {
            char[] szTip = iconData.szTip;
            length = Math.min(length - 1, buffer.length());
            System.arraycopy(buffer.chars, 0, szTip, 0, length);
        } else {
            byte[] szTip = ((NOTIFYICONDATAA)iconData).szTip;
            length = Math.min(length - 1, buffer.length());
            System.arraycopy(buffer.bytes, 0, szTip, 0, length);
        }
        iconData.cbSize = NOTIFYICONDATA.sizeof;
        iconData.uID = this.id;
        iconData.hWnd = this.display.hwndMessage;
        iconData.uFlags = 4;
        OS.Shell_NotifyIcon(1, iconData);
    }

    public void setVisible(boolean visible) {
        this.checkWidget();
        if (this.visible == visible) {
            return;
        }
        if (visible) {
            this.sendEvent(22);
            if (this.isDisposed()) {
                return;
            }
        }
        this.visible = visible;
        NOTIFYICONDATA iconData = OS.IsUnicode ? new NOTIFYICONDATAW() : new NOTIFYICONDATAA();
        iconData.cbSize = NOTIFYICONDATA.sizeof;
        iconData.uID = this.id;
        iconData.hWnd = this.display.hwndMessage;
        if (OS.SHELL32_MAJOR < 5) {
            if (visible) {
                iconData.uFlags = 1;
                iconData.uCallbackMessage = 32772;
                OS.Shell_NotifyIcon(0, iconData);
                this.setImage(this.image);
                this.setToolTipText(this.toolTipText);
            } else {
                OS.Shell_NotifyIcon(2, iconData);
            }
        } else {
            iconData.uFlags = 8;
            iconData.dwState = visible ? 0 : 1;
            iconData.dwStateMask = 1;
            OS.Shell_NotifyIcon(1, iconData);
        }
        if (!visible) {
            this.sendEvent(23);
        }
    }
}

