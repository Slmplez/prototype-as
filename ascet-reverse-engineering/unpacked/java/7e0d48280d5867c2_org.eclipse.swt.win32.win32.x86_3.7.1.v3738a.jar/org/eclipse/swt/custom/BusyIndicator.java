/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;

public class BusyIndicator {
    static int nextBusyId = 1;
    static final String BUSYID_NAME = "SWT BusyIndicator";
    static final String BUSY_CURSOR = "SWT BusyIndicator Cursor";

    /*
     * Unable to fully structure code
     */
    public static void showWhile(Display display, Runnable runnable) {
        if (runnable == null) {
            SWT.error(4);
        }
        if (display == null && (display = Display.getCurrent()) == null) {
            runnable.run();
            return;
        }
        busyId = new Integer(BusyIndicator.nextBusyId);
        ++BusyIndicator.nextBusyId;
        cursor = display.getSystemCursor(1);
        shells = display.getShells();
        i = 0;
        while (i < shells.length) {
            id = (Integer)shells[i].getData("SWT BusyIndicator");
            if (id == null) {
                shells[i].setCursor(cursor);
                shells[i].setData("SWT BusyIndicator", busyId);
            }
            ++i;
        }
        try {
            runnable.run();
        }
        finally {
            shells = display.getShells();
            i = 0;
            ** while (i < shells.length)
        }
lbl-1000:
        // 1 sources

        {
            id = (Integer)shells[i].getData("SWT BusyIndicator");
            if (id == busyId) {
                shells[i].setCursor(null);
                shells[i].setData("SWT BusyIndicator", null);
            }
            ++i;
            continue;
        }
lbl31:
        // 1 sources

    }
}

