/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public abstract class Dialog {
    int style;
    Shell parent;
    String title;

    public Dialog(Shell parent) {
        this(parent, 32768);
    }

    public Dialog(Shell parent, int style) {
        this.checkParent(parent);
        this.parent = parent;
        this.style = style;
        this.title = "";
    }

    protected void checkSubclass() {
        if (!Display.isValidClass(this.getClass())) {
            this.error(43);
        }
    }

    void checkParent(Shell parent) {
        if (parent == null) {
            this.error(4);
        }
        parent.checkWidget();
    }

    static int checkStyle(Shell parent, int style) {
        int mask = 229376;
        if ((style & 0x10000000) != 0 && ((style &= 0xEFFFFFFF) & mask) == 0) {
            style |= parent == null ? 65536 : 32768;
        }
        if ((style & mask) == 0) {
            style |= 0x10000;
        }
        if (((style &= 0xF7FFFFFF) & 0x6000000) == 0 && parent != null) {
            if ((parent.style & 0x2000000) != 0) {
                style |= 0x2000000;
            }
            if ((parent.style & 0x4000000) != 0) {
                style |= 0x4000000;
            }
        }
        return Widget.checkBits(style, 0x2000000, 0x4000000, 0, 0, 0, 0);
    }

    void error(int code) {
        SWT.error(code);
    }

    public Shell getParent() {
        return this.parent;
    }

    public int getStyle() {
        return this.style;
    }

    public String getText() {
        return this.title;
    }

    public void setText(String string) {
        if (string == null) {
            this.error(4);
        }
        this.title = string;
    }
}

