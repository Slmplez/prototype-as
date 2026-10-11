/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class MessageBox
extends Dialog {
    String message = "";

    public MessageBox(Shell parent) {
        this(parent, 65570);
    }

    public MessageBox(Shell parent, int style) {
        super(parent, MessageBox.checkStyle(parent, MessageBox.checkStyle(style)));
        this.checkSubclass();
    }

    static int checkStyle(int style) {
        int mask = 4064;
        int bits = style & mask;
        if (bits == 32 || bits == 256 || bits == 288) {
            return style;
        }
        if (bits == 64 || bits == 128 || bits == 192 || bits == 448) {
            return style;
        }
        if (bits == 1280 || bits == 3584) {
            return style;
        }
        style = style & ~mask | 0x20;
        return style;
    }

    public String getMessage() {
        return this.message;
    }

    public int open() {
        int buttonBits = 0;
        if ((this.style & 0x20) == 32) {
            buttonBits = 0;
        }
        if ((this.style & 0x120) == 288) {
            buttonBits = 1;
        }
        if ((this.style & 0xC0) == 192) {
            buttonBits = 4;
        }
        if ((this.style & 0x1C0) == 448) {
            buttonBits = 3;
        }
        if ((this.style & 0x500) == 1280) {
            buttonBits = 5;
        }
        if ((this.style & 0xE00) == 3584) {
            buttonBits = 2;
        }
        if (buttonBits == 0) {
            buttonBits = 0;
        }
        int iconBits = 0;
        if ((this.style & 1) != 0) {
            iconBits = 16;
        }
        if ((this.style & 2) != 0) {
            iconBits = 64;
        }
        if ((this.style & 4) != 0) {
            iconBits = 32;
        }
        if ((this.style & 8) != 0) {
            iconBits = 48;
        }
        if ((this.style & 0x10) != 0) {
            iconBits = 64;
        }
        int modalBits = 0;
        if (OS.IsWinCE) {
            if ((this.style & 0x38000) != 0) {
                modalBits = 0;
            }
        } else {
            if ((this.style & 0x8000) != 0) {
                modalBits = 0;
            }
            if ((this.style & 0x10000) != 0) {
                modalBits = 8192;
            }
            if ((this.style & 0x20000) != 0) {
                modalBits = 4096;
            }
        }
        int bits = buttonBits | iconBits | modalBits;
        if ((this.style & 0x4000000) != 0) {
            bits |= 0x180000;
        }
        if ((this.style & 0x6000000) == 0 && this.parent != null && (this.parent.style & 0x8000000) != 0) {
            bits |= 0x180000;
        }
        if ((bits & 0x1000) != 0) {
            bits |= 0x2000;
            bits &= 0xFFFFEFFF;
            bits |= 0x40000;
        }
        int hwndOwner = this.parent != null ? this.parent.handle : 0;
        Dialog oldModal = null;
        Display display = null;
        if ((bits & 0x2000) != 0) {
            display = this.parent.getDisplay();
            oldModal = display.getModalDialog();
            display.setModalDialog(this);
        }
        TCHAR buffer1 = new TCHAR(0, this.message, true);
        TCHAR buffer2 = new TCHAR(0, this.title, true);
        int code = OS.MessageBox(hwndOwner, buffer1, buffer2, bits);
        if ((bits & 0x2000) != 0) {
            display.setModalDialog(oldModal);
        }
        if (code != 0) {
            int type = bits & 0xF;
            if (type == 0) {
                return 32;
            }
            if (type == 1) {
                return code == 1 ? 32 : 256;
            }
            if (type == 4) {
                return code == 6 ? 64 : 128;
            }
            if (type == 3) {
                if (code == 6) {
                    return 64;
                }
                if (code == 7) {
                    return 128;
                }
                return 256;
            }
            if (type == 5) {
                return code == 4 ? 1024 : 256;
            }
            if (type == 2) {
                if (code == 4) {
                    return 1024;
                }
                if (code == 3) {
                    return 512;
                }
                return 2048;
            }
        }
        return 256;
    }

    public void setMessage(String string) {
        if (string == null) {
            this.error(4);
        }
        this.message = string;
    }
}

