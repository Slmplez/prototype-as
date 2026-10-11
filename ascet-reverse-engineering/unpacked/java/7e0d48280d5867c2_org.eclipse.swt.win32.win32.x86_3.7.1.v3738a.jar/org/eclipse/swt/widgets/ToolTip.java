/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.MONITORINFO;
import org.eclipse.swt.internal.win32.NOTIFYICONDATA;
import org.eclipse.swt.internal.win32.NOTIFYICONDATAA;
import org.eclipse.swt.internal.win32.NOTIFYICONDATAW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TrayItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public class ToolTip
extends Widget {
    Shell parent;
    TrayItem item;
    String text = "";
    String message = "";
    int id;
    int x;
    int y;
    boolean autoHide = true;
    boolean hasLocation;
    boolean visible;
    static final int TIMER_ID = 100;

    public ToolTip(Shell parent, int style) {
        super(parent, ToolTip.checkStyle(style));
        this.parent = parent;
        this.checkOrientation(parent);
        parent.createToolTip(this);
    }

    static int checkStyle(int style) {
        int mask = 11;
        if ((style & mask) == 0) {
            return style;
        }
        return ToolTip.checkBits(style, 2, 8, 1, 0, 0, 0);
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

    void destroyWidget() {
        if (this.parent != null) {
            this.parent.destroyToolTip(this);
        }
        this.releaseHandle();
    }

    public boolean getAutoHide() {
        this.checkWidget();
        return this.autoHide;
    }

    public String getMessage() {
        this.checkWidget();
        return this.message;
    }

    public Shell getParent() {
        this.checkWidget();
        return this.parent;
    }

    public String getText() {
        this.checkWidget();
        return this.text;
    }

    public boolean getVisible() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return false;
        }
        if (this.item != null) {
            return this.visible;
        }
        int hwndToolTip = this.hwndToolTip();
        if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, 0) != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, lpti) != 0) {
                return (lpti.uFlags & 1) == 0 && lpti.uId == this.id;
            }
        }
        return false;
    }

    int hwndToolTip() {
        return (this.style & 0x1000) != 0 ? this.parent.balloonTipHandle() : this.parent.toolTipHandle();
    }

    public boolean isVisible() {
        this.checkWidget();
        if (this.item != null) {
            return this.getVisible() && this.item.getVisible();
        }
        return this.getVisible();
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
        this.item = null;
        this.id = -1;
    }

    void releaseWidget() {
        int hwndToolTip;
        super.releaseWidget();
        if (this.item == null && this.autoHide && OS.SendMessage(hwndToolTip = this.hwndToolTip(), OS.TTM_GETCURRENTTOOL, 0, 0) != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, lpti) != 0 && (lpti.uFlags & 1) == 0 && lpti.uId == this.id) {
                OS.SendMessage(hwndToolTip, 1041, 0, lpti);
                OS.SendMessage(hwndToolTip, 1052, 0, 0);
                OS.KillTimer(hwndToolTip, 100);
            }
        }
        if (this.item != null && this.item.toolTip == this) {
            this.item.toolTip = null;
        }
        this.item = null;
        this.message = null;
        this.text = null;
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

    public void setAutoHide(boolean autoHide) {
        this.checkWidget();
        this.autoHide = autoHide;
    }

    public void setLocation(int x, int y) {
        this.checkWidget();
        this.x = x;
        this.y = y;
        this.hasLocation = true;
    }

    public void setLocation(Point location) {
        this.checkWidget();
        if (location == null) {
            SWT.error(4);
        }
        this.setLocation(location.x, location.y);
    }

    public void setMessage(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        this.message = string;
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        this.text = string;
    }

    public void setVisible(boolean visible) {
        this.checkWidget();
        if (OS.IsWinCE) {
            return;
        }
        if (visible == this.getVisible()) {
            return;
        }
        if (this.item == null) {
            int hwnd = this.parent.handle;
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            lpti.uId = this.id;
            lpti.hwnd = hwnd;
            int hwndToolTip = this.hwndToolTip();
            Shell shell = this.parent.getShell();
            if (this.text.length() != 0) {
                int icon = 0;
                if ((this.style & 2) != 0) {
                    icon = 1;
                }
                if ((this.style & 8) != 0) {
                    icon = 2;
                }
                if ((this.style & 1) != 0) {
                    icon = 3;
                }
                shell.setToolTipTitle(hwndToolTip, this.text, icon);
            } else {
                shell.setToolTipTitle(hwndToolTip, null, 0);
            }
            int maxWidth = 0;
            if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(4, 10)) {
                RECT rect = new RECT();
                OS.SystemParametersInfo(48, 0, rect, 0);
                maxWidth = (rect.right - rect.left) / 4;
            } else {
                int hmonitor = OS.MonitorFromWindow(hwnd, 2);
                MONITORINFO lpmi = new MONITORINFO();
                lpmi.cbSize = MONITORINFO.sizeof;
                OS.GetMonitorInfo(hmonitor, lpmi);
                maxWidth = (lpmi.rcWork_right - lpmi.rcWork_left) / 4;
            }
            OS.SendMessage(hwndToolTip, 1048, 0, maxWidth);
            if (visible) {
                POINT pt;
                int nX = this.x;
                int nY = this.y;
                if (!this.hasLocation && OS.GetCursorPos(pt = new POINT())) {
                    nX = pt.x;
                    nY = pt.y;
                }
                int lParam = OS.MAKELPARAM(nX, nY);
                OS.SendMessage(hwndToolTip, 1042, 0, lParam);
                POINT pt2 = new POINT();
                OS.GetCursorPos(pt2);
                RECT rect = new RECT();
                OS.GetClientRect(hwnd, rect);
                OS.MapWindowPoints(hwnd, 0, rect, 2);
                if (!OS.PtInRect(rect, pt2)) {
                    int hCursor = OS.GetCursor();
                    OS.SetCursor(0);
                    OS.SetCursorPos(rect.left, rect.top);
                    OS.SendMessage(hwndToolTip, 1041, 1, lpti);
                    OS.SetCursorPos(pt2.x, pt2.y);
                    OS.SetCursor(hCursor);
                } else {
                    OS.SendMessage(hwndToolTip, 1041, 1, lpti);
                }
                int time = OS.SendMessage(hwndToolTip, 1045, 2, 0);
                OS.SetTimer(hwndToolTip, 100, time, 0);
            } else {
                OS.SendMessage(hwndToolTip, 1041, 0, lpti);
                OS.SendMessage(hwndToolTip, 1052, 0, 0);
                OS.KillTimer(hwndToolTip, 100);
            }
            return;
        }
        if (this.item != null && OS.SHELL32_MAJOR >= 5 && visible) {
            Object[] szInfoTitle;
            NOTIFYICONDATA iconData = OS.IsUnicode ? new NOTIFYICONDATAW() : new NOTIFYICONDATAA();
            TCHAR buffer1 = new TCHAR(0, this.text, true);
            TCHAR buffer2 = new TCHAR(0, this.message, true);
            if (OS.IsUnicode) {
                szInfoTitle = iconData.szInfoTitle;
                int length1 = Math.min(szInfoTitle.length - 1, buffer1.length());
                System.arraycopy(buffer1.chars, 0, szInfoTitle, 0, length1);
                char[] szInfo = iconData.szInfo;
                int length2 = Math.min(szInfo.length - 1, buffer2.length());
                System.arraycopy(buffer2.chars, 0, szInfo, 0, length2);
            } else {
                szInfoTitle = ((NOTIFYICONDATAA)iconData).szInfoTitle;
                int length = Math.min(szInfoTitle.length - 1, buffer1.length());
                System.arraycopy(buffer1.bytes, 0, szInfoTitle, 0, length);
                byte[] szInfo = ((NOTIFYICONDATAA)iconData).szInfo;
                int length2 = Math.min(szInfo.length - 1, buffer2.length());
                System.arraycopy(buffer2.bytes, 0, szInfo, 0, length2);
            }
            Display display = this.item.getDisplay();
            iconData.cbSize = NOTIFYICONDATA.sizeof;
            iconData.uID = this.item.id;
            iconData.hWnd = display.hwndMessage;
            iconData.uFlags = 16;
            if ((this.style & 2) != 0) {
                iconData.dwInfoFlags = 1;
            }
            if ((this.style & 8) != 0) {
                iconData.dwInfoFlags = 2;
            }
            if ((this.style & 1) != 0) {
                iconData.dwInfoFlags = 3;
            }
            this.sendEvent(22);
            this.visible = OS.Shell_NotifyIcon(1, iconData);
        }
    }
}

