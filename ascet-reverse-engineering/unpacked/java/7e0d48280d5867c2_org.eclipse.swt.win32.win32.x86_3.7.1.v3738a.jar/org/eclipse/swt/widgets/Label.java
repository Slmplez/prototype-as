/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.DRAWITEMSTRUCT;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;

public class Label
extends Control {
    String text = "";
    Image image;
    static final int MARGIN = 4;
    static boolean IMAGE_AND_TEXT = false;
    static final int LabelProc;
    static final TCHAR LabelClass;

    static {
        LabelClass = new TCHAR(0, "STATIC", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, LabelClass, lpWndClass);
        LabelProc = lpWndClass.lpfnWndProc;
    }

    public Label(Composite parent, int style) {
        super(parent, Label.checkStyle(style));
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 1)) {
            switch (msg) {
                case 515: {
                    return OS.DefWindowProc(hwnd, msg, wParam, lParam);
                }
            }
        }
        return OS.CallWindowProc(LabelProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        if (((style |= 0x80000) & 2) != 0) {
            style = Label.checkBits(style, 512, 256, 0, 0, 0, 0);
            return Label.checkBits(style, 8, 4, 32, 0, 0, 0);
        }
        return Label.checkBits(style, 16384, 0x1000000, 131072, 0, 0, 0);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        boolean drawImage;
        this.checkWidget();
        int width = 0;
        int height = 0;
        int border = this.getBorderWidth();
        if ((this.style & 2) != 0) {
            int lineWidth = OS.GetSystemMetrics(5);
            if ((this.style & 0x100) != 0) {
                width = 64;
                height = lineWidth * 2;
            } else {
                width = lineWidth * 2;
                height = 64;
            }
            if (wHint != -1) {
                width = wHint;
            }
            if (hHint != -1) {
                height = hHint;
            }
            return new Point(width += border * 2, height += border * 2);
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        boolean drawText = true;
        boolean bl = drawImage = (bits & 0xD) == 13;
        if (drawImage && this.image != null) {
            Rectangle rect = this.image.getBounds();
            width += rect.width;
            height += rect.height;
            if (IMAGE_AND_TEXT) {
                if (this.text.length() != 0) {
                    width += 4;
                }
            } else {
                drawText = false;
            }
        }
        if (drawText) {
            int hDC = OS.GetDC(this.handle);
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            int oldFont = OS.SelectObject(hDC, newFont);
            int length = OS.GetWindowTextLength(this.handle);
            if (length == 0) {
                TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
                OS.GetTextMetrics(hDC, tm);
                height = Math.max(height, tm.tmHeight);
            } else {
                RECT rect = new RECT();
                int flags = 9280;
                if ((this.style & 0x40) != 0 && wHint != -1) {
                    flags |= 0x10;
                    rect.right = Math.max(0, wHint - width);
                }
                TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
                OS.GetWindowText(this.handle, buffer, length + 1);
                OS.DrawText(hDC, buffer, length, rect, flags);
                width += rect.right - rect.left;
                height = Math.max(height, rect.bottom - rect.top);
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        width += border * 2;
        height += border * 2;
        if (OS.IsWinCE && !drawImage) {
            width += 2;
        }
        return new Point(width, height);
    }

    void createHandle() {
        super.createHandle();
        this.state |= 0x100;
    }

    public int getAlignment() {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return 0;
        }
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

    public Image getImage() {
        this.checkWidget();
        return this.image;
    }

    String getNameText() {
        return this.getText();
    }

    public String getText() {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return "";
        }
        return this.text;
    }

    boolean mnemonicHit(char key) {
        Composite control = this.parent;
        while (control != null) {
            Control[] children = control._getChildren();
            int index = 0;
            while (index < children.length) {
                if (children[index] == this) break;
                ++index;
            }
            if (++index < children.length && children[index].setFocus()) {
                return true;
            }
            control = control.parent;
        }
        return false;
    }

    boolean mnemonicMatch(char key) {
        char mnemonic = this.findMnemonic(this.getText());
        if (mnemonic == '\u0000') {
            return false;
        }
        return Character.toUpperCase(key) == Character.toUpperCase(mnemonic);
    }

    void releaseWidget() {
        super.releaseWidget();
        this.text = null;
        this.image = null;
    }

    public void setAlignment(int alignment) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        if ((alignment & 0x1024000) == 0) {
            return;
        }
        this.style &= 0xFEFDBFFF;
        this.style |= alignment & 0x1024000;
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0xD) != 13) {
            bits &= 0xFFFFFFF0;
            if ((this.style & 0x4000) != 0) {
                bits = (this.style & 0x40) != 0 ? (bits |= 0) : (bits |= 0xC);
            }
            if ((this.style & 0x1000000) != 0) {
                bits |= 1;
            }
            if ((this.style & 0x20000) != 0) {
                bits |= 2;
            }
            OS.SetWindowLong(this.handle, -16, bits);
        }
        OS.InvalidateRect(this.handle, null, true);
    }

    public void setImage(Image image) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        this.image = image;
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0xD) != 13) {
            bits &= 0xFFFFFFF0;
            OS.SetWindowLong(this.handle, -16, bits |= 0xD);
        }
        OS.InvalidateRect(this.handle, null, true);
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((this.style & 2) != 0) {
            return;
        }
        if (string.equals(this.text)) {
            return;
        }
        this.text = string;
        if (this.image == null || !IMAGE_AND_TEXT) {
            int oldBits;
            int newBits = oldBits = OS.GetWindowLong(this.handle, -16);
            newBits &= 0xFFFFFFF2;
            if ((this.style & 0x4000) != 0) {
                newBits = (this.style & 0x40) != 0 ? (newBits |= 0) : (newBits |= 0xC);
            }
            if ((this.style & 0x1000000) != 0) {
                newBits |= 1;
            }
            if ((this.style & 0x20000) != 0) {
                newBits |= 2;
            }
            if (oldBits != newBits) {
                OS.SetWindowLong(this.handle, -16, newBits);
            }
        }
        string = Display.withCrLf(string);
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        OS.SetWindowText(this.handle, buffer);
        if (OS.COMCTL32_MAJOR < 6 && this.findImageControl() != null) {
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    int widgetExtStyle() {
        int bits = super.widgetExtStyle() & 0xFFFFFDFF;
        if ((this.style & 0x800) != 0) {
            return bits | 0x20000;
        }
        return bits;
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x100;
        if ((this.style & 2) != 0) {
            return bits | 0xD;
        }
        if (OS.WIN32_VERSION >= OS.VERSION(5, 0) && (this.style & 0x40) != 0) {
            bits |= 0x2000;
        }
        if ((this.style & 0x1000000) != 0) {
            return bits | 1;
        }
        if ((this.style & 0x20000) != 0) {
            return bits | 2;
        }
        if ((this.style & 0x40) != 0) {
            return bits;
        }
        return bits | 0xC;
    }

    TCHAR windowClass() {
        return LabelClass;
    }

    int windowProc() {
        return LabelProc;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (result != null) {
            return result;
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0xD) == 13) {
            return LRESULT.ONE;
        }
        if (OS.COMCTL32_MAJOR < 6 && this.findImageControl() != null) {
            this.drawBackground(wParam);
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (this.isDisposed()) {
            return result;
        }
        if ((this.style & 2) != 0) {
            OS.InvalidateRect(this.handle, null, true);
            return result;
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0xD) == 13) {
            OS.InvalidateRect(this.handle, null, true);
            return result;
        }
        if ((bits & 0xC) != 12) {
            OS.InvalidateRect(this.handle, null, true);
            return result;
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
        if (!redraw && (this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            boolean bl2 = redraw = this.findThemeControl() != null;
        }
        if (redraw) {
            OS.InvalidateRect(this.handle, null, false);
            int code = OS.DefWindowProc(this.handle, 296, wParam, lParam);
            return new LRESULT(code);
        }
        return result;
    }

    LRESULT wmColorChild(int wParam, int lParam) {
        int bits;
        LRESULT result = super.wmColorChild(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0xD) != 13 && this.findImageControl() != null) {
            OS.SetBkMode(wParam, 1);
            return new LRESULT(OS.GetStockObject(5));
        }
        return result;
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        if (OS.IsWinCE) {
            boolean drawSeparator;
            boolean drawImage = this.image != null;
            boolean bl = drawSeparator = (this.style & 2) != 0 && (this.style & 0x20) == 0;
            if (drawImage || drawSeparator) {
                LRESULT result = null;
                PAINTSTRUCT ps = new PAINTSTRUCT();
                GCData data = new GCData();
                data.ps = ps;
                data.hwnd = this.handle;
                GC gc = this.new_GC(data);
                if (gc != null) {
                    this.drawBackground(gc.handle);
                    RECT clientRect = new RECT();
                    OS.GetClientRect(this.handle, clientRect);
                    if (drawSeparator) {
                        int flags;
                        RECT rect = new RECT();
                        int lineWidth = OS.GetSystemMetrics(5);
                        int n = flags = (this.style & 4) != 0 ? 10 : 6;
                        if ((this.style & 0x100) != 0) {
                            int bottom = clientRect.top + Math.max(lineWidth * 2, (clientRect.bottom - clientRect.top) / 2);
                            OS.SetRect(rect, clientRect.left, clientRect.top, clientRect.right, bottom);
                            OS.DrawEdge(gc.handle, rect, flags, 8);
                        } else {
                            int right = clientRect.left + Math.max(lineWidth * 2, (clientRect.right - clientRect.left) / 2);
                            OS.SetRect(rect, clientRect.left, clientRect.top, right, clientRect.bottom);
                            OS.DrawEdge(gc.handle, rect, flags, 4);
                        }
                        result = LRESULT.ONE;
                    }
                    if (drawImage) {
                        Rectangle imageBounds = this.image.getBounds();
                        int x = 0;
                        if ((this.style & 0x1000000) != 0) {
                            x = Math.max(0, (clientRect.right - imageBounds.width) / 2);
                        } else if ((this.style & 0x20000) != 0) {
                            x = Math.max(0, clientRect.right - imageBounds.width);
                        }
                        gc.drawImage(this.image, x, Math.max(0, (clientRect.bottom - imageBounds.height) / 2));
                        result = LRESULT.ONE;
                    }
                    int width = ps.right - ps.left;
                    int height = ps.bottom - ps.top;
                    if (width != 0 && height != 0) {
                        Event event = new Event();
                        event.gc = gc;
                        event.x = ps.left;
                        event.y = ps.top;
                        event.width = width;
                        event.height = height;
                        this.sendEvent(9, event);
                        event.gc = null;
                    }
                    gc.dispose();
                }
                return result;
            }
        }
        return super.WM_PAINT(wParam, lParam);
    }

    LRESULT wmDrawChild(int wParam, int lParam) {
        DRAWITEMSTRUCT struct = new DRAWITEMSTRUCT();
        OS.MoveMemory(struct, lParam, DRAWITEMSTRUCT.sizeof);
        this.drawBackground(struct.hDC);
        if ((this.style & 2) != 0) {
            int flags;
            if ((this.style & 0x20) != 0) {
                return null;
            }
            RECT rect = new RECT();
            int lineWidth = OS.GetSystemMetrics(5);
            int n = flags = (this.style & 4) != 0 ? 10 : 6;
            if ((this.style & 0x100) != 0) {
                int bottom = struct.top + Math.max(lineWidth * 2, (struct.bottom - struct.top) / 2);
                OS.SetRect(rect, struct.left, struct.top, struct.right, bottom);
                OS.DrawEdge(struct.hDC, rect, flags, 8);
            } else {
                int right = struct.left + Math.max(lineWidth * 2, (struct.right - struct.left) / 2);
                OS.SetRect(rect, struct.left, struct.top, right, struct.bottom);
                OS.DrawEdge(struct.hDC, rect, flags, 4);
            }
        } else {
            int width = struct.right - struct.left;
            int height = struct.bottom - struct.top;
            if (width != 0 && height != 0) {
                Object rect;
                boolean drawImage = this.image != null;
                boolean drawText = IMAGE_AND_TEXT && this.text.length() != 0;
                int margin = drawText && drawImage ? 4 : 0;
                int imageWidth = 0;
                int imageHeight = 0;
                if (drawImage) {
                    rect = this.image.getBounds();
                    imageWidth = ((Rectangle)rect).width;
                    imageHeight = ((Rectangle)rect).height;
                }
                rect = null;
                TCHAR buffer = null;
                int textWidth = 0;
                int textHeight = 0;
                int flags = 0;
                if (drawText) {
                    rect = new RECT();
                    flags = 9280;
                    if ((this.style & 0x4000) != 0) {
                        flags |= 0;
                    }
                    if ((this.style & 0x1000000) != 0) {
                        flags |= 1;
                    }
                    if ((this.style & 0x20000) != 0) {
                        flags |= 2;
                    }
                    if ((this.style & 0x40) != 0) {
                        flags |= 0x10;
                        ((RECT)rect).right = Math.max(0, width - imageWidth - margin);
                    }
                    buffer = new TCHAR(this.getCodePage(), this.text, true);
                    OS.DrawText(struct.hDC, buffer, -1, (RECT)rect, flags);
                    textWidth = ((RECT)rect).right - ((RECT)rect).left;
                    textHeight = ((RECT)rect).bottom - ((RECT)rect).top;
                }
                int x = 0;
                if ((this.style & 0x1000000) != 0) {
                    x = Math.max(0, (width - imageWidth - textWidth - margin) / 2);
                } else if ((this.style & 0x20000) != 0) {
                    x = width - imageWidth - textWidth - margin;
                }
                if (drawImage) {
                    GCData data = new GCData();
                    data.device = this.display;
                    GC gc = GC.win32_new(struct.hDC, data);
                    Image image = this.getEnabled() ? this.image : new Image((Device)this.display, this.image, 1);
                    gc.drawImage(image, x, Math.max(0, (height - imageHeight) / 2));
                    if (image != this.image) {
                        image.dispose();
                    }
                    gc.dispose();
                    x += imageWidth + margin;
                }
                if (drawText) {
                    ((RECT)rect).left = x;
                    ((RECT)rect).right += ((RECT)rect).left;
                    ((RECT)rect).top = Math.max(0, (height - textHeight) / 2);
                    ((RECT)rect).bottom += ((RECT)rect).top;
                    OS.DrawText(struct.hDC, buffer, -1, (RECT)rect, flags &= 0xFFFFFBFF);
                }
            }
        }
        return null;
    }
}

