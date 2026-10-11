/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;

class ImageDataImageDescriptor
extends ImageDescriptor {
    private ImageData data;
    private Image originalImage = null;

    ImageDataImageDescriptor(Image originalImage) {
        this(originalImage.getImageData());
        this.originalImage = originalImage;
    }

    ImageDataImageDescriptor(ImageData data) {
        this.data = data;
    }

    public Object createResource(Device device) throws DeviceResourceException {
        if (this.originalImage != null && this.originalImage.getDevice() == device) {
            return this.originalImage;
        }
        return super.createResource(device);
    }

    public void destroyResource(Object previouslyCreatedObject) {
        if (previouslyCreatedObject == this.originalImage) {
            return;
        }
        super.destroyResource(previouslyCreatedObject);
    }

    public ImageData getImageData() {
        return this.data;
    }

    public int hashCode() {
        if (this.originalImage != null) {
            return System.identityHashCode(this.originalImage);
        }
        return this.data.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ImageDataImageDescriptor)) {
            return false;
        }
        ImageDataImageDescriptor imgWrap = (ImageDataImageDescriptor)obj;
        if (this.originalImage != null) {
            return imgWrap.originalImage == this.originalImage;
        }
        return imgWrap.originalImage == null && this.data.equals(imgWrap.data);
    }
}

