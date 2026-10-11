/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.GUITHREADINFO;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SHRGINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.TypedListener;

public class Text
extends Scrollable {
    int tabs;
    int oldStart;
    int oldEnd;
    boolean doubleClick;
    boolean ignoreModify;
    boolean ignoreVerify;
    boolean ignoreCharacter;
    boolean allowPasswordChar;
    String message;
    public static final int LIMIT = OS.IsWinNT ? Integer.MAX_VALUE : Short.MAX_VALUE;
    public static final String DELIMITER = "\r\n";
    static final int EditProc;
    static final TCHAR EditClass;

    static {
        EditClass = new TCHAR(0, "EDIT", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, EditClass, lpWndClass);
        EditProc = lpWndClass.lpfnWndProc;
    }

    public Text(Composite parent, int style) {
        super(parent, Text.checkStyle(style));
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        boolean redraw = false;
        switch (msg) {
            case 20: {
                if (this.findImageControl() == null) break;
                return 0;
            }
            case 276: 
            case 277: {
                boolean bl = redraw = this.findImageControl() != null && this.getDrawing() && OS.IsWindowVisible(this.handle);
                if (!redraw) break;
                OS.DefWindowProc(this.handle, 11, 0, 0);
                break;
            }
            case 15: {
                boolean doubleBuffer = this.findImageControl() != null;
                boolean drawMessage = false;
                if ((this.style & 4) != 0 && this.message.length() > 0 && !OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0)) {
                    boolean bl = drawMessage = hwnd != OS.GetFocus() && OS.GetWindowTextLength(this.handle) == 0;
                }
                if (!doubleBuffer && !drawMessage) break;
                int paintDC = 0;
                PAINTSTRUCT ps = new PAINTSTRUCT();
                paintDC = OS.BeginPaint(this.handle, ps);
                int width = ps.right - ps.left;
                int height = ps.bottom - ps.top;
                if (width != 0 && height != 0) {
                    RECT rect;
                    int hDC = paintDC;
                    int hBitmap = 0;
                    int hOldBitmap = 0;
                    POINT lpPoint1 = null;
                    POINT lpPoint2 = null;
                    if (doubleBuffer) {
                        hDC = OS.CreateCompatibleDC(paintDC);
                        lpPoint1 = new POINT();
                        lpPoint2 = new POINT();
                        OS.SetWindowOrgEx(hDC, ps.left, ps.top, lpPoint1);
                        OS.SetBrushOrgEx(hDC, ps.left, ps.top, lpPoint2);
                        hBitmap = OS.CreateCompatibleBitmap(paintDC, width, height);
                        hOldBitmap = OS.SelectObject(hDC, hBitmap);
                        rect = new RECT();
                        OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                        this.drawBackground(hDC, rect);
                    }
                    OS.CallWindowProc(EditProc, hwnd, 15, hDC, lParam);
                    if (drawMessage) {
                        boolean rtl;
                        rect = new RECT();
                        OS.GetClientRect(this.handle, rect);
                        int margins = OS.SendMessage(this.handle, 212, 0, 0);
                        rect.left += OS.LOWORD(margins);
                        rect.right -= OS.HIWORD(margins);
                        if ((this.style & 0x800) != 0) {
                            ++rect.left;
                            ++rect.top;
                            --rect.right;
                            --rect.bottom;
                        }
                        TCHAR buffer = new TCHAR(this.getCodePage(), this.message, false);
                        int uFormat = 8192;
                        boolean bl = rtl = (this.style & 0x4000000) != 0;
                        if (rtl) {
                            uFormat |= 0x20000;
                        }
                        int alignment = this.style & 0x1024000;
                        switch (alignment) {
                            case 16384: {
                                uFormat |= rtl ? 2 : 0;
                                break;
                            }
                            case 0x1000000: {
                                uFormat |= 1;
                            }
                            case 131072: {
                                uFormat |= rtl ? 0 : 2;
                            }
                        }
                        int hFont = OS.SendMessage(hwnd, 49, 0, 0);
                        int hOldFont = OS.SelectObject(hDC, hFont);
                        OS.SetTextColor(hDC, OS.GetSysColor(OS.COLOR_GRAYTEXT));
                        OS.SetBkMode(hDC, 1);
                        OS.DrawText(hDC, buffer, buffer.length(), rect, uFormat);
                        OS.SelectObject(hDC, hOldFont);
                    }
                    if (doubleBuffer) {
                        OS.SetWindowOrgEx(hDC, lpPoint1.x, lpPoint1.y, null);
                        OS.SetBrushOrgEx(hDC, lpPoint2.x, lpPoint2.y, null);
                        OS.BitBlt(paintDC, ps.left, ps.top, width, height, hDC, 0, 0, 0xCC0020);
                        OS.SelectObject(hDC, hOldBitmap);
                        OS.DeleteObject(hBitmap);
                        OS.DeleteObject(hDC);
                    }
                }
                OS.EndPaint(this.handle, ps);
                return 0;
            }
        }
        int code = OS.CallWindowProc(EditProc, hwnd, msg, wParam, lParam);
        switch (msg) {
            case 276: 
            case 277: {
                if (!redraw) break;
                OS.DefWindowProc(this.handle, 11, 1, 0);
                OS.InvalidateRect(this.handle, null, true);
            }
        }
        return code;
    }

    void createHandle() {
        super.createHandle();
        OS.SendMessage(this.handle, 197, 0, 0);
        if ((this.style & 8) != 0 && (this.style & 0xB00) == 0) {
            this.state |= 0x100;
        }
    }

    public void addModifyListener(ModifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(24, typedListener);
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

    public void addVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(25, typedListener);
    }

    public void append(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        string = Display.withCrLf(string);
        int length = OS.GetWindowTextLength(this.handle);
        if ((this.hooks(25) || this.filters(25)) && (string = this.verifyText(string, length, length, null)) == null) {
            return;
        }
        OS.SendMessage(this.handle, 177, length, length);
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        this.ignoreCharacter = true;
        OS.SendMessage(this.handle, 194, 0, buffer);
        this.ignoreCharacter = false;
        OS.SendMessage(this.handle, 183, 0, 0);
    }

    static int checkStyle(int style) {
        if ((style & 0x80) != 0) {
            style |= 0x804;
            style &= 0xFFBFFFFF;
        }
        if ((style & 4) != 0 && (style & 2) != 0) {
            style &= 0xFFFFFFFD;
        }
        if (((style = Text.checkBits(style, 16384, 0x1000000, 131072, 0, 0, 0)) & 4) != 0) {
            style &= 0xFFFFFCBF;
        }
        if ((style & 0x40) != 0) {
            style |= 2;
            style &= 0xFFFFFEFF;
        }
        if ((style & 2) != 0) {
            style &= 0xFFBFFFFF;
        }
        if ((style & 6) != 0) {
            return style;
        }
        if ((style & 0x300) != 0) {
            return style | 2;
        }
        return style | 4;
    }

    public void clearSelection() {
        this.checkWidget();
        if (OS.IsWinCE) {
            int[] end = new int[1];
            OS.SendMessage(this.handle, 176, null, end);
            OS.SendMessage(this.handle, 177, end[0], end[0]);
        } else {
            OS.SendMessage(this.handle, 177, -1, 0);
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int height = 0;
        int width = 0;
        if (wHint == -1 || hHint == -1) {
            int newHeight;
            TCHAR buffer;
            int length;
            boolean wrap;
            int oldFont = 0;
            int hDC = OS.GetDC(this.handle);
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
            OS.GetTextMetrics(hDC, tm);
            int count = (this.style & 4) != 0 ? 1 : OS.SendMessage(this.handle, 186, 0, 0);
            height = count * tm.tmHeight;
            RECT rect = new RECT();
            int flags = 11264;
            boolean bl = wrap = (this.style & 2) != 0 && (this.style & 0x40) != 0;
            if (wrap && wHint != -1) {
                flags |= 0x10;
                rect.right = wHint;
            }
            if ((length = OS.GetWindowTextLength(this.handle)) != 0) {
                buffer = new TCHAR(this.getCodePage(), length + 1);
                OS.GetWindowText(this.handle, buffer, length + 1);
                OS.DrawText(hDC, buffer, length, rect, flags);
                width = rect.right - rect.left;
            }
            if (wrap && hHint == -1 && (newHeight = rect.bottom - rect.top) != 0) {
                height = newHeight;
            }
            if ((this.style & 4) != 0 && this.message.length() > 0) {
                OS.SetRect(rect, 0, 0, 0, 0);
                buffer = new TCHAR(this.getCodePage(), this.message, false);
                OS.DrawText(hDC, buffer, buffer.length(), rect, flags);
                width = Math.max(width, rect.right - rect.left);
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
        }
        if (width == 0) {
            width = 64;
        }
        if (height == 0) {
            height = 64;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        Rectangle trim = this.computeTrim(0, 0, width, height);
        return new Point(trim.width, trim.height);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        Rectangle rect = super.computeTrim(x, y, width, height);
        int margins = OS.SendMessage(this.handle, 212, 0, 0);
        rect.x -= OS.LOWORD(margins);
        rect.width += OS.LOWORD(margins) + OS.HIWORD(margins);
        if ((this.style & 0x100) != 0) {
            ++rect.width;
        }
        if ((this.style & 0x800) != 0) {
            --rect.x;
            --rect.y;
            rect.width += 2;
            rect.height += 2;
        }
        return rect;
    }

    public void copy() {
        this.checkWidget();
        OS.SendMessage(this.handle, 769, 0, 0);
    }

    void createWidget() {
        super.createWidget();
        this.message = "";
        this.doubleClick = true;
        this.tabs = 8;
        this.setTabStops(8);
        this.fixAlignment();
    }

    public void cut() {
        this.checkWidget();
        if ((this.style & 8) != 0) {
            return;
        }
        OS.SendMessage(this.handle, 768, 0, 0);
    }

    int defaultBackground() {
        int bits = OS.GetWindowLong(this.handle, -16);
        return OS.GetSysColor((bits & 0x800) != 0 ? OS.COLOR_3DFACE : OS.COLOR_WINDOW);
    }

    boolean dragDetect(int hwnd, int x, int y, boolean filter, boolean[] detect, boolean[] consume) {
        if (filter) {
            int lParam;
            int position;
            int[] start = new int[1];
            int[] end = new int[1];
            OS.SendMessage(this.handle, 176, start, end);
            if (start[0] != end[0] && start[0] <= (position = OS.LOWORD(OS.SendMessage(this.handle, 215, 0, lParam = OS.MAKELPARAM(x, y)))) && position < end[0] && super.dragDetect(hwnd, x, y, filter, detect, consume)) {
                if (consume != null) {
                    consume[0] = true;
                }
                return true;
            }
            return false;
        }
        return super.dragDetect(hwnd, x, y, filter, detect, consume);
    }

    void fixAlignment() {
        if ((this.style & 0x8000000) != 0) {
            return;
        }
        int bits1 = OS.GetWindowLong(this.handle, -20);
        int bits2 = OS.GetWindowLong(this.handle, -16);
        if ((this.style & 0x2000000) != 0) {
            bits1 &= 0xFFFFBFFF;
            if ((this.style & 0x20000) != 0) {
                bits1 |= 0x1000;
                bits2 |= 2;
            }
            if ((this.style & 0x4000) != 0) {
                bits1 &= 0xFFFFEFFF;
                bits2 &= 0xFFFFFFFD;
            }
        } else {
            if ((this.style & 0x20000) != 0) {
                bits1 &= 0xFFFFEFFF;
                bits2 &= 0xFFFFFFFD;
            }
            if ((this.style & 0x4000) != 0) {
                bits1 |= 0x1000;
                bits2 |= 2;
            }
        }
        if ((this.style & 0x1000000) != 0) {
            bits2 |= 1;
        }
        OS.SetWindowLong(this.handle, -20, bits1);
        OS.SetWindowLong(this.handle, -16, bits2);
    }

    public int getBorderWidth() {
        this.checkWidget();
        return super.getBorderWidth();
    }

    public int getCaretLineNumber() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 201, -1, 0);
    }

    public Point getCaretLocation() {
        this.checkWidget();
        int position = this.getCaretPosition();
        int caretPos = OS.SendMessage(this.handle, 214, position, 0);
        if (caretPos == -1) {
            caretPos = 0;
            if (position >= OS.GetWindowTextLength(this.handle)) {
                int cp = this.getCodePage();
                int[] start = new int[1];
                int[] end = new int[1];
                OS.SendMessage(this.handle, 176, start, end);
                OS.SendMessage(this.handle, 177, position, position);
                this.ignoreModify = true;
                this.ignoreCharacter = true;
                OS.SendMessage(this.handle, 194, 0, new TCHAR(cp, " ", true));
                caretPos = OS.SendMessage(this.handle, 214, position, 0);
                OS.SendMessage(this.handle, 177, position, position + 1);
                OS.SendMessage(this.handle, 194, 0, new TCHAR(cp, "", true));
                this.ignoreModify = false;
                this.ignoreCharacter = false;
                OS.SendMessage(this.handle, 177, start[0], start[0]);
                OS.SendMessage(this.handle, 177, start[0], end[0]);
            }
        }
        return new Point(OS.GET_X_LPARAM(caretPos), OS.GET_Y_LPARAM(caretPos));
    }

    public int getCaretPosition() {
        this.checkWidget();
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 176, start, end);
        int caret = start[0];
        if (start[0] != end[0]) {
            int endLine;
            int startLine = OS.SendMessage(this.handle, 201, start[0], 0);
            if (startLine == (endLine = OS.SendMessage(this.handle, 201, end[0], 0))) {
                if (!OS.IsWinCE) {
                    POINT ptCurrentPos;
                    int idThread = OS.GetWindowThreadProcessId(this.handle, null);
                    GUITHREADINFO lpgui = new GUITHREADINFO();
                    lpgui.cbSize = GUITHREADINFO.sizeof;
                    if (OS.GetGUIThreadInfo(idThread, lpgui) && (lpgui.hwndCaret == this.handle || lpgui.hwndCaret == 0) && OS.GetCaretPos(ptCurrentPos = new POINT())) {
                        int endPos = OS.SendMessage(this.handle, 214, end[0], 0);
                        if (endPos == -1) {
                            int startPos = OS.SendMessage(this.handle, 214, start[0], 0);
                            int startX = OS.GET_X_LPARAM(startPos);
                            if (ptCurrentPos.x > startX) {
                                caret = end[0];
                            }
                        } else {
                            int endX = OS.GET_X_LPARAM(endPos);
                            if (ptCurrentPos.x >= endX) {
                                caret = end[0];
                            }
                        }
                    }
                }
            } else {
                int caretPos = OS.SendMessage(this.handle, 187, -1, 0);
                int caretLine = OS.SendMessage(this.handle, 201, caretPos, 0);
                if (caretLine == endLine) {
                    caret = end[0];
                }
            }
        }
        if (!OS.IsUnicode && OS.IsDBLocale) {
            caret = this.mbcsToWcsPos(caret);
        }
        return caret;
    }

    public int getCharCount() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.handle);
        if (!OS.IsUnicode && OS.IsDBLocale) {
            length = this.mbcsToWcsPos(length);
        }
        return length;
    }

    public boolean getDoubleClickEnabled() {
        this.checkWidget();
        return this.doubleClick;
    }

    public char getEchoChar() {
        this.checkWidget();
        int echo = OS.SendMessage(this.handle, 210, 0, 0);
        if (echo != 0 && (echo = Display.mbcsToWcs(echo, this.getCodePage())) == 0) {
            echo = 42;
        }
        return (char)echo;
    }

    public boolean getEditable() {
        this.checkWidget();
        int bits = OS.GetWindowLong(this.handle, -16);
        return (bits & 0x800) == 0;
    }

    public int getLineCount() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 186, 0, 0);
    }

    public String getLineDelimiter() {
        this.checkWidget();
        return DELIMITER;
    }

    public int getLineHeight() {
        this.checkWidget();
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
        return tm.tmHeight;
    }

    public int getOrientation() {
        return super.getOrientation();
    }

    public String getMessage() {
        this.checkWidget();
        return this.message;
    }

    int getPosition(Point point) {
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        int lParam = OS.MAKELPARAM(point.x, point.y);
        int position = OS.LOWORD(OS.SendMessage(this.handle, 215, 0, lParam));
        if (!OS.IsUnicode && OS.IsDBLocale) {
            position = this.mbcsToWcsPos(position);
        }
        return position;
    }

    public Point getSelection() {
        this.checkWidget();
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 176, start, end);
        if (!OS.IsUnicode && OS.IsDBLocale) {
            start[0] = this.mbcsToWcsPos(start[0]);
            end[0] = this.mbcsToWcsPos(end[0]);
        }
        return new Point(start[0], end[0]);
    }

    public int getSelectionCount() {
        this.checkWidget();
        Point selection = this.getSelection();
        return selection.y - selection.x;
    }

    public String getSelectionText() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.handle);
        if (length == 0) {
            return "";
        }
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 176, start, end);
        if (start[0] == end[0]) {
            return "";
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
        OS.GetWindowText(this.handle, buffer, length + 1);
        return buffer.toString(start[0], end[0] - start[0]);
    }

    public int getTabs() {
        this.checkWidget();
        return this.tabs;
    }

    int getTabWidth(int tabs) {
        int oldFont = 0;
        RECT rect = new RECT();
        int hDC = OS.GetDC(this.handle);
        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        int flags = 3104;
        TCHAR SPACE = new TCHAR(this.getCodePage(), " ", false);
        OS.DrawText(hDC, SPACE, SPACE.length(), rect, flags);
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        return (rect.right - rect.left) * tabs;
    }

    public String getText() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.handle);
        if (length == 0) {
            return "";
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
        OS.GetWindowText(this.handle, buffer, length + 1);
        return buffer.toString(0, length);
    }

    public char[] getTextChars() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.handle);
        if (length == 0) {
            return new char[0];
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
        OS.GetWindowText(this.handle, buffer, length + 1);
        char[] chars = new char[length];
        System.arraycopy(buffer.chars, 0, chars, 0, length);
        return chars;
    }

    public String getText(int start, int end) {
        this.checkWidget();
        if (start > end || end < 0) {
            return "";
        }
        int length = OS.GetWindowTextLength(this.handle);
        if (!OS.IsUnicode && OS.IsDBLocale) {
            length = this.mbcsToWcsPos(length);
        }
        if (start > (end = Math.min(end, length - 1))) {
            return "";
        }
        start = Math.max(0, start);
        return this.getText().substring(start, end + 1);
    }

    public int getTextLimit() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 213, 0, 0) & Integer.MAX_VALUE;
    }

    public int getTopIndex() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return 0;
        }
        return OS.SendMessage(this.handle, 206, 0, 0);
    }

    public int getTopPixel() {
        this.checkWidget();
        int[] buffer = new int[2];
        int code = OS.SendMessage(this.handle, 1245, 0, buffer);
        if (code == 1) {
            return buffer[1];
        }
        return this.getTopIndex() * this.getLineHeight();
    }

    public void insert(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        string = Display.withCrLf(string);
        if (this.hooks(25) || this.filters(25)) {
            int[] start = new int[1];
            int[] end = new int[1];
            OS.SendMessage(this.handle, 176, start, end);
            string = this.verifyText(string, start[0], end[0], null);
            if (string == null) {
                return;
            }
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        this.ignoreCharacter = true;
        OS.SendMessage(this.handle, 194, 0, buffer);
        this.ignoreCharacter = false;
    }

    int mbcsToWcsPos(int mbcsPos) {
        if (mbcsPos <= 0) {
            return 0;
        }
        if (OS.IsUnicode) {
            return mbcsPos;
        }
        int cp = this.getCodePage();
        int wcsTotal = 0;
        int mbcsTotal = 0;
        byte[] buffer = new byte[128];
        String delimiter = this.getLineDelimiter();
        int delimiterSize = delimiter.length();
        int count = OS.SendMessageA(this.handle, 186, 0, 0);
        int line = 0;
        while (line < count) {
            int wcsSize = 0;
            int linePos = OS.SendMessageA(this.handle, 187, line, 0);
            int mbcsSize = OS.SendMessageA(this.handle, 193, linePos, 0);
            if (mbcsSize != 0) {
                if (mbcsSize + delimiterSize > buffer.length) {
                    buffer = new byte[mbcsSize + delimiterSize];
                }
                buffer[0] = (byte)(mbcsSize & 0xFF);
                buffer[1] = (byte)(mbcsSize >> 8);
                mbcsSize = OS.SendMessageA(this.handle, 196, line, buffer);
                wcsSize = OS.MultiByteToWideChar(cp, 1, buffer, mbcsSize, null, 0);
            }
            if (line - 1 != count) {
                int i = 0;
                while (i < delimiterSize) {
                    buffer[mbcsSize++] = (byte)delimiter.charAt(i);
                    ++i;
                }
                wcsSize += delimiterSize;
            }
            if (mbcsTotal + mbcsSize >= mbcsPos) {
                int bufferSize = mbcsPos - mbcsTotal;
                wcsSize = OS.MultiByteToWideChar(cp, 1, buffer, bufferSize, null, 0);
                return wcsTotal + wcsSize;
            }
            wcsTotal += wcsSize;
            mbcsTotal += mbcsSize;
            ++line;
        }
        return wcsTotal;
    }

    public void paste() {
        this.checkWidget();
        if ((this.style & 8) != 0) {
            return;
        }
        OS.SendMessage(this.handle, 770, 0, 0);
    }

    void releaseWidget() {
        super.releaseWidget();
        this.message = null;
    }

    public void removeModifyListener(ModifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(24, listener);
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

    public void removeVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(25, listener);
    }

    public void selectAll() {
        this.checkWidget();
        OS.SendMessage(this.handle, 177, 0, -1);
    }

    boolean sendKeyEvent(int type, int msg, int wParam, int lParam, Event event) {
        String newText;
        if (!super.sendKeyEvent(type, msg, wParam, lParam, event)) {
            return false;
        }
        if ((this.style & 8) != 0) {
            return true;
        }
        if (this.ignoreVerify) {
            return true;
        }
        if (type != 1) {
            return true;
        }
        if (msg != 258 && msg != 256 && msg != 646) {
            return true;
        }
        if (event.character == '\u0000') {
            return true;
        }
        if (!this.hooks(25) && !this.filters(25)) {
            return true;
        }
        char key = event.character;
        int stateMask = event.stateMask;
        switch (msg) {
            case 258: {
                if (key != '\b' && key != '\u007f' && key != '\r' && key != '\t' && key != '\n') break;
            }
            case 256: {
                if ((stateMask & 0x70000) == 0) break;
                return false;
            }
        }
        if (OS.GetKeyState(1) < 0 && this.handle == OS.GetCapture()) {
            return true;
        }
        String oldText = "";
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 176, start, end);
        switch (key) {
            case '\b': {
                if (start[0] != end[0]) break;
                if (start[0] == 0) {
                    return true;
                }
                int lineStart = OS.SendMessage(this.handle, 187, -1, 0);
                if (start[0] == lineStart) {
                    start[0] = start[0] - DELIMITER.length();
                } else {
                    start[0] = start[0] - 1;
                    if (!OS.IsUnicode && OS.IsDBLocale) {
                        int[] newStart = new int[1];
                        int[] newEnd = new int[1];
                        OS.SendMessage(this.handle, 177, start[0], end[0]);
                        OS.SendMessage(this.handle, 176, newStart, newEnd);
                        if (start[0] != newStart[0]) {
                            start[0] = start[0] - 1;
                        }
                    }
                }
                start[0] = Math.max(start[0], 0);
                break;
            }
            case '\u007f': {
                if (start[0] != end[0]) break;
                int length = OS.GetWindowTextLength(this.handle);
                if (start[0] == length) {
                    return true;
                }
                int line = OS.SendMessage(this.handle, 201, end[0], 0);
                int lineStart = OS.SendMessage(this.handle, 187, line + 1, 0);
                if (end[0] == lineStart - DELIMITER.length()) {
                    end[0] = end[0] + DELIMITER.length();
                } else {
                    end[0] = end[0] + 1;
                    if (!OS.IsUnicode && OS.IsDBLocale) {
                        int[] newStart = new int[1];
                        int[] newEnd = new int[1];
                        OS.SendMessage(this.handle, 177, start[0], end[0]);
                        OS.SendMessage(this.handle, 176, newStart, newEnd);
                        if (end[0] != newEnd[0]) {
                            end[0] = end[0] + 1;
                        }
                    }
                }
                end[0] = Math.min(end[0], length);
                break;
            }
            case '\r': {
                if ((this.style & 4) != 0) {
                    return true;
                }
                oldText = DELIMITER;
                break;
            }
            default: {
                if (key != '\t' && key < ' ') {
                    return true;
                }
                oldText = new String(new char[]{key});
            }
        }
        if ((newText = this.verifyText(oldText, start[0], end[0], event)) == null) {
            return false;
        }
        if (newText == oldText) {
            return true;
        }
        newText = Display.withCrLf(newText);
        TCHAR buffer = new TCHAR(this.getCodePage(), newText, true);
        OS.SendMessage(this.handle, 177, start[0], end[0]);
        this.ignoreCharacter = true;
        OS.SendMessage(this.handle, 194, 0, buffer);
        this.ignoreCharacter = false;
        return false;
    }

    void setBounds(int x, int y, int width, int height, int flags) {
        int bits;
        if ((flags & 1) == 0 && width != 0) {
            RECT rect = new RECT();
            OS.GetWindowRect(this.handle, rect);
            int margins = OS.SendMessage(this.handle, 212, 0, 0);
            int marginWidth = OS.LOWORD(margins) + OS.HIWORD(margins);
            if (rect.right - rect.left <= marginWidth) {
                int[] start = new int[1];
                int[] end = new int[1];
                OS.SendMessage(this.handle, 176, start, end);
                if (start[0] != 0 || end[0] != 0) {
                    this.SetWindowPos(this.handle, 0, x, y, width, height, flags);
                    OS.SendMessage(this.handle, 177, 0, 0);
                    OS.SendMessage(this.handle, 177, start[0], end[0]);
                    return;
                }
            }
        }
        super.setBounds(x, y, width, height, flags);
        if ((flags & 1) == 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 4) != 0) {
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
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            if (rect.bottom - rect.top < tm.tmHeight) {
                int margins = OS.SendMessage(this.handle, 212, 0, 0);
                rect.left += OS.LOWORD(margins);
                rect.right -= OS.HIWORD(margins);
                rect.top = 0;
                rect.bottom = tm.tmHeight;
                OS.SendMessage(this.handle, 179, 0, rect);
            }
        }
    }

    void setDefaultFont() {
        super.setDefaultFont();
        this.setMargins();
    }

    public void setDoubleClickEnabled(boolean doubleClick) {
        this.checkWidget();
        this.doubleClick = doubleClick;
    }

    public void setEchoChar(char echo) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        if (echo != '\u0000' && (echo = (char)Display.wcsToMbcs(echo, this.getCodePage())) == '\u0000') {
            echo = (char)42;
        }
        this.allowPasswordChar = true;
        OS.SendMessage(this.handle, 204, (int)echo, 0);
        this.allowPasswordChar = false;
        OS.InvalidateRect(this.handle, null, true);
    }

    public void setEditable(boolean editable) {
        this.checkWidget();
        this.style &= 0xFFFFFFF7;
        if (!editable) {
            this.style |= 8;
        }
        OS.SendMessage(this.handle, 207, editable ? 0 : 1, 0);
    }

    public void setFont(Font font) {
        this.checkWidget();
        super.setFont(font);
        this.setTabStops(this.tabs);
        this.setMargins();
    }

    void setMargins() {
        if ((this.style & 0x80) != 0 && !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            OS.SendMessage(this.handle, 211, 3, 0);
        }
    }

    public void setMessage(String message) {
        this.checkWidget();
        if (message == null) {
            this.error(4);
        }
        this.message = message;
        if (!OS.IsWinCE) {
            if (OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                int bits = OS.GetWindowLong(this.handle, -16);
                if ((bits & 4) == 0) {
                    int length = message.length();
                    char[] chars = new char[length + 1];
                    message.getChars(0, length, chars, 0);
                    OS.SendMessage(this.handle, 5377, 0, chars);
                }
            } else {
                OS.InvalidateRect(this.handle, null, true);
            }
        }
    }

    public void setOrientation(int orientation) {
        super.setOrientation(orientation);
    }

    public void setSelection(int start) {
        this.checkWidget();
        if (!OS.IsUnicode && OS.IsDBLocale) {
            start = this.wcsToMbcsPos(start);
        }
        OS.SendMessage(this.handle, 177, start, start);
        OS.SendMessage(this.handle, 183, 0, 0);
    }

    public void setSelection(int start, int end) {
        this.checkWidget();
        if (!OS.IsUnicode && OS.IsDBLocale) {
            start = this.wcsToMbcsPos(start);
            end = this.wcsToMbcsPos(end);
        }
        OS.SendMessage(this.handle, 177, start, end);
        OS.SendMessage(this.handle, 183, 0, 0);
    }

    public void setRedraw(boolean redraw) {
        this.checkWidget();
        super.setRedraw(redraw);
        if (!this.getDrawing()) {
            return;
        }
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 176, start, end);
        if (!redraw) {
            this.oldStart = start[0];
            this.oldEnd = end[0];
        } else {
            if (this.oldStart == start[0] && this.oldEnd == end[0]) {
                return;
            }
            OS.SendMessage(this.handle, 183, 0, 0);
        }
    }

    public void setSelection(Point selection) {
        this.checkWidget();
        if (selection == null) {
            this.error(4);
        }
        this.setSelection(selection.x, selection.y);
    }

    public void setTabs(int tabs) {
        this.checkWidget();
        if (tabs < 0) {
            return;
        }
        this.tabs = tabs;
        this.setTabStops(this.tabs);
    }

    void setTabStops(int tabs) {
        int width = this.getTabWidth(tabs) * 4 / OS.LOWORD(OS.GetDialogBaseUnits());
        OS.SendMessage(this.handle, 203, 1, new int[]{width});
    }

    public void setText(String string) {
        int length;
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        string = Display.withCrLf(string);
        if ((this.hooks(25) || this.filters(25)) && (string = this.verifyText(string, 0, length = OS.GetWindowTextLength(this.handle), null)) == null) {
            return;
        }
        int limit = OS.SendMessage(this.handle, 213, 0, 0) & Integer.MAX_VALUE;
        if (string.length() > limit) {
            string = string.substring(0, limit);
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        OS.SetWindowText(this.handle, buffer);
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 4) != 0) {
            this.sendEvent(24);
        }
    }

    public void setTextChars(char[] text) {
        int limit;
        this.checkWidget();
        if (text == null) {
            this.error(4);
        }
        text = Display.withCrLf(text);
        if (this.hooks(25) || this.filters(25)) {
            int length = OS.GetWindowTextLength(this.handle);
            String string = this.verifyText(new String(text), 0, length, null);
            if (string == null) {
                return;
            }
            text = new char[string.length()];
            string.getChars(0, text.length, text, 0);
        }
        if (text.length > (limit = OS.SendMessage(this.handle, 213, 0, 0) & Integer.MAX_VALUE)) {
            char[] temp = new char[limit];
            int i = 0;
            while (i < limit) {
                temp[i] = text[i];
                ++i;
            }
            text = temp;
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), text, true);
        OS.SetWindowText(this.handle, buffer);
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 4) != 0) {
            this.sendEvent(24);
        }
    }

    public void setTextLimit(int limit) {
        this.checkWidget();
        if (limit == 0) {
            this.error(7);
        }
        OS.SendMessage(this.handle, 197, limit, 0);
    }

    public void setTopIndex(int index) {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return;
        }
        int count = OS.SendMessage(this.handle, 186, 0, 0);
        index = Math.min(Math.max(index, 0), count - 1);
        int topIndex = OS.SendMessage(this.handle, 206, 0, 0);
        OS.SendMessage(this.handle, 182, 0, index - topIndex);
    }

    public void showSelection() {
        this.checkWidget();
        OS.SendMessage(this.handle, 183, 0, 0);
    }

    void updateOrientation() {
        int bits = OS.GetWindowLong(this.handle, -20);
        bits = (this.style & 0x4000000) != 0 ? (bits |= 0x6000) : (bits &= 0xFFFF9FFF);
        OS.SetWindowLong(this.handle, -20, bits);
        this.fixAlignment();
    }

    String verifyText(String string, int start, int end, Event keyEvent) {
        if (this.ignoreVerify) {
            return string;
        }
        Event event = new Event();
        event.text = string;
        event.start = start;
        event.end = end;
        if (keyEvent != null) {
            event.character = keyEvent.character;
            event.keyCode = keyEvent.keyCode;
            event.stateMask = keyEvent.stateMask;
        }
        if (!OS.IsUnicode && OS.IsDBLocale) {
            event.start = this.mbcsToWcsPos(start);
            event.end = this.mbcsToWcsPos(end);
        }
        this.sendEvent(25, event);
        if (!event.doit || this.isDisposed()) {
            return null;
        }
        return event.text;
    }

    int wcsToMbcsPos(int wcsPos) {
        if (wcsPos <= 0) {
            return 0;
        }
        if (OS.IsUnicode) {
            return wcsPos;
        }
        int cp = this.getCodePage();
        int wcsTotal = 0;
        int mbcsTotal = 0;
        byte[] buffer = new byte[128];
        String delimiter = this.getLineDelimiter();
        int delimiterSize = delimiter.length();
        int count = OS.SendMessageA(this.handle, 186, 0, 0);
        int line = 0;
        while (line < count) {
            int wcsSize = 0;
            int linePos = OS.SendMessageA(this.handle, 187, line, 0);
            int mbcsSize = OS.SendMessageA(this.handle, 193, linePos, 0);
            if (mbcsSize != 0) {
                if (mbcsSize + delimiterSize > buffer.length) {
                    buffer = new byte[mbcsSize + delimiterSize];
                }
                buffer[0] = (byte)(mbcsSize & 0xFF);
                buffer[1] = (byte)(mbcsSize >> 8);
                mbcsSize = OS.SendMessageA(this.handle, 196, line, buffer);
                wcsSize = OS.MultiByteToWideChar(cp, 1, buffer, mbcsSize, null, 0);
            }
            if (line - 1 != count) {
                int i = 0;
                while (i < delimiterSize) {
                    buffer[mbcsSize++] = (byte)delimiter.charAt(i);
                    ++i;
                }
                wcsSize += delimiterSize;
            }
            if (wcsTotal + wcsSize >= wcsPos) {
                wcsSize = 0;
                int index = 0;
                while (index < mbcsSize) {
                    if (wcsTotal + wcsSize == wcsPos) {
                        return mbcsTotal + index;
                    }
                    if (OS.IsDBCSLeadByte(buffer[index++])) {
                        ++index;
                    }
                    ++wcsSize;
                }
                return mbcsTotal + mbcsSize;
            }
            wcsTotal += wcsSize;
            mbcsTotal += mbcsSize;
            ++line;
        }
        return mbcsTotal;
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x80;
        if ((this.style & 0x400000) != 0) {
            bits |= 0x20;
        }
        if ((this.style & 0x1000000) != 0) {
            bits |= 1;
        }
        if ((this.style & 0x20000) != 0) {
            bits |= 2;
        }
        if ((this.style & 8) != 0) {
            bits |= 0x800;
        }
        if ((this.style & 4) != 0) {
            if ((this.style & 8) != 0 && (this.style & 0xB00) == 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
                bits |= 4;
            }
            return bits;
        }
        bits |= 0x144;
        if ((this.style & 0x40) != 0) {
            bits &= 0xFFEFFF7F;
        }
        return bits;
    }

    TCHAR windowClass() {
        return EditClass;
    }

    int windowProc() {
        return EditProc;
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        int bits;
        if (msg == 199 && ((bits = OS.GetWindowLong(this.handle, -16)) & 4) == 0) {
            LRESULT result = this.wmClipboard(199, wParam, lParam);
            if (result != null) {
                return result.value;
            }
            return this.callWindowProc(hwnd, 199, wParam, lParam);
        }
        if (msg == 204 && !this.allowPasswordChar) {
            return 1;
        }
        if (msg == Display.SWT_RESTORECARET) {
            this.callWindowProc(hwnd, 8, 0, 0);
            this.callWindowProc(hwnd, 7, 0, 0);
            return 1;
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        if (this.ignoreCharacter) {
            return null;
        }
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 127: {
                if (OS.GetKeyState(17) >= 0) break;
                return LRESULT.ZERO;
            }
        }
        if ((this.style & 4) != 0) {
            switch (wParam) {
                case 13: {
                    this.sendSelectionEvent(14);
                }
                case 9: 
                case 27: {
                    return LRESULT.ZERO;
                }
            }
        }
        return result;
    }

    LRESULT WM_CLEAR(int wParam, int lParam) {
        LRESULT result = super.WM_CLEAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        return this.wmClipboard(771, wParam, lParam);
    }

    LRESULT WM_CUT(int wParam, int lParam) {
        LRESULT result = super.WM_CUT(wParam, lParam);
        if (result != null) {
            return result;
        }
        return this.wmClipboard(768, wParam, lParam);
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        Control control;
        int bits;
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if ((this.style & 8) != 0 && (this.style & 0xB00) == 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 4) != 0 && (control = this.findBackgroundControl()) == null && this.background == -1 && (this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (control = this.findThemeControl()) != null) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            this.fillThemeBackground(wParam, control, rect);
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        LRESULT result = super.WM_GETDLGCODE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.IsPPC && (this.style & 2) != 0 && (this.style & 8) == 0 && lParam == 0) {
            return new LRESULT(140);
        }
        if ((this.style & 8) != 0) {
            int code = this.callWindowProc(this.handle, 135, wParam, lParam);
            return new LRESULT(code &= 0xFFFFFFF9);
        }
        return null;
    }

    LRESULT WM_IME_CHAR(int wParam, int lParam) {
        Display display = this.display;
        display.lastKey = 0;
        display.lastAscii = wParam;
        display.lastDead = false;
        display.lastNull = false;
        display.lastVirtual = false;
        if (!this.sendKeyEvent(1, 646, wParam, lParam)) {
            return LRESULT.ZERO;
        }
        this.ignoreCharacter = true;
        int result = this.callWindowProc(this.handle, 646, wParam, lParam);
        MSG msg = new MSG();
        int flags = 10420227;
        while (OS.PeekMessage(msg, this.handle, 258, 258, flags)) {
            OS.TranslateMessage(msg);
            OS.DispatchMessage(msg);
        }
        this.ignoreCharacter = false;
        this.sendKeyEvent(2, 646, wParam, lParam);
        display.lastAscii = 0;
        display.lastKey = 0;
        return new LRESULT(result);
    }

    LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam) {
        int code;
        int length;
        LRESULT result = null;
        this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam);
        if (!this.sendMouseEvent(8, 1, this.handle, 515, wParam, lParam)) {
            result = LRESULT.ZERO;
        }
        if (!this.display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
            OS.SetCapture(this.handle);
        }
        if (!this.doubleClick) {
            return LRESULT.ZERO;
        }
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 176, start, end);
        if (start[0] == end[0] && (length = OS.GetWindowTextLength(this.handle)) == start[0] && (code = OS.SendMessage(this.handle, 193, length, 0)) == 0) {
            return LRESULT.ZERO;
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        if (OS.IsPPC) {
            boolean hasMenu;
            LRESULT result = null;
            Display display = this.display;
            display.captureChanged = false;
            boolean dispatch = this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam);
            boolean bl = hasMenu = this.menu != null && !this.menu.isDisposed();
            if (hasMenu || this.hooks(35)) {
                int x = OS.GET_X_LPARAM(lParam);
                int y = OS.GET_Y_LPARAM(lParam);
                SHRGINFO shrg = new SHRGINFO();
                shrg.cbSize = SHRGINFO.sizeof;
                shrg.hwndClient = this.handle;
                shrg.ptDown_x = x;
                shrg.ptDown_y = y;
                shrg.dwFlags = 1;
                int type = OS.SHRecognizeGesture(shrg);
                if (type == 1000) {
                    this.showMenu(x, y);
                    return LRESULT.ONE;
                }
            }
            result = dispatch ? new LRESULT(this.callWindowProc(this.handle, 513, wParam, lParam)) : LRESULT.ZERO;
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return result;
        }
        return super.WM_LBUTTONDOWN(wParam, lParam);
    }

    LRESULT WM_PASTE(int wParam, int lParam) {
        LRESULT result = super.WM_PASTE(wParam, lParam);
        if (result != null) {
            return result;
        }
        return this.wmClipboard(770, wParam, lParam);
    }

    LRESULT WM_UNDO(int wParam, int lParam) {
        LRESULT result = super.WM_UNDO(wParam, lParam);
        if (result != null) {
            return result;
        }
        return this.wmClipboard(772, wParam, lParam);
    }

    LRESULT wmClipboard(int msg, int wParam, int lParam) {
        if ((this.style & 8) != 0) {
            return null;
        }
        if (!this.hooks(25) && !this.filters(25)) {
            return null;
        }
        boolean call = false;
        int[] start = new int[1];
        int[] end = new int[1];
        String newText = null;
        switch (msg) {
            case 768: 
            case 771: {
                OS.SendMessage(this.handle, 176, start, end);
                if (start[0] == end[0]) break;
                newText = "";
                call = true;
                break;
            }
            case 770: {
                OS.SendMessage(this.handle, 176, start, end);
                newText = this.getClipboardText();
                break;
            }
            case 199: 
            case 772: {
                if (OS.SendMessage(this.handle, 198, 0, 0) == 0) break;
                this.ignoreCharacter = true;
                this.ignoreModify = true;
                this.callWindowProc(this.handle, msg, wParam, lParam);
                int length = OS.GetWindowTextLength(this.handle);
                int[] newStart = new int[1];
                int[] newEnd = new int[1];
                OS.SendMessage(this.handle, 176, newStart, newEnd);
                if (length != 0 && newStart[0] != newEnd[0]) {
                    TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
                    OS.GetWindowText(this.handle, buffer, length + 1);
                    newText = buffer.toString(newStart[0], newEnd[0] - newStart[0]);
                } else {
                    newText = "";
                }
                this.callWindowProc(this.handle, msg, wParam, lParam);
                OS.SendMessage(this.handle, 176, start, end);
                this.ignoreCharacter = false;
                this.ignoreModify = false;
            }
        }
        if (newText != null) {
            String oldText = newText;
            if ((newText = this.verifyText(newText, start[0], end[0], null)) == null) {
                return LRESULT.ZERO;
            }
            if (!newText.equals(oldText)) {
                if (call) {
                    this.callWindowProc(this.handle, msg, wParam, lParam);
                }
                newText = Display.withCrLf(newText);
                TCHAR buffer = new TCHAR(this.getCodePage(), newText, true);
                this.ignoreCharacter = true;
                OS.SendMessage(this.handle, 194, 0, buffer);
                this.ignoreCharacter = false;
                return LRESULT.ZERO;
            }
        }
        if (msg == 772) {
            this.ignoreCharacter = true;
            this.ignoreVerify = true;
            this.callWindowProc(this.handle, 772, wParam, lParam);
            this.ignoreCharacter = false;
            this.ignoreVerify = false;
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT wmColorChild(int wParam, int lParam) {
        Control control;
        int bits;
        if ((this.style & 8) != 0 && (this.style & 0xB00) == 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 4) != 0 && (control = this.findBackgroundControl()) == null && this.background == -1 && (this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (control = this.findThemeControl()) != null) {
            OS.SetTextColor(wParam, this.getForegroundPixel());
            OS.SetBkColor(wParam, this.getBackgroundPixel());
            OS.SetBkMode(wParam, 1);
            return new LRESULT(OS.GetStockObject(5));
        }
        return super.wmColorChild(wParam, lParam);
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        int code = OS.HIWORD(wParam);
        switch (code) {
            case 768: {
                if (this.findImageControl() != null) {
                    OS.InvalidateRect(this.handle, null, true);
                }
                if (this.ignoreModify) break;
                this.sendEvent(24);
                if (!this.isDisposed()) break;
                return LRESULT.ZERO;
            }
            case 1792: 
            case 1793: {
                int bits = OS.GetWindowLong(this.handle, -20);
                if ((bits & 0x2000) != 0) {
                    this.style &= 0xFDFFFFFF;
                    this.style |= 0x4000000;
                } else {
                    this.style &= 0xFBFFFFFF;
                    this.style |= 0x2000000;
                }
                Event event = new Event();
                event.doit = true;
                this.sendEvent(44, event);
                if (!event.doit) {
                    if (code == 1792) {
                        bits |= 0x6000;
                        this.style &= 0xFDFFFFFF;
                        this.style |= 0x4000000;
                    } else {
                        bits &= 0xFFFF9FFF;
                        this.style &= 0xFBFFFFFF;
                        this.style |= 0x2000000;
                    }
                    OS.SetWindowLong(this.handle, -20, bits);
                }
                this.fixAlignment();
            }
        }
        return super.wmCommandChild(wParam, lParam);
    }
}

