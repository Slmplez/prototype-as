/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.internal.SWTEventObject;

public class ImageLoaderEvent
extends SWTEventObject {
    public ImageData imageData;
    public int incrementCount;
    public boolean endOfImage;
    static final long serialVersionUID = 3257284738325558065L;

    public ImageLoaderEvent(ImageLoader source, ImageData imageData, int incrementCount, boolean endOfImage) {
        super(source);
        this.imageData = imageData;
        this.incrementCount = incrementCount;
        this.endOfImage = endOfImage;
    }

    public String toString() {
        return "ImageLoaderEvent {source=" + this.source + " imageData=" + this.imageData + " incrementCount=" + this.incrementCount + " endOfImage=" + this.endOfImage + "}";
    }
}

