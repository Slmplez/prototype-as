/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.keys;

import java.util.List;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.keys.WorkbenchKeyboard;

public class OutOfOrderListener
implements Listener {
    private int active = Integer.MIN_VALUE;
    private final WorkbenchKeyboard keyboard;

    public OutOfOrderListener(WorkbenchKeyboard workbenchKeyboard) {
        this.keyboard = workbenchKeyboard;
    }

    public void handleEvent(Event event) {
        Widget widget = event.widget;
        if (widget != null && !widget.isDisposed()) {
            widget.removeListener(event.type, (Listener)this);
        }
        if (event.doit) {
            List keyStrokes = WorkbenchKeyboard.generatePossibleKeyStrokes(event);
            this.keyboard.processKeyEvent(keyStrokes, event);
        }
    }

    final boolean isActive(int timeRegistered) {
        return this.active == timeRegistered;
    }

    final void setActive(int timeRegistered) {
        this.active = timeRegistered;
    }
}

