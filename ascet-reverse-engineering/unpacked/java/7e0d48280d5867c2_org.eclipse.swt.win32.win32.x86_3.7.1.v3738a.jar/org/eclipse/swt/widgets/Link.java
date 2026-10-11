/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.win32.LITEM;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMLINK;
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
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;

public class Link
extends Control {
    String text;
    TextLayout layout;
    Color linkColor;
    Color disabledColor;
    Point[] offsets;
    Point selection;
    String[] ids;
    int[] mnemonics;
    int focusIndex;
    int mouseDownIndex;
    int font;
    static final RGB LINK_FOREGROUND = new RGB(0, 51, 153);
    static final int LinkProc;
    static final TCHAR LinkClass;

    static {
        LinkClass = new TCHAR(0, "SysLink", true);
        if (OS.COMCTL32_MAJOR >= 6) {
            WNDCLASS lpWndClass = new WNDCLASS();
            OS.GetClassInfo(0, LinkClass, lpWndClass);
            LinkProc = lpWndClass.lpfnWndProc;
            int hInstance = OS.GetModuleHandle(null);
            int hHeap = OS.GetProcessHeap();
            lpWndClass.hInstance = hInstance;
            lpWndClass.style &= 0xFFFFBFFF;
            lpWndClass.style |= 8;
            int byteCount = LinkClass.length() * TCHAR.sizeof;
            int lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(lpszClassName, LinkClass, byteCount);
            lpWndClass.lpszClassName = lpszClassName;
            OS.RegisterClass(lpWndClass);
            OS.HeapFree(hHeap, 0, lpszClassName);
        } else {
            LinkProc = 0;
        }
    }

    public Link(Composite parent, int style) {
        super(parent, style);
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
        if (LinkProc != 0) {
            switch (msg) {
                case 15: {
                    if (wParam == 0) break;
                    OS.SendMessage(hwnd, 792, wParam, 0);
                    return 0;
                }
            }
            return OS.CallWindowProc(LinkProc, hwnd, msg, wParam, lParam);
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        int height;
        int width;
        this.checkWidget();
        if (wHint != -1 && wHint < 0) {
            wHint = 0;
        }
        if (hHint != -1 && hHint < 0) {
            hHint = 0;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            int hDC = OS.GetDC(this.handle);
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            int oldFont = OS.SelectObject(hDC, newFont);
            if (this.text.length() > 0) {
                TCHAR buffer = new TCHAR(this.getCodePage(), this.parse(this.text), false);
                RECT rect = new RECT();
                int flags = 3072;
                if (wHint != -1) {
                    flags |= 0x10;
                    rect.right = wHint;
                }
                OS.DrawText(hDC, buffer, buffer.length(), rect, flags);
                width = rect.right - rect.left;
                height = rect.bottom;
            } else {
                TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
                OS.GetTextMetrics(hDC, lptm);
                width = 0;
                height = lptm.tmHeight;
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
        } else {
            int layoutWidth = this.layout.getWidth();
            if (wHint == 0) {
                this.layout.setWidth(1);
                Rectangle rect = this.layout.getBounds();
                width = 0;
                height = rect.height;
            } else {
                this.layout.setWidth(wHint);
                Rectangle rect = this.layout.getBounds();
                width = rect.width;
                height = rect.height;
            }
            this.layout.setWidth(layoutWidth);
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        int border = this.getBorderWidth();
        return new Point(width += border * 2, height += border * 2);
    }

    void createHandle() {
        super.createHandle();
        this.state |= 0x100;
        if (OS.COMCTL32_MAJOR < 6) {
            this.layout = new TextLayout(this.display);
            this.linkColor = !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) ? Color.win32_new(this.display, OS.GetSysColor(OS.COLOR_HOTLIGHT)) : new Color(this.display, LINK_FOREGROUND);
            this.disabledColor = Color.win32_new(this.display, OS.GetSysColor(OS.COLOR_GRAYTEXT));
            this.offsets = new Point[0];
            this.ids = new String[0];
            this.mnemonics = new int[0];
            this.selection = new Point(-1, -1);
            this.mouseDownIndex = -1;
            this.focusIndex = -1;
        }
    }

    void createWidget() {
        super.createWidget();
        this.text = "";
        if (OS.COMCTL32_MAJOR < 6) {
            if ((this.style & 0x8000000) != 0) {
                this.layout.setOrientation(0x4000000);
            }
            this.initAccessible();
        }
    }

    void drawWidget(GC gc, RECT rect) {
        this.drawBackground(gc.handle, rect);
        int selStart = this.selection.x;
        int selEnd = this.selection.y;
        if (selStart > selEnd) {
            selStart = this.selection.y;
            selEnd = this.selection.x;
        }
        selEnd = -1;
        selStart = -1;
        if (!OS.IsWindowEnabled(this.handle)) {
            gc.setForeground(this.disabledColor);
        }
        this.layout.draw(gc, 0, 0, selStart, selEnd, null, null);
        if (this.hasFocus() && this.focusIndex != -1) {
            Rectangle[] rects = this.getRectangles(this.focusIndex);
            int i = 0;
            while (i < rects.length) {
                Rectangle rectangle = rects[i];
                gc.drawFocus(rectangle.x, rectangle.y, rectangle.width, rectangle.height);
                ++i;
            }
        }
        if (this.hooks(9) || this.filters(9)) {
            Event event = new Event();
            event.gc = gc;
            event.x = rect.left;
            event.y = rect.top;
            event.width = rect.right - rect.left;
            event.height = rect.bottom - rect.top;
            this.sendEvent(9, event);
            event.gc = null;
        }
    }

    void enableWidget(boolean enabled) {
        if (OS.COMCTL32_MAJOR >= 6) {
            LITEM item = new LITEM();
            item.mask = 3;
            item.stateMask = 2;
            item.state = enabled ? 2 : 0;
            while (OS.SendMessage(this.handle, 1794, 0, item) != 0) {
                ++item.iLink;
            }
        } else {
            TextStyle linkStyle = new TextStyle(null, enabled ? this.linkColor : this.disabledColor, null);
            linkStyle.underline = true;
            int i = 0;
            while (i < this.offsets.length) {
                Point point = this.offsets[i];
                this.layout.setStyle(linkStyle, point.x, point.y);
                ++i;
            }
            this.redraw();
        }
        super.enableWidget(enabled);
    }

    void initAccessible() {
        Accessible accessible = this.getAccessible();
        accessible.addAccessibleListener(new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = Link.this.parse(Link.this.text);
            }
        });
        accessible.addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                e.childID = -1;
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle rect = Link.this.display.map((Control)Link.this.getParent(), null, Link.this.getBounds());
                e.x = rect.x;
                e.y = rect.y;
                e.width = rect.width;
                e.height = rect.height;
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = 0;
            }

            public void getRole(AccessibleControlEvent e) {
                e.detail = 30;
            }

            public void getState(AccessibleControlEvent e) {
                e.detail = 0x100000;
                if (Link.this.hasFocus()) {
                    e.detail |= 4;
                }
            }

            public void getDefaultAction(AccessibleControlEvent e) {
                e.result = SWT.getMessage("SWT_Press");
            }

            public void getSelection(AccessibleControlEvent e) {
                if (Link.this.hasFocus()) {
                    e.childID = -1;
                }
            }

            public void getFocus(AccessibleControlEvent e) {
                if (Link.this.hasFocus()) {
                    e.childID = -1;
                }
            }
        });
    }

    String getNameText() {
        return this.getText();
    }

    Rectangle[] getRectangles(int linkIndex) {
        int lineCount = this.layout.getLineCount();
        Rectangle[] rects = new Rectangle[lineCount];
        int[] lineOffsets = this.layout.getLineOffsets();
        Point point = this.offsets[linkIndex];
        int lineStart = 1;
        while (point.x > lineOffsets[lineStart]) {
            ++lineStart;
        }
        int lineEnd = 1;
        while (point.y > lineOffsets[lineEnd]) {
            ++lineEnd;
        }
        int index = 0;
        if (lineStart == lineEnd) {
            rects[index++] = this.layout.getBounds(point.x, point.y);
        } else {
            rects[index++] = this.layout.getBounds(point.x, lineOffsets[lineStart] - 1);
            rects[index++] = this.layout.getBounds(lineOffsets[lineEnd - 1], point.y);
            if (lineEnd - lineStart > 1) {
                int i = lineStart;
                while (i < lineEnd - 1) {
                    rects[index++] = this.layout.getLineBounds(i);
                    ++i;
                }
            }
        }
        if (rects.length != index) {
            Rectangle[] tmp = new Rectangle[index];
            System.arraycopy(rects, 0, tmp, 0, index);
            rects = tmp;
        }
        return rects;
    }

    public String getText() {
        this.checkWidget();
        return this.text;
    }

    boolean mnemonicHit(char key) {
        if (this.mnemonics != null) {
            char uckey = Character.toUpperCase(key);
            String parsedText = this.parse(this.text);
            int i = 0;
            while (i < this.mnemonics.length - 1) {
                char mnemonic;
                if (this.mnemonics[i] != -1 && uckey == Character.toUpperCase(mnemonic = parsedText.charAt(this.mnemonics[i]))) {
                    if (!this.setFocus()) {
                        return false;
                    }
                    if (OS.COMCTL32_MAJOR >= 6) {
                        int bits = OS.GetWindowLong(this.handle, -16);
                        LITEM item = new LITEM();
                        item.mask = 3;
                        item.stateMask = 1;
                        while (item.iLink < this.mnemonics.length) {
                            if (item.iLink != i) {
                                OS.SendMessage(this.handle, 1794, 0, item);
                            }
                            ++item.iLink;
                        }
                        item.iLink = i;
                        item.state = 1;
                        OS.SendMessage(this.handle, 1794, 0, item);
                        OS.SetWindowLong(this.handle, -16, bits);
                    } else {
                        this.focusIndex = i;
                        this.redraw();
                    }
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    boolean mnemonicMatch(char key) {
        if (this.mnemonics != null) {
            char uckey = Character.toUpperCase(key);
            String parsedText = this.parse(this.text);
            int i = 0;
            while (i < this.mnemonics.length - 1) {
                char mnemonic;
                if (this.mnemonics[i] != -1 && uckey == Character.toUpperCase(mnemonic = parsedText.charAt(this.mnemonics[i]))) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    String parse(String string) {
        int length = string.length();
        this.offsets = new Point[length / 4];
        this.ids = new String[length / 4];
        this.mnemonics = new int[length / 4 + 1];
        StringBuffer result = new StringBuffer();
        char[] buffer = new char[length];
        string.getChars(0, string.length(), buffer, 0);
        int index = 0;
        int state = 0;
        int linkIndex = 0;
        int start = 0;
        int tagStart = 0;
        int linkStart = 0;
        int endtagStart = 0;
        int refStart = 0;
        while (index < length) {
            char c = Character.toLowerCase(buffer[index]);
            block0 : switch (state) {
                case 0: {
                    if (c != '<') break;
                    tagStart = index;
                    ++state;
                    break;
                }
                case 1: {
                    if (c != 'a') break;
                    ++state;
                    break;
                }
                case 2: {
                    switch (c) {
                        case 'h': {
                            state = 7;
                            break block0;
                        }
                        case '>': {
                            linkStart = index + 1;
                            ++state;
                            break block0;
                        }
                    }
                    if (Character.isWhitespace(c)) break;
                    state = 13;
                    break;
                }
                case 3: {
                    if (c != '<') break;
                    endtagStart = index;
                    ++state;
                    break;
                }
                case 4: {
                    state = c == '/' ? state + 1 : 3;
                    break;
                }
                case 5: {
                    state = c == 'a' ? state + 1 : 3;
                    break;
                }
                case 6: {
                    if (c == '>') {
                        this.mnemonics[linkIndex] = this.parseMnemonics(buffer, start, tagStart, result);
                        int offset = result.length();
                        this.parseMnemonics(buffer, linkStart, endtagStart, result);
                        this.offsets[linkIndex] = new Point(offset, result.length() - 1);
                        if (this.ids[linkIndex] == null) {
                            this.ids[linkIndex] = new String(buffer, linkStart, endtagStart - linkStart);
                        }
                        ++linkIndex;
                        endtagStart = refStart = index + 1;
                        linkStart = refStart;
                        tagStart = refStart;
                        start = refStart;
                        state = 0;
                        break;
                    }
                    state = 3;
                    break;
                }
                case 7: {
                    state = c == 'r' ? state + 1 : 0;
                    break;
                }
                case 8: {
                    state = c == 'e' ? state + 1 : 0;
                    break;
                }
                case 9: {
                    state = c == 'f' ? state + 1 : 0;
                    break;
                }
                case 10: {
                    state = c == '=' ? state + 1 : 0;
                    break;
                }
                case 11: {
                    if (c == '\"') {
                        ++state;
                        refStart = index + 1;
                        break;
                    }
                    state = 0;
                    break;
                }
                case 12: {
                    if (c != '\"') break;
                    this.ids[linkIndex] = new String(buffer, refStart, index - refStart);
                    state = 2;
                    break;
                }
                case 13: {
                    if (Character.isWhitespace(c)) {
                        state = 0;
                        break;
                    }
                    if (c != '=') break;
                    ++state;
                    break;
                }
                case 14: {
                    state = c == '\"' ? state + 1 : 0;
                    break;
                }
                case 15: {
                    if (c != '\"') break;
                    state = 2;
                    break;
                }
                default: {
                    state = 0;
                }
            }
            ++index;
        }
        if (start < length) {
            int tmp = this.parseMnemonics(buffer, start, tagStart, result);
            int mnemonic = this.parseMnemonics(buffer, Math.max(tagStart, linkStart), length, result);
            if (mnemonic == -1) {
                mnemonic = tmp;
            }
            this.mnemonics[linkIndex] = mnemonic;
        } else {
            this.mnemonics[linkIndex] = -1;
        }
        if (this.offsets.length != linkIndex) {
            Point[] newOffsets = new Point[linkIndex];
            System.arraycopy(this.offsets, 0, newOffsets, 0, linkIndex);
            this.offsets = newOffsets;
            String[] newIDs = new String[linkIndex];
            System.arraycopy(this.ids, 0, newIDs, 0, linkIndex);
            this.ids = newIDs;
            int[] newMnemonics = new int[linkIndex + 1];
            System.arraycopy(this.mnemonics, 0, newMnemonics, 0, linkIndex + 1);
            this.mnemonics = newMnemonics;
        }
        return result.toString();
    }

    int parseMnemonics(char[] buffer, int start, int end, StringBuffer result) {
        int mnemonic = -1;
        int index = start;
        while (index < end) {
            if (buffer[index] == '&') {
                if (index + 1 < end && buffer[index + 1] == '&') {
                    result.append(buffer[index]);
                    ++index;
                } else {
                    mnemonic = result.length();
                }
            } else {
                result.append(buffer[index]);
            }
            ++index;
        }
        return mnemonic;
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.layout != null) {
            this.layout.dispose();
        }
        this.layout = null;
        if (this.linkColor != null) {
            this.linkColor.dispose();
        }
        this.linkColor = null;
        this.disabledColor = null;
        this.offsets = null;
        this.ids = null;
        this.mnemonics = null;
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

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if (string.equals(this.text)) {
            return;
        }
        this.text = string;
        if (OS.COMCTL32_MAJOR >= 6) {
            boolean enabled = OS.IsWindowEnabled(this.handle);
            if (string.length() == 0) {
                string = " ";
            }
            TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
            OS.SetWindowText(this.handle, buffer);
            this.parse(this.text);
            this.enableWidget(enabled);
        } else {
            this.layout.setText(this.parse(this.text));
            this.focusIndex = this.offsets.length > 0 ? 0 : -1;
            this.selection.y = -1;
            this.selection.x = -1;
            int bits = OS.GetWindowLong(this.handle, -16);
            bits = this.offsets.length > 0 ? (bits |= 0x10000) : (bits &= 0xFFFEFFFF);
            OS.SetWindowLong(this.handle, -16, bits);
            boolean enabled = OS.IsWindowEnabled(this.handle);
            TextStyle linkStyle = new TextStyle(null, enabled ? this.linkColor : this.disabledColor, null);
            linkStyle.underline = true;
            int i = 0;
            while (i < this.offsets.length) {
                Point point = this.offsets[i];
                this.layout.setStyle(linkStyle, point.x, point.y);
                ++i;
            }
            TextStyle mnemonicStyle = new TextStyle(null, null, null);
            mnemonicStyle.underline = true;
            int i2 = 0;
            while (i2 < this.mnemonics.length) {
                int mnemonic = this.mnemonics[i2];
                if (mnemonic != -1) {
                    this.layout.setStyle(mnemonicStyle, mnemonic, mnemonic);
                }
                ++i2;
            }
            this.redraw();
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle();
        return bits | 0x10000;
    }

    TCHAR windowClass() {
        return OS.COMCTL32_MAJOR >= 6 ? LinkClass : this.display.windowClass;
    }

    int windowProc() {
        return LinkProc != 0 ? LinkProc : this.display.windowProc;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    LRESULT WM_CHAR(int wParam, int lParam) {
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR < 6) {
            if (this.focusIndex == -1) {
                return result;
            }
            switch (wParam) {
                case 13: 
                case 32: {
                    Event event = new Event();
                    event.text = this.ids[this.focusIndex];
                    this.sendSelectionEvent(13, event, true);
                    return result;
                }
                case 9: {
                    boolean next;
                    boolean bl = next = OS.GetKeyState(16) >= 0;
                    if (next) {
                        if (this.focusIndex >= this.offsets.length - 1) return result;
                        ++this.focusIndex;
                        this.redraw();
                        return result;
                    }
                    if (this.focusIndex <= 0) return result;
                    --this.focusIndex;
                    this.redraw();
                }
                default: {
                    return result;
                }
            }
        } else {
            switch (wParam) {
                case 9: 
                case 13: 
                case 32: {
                    int code = this.callWindowProc(this.handle, 256, wParam, lParam);
                    return new LRESULT(code);
                }
            }
        }
        return result;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        boolean next;
        int count;
        int index;
        LRESULT result = super.WM_GETDLGCODE(wParam, lParam);
        if (result != null) {
            return result;
        }
        int code = 0;
        if (OS.COMCTL32_MAJOR >= 6) {
            LITEM item = new LITEM();
            item.mask = 3;
            item.stateMask = 1;
            index = 0;
            while (OS.SendMessage(this.handle, 1795, 0, item) != 0) {
                if ((item.state & 1) != 0) {
                    index = item.iLink;
                }
                ++item.iLink;
            }
            count = item.iLink;
            code = this.callWindowProc(this.handle, 135, wParam, lParam);
        } else {
            index = this.focusIndex;
            count = this.offsets.length;
        }
        if (count == 0) {
            return new LRESULT(code | 0x100);
        }
        boolean bl = next = OS.GetKeyState(16) >= 0;
        if (next && index < count - 1) {
            return new LRESULT(code | 2);
        }
        if (!next && index > 0) {
            return new LRESULT(code | 2);
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
        if (this.font == 0) {
            this.font = this.defaultFont();
        }
        return new LRESULT(this.font);
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            switch (wParam) {
                case 9: 
                case 13: 
                case 32: {
                    return LRESULT.ZERO;
                }
            }
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_KILLFOCUS(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6) {
            this.redraw();
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (OS.COMCTL32_MAJOR < 6) {
            if (this.focusIndex != -1) {
                this.setFocus();
            }
            int x = OS.GET_X_LPARAM(lParam);
            int y = OS.GET_Y_LPARAM(lParam);
            int offset = this.layout.getOffset(x, y, null);
            int oldSelectionX = this.selection.x;
            int oldSelectionY = this.selection.y;
            this.selection.x = offset;
            this.selection.y = -1;
            if (oldSelectionX != -1 && oldSelectionY != -1) {
                if (oldSelectionX > oldSelectionY) {
                    int temp = oldSelectionX;
                    oldSelectionX = oldSelectionY;
                    oldSelectionY = temp;
                }
                Rectangle rect = this.layout.getBounds(oldSelectionX, oldSelectionY);
                this.redraw(rect.x, rect.y, rect.width, rect.height, false);
            }
            int j = 0;
            while (j < this.offsets.length) {
                Rectangle[] rects = this.getRectangles(j);
                int i = 0;
                while (i < rects.length) {
                    Rectangle rect = rects[i];
                    if (rect.contains(x, y)) {
                        if (j != this.focusIndex) {
                            this.redraw();
                        }
                        this.focusIndex = this.mouseDownIndex = j;
                        return result;
                    }
                    ++i;
                }
                ++j;
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        LRESULT result = super.WM_LBUTTONUP(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (OS.COMCTL32_MAJOR < 6) {
            if (this.mouseDownIndex == -1) {
                return result;
            }
            int x = OS.GET_X_LPARAM(lParam);
            int y = OS.GET_Y_LPARAM(lParam);
            Rectangle[] rects = this.getRectangles(this.mouseDownIndex);
            int i = 0;
            while (i < rects.length) {
                Rectangle rect = rects[i];
                if (rect.contains(x, y)) {
                    Event event = new Event();
                    event.text = this.ids[this.mouseDownIndex];
                    this.sendSelectionEvent(13, event, true);
                    break;
                }
                ++i;
            }
        }
        this.mouseDownIndex = -1;
        return result;
    }

    LRESULT WM_NCHITTEST(int wParam, int lParam) {
        LRESULT result = super.WM_NCHITTEST(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            return new LRESULT(1);
        }
        return result;
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSEMOVE(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6) {
            int x = OS.GET_X_LPARAM(lParam);
            int y = OS.GET_Y_LPARAM(lParam);
            if (OS.GetKeyState(1) < 0) {
                int oldSelection = this.selection.y;
                this.selection.y = this.layout.getOffset(x, y, null);
                if (this.selection.y != oldSelection) {
                    int newSelection = this.selection.y;
                    if (oldSelection > newSelection) {
                        int temp = oldSelection;
                        oldSelection = newSelection;
                        newSelection = temp;
                    }
                    Rectangle rect = this.layout.getBounds(oldSelection, newSelection);
                    this.redraw(rect.x, rect.y, rect.width, rect.height, false);
                }
            } else {
                int j = 0;
                while (j < this.offsets.length) {
                    Rectangle[] rects = this.getRectangles(j);
                    int i = 0;
                    while (i < rects.length) {
                        Rectangle rect = rects[i];
                        if (rect.contains(x, y)) {
                            this.setCursor(this.display.getSystemCursor(21));
                            return result;
                        }
                        ++i;
                    }
                    ++j;
                }
                this.setCursor(null);
            }
        }
        return result;
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        if (OS.COMCTL32_MAJOR >= 6) {
            return super.WM_PAINT(wParam, lParam);
        }
        PAINTSTRUCT ps = new PAINTSTRUCT();
        GCData data = new GCData();
        data.ps = ps;
        data.hwnd = this.handle;
        GC gc = this.new_GC(data);
        if (gc != null) {
            int width = ps.right - ps.left;
            int height = ps.bottom - ps.top;
            if (width != 0 && height != 0) {
                RECT rect = new RECT();
                OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                this.drawWidget(gc, rect);
            }
            gc.dispose();
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PRINTCLIENT(int wParam, int lParam) {
        LRESULT result = super.WM_PRINTCLIENT(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            GCData data = new GCData();
            data.device = this.display;
            data.foreground = this.getForegroundPixel();
            GC gc = GC.win32_new(wParam, data);
            this.drawWidget(gc, rect);
            gc.dispose();
        }
        return result;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6) {
            this.redraw();
        }
        return result;
    }

    LRESULT WM_SETFONT(int wParam, int lParam) {
        if (OS.COMCTL32_MAJOR < 6) {
            this.layout.setFont(Font.win32_new(this.display, wParam));
        }
        if (lParam != 0) {
            OS.InvalidateRect(this.handle, null, true);
        }
        this.font = wParam;
        return super.WM_SETFONT(this.font, lParam);
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            this.layout.setWidth(rect.right > 0 ? rect.right : -1);
            this.redraw();
        }
        return result;
    }

    LRESULT wmColorChild(int wParam, int lParam) {
        LRESULT result = super.wmColorChild(wParam, lParam);
        if (OS.COMCTL32_MAJOR >= 6 && !OS.IsWindowEnabled(this.handle)) {
            OS.SetTextColor(wParam, OS.GetSysColor(OS.COLOR_GRAYTEXT));
            if (result == null) {
                int backPixel = this.getBackgroundPixel();
                OS.SetBkColor(wParam, backPixel);
                int hBrush = this.findBrush(backPixel, 0);
                return new LRESULT(hBrush);
            }
        }
        return result;
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        if (OS.COMCTL32_MAJOR >= 6) {
            switch (hdr.code) {
                case -4: 
                case -2: {
                    NMLINK item = new NMLINK();
                    OS.MoveMemory(item, lParam, NMLINK.sizeof);
                    Event event = new Event();
                    event.text = this.ids[item.iLink];
                    this.sendSelectionEvent(13, event, true);
                }
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }
}

