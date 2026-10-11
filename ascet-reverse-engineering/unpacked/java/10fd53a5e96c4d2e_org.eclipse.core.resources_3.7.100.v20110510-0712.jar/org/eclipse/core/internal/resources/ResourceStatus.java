/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.resources.IResourceStatus;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Status;

public class ResourceStatus
extends Status
implements IResourceStatus {
    IPath path;

    public ResourceStatus(int type, int code, IPath path, String message, Throwable exception) {
        super(type, "org.eclipse.core.resources", code, message, exception);
        this.path = path;
    }

    public ResourceStatus(int code, String message) {
        this(ResourceStatus.getSeverity(code), code, null, message, null);
    }

    public ResourceStatus(int code, IPath path, String message) {
        this(ResourceStatus.getSeverity(code), code, path, message, null);
    }

    public ResourceStatus(int code, IPath path, String message, Throwable exception) {
        this(ResourceStatus.getSeverity(code), code, path, message, exception);
    }

    public IPath getPath() {
        return this.path;
    }

    protected static int getSeverity(int code) {
        return code == 0 ? 0 : 1 << code % 100 / 33;
    }

    private String getTypeName() {
        switch (this.getSeverity()) {
            case 0: {
                return "OK";
            }
            case 4: {
                return "ERROR";
            }
            case 1: {
                return "INFO";
            }
            case 2: {
                return "WARNING";
            }
        }
        return String.valueOf(this.getSeverity());
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("[type: ");
        sb.append(this.getTypeName());
        sb.append("], [path: ");
        sb.append(this.getPath());
        sb.append("], [message: ");
        sb.append(this.getMessage());
        sb.append("], [plugin: ");
        sb.append(this.getPlugin());
        sb.append("], [exception: ");
        sb.append(this.getException());
        sb.append("]\n");
        return sb.toString();
    }
}

