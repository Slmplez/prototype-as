/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.CANDIDATEFORM;
import org.eclipse.swt.internal.win32.COMPOSITIONFORM;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.IME;
import org.eclipse.swt.widgets.Widget;

public class Caret
extends Widget {
    Canvas parent;
    int x;
    int y;
    int width;
    int height;
    boolean moved;
    boolean resized;
    boolean isVisible;
    Image image;
    Font font;
    LOGFONT oldFont;

    public Caret(Canvas parent, int style) {
        super(parent, style);
        this.parent = parent;
        this.createWidget();
    }

    void createWidget() {
        this.isVisible = true;
        if (this.parent.getCaret() == null) {
            this.parent.setCaret(this);
        }
    }

    int defaultFont() {
        int hwnd = this.parent.handle;
        int hwndIME = OS.ImmGetDefaultIMEWnd(hwnd);
        int hFont = 0;
        if (hwndIME != 0) {
            hFont = OS.SendMessage(hwndIME, 49, 0, 0);
        }
        if (hFont == 0) {
            hFont = OS.SendMessage(hwnd, 49, 0, 0);
        }
        if (hFont == 0) {
            return this.parent.defaultFont();
        }
        return hFont;
    }

    public Rectangle getBounds() {
        int[] buffer;
        this.checkWidget();
        if (this.image != null) {
            Rectangle rect = this.image.getBounds();
            return new Rectangle(this.x, this.y, rect.width, rect.height);
        }
        if (!OS.IsWinCE && this.width == 0 && OS.SystemParametersInfo(8198, 0, buffer = new int[1], 0)) {
            return new Rectangle(this.x, this.y, buffer[0], this.height);
        }
        return new Rectangle(this.x, this.y, this.width, this.height);
    }

    public Font getFont() {
        this.checkWidget();
        if (this.font == null) {
            int hFont = this.defaultFont();
            return Font.win32_new(this.display, hFont);
        }
        return this.font;
    }

    public Image getImage() {
        this.checkWidget();
        return this.image;
    }

    public Point getLocation() {
        this.checkWidget();
        return new Point(this.x, this.y);
    }

    public Canvas getParent() {
        this.checkWidget();
        return this.parent;
    }

    public Point getSize() {
        int[] buffer;
        this.checkWidget();
        if (this.image != null) {
            Rectangle rect = this.image.getBounds();
            return new Point(rect.width, rect.height);
        }
        if (!OS.IsWinCE && this.width == 0 && OS.SystemParametersInfo(8198, 0, buffer = new int[1], 0)) {
            return new Point(buffer[0], this.height);
        }
        return new Point(this.width, this.height);
    }

    public boolean getVisible() {
        this.checkWidget();
        return this.isVisible;
    }

    boolean hasFocus() {
        return this.parent.handle == OS.GetFocus();
    }

    boolean isFocusCaret() {
        return this.parent.caret == this && this.hasFocus();
    }

    public boolean isVisible() {
        this.checkWidget();
        return this.isVisible && this.parent.isVisible() && this.hasFocus();
    }

    void killFocus() {
        OS.DestroyCaret();
        this.restoreIMEFont();
    }

    void move() {
        this.moved = false;
        if (!OS.SetCaretPos(this.x, this.y)) {
            return;
        }
        this.resizeIME();
    }

    void resizeIME() {
        if (!OS.IsDBLocale) {
            return;
        }
        POINT ptCurrentPos = new POINT();
        if (!OS.GetCaretPos(ptCurrentPos)) {
            return;
        }
        int hwnd = this.parent.handle;
        int hIMC = OS.ImmGetContext(hwnd);
        IME ime = this.parent.getIME();
        if (ime != null && ime.isInlineEnabled()) {
            Point size = this.getSize();
            CANDIDATEFORM lpCandidate = new CANDIDATEFORM();
            lpCandidate.dwStyle = 128;
            lpCandidate.ptCurrentPos = ptCurrentPos;
            lpCandidate.rcArea = new RECT();
            OS.SetRect(lpCandidate.rcArea, ptCurrentPos.x, ptCurrentPos.y, ptCurrentPos.x + size.x, ptCurrentPos.y + size.y);
            OS.ImmSetCandidateWindow(hIMC, lpCandidate);
        } else {
            RECT rect = new RECT();
            OS.GetClientRect(hwnd, rect);
            COMPOSITIONFORM lpCompForm = new COMPOSITIONFORM();
            lpCompForm.dwStyle = 1;
            lpCompForm.x = ptCurrentPos.x;
            lpCompForm.y = ptCurrentPos.y;
            lpCompForm.left = rect.left;
            lpCompForm.right = rect.right;
            lpCompForm.top = rect.top;
            lpCompForm.bottom = rect.bottom;
            OS.ImmSetCompositionWindow(hIMC, lpCompForm);
        }
        OS.ImmReleaseContext(hwnd, hIMC);
    }

    void releaseParent() {
        super.releaseParent();
        if (this == this.parent.getCaret()) {
            this.parent.setCaret(null);
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        this.parent = null;
        this.image = null;
        this.font = null;
        this.oldFont = null;
    }

    void resize() {
        int[] buffer;
        this.resized = false;
        int hwnd = this.parent.handle;
        OS.DestroyCaret();
        int hBitmap = this.image != null ? this.image.handle : 0;
        int width = this.width;
        if (!OS.IsWinCE && this.image == null && width == 0 && OS.SystemParametersInfo(8198, 0, buffer = new int[1], 0)) {
            width = buffer[0];
        }
        OS.CreateCaret(hwnd, hBitmap, width, this.height);
        OS.SetCaretPos(this.x, this.y);
        OS.ShowCaret(hwnd);
        this.move();
    }

    void restoreIMEFont() {
        if (!OS.IsDBLocale) {
            return;
        }
        if (this.oldFont == null) {
            return;
        }
        int hwnd = this.parent.handle;
        int hIMC = OS.ImmGetContext(hwnd);
        OS.ImmSetCompositionFont(hIMC, this.oldFont);
        OS.ImmReleaseContext(hwnd, hIMC);
        this.oldFont = null;
    }

    public void setBounds(int x, int y, int width, int height) {
        boolean sameExtent;
        this.checkWidget();
        boolean samePosition = this.x == x && this.y == y;
        boolean bl = sameExtent = this.width == width && this.height == height;
        if (samePosition && sameExtent) {
            return;
        }
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        if (sameExtent) {
            this.moved = true;
            if (this.isVisible && this.hasFocus()) {
                this.move();
            }
        } else {
            this.resized = true;
            if (this.isVisible && this.hasFocus()) {
                this.resize();
            }
        }
    }

    public void setBounds(Rectangle rect) {
        if (rect == null) {
            this.error(4);
        }
        this.setBounds(rect.x, rect.y, rect.width, rect.height);
    }

    void setFocus() {
        int[] buffer;
        int hwnd = this.parent.handle;
        int hBitmap = 0;
        if (this.image != null) {
            hBitmap = this.image.handle;
        }
        int width = this.width;
        if (!OS.IsWinCE && this.image == null && width == 0 && OS.SystemParametersInfo(8198, 0, buffer = new int[1], 0)) {
            width = buffer[0];
        }
        OS.CreateCaret(hwnd, hBitmap, width, this.height);
        this.move();
        this.setIMEFont();
        if (this.isVisible) {
            OS.ShowCaret(hwnd);
        }
    }

    public void setFont(Font font) {
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            this.error(5);
        }
        this.font = font;
        if (this.hasFocus()) {
            this.setIMEFont();
        }
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        this.image = image;
        if (this.isVisible && this.hasFocus()) {
            this.resize();
        }
    }

    void setIMEFont() {
        LOGFONT logFont;
        if (!OS.IsDBLocale) {
            return;
        }
        int hFont = 0;
        if (this.font != null) {
            hFont = this.font.handle;
        }
        if (hFont == 0) {
            hFont = this.defaultFont();
        }
        int hwnd = this.parent.handle;
        int hIMC = OS.ImmGetContext(hwnd);
        if (this.oldFont == null) {
            LOGFONT lOGFONT = this.oldFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
            if (!OS.ImmGetCompositionFont(hIMC, this.oldFont)) {
                this.oldFont = null;
            }
        }
        LOGFONT lOGFONT = logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        if (OS.GetObject(hFont, LOGFONT.sizeof, logFont) != 0) {
            OS.ImmSetCompositionFont(hIMC, logFont);
        }
        OS.ImmReleaseContext(hwnd, hIMC);
    }

    public void setLocation(int x, int y) {
        this.checkWidget();
        if (this.x == x && this.y == y) {
            return;
        }
        this.x = x;
        this.y = y;
        this.moved = true;
        if (this.isVisible && this.hasFocus()) {
            this.move();
        }
    }

    public void setLocation(Point location) {
        this.checkWidget();
        if (location == null) {
            this.error(4);
        }
        this.setLocation(location.x, location.y);
    }

    public void setSize(int width, int height) {
        this.checkWidget();
        if (this.width == width && this.height == height) {
            return;
        }
        this.width = width;
        this.height = height;
        this.resized = true;
        if (this.isVisible && this.hasFocus()) {
            this.resize();
        }
    }

    public void setSize(Point size) {
        this.checkWidget();
        if (size == null) {
            this.error(4);
        }
        this.setSize(size.x, size.y);
    }

    public void setVisible(boolean visible) {
        this.checkWidget();
        if (visible == this.isVisible) {
            return;
        }
        this.isVisible = visible;
        int hwnd = this.parent.handle;
        if (OS.GetFocus() != hwnd) {
            return;
        }
        if (!this.isVisible) {
            OS.HideCaret(hwnd);
        } else {
            if (this.resized) {
                this.resize();
            } else if (this.moved) {
                this.move();
            }
            OS.ShowCaret(hwnd);
        }
    }
}

