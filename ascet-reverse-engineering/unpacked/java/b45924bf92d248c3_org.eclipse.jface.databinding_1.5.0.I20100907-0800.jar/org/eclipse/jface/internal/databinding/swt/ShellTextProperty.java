/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Shell;

public class ShellTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Shell)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Shell)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "Shell.text <String>";
    }
}

