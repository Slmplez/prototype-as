/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.AbstractResourceManager;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;

public final class DeviceResourceManager
extends AbstractResourceManager {
    private Device device;
    private Image missingImage;

    public Device getDevice() {
        return this.device;
    }

    public DeviceResourceManager(Device device) {
        this.device = device;
    }

    protected Object allocate(DeviceResourceDescriptor descriptor) throws DeviceResourceException {
        return descriptor.createResource(this.device);
    }

    protected void deallocate(Object resource, DeviceResourceDescriptor descriptor) {
        descriptor.destroyResource(resource);
    }

    protected Image getDefaultImage() {
        if (this.missingImage == null) {
            this.missingImage = ImageDescriptor.getMissingImageDescriptor().createImage();
        }
        return this.missingImage;
    }

    public void dispose() {
        super.dispose();
        if (this.missingImage != null) {
            this.missingImage.dispose();
            this.missingImage = null;
        }
    }
}

