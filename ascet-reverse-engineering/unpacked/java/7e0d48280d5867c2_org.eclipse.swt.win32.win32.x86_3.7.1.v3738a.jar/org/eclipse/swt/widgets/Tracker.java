/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public class Tracker
extends Widget {
    Control parent;
    boolean tracking;
    boolean cancelled;
    boolean stippled;
    Rectangle[] rectangles = new Rectangle[0];
    Rectangle[] proportions = this.rectangles;
    Rectangle bounds;
    int resizeCursor;
    Cursor clientCursor;
    int cursorOrientation = 0;
    boolean inEvent = false;
    int hwndTransparent;
    int hwndOpaque;
    int oldTransparentProc;
    int oldOpaqueProc;
    int oldX;
    int oldY;
    static boolean IsVista = !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0);
    static final int STEPSIZE_SMALL = 1;
    static final int STEPSIZE_LARGE = 9;

    public Tracker(Composite parent, int style) {
        super(parent, Tracker.checkStyle(style));
        this.parent = parent;
    }

    public Tracker(Display display, int style) {
        if (display == null) {
            display = Display.getCurrent();
        }
        if (display == null) {
            display = Display.getDefault();
        }
        if (!display.isValidThread()) {
            this.error(22);
        }
        this.style = Tracker.checkStyle(style);
        this.display = display;
        this.reskinWidget();
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

    public void addKeyListener(KeyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(2, typedListener);
        this.addListener(1, typedListener);
    }

    Point adjustMoveCursor() {
        if (this.bounds == null) {
            return null;
        }
        int newX = this.bounds.x + this.bounds.width / 2;
        int newY = this.bounds.y;
        POINT pt = new POINT();
        pt.x = newX;
        pt.y = newY;
        if (this.parent != null) {
            OS.ClientToScreen(this.parent.handle, pt);
        }
        OS.SetCursorPos(pt.x, pt.y);
        return new Point(pt.x, pt.y);
    }

    Point adjustResizeCursor() {
        if (this.bounds == null) {
            return null;
        }
        int newX = (this.cursorOrientation & 0x4000) != 0 ? this.bounds.x : ((this.cursorOrientation & 0x20000) != 0 ? this.bounds.x + this.bounds.width : this.bounds.x + this.bounds.width / 2);
        int newY = (this.cursorOrientation & 0x80) != 0 ? this.bounds.y : ((this.cursorOrientation & 0x400) != 0 ? this.bounds.y + this.bounds.height : this.bounds.y + this.bounds.height / 2);
        POINT pt = new POINT();
        pt.x = newX;
        pt.y = newY;
        if (this.parent != null) {
            OS.ClientToScreen(this.parent.handle, pt);
        }
        OS.SetCursorPos(pt.x, pt.y);
        if (this.clientCursor == null) {
            int newCursor = 0;
            switch (this.cursorOrientation) {
                case 128: {
                    newCursor = OS.LoadCursor(0, 32645);
                    break;
                }
                case 1024: {
                    newCursor = OS.LoadCursor(0, 32645);
                    break;
                }
                case 16384: {
                    newCursor = OS.LoadCursor(0, 32644);
                    break;
                }
                case 131072: {
                    newCursor = OS.LoadCursor(0, 32644);
                    break;
                }
                case 16512: {
                    newCursor = OS.LoadCursor(0, 32642);
                    break;
                }
                case 132096: {
                    newCursor = OS.LoadCursor(0, 32642);
                    break;
                }
                case 17408: {
                    newCursor = OS.LoadCursor(0, 32643);
                    break;
                }
                case 131200: {
                    newCursor = OS.LoadCursor(0, 32643);
                    break;
                }
                default: {
                    newCursor = OS.LoadCursor(0, 32646);
                }
            }
            OS.SetCursor(newCursor);
            if (this.resizeCursor != 0) {
                OS.DestroyCursor(this.resizeCursor);
            }
            this.resizeCursor = newCursor;
        }
        return new Point(pt.x, pt.y);
    }

    static int checkStyle(int style) {
        if ((style & 0x24480) == 0) {
            style |= 0x24480;
        }
        return style;
    }

    public void close() {
        this.checkWidget();
        this.tracking = false;
    }

    Rectangle computeBounds() {
        if (this.rectangles.length == 0) {
            return null;
        }
        int xMin = this.rectangles[0].x;
        int yMin = this.rectangles[0].y;
        int xMax = this.rectangles[0].x + this.rectangles[0].width;
        int yMax = this.rectangles[0].y + this.rectangles[0].height;
        int i = 1;
        while (i < this.rectangles.length) {
            int rectBottom;
            int rectRight;
            if (this.rectangles[i].x < xMin) {
                xMin = this.rectangles[i].x;
            }
            if (this.rectangles[i].y < yMin) {
                yMin = this.rectangles[i].y;
            }
            if ((rectRight = this.rectangles[i].x + this.rectangles[i].width) > xMax) {
                xMax = rectRight;
            }
            if ((rectBottom = this.rectangles[i].y + this.rectangles[i].height) > yMax) {
                yMax = rectBottom;
            }
            ++i;
        }
        return new Rectangle(xMin, yMin, xMax - xMin, yMax - yMin);
    }

    Rectangle[] computeProportions(Rectangle[] rects) {
        Rectangle[] result = new Rectangle[rects.length];
        this.bounds = this.computeBounds();
        if (this.bounds != null) {
            int i = 0;
            while (i < rects.length) {
                int x = 0;
                int y = 0;
                int width = 0;
                int height = 0;
                if (this.bounds.width != 0) {
                    x = (rects[i].x - this.bounds.x) * 100 / this.bounds.width;
                    width = rects[i].width * 100 / this.bounds.width;
                } else {
                    width = 100;
                }
                if (this.bounds.height != 0) {
                    y = (rects[i].y - this.bounds.y) * 100 / this.bounds.height;
                    height = rects[i].height * 100 / this.bounds.height;
                } else {
                    height = 100;
                }
                result[i] = new Rectangle(x, y, width, height);
                ++i;
            }
        }
        return result;
    }

    void drawRectangles(Rectangle[] rects, boolean stippled) {
        if (this.hwndOpaque != 0) {
            RECT rect1 = new RECT();
            int bandWidth = stippled ? 3 : 1;
            int i = 0;
            while (i < rects.length) {
                Rectangle rect = rects[i];
                rect1.left = rect.x - bandWidth;
                rect1.top = rect.y - bandWidth;
                rect1.right = rect.x + rect.width + bandWidth * 2;
                rect1.bottom = rect.y + rect.height + bandWidth * 2;
                OS.MapWindowPoints(0, this.hwndOpaque, rect1, 2);
                OS.RedrawWindow(this.hwndOpaque, rect1, 0, 1);
                ++i;
            }
            return;
        }
        int bandWidth = 1;
        int hwndTrack = this.parent == null ? OS.GetDesktopWindow() : this.parent.handle;
        int hDC = OS.GetDCEx(hwndTrack, 0, 2);
        int hBitmap = 0;
        int hBrush = 0;
        int oldBrush = 0;
        if (stippled) {
            bandWidth = 3;
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
            hBitmap = OS.CreateBitmap(8, 8, 1, 1, bits);
            hBrush = OS.CreatePatternBrush(hBitmap);
            oldBrush = OS.SelectObject(hDC, hBrush);
        }
        int i = 0;
        while (i < rects.length) {
            Rectangle rect = rects[i];
            OS.PatBlt(hDC, rect.x, rect.y, rect.width, bandWidth, 5898313);
            OS.PatBlt(hDC, rect.x, rect.y + bandWidth, bandWidth, rect.height - bandWidth * 2, 5898313);
            OS.PatBlt(hDC, rect.x + rect.width - bandWidth, rect.y + bandWidth, bandWidth, rect.height - bandWidth * 2, 5898313);
            OS.PatBlt(hDC, rect.x, rect.y + rect.height - bandWidth, rect.width, bandWidth, 5898313);
            ++i;
        }
        if (stippled) {
            OS.SelectObject(hDC, oldBrush);
            OS.DeleteObject(hBrush);
            OS.DeleteObject(hBitmap);
        }
        OS.ReleaseDC(hwndTrack, hDC);
    }

    public Rectangle[] getRectangles() {
        this.checkWidget();
        Rectangle[] result = new Rectangle[this.rectangles.length];
        int i = 0;
        while (i < this.rectangles.length) {
            Rectangle current = this.rectangles[i];
            result[i] = new Rectangle(current.x, current.y, current.width, current.height);
            ++i;
        }
        return result;
    }

    public boolean getStippled() {
        this.checkWidget();
        return this.stippled;
    }

    void moveRectangles(int xChange, int yChange) {
        if (this.bounds == null) {
            return;
        }
        if (xChange < 0 && (this.style & 0x4000) == 0) {
            xChange = 0;
        }
        if (xChange > 0 && (this.style & 0x20000) == 0) {
            xChange = 0;
        }
        if (yChange < 0 && (this.style & 0x80) == 0) {
            yChange = 0;
        }
        if (yChange > 0 && (this.style & 0x400) == 0) {
            yChange = 0;
        }
        if (xChange == 0 && yChange == 0) {
            return;
        }
        this.bounds.x += xChange;
        this.bounds.y += yChange;
        int i = 0;
        while (i < this.rectangles.length) {
            this.rectangles[i].x += xChange;
            this.rectangles[i].y += yChange;
            ++i;
        }
    }

    public boolean open() {
        int newProcAddress;
        Rectangle bounds;
        boolean mouseDown;
        int hStyle;
        this.checkWidget();
        this.cancelled = false;
        this.tracking = true;
        int vStyle = this.style & 0x480;
        if (vStyle == 128 || vStyle == 1024) {
            this.cursorOrientation |= vStyle;
        }
        if ((hStyle = this.style & 0x24000) == 16384 || hStyle == 131072) {
            this.cursorOrientation |= hStyle;
        }
        Callback newProc = null;
        boolean bl = mouseDown = OS.GetKeyState(1) < 0;
        if (IsVista && this.parent == null) {
            bounds = this.display.getBounds();
            this.hwndTransparent = OS.CreateWindowEx(0x8080000, this.display.windowClass, null, Integer.MIN_VALUE, bounds.x, bounds.y, bounds.width, bounds.height, 0, 0, OS.GetModuleHandle(null), null);
            OS.SetLayeredWindowAttributes(this.hwndTransparent, 0, (byte)1, 2);
            this.hwndOpaque = OS.CreateWindowEx(0x8080000, this.display.windowClass, null, Integer.MIN_VALUE, bounds.x, bounds.y, bounds.width, bounds.height, this.hwndTransparent, 0, OS.GetModuleHandle(null), null);
            OS.SetLayeredWindowAttributes(this.hwndOpaque, 0xFFFFFF, (byte)-1, 3);
            newProc = new Callback(this, "transparentProc", 4);
            newProcAddress = newProc.getAddress();
            if (newProcAddress == 0) {
                SWT.error(3);
            }
            this.oldTransparentProc = OS.GetWindowLongPtr(this.hwndTransparent, -4);
            OS.SetWindowLongPtr(this.hwndTransparent, -4, newProcAddress);
            this.oldOpaqueProc = OS.GetWindowLongPtr(this.hwndOpaque, -4);
            OS.SetWindowLongPtr(this.hwndOpaque, -4, newProcAddress);
            OS.ShowWindow(this.hwndTransparent, 4);
            OS.ShowWindow(this.hwndOpaque, 4);
        } else if (!mouseDown) {
            bounds = this.display.getBounds();
            this.hwndTransparent = OS.CreateWindowEx(32, this.display.windowClass, null, Integer.MIN_VALUE, bounds.x, bounds.y, bounds.width, bounds.height, 0, 0, OS.GetModuleHandle(null), null);
            newProc = new Callback(this, "transparentProc", 4);
            newProcAddress = newProc.getAddress();
            if (newProcAddress == 0) {
                SWT.error(3);
            }
            this.oldTransparentProc = OS.GetWindowLongPtr(this.hwndTransparent, -4);
            OS.SetWindowLongPtr(this.hwndTransparent, -4, newProcAddress);
            OS.ShowWindow(this.hwndTransparent, 4);
        }
        this.update();
        this.drawRectangles(this.rectangles, this.stippled);
        Point cursorPos = null;
        if (mouseDown) {
            POINT pt = new POINT();
            OS.GetCursorPos(pt);
            cursorPos = new Point(pt.x, pt.y);
        } else {
            cursorPos = (this.style & 0x10) != 0 ? this.adjustResizeCursor() : this.adjustMoveCursor();
        }
        if (cursorPos != null) {
            this.oldX = cursorPos.x;
            this.oldY = cursorPos.y;
        }
        try {
            MSG msg = new MSG();
            while (this.tracking && !this.cancelled) {
                if (this.parent != null && this.parent.isDisposed()) break;
                OS.GetMessage(msg, 0, 0, 0);
                OS.TranslateMessage(msg);
                switch (msg.message) {
                    case 512: 
                    case 514: {
                        this.wmMouse(msg.message, msg.wParam, msg.lParam);
                        break;
                    }
                    case 646: {
                        this.wmIMEChar(msg.hwnd, msg.wParam, msg.lParam);
                        break;
                    }
                    case 258: {
                        this.wmChar(msg.hwnd, msg.wParam, msg.lParam);
                        break;
                    }
                    case 256: {
                        this.wmKeyDown(msg.hwnd, msg.wParam, msg.lParam);
                        break;
                    }
                    case 257: {
                        this.wmKeyUp(msg.hwnd, msg.wParam, msg.lParam);
                        break;
                    }
                    case 262: {
                        this.wmSysChar(msg.hwnd, msg.wParam, msg.lParam);
                        break;
                    }
                    case 260: {
                        this.wmSysKeyDown(msg.hwnd, msg.wParam, msg.lParam);
                        break;
                    }
                    case 261: {
                        this.wmSysKeyUp(msg.hwnd, msg.wParam, msg.lParam);
                    }
                }
                if (256 <= msg.message && msg.message <= 264 || 512 <= msg.message && msg.message <= 525) continue;
                if (this.hwndOpaque == 0 && msg.message == 15) {
                    this.update();
                    this.drawRectangles(this.rectangles, this.stippled);
                }
                OS.DispatchMessage(msg);
                if (this.hwndOpaque != 0 || msg.message != 15) continue;
                this.drawRectangles(this.rectangles, this.stippled);
            }
            if (mouseDown) {
                OS.ReleaseCapture();
            }
            if (!this.isDisposed()) {
                this.update();
                this.drawRectangles(this.rectangles, this.stippled);
            }
        }
        finally {
            if (this.hwndTransparent != 0) {
                OS.DestroyWindow(this.hwndTransparent);
                this.hwndTransparent = 0;
            }
            this.hwndOpaque = 0;
            if (newProc != null) {
                newProc.dispose();
                this.oldOpaqueProc = 0;
                this.oldTransparentProc = 0;
            }
            if (this.resizeCursor != 0) {
                OS.DestroyCursor(this.resizeCursor);
                this.resizeCursor = 0;
            }
        }
        this.tracking = false;
        return !this.cancelled;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.parent = null;
        this.proportions = null;
        this.rectangles = null;
        this.bounds = null;
    }

    public void removeControlListener(ControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(11, listener);
        this.eventTable.unhook(10, listener);
    }

    public void removeKeyListener(KeyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(2, listener);
        this.eventTable.unhook(1, listener);
    }

    void resizeRectangles(int xChange, int yChange) {
        Rectangle proportion;
        int i;
        if (this.bounds == null) {
            return;
        }
        if (xChange < 0 && (this.style & 0x4000) != 0 && (this.cursorOrientation & 0x20000) == 0) {
            this.cursorOrientation |= 0x4000;
        }
        if (xChange > 0 && (this.style & 0x20000) != 0 && (this.cursorOrientation & 0x4000) == 0) {
            this.cursorOrientation |= 0x20000;
        }
        if (yChange < 0 && (this.style & 0x80) != 0 && (this.cursorOrientation & 0x400) == 0) {
            this.cursorOrientation |= 0x80;
        }
        if (yChange > 0 && (this.style & 0x400) != 0 && (this.cursorOrientation & 0x80) == 0) {
            this.cursorOrientation |= 0x400;
        }
        if ((this.cursorOrientation & 0x4000) != 0) {
            if (xChange > this.bounds.width) {
                if ((this.style & 0x20000) == 0) {
                    return;
                }
                this.cursorOrientation |= 0x20000;
                this.cursorOrientation &= 0xFFFFBFFF;
                this.bounds.x += this.bounds.width;
                xChange -= this.bounds.width;
                this.bounds.width = 0;
                if (this.proportions.length > 1) {
                    i = 0;
                    while (i < this.proportions.length) {
                        proportion = this.proportions[i];
                        proportion.x = 100 - proportion.x - proportion.width;
                        ++i;
                    }
                }
            }
        } else if ((this.cursorOrientation & 0x20000) != 0 && this.bounds.width < -xChange) {
            if ((this.style & 0x4000) == 0) {
                return;
            }
            this.cursorOrientation |= 0x4000;
            this.cursorOrientation &= 0xFFFDFFFF;
            xChange += this.bounds.width;
            this.bounds.width = 0;
            if (this.proportions.length > 1) {
                i = 0;
                while (i < this.proportions.length) {
                    proportion = this.proportions[i];
                    proportion.x = 100 - proportion.x - proportion.width;
                    ++i;
                }
            }
        }
        if ((this.cursorOrientation & 0x80) != 0) {
            if (yChange > this.bounds.height) {
                if ((this.style & 0x400) == 0) {
                    return;
                }
                this.cursorOrientation |= 0x400;
                this.cursorOrientation &= 0xFFFFFF7F;
                this.bounds.y += this.bounds.height;
                yChange -= this.bounds.height;
                this.bounds.height = 0;
                if (this.proportions.length > 1) {
                    i = 0;
                    while (i < this.proportions.length) {
                        proportion = this.proportions[i];
                        proportion.y = 100 - proportion.y - proportion.height;
                        ++i;
                    }
                }
            }
        } else if ((this.cursorOrientation & 0x400) != 0 && this.bounds.height < -yChange) {
            if ((this.style & 0x80) == 0) {
                return;
            }
            this.cursorOrientation |= 0x80;
            this.cursorOrientation &= 0xFFFFFBFF;
            yChange += this.bounds.height;
            this.bounds.height = 0;
            if (this.proportions.length > 1) {
                i = 0;
                while (i < this.proportions.length) {
                    proportion = this.proportions[i];
                    proportion.y = 100 - proportion.y - proportion.height;
                    ++i;
                }
            }
        }
        if ((this.cursorOrientation & 0x4000) != 0) {
            this.bounds.x += xChange;
            this.bounds.width -= xChange;
        } else if ((this.cursorOrientation & 0x20000) != 0) {
            this.bounds.width += xChange;
        }
        if ((this.cursorOrientation & 0x80) != 0) {
            this.bounds.y += yChange;
            this.bounds.height -= yChange;
        } else if ((this.cursorOrientation & 0x400) != 0) {
            this.bounds.height += yChange;
        }
        Rectangle[] newRects = new Rectangle[this.rectangles.length];
        int i2 = 0;
        while (i2 < this.rectangles.length) {
            Rectangle proportion2 = this.proportions[i2];
            newRects[i2] = new Rectangle(proportion2.x * this.bounds.width / 100 + this.bounds.x, proportion2.y * this.bounds.height / 100 + this.bounds.y, proportion2.width * this.bounds.width / 100, proportion2.height * this.bounds.height / 100);
            ++i2;
        }
        this.rectangles = newRects;
    }

    public void setCursor(Cursor newCursor) {
        this.checkWidget();
        this.clientCursor = newCursor;
        if (newCursor != null && this.inEvent) {
            OS.SetCursor(this.clientCursor.handle);
        }
    }

    public void setRectangles(Rectangle[] rectangles) {
        this.checkWidget();
        if (rectangles == null) {
            this.error(4);
        }
        this.rectangles = new Rectangle[rectangles.length];
        int i = 0;
        while (i < rectangles.length) {
            Rectangle current = rectangles[i];
            if (current == null) {
                this.error(4);
            }
            this.rectangles[i] = new Rectangle(current.x, current.y, current.width, current.height);
            ++i;
        }
        this.proportions = this.computeProportions(rectangles);
    }

    public void setStippled(boolean stippled) {
        this.checkWidget();
        this.stippled = stippled;
    }

    int transparentProc(int hwnd, int msg, int wParam, int lParam) {
        switch (msg) {
            case 132: {
                if (!this.inEvent) break;
                return -1;
            }
            case 32: {
                if (this.clientCursor != null) {
                    OS.SetCursor(this.clientCursor.handle);
                    return 1;
                }
                if (this.resizeCursor == 0) break;
                OS.SetCursor(this.resizeCursor);
                return 1;
            }
            case 15: {
                if (this.hwndOpaque != hwnd) break;
                PAINTSTRUCT ps = new PAINTSTRUCT();
                int hDC = OS.BeginPaint(hwnd, ps);
                int hBitmap = 0;
                int hBrush = 0;
                int oldBrush = 0;
                int transparentBrush = OS.CreateSolidBrush(0xFFFFFF);
                oldBrush = OS.SelectObject(hDC, transparentBrush);
                OS.PatBlt(hDC, ps.left, ps.top, ps.right - ps.left, ps.bottom - ps.top, 15728673);
                OS.SelectObject(hDC, oldBrush);
                OS.DeleteObject(transparentBrush);
                int bandWidth = 1;
                if (this.stippled) {
                    bandWidth = 3;
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
                    hBitmap = OS.CreateBitmap(8, 8, 1, 1, bits);
                    hBrush = OS.CreatePatternBrush(hBitmap);
                    oldBrush = OS.SelectObject(hDC, hBrush);
                    OS.SetBkColor(hDC, 0xF0F0F0);
                } else {
                    oldBrush = OS.SelectObject(hDC, OS.GetStockObject(4));
                }
                Rectangle[] rects = this.rectangles;
                RECT rect1 = new RECT();
                int i = 0;
                while (i < rects.length) {
                    Rectangle rect = rects[i];
                    rect1.left = rect.x;
                    rect1.top = rect.y;
                    rect1.right = rect.x + rect.width;
                    rect1.bottom = rect.y + rect.height;
                    OS.MapWindowPoints(0, this.hwndOpaque, rect1, 2);
                    int width = rect1.right - rect1.left;
                    int height = rect1.bottom - rect1.top;
                    OS.PatBlt(hDC, rect1.left, rect1.top, width, bandWidth, 15728673);
                    OS.PatBlt(hDC, rect1.left, rect1.top + bandWidth, bandWidth, height - bandWidth * 2, 15728673);
                    OS.PatBlt(hDC, rect1.right - bandWidth, rect1.top + bandWidth, bandWidth, height - bandWidth * 2, 15728673);
                    OS.PatBlt(hDC, rect1.left, rect1.bottom - bandWidth, width, bandWidth, 15728673);
                    ++i;
                }
                OS.SelectObject(hDC, oldBrush);
                if (this.stippled) {
                    OS.DeleteObject(hBrush);
                    OS.DeleteObject(hBitmap);
                }
                OS.EndPaint(hwnd, ps);
                return 0;
            }
        }
        return OS.CallWindowProc(hwnd == this.hwndTransparent ? this.oldTransparentProc : this.oldOpaqueProc, hwnd, msg, wParam, lParam);
    }

    void update() {
        if (this.hwndOpaque != 0) {
            return;
        }
        if (this.parent != null) {
            if (this.parent.isDisposed()) {
                return;
            }
            Shell shell = this.parent.getShell();
            shell.update(true);
        } else {
            this.display.update();
        }
    }

    LRESULT wmKeyDown(int hwnd, int wParam, int lParam) {
        LRESULT result = super.wmKeyDown(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        boolean isMirrored = this.parent != null && (this.parent.style & 0x8000000) != 0;
        int stepSize = OS.GetKeyState(17) < 0 ? 1 : 9;
        int xChange = 0;
        int yChange = 0;
        switch (wParam) {
            case 27: {
                this.cancelled = true;
                this.tracking = false;
                break;
            }
            case 13: {
                this.tracking = false;
                break;
            }
            case 37: {
                xChange = isMirrored ? stepSize : -stepSize;
                break;
            }
            case 39: {
                xChange = isMirrored ? -stepSize : stepSize;
                break;
            }
            case 38: {
                yChange = -stepSize;
                break;
            }
            case 40: {
                yChange = stepSize;
            }
        }
        if (xChange != 0 || yChange != 0) {
            Point cursorPos;
            Rectangle[] oldRectangles = this.rectangles;
            boolean oldStippled = this.stippled;
            Rectangle[] rectsToErase = new Rectangle[this.rectangles.length];
            int i = 0;
            while (i < this.rectangles.length) {
                Rectangle current = this.rectangles[i];
                rectsToErase[i] = new Rectangle(current.x, current.y, current.width, current.height);
                ++i;
            }
            Event event = new Event();
            event.x = this.oldX + xChange;
            event.y = this.oldY + yChange;
            if ((this.style & 0x10) != 0) {
                this.resizeRectangles(xChange, yChange);
                this.inEvent = true;
                this.sendEvent(11, event);
                this.inEvent = false;
                if (this.isDisposed()) {
                    this.cancelled = true;
                    return LRESULT.ONE;
                }
                boolean draw = false;
                if (this.rectangles != oldRectangles) {
                    int length = this.rectangles.length;
                    if (length != rectsToErase.length) {
                        draw = true;
                    } else {
                        int i2 = 0;
                        while (i2 < length) {
                            if (!this.rectangles[i2].equals(rectsToErase[i2])) {
                                draw = true;
                                break;
                            }
                            ++i2;
                        }
                    }
                } else {
                    draw = true;
                }
                if (draw) {
                    this.drawRectangles(rectsToErase, oldStippled);
                    this.update();
                    this.drawRectangles(this.rectangles, this.stippled);
                }
                cursorPos = this.adjustResizeCursor();
            } else {
                this.moveRectangles(xChange, yChange);
                this.inEvent = true;
                this.sendEvent(10, event);
                this.inEvent = false;
                if (this.isDisposed()) {
                    this.cancelled = true;
                    return LRESULT.ONE;
                }
                boolean draw = false;
                if (this.rectangles != oldRectangles) {
                    int length = this.rectangles.length;
                    if (length != rectsToErase.length) {
                        draw = true;
                    } else {
                        int i3 = 0;
                        while (i3 < length) {
                            if (!this.rectangles[i3].equals(rectsToErase[i3])) {
                                draw = true;
                                break;
                            }
                            ++i3;
                        }
                    }
                } else {
                    draw = true;
                }
                if (draw) {
                    this.drawRectangles(rectsToErase, oldStippled);
                    this.update();
                    this.drawRectangles(this.rectangles, this.stippled);
                }
                cursorPos = this.adjustMoveCursor();
            }
            if (cursorPos != null) {
                this.oldX = cursorPos.x;
                this.oldY = cursorPos.y;
            }
        }
        return result;
    }

    LRESULT wmSysKeyDown(int hwnd, int wParam, int lParam) {
        LRESULT result = super.wmSysKeyDown(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        this.cancelled = true;
        this.tracking = false;
        return result;
    }

    LRESULT wmMouse(int message, int wParam, int lParam) {
        boolean isMirrored = this.parent != null && (this.parent.style & 0x8000000) != 0;
        int newPos = OS.GetMessagePos();
        int newX = OS.GET_X_LPARAM(newPos);
        int newY = OS.GET_Y_LPARAM(newPos);
        if (newX != this.oldX || newY != this.oldY) {
            Rectangle[] oldRectangles = this.rectangles;
            boolean oldStippled = this.stippled;
            Rectangle[] rectsToErase = new Rectangle[this.rectangles.length];
            int i = 0;
            while (i < this.rectangles.length) {
                Rectangle current = this.rectangles[i];
                rectsToErase[i] = new Rectangle(current.x, current.y, current.width, current.height);
                ++i;
            }
            Event event = new Event();
            event.x = newX;
            event.y = newY;
            if ((this.style & 0x10) != 0) {
                Point cursorPos;
                if (isMirrored) {
                    this.resizeRectangles(this.oldX - newX, newY - this.oldY);
                } else {
                    this.resizeRectangles(newX - this.oldX, newY - this.oldY);
                }
                this.inEvent = true;
                this.sendEvent(11, event);
                this.inEvent = false;
                if (this.isDisposed()) {
                    this.cancelled = true;
                    return LRESULT.ONE;
                }
                boolean draw = false;
                if (this.rectangles != oldRectangles) {
                    int length = this.rectangles.length;
                    if (length != rectsToErase.length) {
                        draw = true;
                    } else {
                        int i2 = 0;
                        while (i2 < length) {
                            if (!this.rectangles[i2].equals(rectsToErase[i2])) {
                                draw = true;
                                break;
                            }
                            ++i2;
                        }
                    }
                } else {
                    draw = true;
                }
                if (draw) {
                    this.drawRectangles(rectsToErase, oldStippled);
                    this.update();
                    this.drawRectangles(this.rectangles, this.stippled);
                }
                if ((cursorPos = this.adjustResizeCursor()) != null) {
                    newX = cursorPos.x;
                    newY = cursorPos.y;
                }
            } else {
                if (isMirrored) {
                    this.moveRectangles(this.oldX - newX, newY - this.oldY);
                } else {
                    this.moveRectangles(newX - this.oldX, newY - this.oldY);
                }
                this.inEvent = true;
                this.sendEvent(10, event);
                this.inEvent = false;
                if (this.isDisposed()) {
                    this.cancelled = true;
                    return LRESULT.ONE;
                }
                boolean draw = false;
                if (this.rectangles != oldRectangles) {
                    int length = this.rectangles.length;
                    if (length != rectsToErase.length) {
                        draw = true;
                    } else {
                        int i3 = 0;
                        while (i3 < length) {
                            if (!this.rectangles[i3].equals(rectsToErase[i3])) {
                                draw = true;
                                break;
                            }
                            ++i3;
                        }
                    }
                } else {
                    draw = true;
                }
                if (draw) {
                    this.drawRectangles(rectsToErase, oldStippled);
                    this.update();
                    this.drawRectangles(this.rectangles, this.stippled);
                }
            }
            this.oldX = newX;
            this.oldY = newY;
        }
        this.tracking = message != 514;
        return null;
    }
}

