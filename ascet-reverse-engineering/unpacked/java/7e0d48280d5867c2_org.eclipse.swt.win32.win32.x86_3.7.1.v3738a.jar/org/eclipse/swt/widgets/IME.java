/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TF_DISPLAYATTRIBUTE;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Widget;

public class IME
extends Widget {
    Canvas parent;
    int caretOffset;
    int startOffset;
    int commitCount;
    String text;
    int[] ranges;
    TextStyle[] styles;
    static final int WM_MSIME_MOUSE = OS.RegisterWindowMessage(new TCHAR(0, "MSIMEMouseOperation", true));
    static final byte[] IID_ITfInputProcessorProfiles = new byte[16];
    static final byte[] IID_ITfDisplayAttributeProvider = new byte[16];
    static final byte[] CLSID_TF_InputProcessorProfiles = new byte[16];
    static final byte[] GUID_TFCAT_TIP_KEYBOARD = new byte[16];
    static final int UNDERLINE_IME_DOT = 65536;
    static final int UNDERLINE_IME_DASH = 131072;
    static final int UNDERLINE_IME_THICK = 196608;

    static {
        OS.IIDFromString("{1F02B6C5-7842-4EE6-8A0B-9A24183A95CA}\u0000".toCharArray(), IID_ITfInputProcessorProfiles);
        OS.IIDFromString("{fee47777-163c-4769-996a-6e9c50ad8f54}\u0000".toCharArray(), IID_ITfDisplayAttributeProvider);
        OS.IIDFromString("{33C53A50-F456-4884-B049-85FD643ECFED}\u0000".toCharArray(), CLSID_TF_InputProcessorProfiles);
        OS.IIDFromString("{34745C63-B2F0-4784-8B67-5E12C8701A31}\u0000".toCharArray(), GUID_TFCAT_TIP_KEYBOARD);
    }

    IME() {
    }

    public IME(Canvas parent, int style) {
        super(parent, style);
        this.parent = parent;
        this.createWidget();
    }

    void createWidget() {
        this.text = "";
        this.startOffset = -1;
        if (this.parent.getIME() == null) {
            this.parent.setIME(this);
        }
    }

    public int getCaretOffset() {
        this.checkWidget();
        return this.startOffset + this.caretOffset;
    }

    public int getCommitCount() {
        this.checkWidget();
        return this.commitCount;
    }

    public int getCompositionOffset() {
        this.checkWidget();
        return this.startOffset;
    }

    TF_DISPLAYATTRIBUTE getDisplayAttribute(short langid, int attInfo) {
        int[] pProfiles = new int[1];
        int hr = OS.CoCreateInstance(CLSID_TF_InputProcessorProfiles, 0, 1, IID_ITfInputProcessorProfiles, pProfiles);
        TF_DISPLAYATTRIBUTE pda = null;
        if (hr == 0) {
            int[] pProvider;
            byte[] pclsid = new byte[16];
            byte[] pguidProfile = new byte[16];
            hr = OS.VtblCall(8, pProfiles[0], langid, GUID_TFCAT_TIP_KEYBOARD, pclsid, pguidProfile);
            if (hr == 0 && (hr = OS.CoCreateInstance(pclsid, 0, 1, IID_ITfDisplayAttributeProvider, pProvider = new int[1])) == 0) {
                int[] pEnum = new int[1];
                hr = OS.VtblCall(3, pProvider[0], pEnum);
                if (hr == 0) {
                    int[] pDispInfo = new int[1];
                    TF_DISPLAYATTRIBUTE tempPda = new TF_DISPLAYATTRIBUTE();
                    while ((hr = OS.VtblCall(4, pEnum[0], 1, pDispInfo, null)) == 0) {
                        OS.VtblCall(5, pDispInfo[0], tempPda);
                        OS.VtblCall(2, pDispInfo[0]);
                        if (tempPda.bAttr != attInfo) continue;
                        pda = tempPda;
                        break;
                    }
                    hr = OS.VtblCall(2, pEnum[0]);
                }
                hr = OS.VtblCall(2, pProvider[0]);
            }
            hr = OS.VtblCall(2, pProfiles[0]);
        }
        if (pda == null) {
            pda = new TF_DISPLAYATTRIBUTE();
            switch (attInfo) {
                case 0: {
                    pda.lsStyle = 4;
                    break;
                }
                case 1: 
                case 2: {
                    pda.lsStyle = 1;
                    pda.fBoldLine = attInfo == 1;
                }
            }
        }
        return pda;
    }

    public int[] getRanges() {
        this.checkWidget();
        if (this.ranges == null) {
            return new int[0];
        }
        int[] result = new int[this.ranges.length];
        int i = 0;
        while (i < result.length) {
            result[i] = this.ranges[i] + this.startOffset;
            ++i;
        }
        return result;
    }

    public TextStyle[] getStyles() {
        this.checkWidget();
        if (this.styles == null) {
            return new TextStyle[0];
        }
        TextStyle[] result = new TextStyle[this.styles.length];
        System.arraycopy(this.styles, 0, result, 0, this.styles.length);
        return result;
    }

    public String getText() {
        this.checkWidget();
        return this.text;
    }

    public boolean getWideCaret() {
        this.checkWidget();
        int layout = OS.GetKeyboardLayout(0);
        short langID = (short)OS.LOWORD(layout);
        return OS.PRIMARYLANGID(langID) == 18;
    }

    boolean isInlineEnabled() {
        if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(5, 1)) {
            return false;
        }
        return OS.IsDBLocale && this.hooks(43);
    }

    void releaseParent() {
        super.releaseParent();
        if (this == this.parent.getIME()) {
            this.parent.setIME(null);
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        this.parent = null;
        this.text = null;
        this.styles = null;
        this.ranges = null;
    }

    public void setCompositionOffset(int offset) {
        this.checkWidget();
        if (offset < 0) {
            return;
        }
        if (this.startOffset != -1) {
            this.startOffset = offset;
        }
    }

    LRESULT WM_IME_COMPOSITION(int wParam, int lParam) {
        if (!this.isInlineEnabled()) {
            return null;
        }
        this.ranges = null;
        this.styles = null;
        this.commitCount = 0;
        this.caretOffset = 0;
        int hwnd = this.parent.handle;
        int hIMC = OS.ImmGetContext(hwnd);
        int codePage = this.parent.getCodePage();
        if (hIMC != 0) {
            Event event;
            int length;
            TCHAR buffer = null;
            if ((lParam & 0x800) != 0) {
                length = OS.ImmGetCompositionString(hIMC, 2048, null, 0);
                if (length > 0) {
                    buffer = new TCHAR(codePage, length / TCHAR.sizeof);
                    OS.ImmGetCompositionString(hIMC, 2048, buffer, length);
                    if (this.startOffset == -1) {
                        event = new Event();
                        event.detail = 3;
                        this.sendEvent(43, event);
                        this.startOffset = event.start;
                    }
                    event = new Event();
                    event.detail = 1;
                    event.start = this.startOffset;
                    event.end = this.startOffset + this.text.length();
                    this.text = buffer != null ? buffer.toString() : "";
                    event.text = this.text;
                    this.commitCount = this.text.length();
                    this.sendEvent(43, event);
                    String chars = this.text;
                    this.text = "";
                    this.startOffset = -1;
                    this.commitCount = 0;
                    if (event.doit) {
                        Display display = this.display;
                        display.lastKey = 0;
                        display.lastDead = false;
                        display.lastNull = false;
                        display.lastVirtual = false;
                        length = chars.length();
                        int i = 0;
                        while (i < length) {
                            char c = chars.charAt(i);
                            display.lastAscii = c;
                            event = new Event();
                            event.character = c;
                            this.parent.sendEvent(1, event);
                            ++i;
                        }
                    }
                }
                if ((lParam & 8) == 0) {
                    return LRESULT.ONE;
                }
            }
            buffer = null;
            if ((lParam & 8) != 0) {
                length = OS.ImmGetCompositionString(hIMC, 8, null, 0);
                if (length > 0) {
                    buffer = new TCHAR(codePage, length / TCHAR.sizeof);
                    OS.ImmGetCompositionString(hIMC, 8, buffer, length);
                    if ((lParam & 0x80) != 0) {
                        this.caretOffset = OS.ImmGetCompositionString(hIMC, 128, null, 0);
                    }
                    int[] clauses = null;
                    if ((lParam & 0x20) != 0 && (length = OS.ImmGetCompositionString(hIMC, 32, null, 0)) > 0) {
                        clauses = new int[length / 4];
                        OS.ImmGetCompositionString(hIMC, 32, clauses, length);
                    }
                    if ((lParam & 0x10) != 0 && clauses != null && (length = OS.ImmGetCompositionString(hIMC, 16, null, 0)) > 0) {
                        byte[] attrs = new byte[length];
                        OS.ImmGetCompositionString(hIMC, 16, attrs, length);
                        length = clauses.length - 1;
                        this.ranges = new int[length * 2];
                        this.styles = new TextStyle[length];
                        int layout = OS.GetKeyboardLayout(0);
                        short langID = (short)OS.LOWORD(layout);
                        TF_DISPLAYATTRIBUTE attr = null;
                        TextStyle style = null;
                        int i = 0;
                        while (i < length) {
                            this.ranges[i * 2] = clauses[i];
                            this.ranges[i * 2 + 1] = clauses[i + 1] - 1;
                            this.styles[i] = style = new TextStyle();
                            attr = this.getDisplayAttribute(langID, attrs[clauses[i]]);
                            if (attr != null) {
                                int colorRef;
                                switch (attr.crText.type) {
                                    case 2: {
                                        style.foreground = Color.win32_new(this.display, attr.crText.cr);
                                        break;
                                    }
                                    case 1: {
                                        colorRef = OS.GetSysColor(attr.crText.cr);
                                        style.foreground = Color.win32_new(this.display, colorRef);
                                    }
                                }
                                switch (attr.crBk.type) {
                                    case 2: {
                                        style.background = Color.win32_new(this.display, attr.crBk.cr);
                                        break;
                                    }
                                    case 1: {
                                        colorRef = OS.GetSysColor(attr.crBk.cr);
                                        style.background = Color.win32_new(this.display, colorRef);
                                    }
                                }
                                switch (attr.crLine.type) {
                                    case 2: {
                                        style.underlineColor = Color.win32_new(this.display, attr.crLine.cr);
                                        break;
                                    }
                                    case 1: {
                                        colorRef = OS.GetSysColor(attr.crLine.cr);
                                        style.underlineColor = Color.win32_new(this.display, colorRef);
                                    }
                                }
                                style.underline = attr.lsStyle != 0;
                                switch (attr.lsStyle) {
                                    case 4: {
                                        style.underlineStyle = 3;
                                        break;
                                    }
                                    case 3: {
                                        style.underlineStyle = 131072;
                                        break;
                                    }
                                    case 2: {
                                        style.underlineStyle = 65536;
                                        break;
                                    }
                                    case 1: {
                                        style.underlineStyle = attr.fBoldLine ? 196608 : 0;
                                    }
                                }
                            }
                            ++i;
                        }
                    }
                }
                OS.ImmReleaseContext(hwnd, hIMC);
            }
            int end = this.startOffset + this.text.length();
            if (this.startOffset == -1) {
                event = new Event();
                event.detail = 3;
                this.sendEvent(43, event);
                this.startOffset = event.start;
                end = event.end;
            }
            event = new Event();
            event.detail = 1;
            event.start = this.startOffset;
            event.end = end;
            this.text = buffer != null ? buffer.toString() : "";
            event.text = this.text;
            this.sendEvent(43, event);
            if (this.text.length() == 0) {
                this.startOffset = -1;
                this.ranges = null;
                this.styles = null;
            }
        }
        return LRESULT.ONE;
    }

    LRESULT WM_IME_COMPOSITION_START(int wParam, int lParam) {
        return this.isInlineEnabled() ? LRESULT.ONE : null;
    }

    LRESULT WM_IME_ENDCOMPOSITION(int wParam, int lParam) {
        return this.isInlineEnabled() ? LRESULT.ONE : null;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        if (!this.isInlineEnabled()) {
            return null;
        }
        int hwnd = this.parent.handle;
        int hIMC = OS.ImmGetContext(hwnd);
        if (hIMC != 0) {
            if (OS.ImmGetOpenStatus(hIMC)) {
                OS.ImmNotifyIME(hIMC, 21, 1, 0);
            }
            OS.ImmReleaseContext(hwnd, hIMC);
        }
        return null;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        if (!this.isInlineEnabled()) {
            return null;
        }
        int hwnd = this.parent.handle;
        int hIMC = OS.ImmGetContext(hwnd);
        if (hIMC != 0) {
            if (OS.ImmGetOpenStatus(hIMC) && OS.ImmGetCompositionString(hIMC, 8, null, 0) > 0) {
                Event event = new Event();
                event.detail = 2;
                event.x = OS.GET_X_LPARAM(lParam);
                event.y = OS.GET_Y_LPARAM(lParam);
                this.sendEvent(43, event);
                int offset = event.index;
                int length = this.text.length();
                if (offset != -1 && this.startOffset != -1 && this.startOffset <= offset && offset < this.startOffset + length) {
                    int imeWnd = OS.ImmGetDefaultIMEWnd(hwnd);
                    offset = event.index + event.count - this.startOffset;
                    int trailing = event.count > 0 ? 1 : 2;
                    int param = OS.MAKEWPARAM(OS.MAKEWORD(1, trailing), offset);
                    OS.SendMessage(imeWnd, WM_MSIME_MOUSE, param, hIMC);
                } else {
                    OS.ImmNotifyIME(hIMC, 21, 1, 0);
                }
            }
            OS.ImmReleaseContext(hwnd, hIMC);
        }
        return null;
    }
}

