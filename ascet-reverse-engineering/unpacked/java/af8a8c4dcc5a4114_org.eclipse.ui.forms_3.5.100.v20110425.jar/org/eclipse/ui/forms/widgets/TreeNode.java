/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.forms.widgets.ToggleHyperlink;

public class TreeNode
extends ToggleHyperlink {
    public TreeNode(Composite parent, int style) {
        super(parent, style);
        this.innerWidth = 10;
        this.innerHeight = 10;
    }

    protected void paint(PaintEvent e) {
        this.paintHyperlink(e.gc);
    }

    protected void paintHyperlink(GC gc) {
        Rectangle box = this.getBoxBounds(gc);
        gc.setForeground(this.getDisplay().getSystemColor(18));
        gc.drawRectangle(box);
        gc.setForeground(this.getForeground());
        gc.drawLine(box.x + 2, box.y + 4, box.x + 6, box.y + 4);
        if (!this.isExpanded()) {
            gc.drawLine(box.x + 4, box.y + 2, box.x + 4, box.y + 6);
        }
        if (this.paintFocus && this.getSelection()) {
            gc.setForeground(this.getForeground());
            gc.drawFocus(box.x - 1, box.y - 1, box.width + 3, box.height + 3);
        }
    }

    private Rectangle getBoxBounds(GC gc) {
        int x = 1;
        int y = 0;
        gc.setFont(this.getFont());
        y = 2;
        return new Rectangle(x, y, 8, 8);
    }
}

