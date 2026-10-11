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
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.Iterator;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.RectangleAnimationFeedbackBase;

public class LegacyAnimationFeedback
extends RectangleAnimationFeedbackBase {
    private static final int LINE_WIDTH = 1;
    private Region shellRegion;

    public LegacyAnimationFeedback(Shell parentShell, Rectangle start, Rectangle end) {
        super(parentShell, start, end);
    }

    public void renderStep(AnimationEngine engine) {
        if (this.shellRegion != null) {
            this.shellRegion.dispose();
            this.shellRegion = new Region((Device)this.getAnimationShell().getDisplay());
        }
        Iterator currentRects = this.getCurrentRects(engine.amount()).iterator();
        while (currentRects.hasNext()) {
            Rectangle curRect = (Rectangle)currentRects.next();
            Rectangle rect = Geometry.toControl((Control)this.getAnimationShell(), (Rectangle)curRect);
            this.shellRegion.add(rect);
            ++rect.x;
            ++rect.y;
            rect.width = Math.max(0, rect.width - 2);
            rect.height = Math.max(0, rect.height - 2);
            this.shellRegion.subtract(rect);
        }
        this.getAnimationShell().setRegion(this.shellRegion);
        this.getAnimationShell().getDisplay().update();
    }

    public void initialize(AnimationEngine engine) {
        Color color = this.getAnimationShell().getDisplay().getSystemColor(17);
        this.getAnimationShell().setBackground(color);
        this.shellRegion = new Region((Device)this.getAnimationShell().getDisplay());
        this.getAnimationShell().setRegion(this.shellRegion);
    }

    public void dispose() {
        super.dispose();
        if (!this.shellRegion.isDisposed()) {
            this.shellRegion.dispose();
        }
    }

    public boolean jobInit(AnimationEngine engine) {
        if (!super.jobInit(engine)) {
            return false;
        }
        Rectangle shellBounds = Geometry.copy((Rectangle)((Rectangle)this.getStartRects().get(0)));
        Iterator startIter = this.getStartRects().iterator();
        Iterator endIter = this.getEndRects().iterator();
        while (startIter.hasNext()) {
            shellBounds.add((Rectangle)startIter.next());
            shellBounds.add((Rectangle)endIter.next());
        }
        this.getAnimationShell().setBounds(shellBounds);
        this.getAnimationShell().setVisible(true);
        return true;
    }
}

