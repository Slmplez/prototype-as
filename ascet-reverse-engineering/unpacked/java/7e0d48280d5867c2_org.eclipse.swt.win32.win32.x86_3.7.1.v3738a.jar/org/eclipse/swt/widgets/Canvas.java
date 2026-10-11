/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.COMPOSITIONFORM;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.IME;

public class Canvas
extends Composite {
    Caret caret;
    IME ime;

    Canvas() {
    }

    public Canvas(Composite parent, int style) {
        super(parent, style);
    }

    void clearArea(int x, int y, int width, int height) {
        this.checkWidget();
        if (OS.IsWindowVisible(this.handle)) {
            RECT rect = new RECT();
            OS.SetRect(rect, x, y, x + width, y + height);
            int hDC = OS.GetDCEx(this.handle, 0, 26);
            this.drawBackground(hDC, rect);
            OS.ReleaseDC(this.handle, hDC);
        }
    }

    public void drawBackground(GC gc, int x, int y, int width, int height) {
        this.drawBackground(gc, x, y, width, height, 0, 0);
    }

    public Caret getCaret() {
        this.checkWidget();
        return this.caret;
    }

    public IME getIME() {
        this.checkWidget();
        return this.ime;
    }

    void releaseChildren(boolean destroy) {
        if (this.caret != null) {
            this.caret.release(false);
            this.caret = null;
        }
        if (this.ime != null) {
            this.ime.release(false);
            this.ime = null;
        }
        super.releaseChildren(destroy);
    }

    void reskinChildren(int flags) {
        if (this.caret != null) {
            this.caret.reskin(flags);
        }
        if (this.ime != null) {
            this.ime.reskin(flags);
        }
        super.reskinChildren(flags);
    }

    public void scroll(int destX, int destY, int x, int y, int width, int height, boolean all) {
        int flags;
        boolean isFocus;
        this.checkWidget();
        this.forceResize();
        boolean bl = isFocus = this.caret != null && this.caret.isFocusCaret();
        if (isFocus) {
            this.caret.killFocus();
        }
        RECT sourceRect = new RECT();
        OS.SetRect(sourceRect, x, y, x + width, y + height);
        RECT clientRect = new RECT();
        OS.GetClientRect(this.handle, clientRect);
        if (OS.IntersectRect(clientRect, sourceRect, clientRect)) {
            if (OS.IsWinCE) {
                OS.UpdateWindow(this.handle);
            } else {
                int flags2 = 384;
                OS.RedrawWindow(this.handle, null, 0, flags2);
            }
        }
        int deltaX = destX - x;
        int deltaY = destY - y;
        if (this.findImageControl() != null) {
            if (OS.IsWinCE) {
                OS.InvalidateRect(this.handle, sourceRect, true);
            } else {
                flags = 1029;
                if (all) {
                    flags |= 0x80;
                }
                OS.RedrawWindow(this.handle, sourceRect, 0, flags);
            }
            OS.OffsetRect(sourceRect, deltaX, deltaY);
            if (OS.IsWinCE) {
                OS.InvalidateRect(this.handle, sourceRect, true);
            } else {
                flags = 1029;
                if (all) {
                    flags |= 0x80;
                }
                OS.RedrawWindow(this.handle, sourceRect, 0, flags);
            }
        } else {
            flags = 6;
            OS.ScrollWindowEx(this.handle, deltaX, deltaY, sourceRect, null, 0, null, flags);
        }
        if (all) {
            Control[] children = this._getChildren();
            int i = 0;
            while (i < children.length) {
                Control child = children[i];
                Rectangle rect = child.getBounds();
                if (Math.min(x + width, rect.x + rect.width) >= Math.max(x, rect.x) && Math.min(y + height, rect.y + rect.height) >= Math.max(y, rect.y)) {
                    child.setLocation(rect.x + deltaX, rect.y + deltaY);
                }
                ++i;
            }
        }
        if (isFocus) {
            this.caret.setFocus();
        }
    }

    public void setCaret(Caret caret) {
        this.checkWidget();
        Caret newCaret = caret;
        Caret oldCaret = this.caret;
        this.caret = newCaret;
        if (this.hasFocus()) {
            if (oldCaret != null) {
                oldCaret.killFocus();
            }
            if (newCaret != null) {
                if (newCaret.isDisposed()) {
                    this.error(5);
                }
                newCaret.setFocus();
            }
        }
    }

    public void setFont(Font font) {
        this.checkWidget();
        if (this.caret != null) {
            this.caret.setFont(font);
        }
        super.setFont(font);
    }

    public void setIME(IME ime) {
        this.checkWidget();
        if (ime != null && ime.isDisposed()) {
            this.error(5);
        }
        this.ime = ime;
    }

    TCHAR windowClass() {
        if (this.display.useOwnDC) {
            return this.display.windowOwnDCClass;
        }
        return super.windowClass();
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        if (msg == Display.SWT_RESTORECARET && (this.state & 2) != 0 && this.caret != null) {
            this.caret.killFocus();
            this.caret.setFocus();
            return 1;
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.caret != null) {
            switch (wParam) {
                case 8: 
                case 27: 
                case 127: {
                    break;
                }
                default: {
                    int[] value;
                    if (OS.GetKeyState(17) < 0 || !OS.SystemParametersInfo(4128, 0, value = new int[1], 0) || value[0] == 0) break;
                    OS.SetCursor(0);
                }
            }
        }
        return result;
    }

    LRESULT WM_IME_COMPOSITION(int wParam, int lParam) {
        POINT ptCurrentPos;
        short langID;
        short primaryLang;
        LRESULT result;
        if (this.ime != null && (result = this.ime.WM_IME_COMPOSITION(wParam, lParam)) != null) {
            return result;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION == OS.VERSION(5, 1) && OS.IsDBLocale && (primaryLang = OS.PRIMARYLANGID(langID = OS.GetSystemDefaultUILanguage())) == 18 && this.caret != null && this.caret.isFocusCaret() && OS.GetCaretPos(ptCurrentPos = new POINT())) {
            COMPOSITIONFORM lpCompForm = new COMPOSITIONFORM();
            lpCompForm.dwStyle = 2;
            lpCompForm.x = ptCurrentPos.x;
            lpCompForm.y = ptCurrentPos.y;
            int hIMC = OS.ImmGetContext(this.handle);
            OS.ImmSetCompositionWindow(hIMC, lpCompForm);
            OS.ImmReleaseContext(this.handle, hIMC);
        }
        return super.WM_IME_COMPOSITION(wParam, lParam);
    }

    LRESULT WM_IME_COMPOSITION_START(int wParam, int lParam) {
        LRESULT result;
        if (this.ime != null && (result = this.ime.WM_IME_COMPOSITION_START(wParam, lParam)) != null) {
            return result;
        }
        return super.WM_IME_COMPOSITION_START(wParam, lParam);
    }

    LRESULT WM_IME_ENDCOMPOSITION(int wParam, int lParam) {
        LRESULT result;
        if (this.ime != null && (result = this.ime.WM_IME_ENDCOMPOSITION(wParam, lParam)) != null) {
            return result;
        }
        return super.WM_IME_ENDCOMPOSITION(wParam, lParam);
    }

    LRESULT WM_INPUTLANGCHANGE(int wParam, int lParam) {
        LRESULT result = super.WM_INPUTLANGCHANGE(wParam, lParam);
        if (this.caret != null && this.caret.isFocusCaret()) {
            this.caret.setIMEFont();
            this.caret.resizeIME();
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        LRESULT result;
        if (this.ime != null && (result = this.ime.WM_KILLFOCUS(wParam, lParam)) != null) {
            return result;
        }
        Caret caret = this.caret;
        LRESULT result2 = super.WM_KILLFOCUS(wParam, lParam);
        if (caret != null) {
            caret.killFocus();
        }
        return result2;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result;
        if (this.ime != null && (result = this.ime.WM_LBUTTONDOWN(wParam, lParam)) != null) {
            return result;
        }
        return super.WM_LBUTTONDOWN(wParam, lParam);
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if (this.caret != null && this.caret.isFocusCaret()) {
            this.caret.setFocus();
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (this.caret != null && this.caret.isFocusCaret()) {
            this.caret.resizeIME();
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGED(int wParam, int lParam) {
        boolean isFocus;
        LRESULT result = super.WM_WINDOWPOSCHANGED(wParam, lParam);
        boolean bl = isFocus = (this.style & 0x4000000) != 0 && this.caret != null && this.caret.isFocusCaret();
        if (isFocus) {
            this.caret.setFocus();
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        boolean isFocus;
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        boolean bl = isFocus = (this.style & 0x4000000) != 0 && this.caret != null && this.caret.isFocusCaret();
        if (isFocus) {
            this.caret.killFocus();
        }
        return result;
    }
}

