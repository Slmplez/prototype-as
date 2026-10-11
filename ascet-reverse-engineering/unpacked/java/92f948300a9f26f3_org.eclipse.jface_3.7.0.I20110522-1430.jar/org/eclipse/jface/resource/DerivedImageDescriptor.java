/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.widgets.Display;

final class DerivedImageDescriptor
extends ImageDescriptor {
    private ImageDescriptor original;
    private int flags;

    public DerivedImageDescriptor(ImageDescriptor original, int swtFlags) {
        this.original = original;
        this.flags = swtFlags;
    }

    public Object createResource(Device device) throws DeviceResourceException {
        try {
            return this.internalCreateImage(device);
        }
        catch (SWTException e) {
            throw new DeviceResourceException(this, (Throwable)e);
        }
    }

    public Image createImage(Device device) {
        return this.internalCreateImage(device);
    }

    public int hashCode() {
        return this.original.hashCode() + this.flags;
    }

    public boolean equals(Object arg0) {
        if (arg0 instanceof DerivedImageDescriptor) {
            DerivedImageDescriptor desc = (DerivedImageDescriptor)arg0;
            return desc.original == this.original && this.flags == desc.flags;
        }
        return false;
    }

    private final Image internalCreateImage(Device device) {
        Image originalImage = this.original.createImage(device);
        Image result = new Image(device, originalImage, this.flags);
        this.original.destroyResource(originalImage);
        return result;
    }

    public ImageData getImageData() {
        Image image = this.internalCreateImage((Device)Display.getCurrent());
        ImageData result = image.getImageData();
        image.dispose();
        return result;
    }
}

