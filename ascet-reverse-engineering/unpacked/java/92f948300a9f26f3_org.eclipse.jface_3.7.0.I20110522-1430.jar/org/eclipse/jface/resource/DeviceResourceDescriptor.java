/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 */
package org.eclipse.jface.resource;

import org.eclipse.swt.graphics.Device;

public abstract class DeviceResourceDescriptor {
    public abstract Object createResource(Device var1);

    public abstract void destroyResource(Object var1);
}

