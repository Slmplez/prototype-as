/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.forms.widgets.ToggleHyperlink;

public class Twistie
extends ToggleHyperlink {
    private static final int[] onPoints;
    private static final int[] offPoints;

    static {
        int[] nArray = new int[6];
        nArray[1] = 2;
        nArray[2] = 8;
        nArray[3] = 2;
        nArray[4] = 4;
        nArray[5] = 6;
        onPoints = nArray;
        offPoints = new int[]{2, -1, 2, 8, 6, 4};
    }

    public Twistie(Composite parent, int style) {
        super(parent, style);
        this.innerWidth = 9;
        this.innerHeight = 9;
    }

    protected void paintHyperlink(GC gc) {
        Color bg = !this.isEnabled() ? this.getDisplay().getSystemColor(18) : (this.hover && this.getHoverDecorationColor() != null ? this.getHoverDecorationColor() : (this.getDecorationColor() != null ? this.getDecorationColor() : this.getForeground()));
        gc.setBackground(bg);
        Point size = this.getSize();
        int x = (size.x - 9) / 2;
        int y = (size.y - 9) / 2;
        int[] data = this.isExpanded() ? this.translate(onPoints, x, y) : this.translate(offPoints, x, y);
        gc.fillPolygon(data);
        gc.setBackground(this.getBackground());
    }

    private int[] translate(int[] data, int x, int y) {
        int[] target = new int[data.length];
        int i = 0;
        while (i < data.length) {
            target[i] = data[i] + x;
            i += 2;
        }
        i = 1;
        while (i < data.length) {
            target[i] = data[i] + y;
            i += 2;
        }
        return target;
    }

    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.redraw();
    }
}

