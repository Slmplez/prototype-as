/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.dialogs;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;

public class ControlAnimator {
    protected Control control;

    public ControlAnimator(Control control) {
        this.control = control;
    }

    public void setVisible(boolean visible) {
        if (!(this.control.isVisible() ^ visible)) {
            return;
        }
        this.control.setVisible(visible);
        Rectangle parentBounds = this.control.getParent().getBounds();
        int bottom = parentBounds.height;
        int endY = visible ? bottom - this.control.getBounds().height : bottom;
        Point loc = this.control.getLocation();
        this.control.setLocation(loc.x, endY);
    }
}

