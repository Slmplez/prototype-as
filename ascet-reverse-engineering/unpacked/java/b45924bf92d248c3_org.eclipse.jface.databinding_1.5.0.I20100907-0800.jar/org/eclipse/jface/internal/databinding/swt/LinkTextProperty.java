/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Link
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Link;

public class LinkTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Link)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Link)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "Link.text <String>";
    }
}

