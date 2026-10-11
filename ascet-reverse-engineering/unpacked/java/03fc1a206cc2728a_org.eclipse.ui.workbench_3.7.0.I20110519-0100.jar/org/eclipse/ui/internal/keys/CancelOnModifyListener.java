/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

final class CancelOnModifyListener
implements Listener {
    private final Listener chainedListener;

    CancelOnModifyListener(Listener listener) {
        this.chainedListener = listener;
    }

    public void handleEvent(Event event) {
        Widget widget = event.widget;
        widget.removeListener(24, (Listener)this);
        widget.removeListener(1, this.chainedListener);
    }
}

