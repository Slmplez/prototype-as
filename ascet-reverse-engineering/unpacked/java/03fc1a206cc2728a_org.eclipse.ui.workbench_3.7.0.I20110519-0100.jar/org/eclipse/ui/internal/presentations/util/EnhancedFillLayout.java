/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;

public class EnhancedFillLayout
extends Layout {
    public int xmargin = 0;
    public int ymargin = 0;

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        int resultX = 1;
        int resultY = 1;
        Control[] children = composite.getChildren();
        int i = 0;
        while (i < children.length) {
            Control control = children[i];
            Point sz = control.computeSize(wHint, hHint, flushCache);
            resultX = Math.max(resultX, sz.x + 2 * this.xmargin);
            resultY = Math.max(resultY, sz.y + 2 * this.ymargin);
            ++i;
        }
        return new Point(resultX, resultY);
    }

    protected void layout(Composite composite, boolean flushCache) {
        Control[] children = composite.getChildren();
        int i = 0;
        while (i < children.length) {
            Control control = children[i];
            Rectangle area = composite.getClientArea();
            Geometry.expand((Rectangle)area, (int)(-this.xmargin), (int)(-this.xmargin), (int)(-this.ymargin), (int)(-this.ymargin));
            control.setBounds(area);
            ++i;
        }
    }
}

