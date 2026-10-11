/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;

public class Sash
extends Control {
    boolean dragging;
    int startX;
    int startY;
    int lastX;
    int lastY;
    static final int INCREMENT = 1;
    static final int PAGE_INCREMENT = 9;

    public Sash(Composite parent, int style) {
        super(parent, Sash.checkStyle(style));
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
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    void createHandle() {
        super.createHandle();
        this.state |= 0x100;
    }

    static int checkStyle(int style) {
        return Sash.checkBits(style, 256, 512, 0, 0, 0, 0);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int border = this.getBorderWidth();
        int width = border * 2;
        int height = border * 2;
        if ((this.style & 0x100) != 0) {
            width += 64;
            height += 3;
        } else {
            width += 3;
            height += 64;
        }
        if (wHint != -1) {
            width = wHint + border * 2;
        }
        if (hHint != -1) {
            height = hHint + border * 2;
        }
        return new Point(width, height);
    }

    void drawBand(int x, int y, int width, int height) {
        if ((this.style & 0x10000) != 0) {
            return;
        }
        int hwndTrack = this.parent.handle;
        byte[] byArray = new byte[16];
        byArray[0] = -86;
        byArray[2] = 85;
        byArray[4] = -86;
        byArray[6] = 85;
        byArray[8] = -86;
        byArray[10] = 85;
        byArray[12] = -86;
        byArray[14] = 85;
        byte[] bits = byArray;
        int stippleBitmap = OS.CreateBitmap(8, 8, 1, 1, bits);
        int stippleBrush = OS.CreatePatternBrush(stippleBitmap);
        int hDC = OS.GetDCEx(hwndTrack, 0, 2);
        int oldBrush = OS.SelectObject(hDC, stippleBrush);
        OS.PatBlt(hDC, x, y, width, height, 5898313);
        OS.SelectObject(hDC, oldBrush);
        OS.ReleaseDC(hwndTrack, hDC);
        OS.DeleteObject(stippleBrush);
        OS.DeleteObject(stippleBitmap);
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

    TCHAR windowClass() {
        return this.display.windowClass;
    }

    int windowProc() {
        return this.display.windowProc;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        super.WM_ERASEBKGND(wParam, lParam);
        this.drawBackground(wParam);
        return LRESULT.ONE;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 37: 
            case 38: 
            case 39: 
            case 40: {
                if (OS.GetKeyState(1) < 0) {
                    return result;
                }
                int step = OS.GetKeyState(17) < 0 ? 1 : 9;
                POINT pt = new POINT();
                if ((this.style & 0x200) != 0) {
                    if (wParam == 38 || wParam == 40) break;
                    pt.x = wParam == 37 ? -step : step;
                } else {
                    if (wParam == 37 || wParam == 39) break;
                    pt.y = wParam == 38 ? -step : step;
                }
                int hwndTrack = this.parent.handle;
                OS.MapWindowPoints(this.handle, hwndTrack, pt, 1);
                RECT rect = new RECT();
                RECT clientRect = new RECT();
                OS.GetWindowRect(this.handle, rect);
                int width = rect.right - rect.left;
                int height = rect.bottom - rect.top;
                OS.GetClientRect(hwndTrack, clientRect);
                int clientWidth = clientRect.right - clientRect.left;
                int clientHeight = clientRect.bottom - clientRect.top;
                int newX = this.lastX;
                int newY = this.lastY;
                if ((this.style & 0x200) != 0) {
                    newX = Math.min(Math.max(0, pt.x - this.startX), clientWidth - width);
                } else {
                    newY = Math.min(Math.max(0, pt.y - this.startY), clientHeight - height);
                }
                if (newX == this.lastX && newY == this.lastY) {
                    return result;
                }
                POINT cursorPt = new POINT();
                cursorPt.x = pt.x;
                cursorPt.y = pt.y;
                OS.ClientToScreen(hwndTrack, cursorPt);
                if ((this.style & 0x200) != 0) {
                    cursorPt.y += height / 2;
                } else {
                    cursorPt.x += width / 2;
                }
                OS.SetCursorPos(cursorPt.x, cursorPt.y);
                Event event = new Event();
                event.x = newX;
                event.y = newY;
                event.width = width;
                event.height = height;
                this.sendSelectionEvent(13, event, true);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
                if (event.doit && (this.style & 0x10000) != 0) {
                    this.setBounds(event.x, event.y, width, height);
                }
                return result;
            }
        }
        return result;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        return new LRESULT(256);
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        int hwndTrack = this.parent.handle;
        POINT pt = new POINT();
        OS.POINTSTOPOINT(pt, lParam);
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        OS.MapWindowPoints(this.handle, 0, pt, 1);
        this.startX = pt.x - rect.left;
        this.startY = pt.y - rect.top;
        OS.MapWindowPoints(0, hwndTrack, rect, 2);
        this.lastX = rect.left;
        this.lastY = rect.top;
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        Event event = new Event();
        event.x = this.lastX;
        event.y = this.lastY;
        event.width = width;
        event.height = height;
        if ((this.style & 0x10000) == 0) {
            event.detail = 1;
        }
        this.sendSelectionEvent(13, event, true);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        if (event.doit) {
            this.dragging = true;
            this.lastX = event.x;
            this.lastY = event.y;
            this.menuShell().bringToTop();
            if (this.isDisposed()) {
                return LRESULT.ZERO;
            }
            if (OS.IsWinCE) {
                OS.UpdateWindow(hwndTrack);
            } else {
                int flags = 384;
                OS.RedrawWindow(hwndTrack, null, 0, flags);
            }
            this.drawBand(event.x, event.y, width, height);
            if ((this.style & 0x10000) != 0) {
                this.setBounds(event.x, event.y, width, height);
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONUP(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (!this.dragging) {
            return result;
        }
        this.dragging = false;
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        Event event = new Event();
        event.x = this.lastX;
        event.y = this.lastY;
        event.width = width;
        event.height = height;
        this.drawBand(event.x, event.y, width, height);
        this.sendSelectionEvent(13, event, true);
        if (this.isDisposed()) {
            return result;
        }
        if (event.doit && (this.style & 0x10000) != 0) {
            this.setBounds(event.x, event.y, width, height);
        }
        return result;
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSEMOVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!this.dragging || (wParam & 1) == 0) {
            return result;
        }
        POINT pt = new POINT();
        OS.POINTSTOPOINT(pt, lParam);
        int hwndTrack = this.parent.handle;
        OS.MapWindowPoints(this.handle, hwndTrack, pt, 1);
        RECT rect = new RECT();
        RECT clientRect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        OS.GetClientRect(hwndTrack, clientRect);
        int newX = this.lastX;
        int newY = this.lastY;
        if ((this.style & 0x200) != 0) {
            int clientWidth = clientRect.right - clientRect.left;
            newX = Math.min(Math.max(0, pt.x - this.startX), clientWidth - width);
        } else {
            int clientHeight = clientRect.bottom - clientRect.top;
            newY = Math.min(Math.max(0, pt.y - this.startY), clientHeight - height);
        }
        if (newX == this.lastX && newY == this.lastY) {
            return result;
        }
        this.drawBand(this.lastX, this.lastY, width, height);
        Event event = new Event();
        event.x = newX;
        event.y = newY;
        event.width = width;
        event.height = height;
        if ((this.style & 0x10000) == 0) {
            event.detail = 1;
        }
        this.sendSelectionEvent(13, event, true);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        if (event.doit) {
            this.lastX = event.x;
            this.lastY = event.y;
        }
        if (OS.IsWinCE) {
            OS.UpdateWindow(hwndTrack);
        } else {
            int flags = 384;
            OS.RedrawWindow(hwndTrack, null, 0, flags);
        }
        this.drawBand(this.lastX, this.lastY, width, height);
        if ((this.style & 0x10000) != 0) {
            this.setBounds(this.lastX, this.lastY, width, height);
        }
        return result;
    }

    LRESULT WM_SETCURSOR(int wParam, int lParam) {
        LRESULT result = super.WM_SETCURSOR(wParam, lParam);
        if (result != null) {
            return result;
        }
        short hitTest = (short)OS.LOWORD(lParam);
        if (hitTest == 1) {
            int hCursor = 0;
            hCursor = (this.style & 0x100) != 0 ? OS.LoadCursor(0, 32645) : OS.LoadCursor(0, 32644);
            OS.SetCursor(hCursor);
            return LRESULT.ONE;
        }
        return result;
    }
}

