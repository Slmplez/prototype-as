/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.DeviceResourceDescriptor;

public class DeviceResourceException
extends RuntimeException {
    private Throwable cause;
    private static final long serialVersionUID = 11454598756198L;

    public DeviceResourceException(DeviceResourceDescriptor missingResource, Throwable cause) {
        super("Unable to create resource " + missingResource.toString());
        this.cause = cause;
    }

    public DeviceResourceException(DeviceResourceDescriptor missingResource) {
        this(missingResource, null);
    }

    public Throwable getCause() {
        return this.cause;
    }
}

