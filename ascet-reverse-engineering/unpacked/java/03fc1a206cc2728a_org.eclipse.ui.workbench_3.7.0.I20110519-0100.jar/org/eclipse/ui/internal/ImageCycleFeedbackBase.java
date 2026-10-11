/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.AnimationFeedbackBase;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.statushandlers.StatusManager;

public abstract class ImageCycleFeedbackBase
extends AnimationFeedbackBase {
    protected Image[] images;
    protected Image stoppedImage;
    private Image offScreenImage;
    private GC offScreenImageGC;
    private int imageDataIndex;
    private Image image;
    private ImageData imageData;
    protected Display display;
    protected Color background;

    public ImageCycleFeedbackBase(Shell parentShell) {
        super(parentShell);
    }

    public ImageCycleFeedbackBase(Shell parentShell, Image[] images) {
        super(parentShell);
        this.images = images;
    }

    public abstract void showImage(Image var1);

    public abstract void saveStoppedImage();

    public abstract void setStoppedImage(Image var1);

    public void dispose() {
        if (this.stoppedImage == null || this.stoppedImage.isDisposed()) {
            return;
        }
        this.setStoppedImage(this.stoppedImage);
        if (this.offScreenImageGC != null && !this.offScreenImageGC.isDisposed()) {
            this.offScreenImageGC.dispose();
        }
        if (this.offScreenImage != null && !this.offScreenImage.isDisposed()) {
            this.offScreenImage.dispose();
        }
    }

    public boolean jobInit(AnimationEngine engine) {
        return super.jobInit(engine);
    }

    public void renderStep(AnimationEngine engine) {
        if (this.offScreenImage == null) {
            this.offScreenImage = this.getOffscreenImage();
        }
        try {
            this.imageDataIndex = (this.imageDataIndex + 1) % this.images.length;
            this.image = this.images[this.imageDataIndex];
            this.imageData = this.image.getImageData();
            this.offScreenImageGC.drawImage(this.image, 0, 0, this.imageData.width, this.imageData.height, this.imageData.x, this.imageData.y, this.imageData.width, this.imageData.height);
            final Image finalImage = this.image;
            this.display.syncExec(new Runnable(){

                public void run() {
                    ImageCycleFeedbackBase.this.showImage(finalImage);
                }
            });
            if (this.images == null) {
                return;
            }
        }
        catch (SWTException ex) {
            IStatus status = StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, ex);
            StatusManager.getManager().handle(status);
        }
    }

    private Image getOffscreenImage() {
        this.saveStoppedImage();
        this.imageDataIndex = 0;
        this.image = this.images[this.imageDataIndex];
        this.imageData = this.image.getImageData();
        this.offScreenImage = new Image((Device)this.display, this.imageData.width, this.imageData.height);
        this.offScreenImageGC = new GC((Drawable)this.offScreenImage);
        this.offScreenImageGC.setBackground(this.background);
        this.offScreenImageGC.fillRectangle(0, 0, this.imageData.width, this.imageData.height);
        this.offScreenImageGC.drawImage(this.image, 0, 0, this.imageData.width, this.imageData.height, this.imageData.x, this.imageData.y, this.imageData.width, this.imageData.height);
        return this.offScreenImage;
    }
}

