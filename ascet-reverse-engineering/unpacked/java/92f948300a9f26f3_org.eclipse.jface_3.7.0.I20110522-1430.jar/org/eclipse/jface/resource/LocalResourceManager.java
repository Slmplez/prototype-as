/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.AbstractResourceManager;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Control;

public final class LocalResourceManager
extends AbstractResourceManager {
    private ResourceManager parentRegistry;

    public LocalResourceManager(ResourceManager parentRegistry) {
        this.parentRegistry = parentRegistry;
    }

    public LocalResourceManager(ResourceManager parentRegistry, Control owner) {
        this(parentRegistry);
        owner.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                LocalResourceManager.this.dispose();
            }
        });
    }

    public Device getDevice() {
        return this.parentRegistry.getDevice();
    }

    protected Object allocate(DeviceResourceDescriptor descriptor) throws DeviceResourceException {
        return this.parentRegistry.create(descriptor);
    }

    protected void deallocate(Object resource, DeviceResourceDescriptor descriptor) {
        this.parentRegistry.destroy(descriptor);
    }

    protected Image getDefaultImage() {
        return this.parentRegistry.getDefaultImage();
    }
}

