/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.RGBColorDescriptor;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;

public abstract class ColorDescriptor
extends DeviceResourceDescriptor {
    public static ColorDescriptor createFrom(Color toCreate, Device originalDevice) {
        return new RGBColorDescriptor(toCreate);
    }

    public static ColorDescriptor createFrom(Color toCreate) {
        return new RGBColorDescriptor(toCreate);
    }

    public static ColorDescriptor createFrom(RGB toCreate) {
        return new RGBColorDescriptor(toCreate);
    }

    public abstract Color createColor(Device var1) throws DeviceResourceException;

    public abstract void destroyColor(Color var1);

    public final Object createResource(Device device) throws DeviceResourceException {
        return this.createColor(device);
    }

    public final void destroyResource(Object previouslyCreatedObject) {
        this.destroyColor((Color)previouslyCreatedObject);
    }
}

