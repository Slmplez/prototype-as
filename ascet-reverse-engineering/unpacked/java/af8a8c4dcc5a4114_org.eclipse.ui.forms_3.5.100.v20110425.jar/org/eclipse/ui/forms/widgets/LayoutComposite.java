/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.forms.widgets.ColumnLayout;
import org.eclipse.ui.forms.widgets.TableWrapLayout;

class LayoutComposite
extends Composite {
    public LayoutComposite(Composite parent, int style) {
        super(parent, style);
        this.setMenu(parent.getMenu());
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        Layout layout = this.getLayout();
        if (layout instanceof TableWrapLayout) {
            return ((TableWrapLayout)layout).computeSize(this, wHint, hHint, changed);
        }
        if (layout instanceof ColumnLayout) {
            return ((ColumnLayout)layout).computeSize((Composite)this, wHint, hHint, changed);
        }
        return super.computeSize(wHint, hHint, changed);
    }
}

