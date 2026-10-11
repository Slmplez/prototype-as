/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.AnimationFeedbackBase;

public abstract class RectangleAnimationFeedbackBase
extends AnimationFeedbackBase {
    private List startRects = new ArrayList();
    private List endRects = new ArrayList();

    public RectangleAnimationFeedbackBase(Shell parentShell, Rectangle start, Rectangle end) {
        super(parentShell);
        this.addStartRect(start);
        this.addEndRect(end);
    }

    public boolean jobInit(AnimationEngine engine) {
        if (!super.jobInit(engine)) {
            return false;
        }
        return this.startRects.size() > 0 && this.startRects.size() == this.endRects.size();
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

    public void addStartRect(Control ctrl) {
        Rectangle ctrlBounds = ctrl.getBounds();
        Rectangle startRect = Geometry.toDisplay((Control)ctrl.getParent(), (Rectangle)ctrlBounds);
        this.addStartRect(startRect);
    }

    public void addEndRect(Control ctrl) {
        Rectangle ctrlBounds = ctrl.getBounds();
        Rectangle endRect = Geometry.toDisplay((Control)ctrl.getParent(), (Rectangle)ctrlBounds);
        this.addEndRect(endRect);
    }

    public static Rectangle interpolate(Rectangle start, Rectangle end, double amount) {
        double initialWeight = 1.0 - amount;
        Rectangle result = new Rectangle((int)((double)start.x * initialWeight + (double)end.x * amount), (int)((double)start.y * initialWeight + (double)end.y * amount), (int)((double)start.width * initialWeight + (double)end.width * amount), (int)((double)start.height * initialWeight + (double)end.height * amount));
        return result;
    }

    public List getStartRects() {
        return this.startRects;
    }

    public List getEndRects() {
        return this.endRects;
    }

    public List getCurrentRects(double amount) {
        ArrayList<Rectangle> currentRects = new ArrayList<Rectangle>();
        Iterator startIter = this.getStartRects().iterator();
        Iterator endIter = this.getEndRects().iterator();
        while (startIter.hasNext()) {
            Rectangle start = (Rectangle)startIter.next();
            Rectangle end = (Rectangle)endIter.next();
            Rectangle curRect = RectangleAnimationFeedbackBase.interpolate(start, end, amount);
            currentRects.add(curRect);
        }
        return currentRects;
    }
}

