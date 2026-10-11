/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.LayoutPart;

public class PartPlaceholder
extends LayoutPart {
    public static String WILD_CARD = "*";

    public PartPlaceholder(String id) {
        super(id);
    }

    public void createControl(Composite parent) {
    }

    public Control getControl() {
        return null;
    }

    public boolean hasWildCard() {
        return this.getID().indexOf(WILD_CARD) != -1;
    }
}

