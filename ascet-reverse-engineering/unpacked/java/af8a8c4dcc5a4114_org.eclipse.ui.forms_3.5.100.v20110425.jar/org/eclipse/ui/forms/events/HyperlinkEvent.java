/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.TypedEvent
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.forms.events;

import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Widget;

public final class HyperlinkEvent
extends TypedEvent {
    private static final long serialVersionUID = 6009335074727417445L;
    private String label;
    private int stateMask;

    public HyperlinkEvent(Widget widget, Object href, String label, int stateMask) {
        super((Object)widget);
        this.widget = widget;
        this.data = href;
        this.label = label;
        this.stateMask = stateMask;
    }

    public Object getHref() {
        return this.data;
    }

    public String getLabel() {
        return this.label;
    }

    public int getStateMask() {
        return this.stateMask;
    }
}

