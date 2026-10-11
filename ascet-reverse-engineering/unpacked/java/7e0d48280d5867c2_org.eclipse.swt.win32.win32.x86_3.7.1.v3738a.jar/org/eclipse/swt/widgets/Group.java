/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class Group
extends Composite {
    String text = "";
    static final int CLIENT_INSET = 3;
    static final int GroupProc;
    static final TCHAR GroupClass;

    static {
        GroupClass = new TCHAR(0, OS.IsWinCE ? "BUTTON" : "SWT_GROUP", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        if (OS.IsWinCE) {
            OS.GetClassInfo(0, GroupClass, lpWndClass);
            GroupProc = lpWndClass.lpfnWndProc;
        } else {
            TCHAR WC_BUTTON = new TCHAR(0, "BUTTON", true);
            OS.GetClassInfo(0, WC_BUTTON, lpWndClass);
            GroupProc = lpWndClass.lpfnWndProc;
            int hInstance = OS.GetModuleHandle(null);
            if (!OS.GetClassInfo(hInstance, GroupClass, lpWndClass)) {
                int hHeap = OS.GetProcessHeap();
                lpWndClass.hInstance = hInstance;
                lpWndClass.style &= 0xFFFFFFFC;
                int byteCount = GroupClass.length() * TCHAR.sizeof;
                int lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
                OS.MoveMemory(lpszClassName, GroupClass, byteCount);
                lpWndClass.lpszClassName = lpszClassName;
                OS.RegisterClass(lpWndClass);
                OS.HeapFree(hHeap, 0, lpszClassName);
            }
        }
    }

    public Group(Composite parent, int style) {
        super(parent, Group.checkStyle(style));
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        switch (msg) {
            case 513: 
            case 515: {
                return OS.DefWindowProc(hwnd, msg, wParam, lParam);
            }
        }
        return OS.CallWindowProc(GroupProc, hwnd, msg, wParam, lParam);
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
        Point size = super.computeSize(wHint, hHint, changed);
        int length = this.text.length();
        if (length != 0) {
            String string = this.text;
            if (!((this.style & 0x4000000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed())) {
                string = " " + string + " ";
            }
            TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
            int oldFont = 0;
            int hDC = OS.GetDC(this.handle);
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            RECT rect = new RECT();
            int flags = 1056;
            OS.DrawText(hDC, buffer, -1, rect, flags);
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
            int offsetY = OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() ? 0 : 1;
            size.x = Math.max(size.x, rect.right - rect.left + 18 + offsetY);
        }
        return size;
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        Rectangle trim = super.computeTrim(x, y, width, height);
        int oldFont = 0;
        int hDC = OS.GetDC(this.handle);
        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(hDC, tm);
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        int offsetY = OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() ? 0 : 1;
        trim.x -= 3;
        trim.y -= tm.tmHeight + offsetY;
        trim.width += 6;
        trim.height += tm.tmHeight + 3 + offsetY;
        return trim;
    }

    void createHandle() {
        this.parent.state |= 0x100000;
        super.createHandle();
        this.parent.state &= 0xFFEFFFFF;
        this.state |= 0x200;
        this.state &= 0xFFFFFFFD;
    }

    void enableWidget(boolean enabled) {
        super.enableWidget(enabled);
        if (!((this.style & 0x4000000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed())) {
            String string = enabled || this.text.length() == 0 ? this.text : " " + this.text + " ";
            TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
            OS.SetWindowText(this.handle, buffer);
        }
    }

    public Rectangle getClientArea() {
        this.checkWidget();
        this.forceResize();
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int oldFont = 0;
        int hDC = OS.GetDC(this.handle);
        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(hDC, tm);
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        int offsetY = OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() ? 0 : 1;
        int x = 3;
        int y = tm.tmHeight + offsetY;
        int width = Math.max(0, rect.right - 6);
        int height = Math.max(0, rect.bottom - y - 3);
        return new Rectangle(x, y, width, height);
    }

    String getNameText() {
        return this.getText();
    }

    public String getText() {
        this.checkWidget();
        return this.text;
    }

    boolean mnemonicHit(char key) {
        return this.setFocus();
    }

    boolean mnemonicMatch(char key) {
        char mnemonic = this.findMnemonic(this.getText());
        if (mnemonic == '\u0000') {
            return false;
        }
        return Character.toUpperCase(key) == Character.toUpperCase(mnemonic);
    }

    void printWidget(int hwnd, int hdc, GC gc) {
        boolean success = false;
        if (OS.GetDeviceCaps(gc.handle, 2) != 2) {
            int bits = OS.GetWindowLong(hwnd, -16);
            if ((bits & 0x10000000) == 0) {
                OS.ShowWindow(hwnd, 5);
            }
            success = OS.PrintWindow(hwnd, hdc, 0);
            if ((bits & 0x10000000) == 0) {
                OS.ShowWindow(hwnd, 0);
            }
        }
        if (!success) {
            int flags = 14;
            OS.SendMessage(hwnd, 791, hdc, flags);
            int nSavedDC = OS.SaveDC(hdc);
            Control[] children = this._getChildren();
            Rectangle rect = this.getBounds();
            OS.IntersectClipRect(hdc, 0, 0, rect.width, rect.height);
            int i = children.length - 1;
            while (i >= 0) {
                Point location = children[i].getLocation();
                int graphicsMode = OS.GetGraphicsMode(hdc);
                if (graphicsMode == 2) {
                    float[] lpXform = new float[]{1.0f, 0.0f, 0.0f, 1.0f, location.x, location.y};
                    OS.ModifyWorldTransform(hdc, lpXform, 2);
                } else {
                    OS.SetWindowOrgEx(hdc, -location.x, -location.y, null);
                }
                int topHandle = children[i].topHandle();
                int bits = OS.GetWindowLong(topHandle, -16);
                if ((bits & 0x10000000) != 0) {
                    children[i].printWidget(topHandle, hdc, gc);
                }
                if (graphicsMode == 2) {
                    float[] lpXform = new float[]{1.0f, 0.0f, 0.0f, 1.0f, -location.x, -location.y};
                    OS.ModifyWorldTransform(hdc, lpXform, 2);
                }
                --i;
            }
            OS.RestoreDC(hdc, nSavedDC);
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        this.text = null;
    }

    public void setFont(Font font) {
        this.checkWidget();
        Rectangle oldRect = this.getClientArea();
        super.setFont(font);
        Rectangle newRect = this.getClientArea();
        if (!oldRect.equals(newRect)) {
            this.sendResize();
        }
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        this.text = string;
        if (!((this.style & 0x4000000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() || OS.IsWindowEnabled(this.handle) || string.length() == 0)) {
            string = " " + string + " ";
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        OS.SetWindowText(this.handle, buffer);
    }

    int widgetStyle() {
        return super.widgetStyle() | 7 | 0x2000000 | 0x4000000;
    }

    TCHAR windowClass() {
        return GroupClass;
    }

    int windowProc() {
        return GroupProc;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (result != null) {
            return result;
        }
        this.drawBackground(wParam);
        return LRESULT.ONE;
    }

    LRESULT WM_NCHITTEST(int wParam, int lParam) {
        LRESULT result = super.WM_NCHITTEST(wParam, lParam);
        if (result != null) {
            return result;
        }
        int code = this.callWindowProc(this.handle, 132, wParam, lParam);
        if (code == -1) {
            code = 1;
        }
        return new LRESULT(code);
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSEMOVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PRINTCLIENT(int wParam, int lParam) {
        LRESULT result = super.WM_PRINTCLIENT(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int nSavedDC = OS.SaveDC(wParam);
            int code = this.callWindowProc(this.handle, 792, wParam, lParam);
            OS.RestoreDC(wParam, nSavedDC);
            return new LRESULT(code);
        }
        return result;
    }

    LRESULT WM_UPDATEUISTATE(int wParam, int lParam) {
        boolean redraw;
        LRESULT result = super.WM_UPDATEUISTATE(wParam, lParam);
        if (result != null) {
            return result;
        }
        boolean bl = redraw = this.findImageControl() != null;
        if (!redraw) {
            if ((this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
                boolean bl2 = redraw = this.findThemeControl() != null;
            }
            if (!redraw) {
                boolean bl3 = redraw = this.findBackgroundControl() != null;
            }
        }
        if (redraw) {
            OS.InvalidateRect(this.handle, null, false);
            int code = OS.DefWindowProc(this.handle, 296, wParam, lParam);
            return new LRESULT(code);
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.IsWinCE) {
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
        if (newWidth != oldWidth) {
            int left = oldWidth;
            if (newWidth < oldWidth) {
                left = newWidth;
            }
            OS.SetRect(rect, left - 3, 0, newWidth, newHeight);
            OS.InvalidateRect(this.handle, rect, true);
        }
        if (newHeight != oldHeight) {
            int bottom = oldHeight;
            if (newHeight < oldHeight) {
                bottom = newHeight;
            }
            if (newWidth < oldWidth) {
                oldWidth -= 3;
            }
            OS.SetRect(rect, 0, bottom - 3, oldWidth, newHeight);
            OS.InvalidateRect(this.handle, rect, true);
        }
        return result;
    }
}

