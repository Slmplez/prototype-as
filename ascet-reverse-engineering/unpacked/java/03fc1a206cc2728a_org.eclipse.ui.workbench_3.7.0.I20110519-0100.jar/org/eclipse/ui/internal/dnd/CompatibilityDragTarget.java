/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.dnd;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;

public class CompatibilityDragTarget {
    private static final int MARGIN = 30;

    public static int getRelativePosition(Control c, Point toTest) {
        int vmargin;
        Point p = c.toControl(toTest);
        Point e = c.getSize();
        if (p.x > e.x || p.y > e.y || p.x < 0 || p.y < 0) {
            return -1;
        }
        int hmargin = Math.min(e.x / 3, 30);
        Rectangle inner = new Rectangle(hmargin, vmargin = Math.min(e.y / 3, 30), e.x - hmargin * 2, e.y - vmargin * 2);
        if (inner.contains(p)) {
            return 0x1000000;
        }
        return Geometry.getClosestSide((Rectangle)inner, (Point)p);
    }
}

