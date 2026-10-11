/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.swt.widgets.Widget;

class Helper {
    Helper() {
    }

    public static boolean okToUse(Widget widget) {
        return widget != null && !widget.isDisposed();
    }
}

