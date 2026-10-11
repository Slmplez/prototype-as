/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.RectangleAnimationFeedbackBase;

public class RectangleAnimationImageFeedback
extends RectangleAnimationFeedbackBase {
    private Image backingStore;
    private Shell theShell;
    private Display display;
    private List controls = new ArrayList();

    public RectangleAnimationImageFeedback(Shell parentShell, Rectangle start, Rectangle end) {
        super(parentShell, start, end);
    }

    public void dispose() {
        this.backingStore.dispose();
        Iterator ctrlIter = this.controls.iterator();
        while (ctrlIter.hasNext()) {
            ImageCanvas canvas = (ImageCanvas)((Object)ctrlIter.next());
            canvas.dispose();
        }
        this.theShell.setVisible(false);
        this.theShell.dispose();
    }

    public void initialize(AnimationEngine engine) {
        this.display = this.getAnimationShell().getDisplay();
        Rectangle psRect = this.getAnimationShell().getBounds();
        this.theShell = new Shell(this.getAnimationShell(), 16392);
        this.theShell.setBounds(this.getAnimationShell().getBounds());
        this.backingStore = new Image((Device)this.theShell.getDisplay(), psRect);
        GC gc = new GC((Drawable)this.display);
        gc.copyArea(this.backingStore, psRect.x, psRect.y);
        gc.dispose();
        this.theShell.setBackgroundImage(this.backingStore);
        this.theShell.setVisible(true);
        this.display.update();
    }

    public boolean jobInit(AnimationEngine engine) {
        this.changeCoordinates();
        this.captureImages();
        return super.jobInit(engine);
    }

    public void addStartRect(Rectangle rect) {
        if (rect == null) {
            return;
        }
        super.addStartRect(rect);
    }

    public void addEndRect(Rectangle rect) {
        if (rect != null) {
            super.addEndRect(rect);
        }
    }

    public void renderStep(AnimationEngine engine) {
        Iterator ctrlIter = this.controls.iterator();
        Iterator currentRects = this.getCurrentRects(engine.amount()).iterator();
        while (currentRects.hasNext()) {
            ImageCanvas canvas = (ImageCanvas)((Object)ctrlIter.next());
            canvas.setBounds((Rectangle)currentRects.next());
        }
        this.display.update();
    }

    public void changeCoordinates() {
        Iterator startRectIter = this.getStartRects().iterator();
        Iterator endRectIter = this.getEndRects().iterator();
        while (startRectIter.hasNext()) {
            Rectangle startRect = (Rectangle)startRectIter.next();
            Rectangle mapStartRect = Geometry.toControl((Control)this.theShell, (Rectangle)startRect);
            startRect.x = mapStartRect.x;
            startRect.y = mapStartRect.y;
            Rectangle endRect = (Rectangle)endRectIter.next();
            Rectangle mapEndRect = Geometry.toControl((Control)this.theShell, (Rectangle)endRect);
            endRect.x = mapEndRect.x;
            endRect.y = mapEndRect.y;
        }
    }

    private void captureImages() {
        Iterator iterator = this.getStartRects().iterator();
        while (iterator.hasNext()) {
            Rectangle rect = (Rectangle)iterator.next();
            Image image = new Image((Device)this.display, rect.width, rect.height);
            GC gc = new GC((Drawable)this.backingStore);
            gc.copyArea(image, rect.x, rect.y);
            gc.dispose();
            ImageCanvas canvas = new ImageCanvas((Composite)this.theShell, 264192, image);
            this.controls.add(canvas);
        }
    }

    private class ImageCanvas
    extends Canvas {
        private Image image;

        public ImageCanvas(Composite parent, int style, Image image) {
            super(parent, style);
            this.image = image;
            this.addPaintListener(new PaintListener(this){
                final /* synthetic */ ImageCanvas this$1;
                {
                    this.this$1 = imageCanvas;
                }

                public void paintControl(PaintEvent e) {
                    this.this$1.paintImage(e.gc);
                }
            });
        }

        protected void paintImage(GC gc) {
            gc.drawImage(this.image, 0, 0, this.image.getBounds().width, this.image.getBounds().height, 0, 0, this.getBounds().width, this.getBounds().height);
        }

        public void dispose() {
            super.dispose();
            this.image.dispose();
        }
    }
}

