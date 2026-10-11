/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.CHOOSECOLOR;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class ColorDialog
extends Dialog {
    Display display;
    int width;
    int height;
    RGB rgb;

    public ColorDialog(Shell parent) {
        this(parent, 65536);
    }

    public ColorDialog(Shell parent, int style) {
        super(parent, ColorDialog.checkStyle(parent, style));
        this.checkSubclass();
    }

    int CCHookProc(int hdlg, int uiMsg, int lParam, int lpData) {
        switch (uiMsg) {
            case 272: {
                RECT rect = new RECT();
                OS.GetWindowRect(hdlg, rect);
                this.width = rect.right - rect.left;
                this.height = rect.bottom - rect.top;
                if (this.title == null || this.title.length() == 0) break;
                TCHAR buffer = new TCHAR(0, this.title, true);
                OS.SetWindowText(hdlg, buffer);
                break;
            }
            case 2: {
                RECT rect = new RECT();
                OS.GetWindowRect(hdlg, rect);
                int newWidth = rect.right - rect.left;
                int newHeight = rect.bottom - rect.top;
                if (newWidth >= this.width && newHeight >= this.height && newWidth > this.width) break;
            }
        }
        return 0;
    }

    public RGB getRGB() {
        return this.rgb;
    }

    public RGB open() {
        Callback callback;
        int lpfnHook;
        int parentOrientation;
        int dialogOrientation;
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
        if ((lpfnHook = (callback = new Callback(this, "CCHookProc", 4)).getAddress()) == 0) {
            SWT.error(3);
        }
        this.display = this.parent.display;
        if (this.display.lpCustColors == 0) {
            int hHeap = OS.GetProcessHeap();
            this.display.lpCustColors = OS.HeapAlloc(hHeap, 8, 64);
        }
        CHOOSECOLOR lpcc = new CHOOSECOLOR();
        lpcc.lStructSize = CHOOSECOLOR.sizeof;
        lpcc.Flags = 272;
        lpcc.lpfnHook = lpfnHook;
        lpcc.hwndOwner = hwndOwner;
        lpcc.lpCustColors = this.display.lpCustColors;
        if (this.rgb != null) {
            lpcc.Flags |= 1;
            int red = this.rgb.red & 0xFF;
            int green = this.rgb.green << 8 & 0xFF00;
            int blue = this.rgb.blue << 16 & 0xFF0000;
            lpcc.rgbResult = red | green | blue;
        }
        Dialog oldModal = null;
        if ((this.style & 0x30000) != 0) {
            oldModal = this.display.getModalDialog();
            this.display.setModalDialog(this);
        }
        boolean success = OS.ChooseColor(lpcc);
        if ((this.style & 0x30000) != 0) {
            this.display.setModalDialog(oldModal);
        }
        if (success) {
            int red = lpcc.rgbResult & 0xFF;
            int green = lpcc.rgbResult >> 8 & 0xFF;
            int blue = lpcc.rgbResult >> 16 & 0xFF;
            this.rgb = new RGB(red, green, blue);
        }
        callback.dispose();
        if (hwndParent != hwndOwner) {
            if (enabled) {
                OS.EnableWindow(hwndParent, true);
            }
            OS.SetActiveWindow(hwndParent);
            OS.DestroyWindow(hwndOwner);
        }
        this.display = null;
        if (!success) {
            return null;
        }
        return this.rgb;
    }

    public void setRGB(RGB rgb) {
        this.rgb = rgb;
    }
}

