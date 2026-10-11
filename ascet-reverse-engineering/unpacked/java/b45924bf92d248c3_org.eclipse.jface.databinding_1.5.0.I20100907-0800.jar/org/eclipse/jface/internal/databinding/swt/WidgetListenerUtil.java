/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

public class WidgetListenerUtil {
    public static void asyncAddListener(final Widget widget, final int event, final Listener listener) {
        if (widget == null) {
            return;
        }
        if (widget.isDisposed()) {
            return;
        }
        Display display = widget.getDisplay();
        if (display == Display.getCurrent()) {
            widget.addListener(event, listener);
        } else {
            SWTObservables.getRealm(display).exec(new Runnable(){

                public void run() {
                    if (!widget.isDisposed()) {
                        widget.addListener(event, listener);
                    }
                }
            });
        }
    }

    public static void asyncRemoveListener(final Widget widget, final int event, final Listener listener) {
        if (widget == null) {
            return;
        }
        if (widget.isDisposed()) {
            return;
        }
        Display display = widget.getDisplay();
        if (display == Display.getCurrent()) {
            widget.removeListener(event, listener);
        } else {
            SWTObservables.getRealm(display).exec(new Runnable(){

                public void run() {
                    if (!widget.isDisposed()) {
                        widget.removeListener(event, listener);
                    }
                }
            });
        }
    }
}

