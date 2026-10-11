/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.win32.CHOOSEFONT;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class FontDialog
extends Dialog {
    FontData fontData;
    RGB rgb;

    public FontDialog(Shell parent) {
        this(parent, 65536);
    }

    public FontDialog(Shell parent, int style) {
        super(parent, FontDialog.checkStyle(parent, style));
        this.checkSubclass();
    }

    public FontData getFontData() {
        return this.fontData;
    }

    public FontData[] getFontList() {
        if (this.fontData == null) {
            return null;
        }
        FontData[] result = new FontData[]{this.fontData};
        return result;
    }

    public RGB getRGB() {
        return this.rgb;
    }

    public FontData open() {
        int parentOrientation;
        int dialogOrientation;
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        int hwndOwner = this.parent.handle;
        int hwndParent = this.parent.handle;
        boolean enabled = false;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && (dialogOrientation = this.style & 0x6000000) != (parentOrientation = this.parent.style & 0x6000000)) {
            int exStyle = 0x100000;
            if (dialogOrientation == 0x4000000) {
                exStyle |= 0x400000;
            }
            hwndOwner = OS.CreateWindowEx(exStyle, Shell.DialogClass, null, 0, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, hwndParent, 0, OS.GetModuleHandle(null), null);
            enabled = OS.IsWindowEnabled(hwndParent);
            if (enabled) {
                OS.EnableWindow(hwndParent, false);
            }
        }
        int hHeap = OS.GetProcessHeap();
        CHOOSEFONT lpcf = new CHOOSEFONT();
        lpcf.lStructSize = CHOOSEFONT.sizeof;
        lpcf.hwndOwner = hwndOwner;
        lpcf.Flags = 257;
        int lpLogFont = OS.HeapAlloc(hHeap, 8, LOGFONT.sizeof);
        if (this.fontData != null && this.fontData.data != null) {
            LOGFONT logFont = this.fontData.data;
            int lfHeight = logFont.lfHeight;
            int hDC = OS.GetDC(0);
            int pixels = -((int)(0.5f + this.fontData.height * (float)OS.GetDeviceCaps(hDC, 90) / 72.0f));
            OS.ReleaseDC(0, hDC);
            logFont.lfHeight = pixels;
            lpcf.Flags |= 0x40;
            OS.MoveMemory(lpLogFont, logFont, LOGFONT.sizeof);
            logFont.lfHeight = lfHeight;
        }
        lpcf.lpLogFont = lpLogFont;
        if (this.rgb != null) {
            int red = this.rgb.red & 0xFF;
            int green = this.rgb.green << 8 & 0xFF00;
            int blue = this.rgb.blue << 16 & 0xFF0000;
            lpcf.rgbColors = red | green | blue;
        }
        Dialog oldModal = null;
        Display display = null;
        if ((this.style & 0x30000) != 0) {
            display = this.parent.getDisplay();
            oldModal = display.getModalDialog();
            display.setModalDialog(this);
        }
        boolean success = OS.ChooseFont(lpcf);
        if ((this.style & 0x30000) != 0) {
            display.setModalDialog(oldModal);
        }
        if (success) {
            LOGFONT logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
            OS.MoveMemory(logFont, lpLogFont, LOGFONT.sizeof);
            int hDC = OS.GetDC(0);
            int logPixelsY = OS.GetDeviceCaps(hDC, 90);
            int pixels = 0;
            if (logFont.lfHeight > 0) {
                int hFont = OS.CreateFontIndirect(logFont);
                int oldFont = OS.SelectObject(hDC, hFont);
                TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
                OS.GetTextMetrics(hDC, lptm);
                OS.SelectObject(hDC, oldFont);
                OS.DeleteObject(hFont);
                pixels = logFont.lfHeight - lptm.tmInternalLeading;
            } else {
                pixels = -logFont.lfHeight;
            }
            OS.ReleaseDC(0, hDC);
            float points = (float)pixels * 72.0f / (float)logPixelsY;
            this.fontData = FontData.win32_new(logFont, points);
            int red = lpcf.rgbColors & 0xFF;
            int green = lpcf.rgbColors >> 8 & 0xFF;
            int blue = lpcf.rgbColors >> 16 & 0xFF;
            this.rgb = new RGB(red, green, blue);
        }
        if (lpLogFont != 0) {
            OS.HeapFree(hHeap, 0, lpLogFont);
        }
        if (hwndParent != hwndOwner) {
            if (enabled) {
                OS.EnableWindow(hwndParent, true);
            }
            OS.SetActiveWindow(hwndParent);
            OS.DestroyWindow(hwndOwner);
        }
        if (!success) {
            return null;
        }
        return this.fontData;
    }

    public void setFontData(FontData fontData) {
        this.fontData = fontData;
    }

    public void setFontList(FontData[] fontData) {
        this.fontData = fontData != null && fontData.length > 0 ? fontData[0] : null;
    }

    public void setRGB(RGB rgb) {
        this.rgb = rgb;
    }
}

