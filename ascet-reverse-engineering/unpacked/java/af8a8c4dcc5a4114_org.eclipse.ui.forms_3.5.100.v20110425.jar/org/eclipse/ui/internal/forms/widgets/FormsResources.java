/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.forms.widgets;

import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.widgets.Display;

public class FormsResources {
    private static Cursor busyCursor;
    private static Cursor handCursor;
    private static Cursor textCursor;

    public static Cursor getBusyCursor() {
        if (busyCursor == null) {
            busyCursor = new Cursor((Device)Display.getCurrent(), 1);
        }
        return busyCursor;
    }

    public static Cursor getHandCursor() {
        if (handCursor == null) {
            handCursor = new Cursor((Device)Display.getCurrent(), 21);
        }
        return handCursor;
    }

    public static Cursor getTextCursor() {
        if (textCursor == null) {
            textCursor = new Cursor((Device)Display.getCurrent(), 19);
        }
        return textCursor;
    }

    public static int getProgressDelay(int index) {
        return 100;
    }

    public static void shutdown() {
        if (busyCursor != null) {
            busyCursor.dispose();
        }
        if (handCursor != null) {
            handCursor.dispose();
        }
        if (textCursor != null) {
            textCursor.dispose();
        }
        busyCursor = null;
        handCursor = null;
        textCursor = null;
    }
}

