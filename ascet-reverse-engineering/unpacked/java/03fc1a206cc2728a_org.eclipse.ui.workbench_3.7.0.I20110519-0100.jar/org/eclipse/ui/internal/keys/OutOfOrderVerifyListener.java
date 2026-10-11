/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.keys.CancelOnModifyListener;
import org.eclipse.ui.internal.keys.OutOfOrderListener;

class OutOfOrderVerifyListener
implements VerifyKeyListener {
    private int active = Integer.MIN_VALUE;
    private OutOfOrderListener chainedListener;

    OutOfOrderVerifyListener(OutOfOrderListener outOfOrderListener) {
        this.chainedListener = outOfOrderListener;
    }

    final boolean isActive(int timeRegistered) {
        return this.active == timeRegistered;
    }

    final void setActive(int timeRegistered) {
        this.active = timeRegistered;
    }

    public void verifyKey(VerifyEvent event) {
        Widget widget = event.widget;
        if (widget instanceof StyledText && !widget.isDisposed()) {
            ((StyledText)widget).removeVerifyKeyListener((VerifyKeyListener)this);
        }
        if (event.doit) {
            widget.addListener(24, (Listener)new CancelOnModifyListener(this.chainedListener));
            widget.addListener(1, (Listener)this.chainedListener);
        }
    }
}

