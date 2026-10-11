/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;

public abstract class WidgetTabItem
extends AbstractTabItem {
    private Object data;
    private Widget widget;

    public WidgetTabItem(Widget theWidget) {
        this.widget = theWidget;
    }

    public void dispose() {
        this.widget.dispose();
    }

    public Object getData() {
        return this.data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Widget getWidget() {
        return this.widget;
    }
}

