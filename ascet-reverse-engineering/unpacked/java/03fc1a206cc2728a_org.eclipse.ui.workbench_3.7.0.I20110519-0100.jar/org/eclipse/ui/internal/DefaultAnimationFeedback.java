/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.Region
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.RectangleAnimation;

public class DefaultAnimationFeedback {
    private static final int LINE_WIDTH = 1;
    private Display display;
    private Shell theShell;
    private Region shellRegion;
    private List startRects = new ArrayList();
    private List endRects = new ArrayList();

    public void initialize(Shell parentShell, Rectangle startRect, Rectangle endRect) {
        this.addStartRect(startRect);
        this.addEndRect(endRect);
        this.theShell = new Shell(parentShell, 16392);
        this.display = this.theShell.getDisplay();
        Color color = this.display.getSystemColor(21);
        this.theShell.setBackground(color);
        this.shellRegion = new Region((Device)this.display);
        this.theShell.setRegion(this.shellRegion);
    }

    public void addStartRect(Rectangle rect) {
        if (rect != null) {
            this.startRects.add(rect);
        }
    }

    public void addEndRect(Rectangle rect) {
        if (rect != null) {
            this.endRects.add(rect);
        }
    }

    public List getStartRects() {
        return this.startRects;
    }

    public List getEndRects() {
        return this.endRects;
    }

    public void renderStep(double amount) {
        if (this.shellRegion != null) {
            this.shellRegion.dispose();
            this.shellRegion = new Region((Device)this.display);
        }
        Iterator startIter = this.startRects.iterator();
        Iterator endIter = this.endRects.iterator();
        while (startIter.hasNext()) {
            Rectangle start = (Rectangle)startIter.next();
            Rectangle end = (Rectangle)endIter.next();
            Rectangle curRect = RectangleAnimation.interpolate(start, end, amount);
            Rectangle rect = Geometry.toControl((Control)this.theShell, (Rectangle)curRect);
            this.shellRegion.add(rect);
            ++rect.x;
            ++rect.y;
            rect.width = Math.max(0, rect.width - 2);
            rect.height = Math.max(0, rect.height - 2);
            this.shellRegion.subtract(rect);
        }
        this.theShell.setRegion(this.shellRegion);
        this.display.update();
    }

    public void dispose() {
        this.theShell.setVisible(false);
        this.theShell.dispose();
        this.shellRegion.dispose();
    }

    public void jobInit() {
        Rectangle shellBounds = Geometry.copy((Rectangle)((Rectangle)this.startRects.get(0)));
        Iterator startIter = this.startRects.iterator();
        Iterator endIter = this.endRects.iterator();
        while (startIter.hasNext()) {
            shellBounds.add((Rectangle)startIter.next());
            shellBounds.add((Rectangle)endIter.next());
        }
        this.theShell.setBounds(shellBounds);
        this.theShell.setVisible(true);
    }
}

