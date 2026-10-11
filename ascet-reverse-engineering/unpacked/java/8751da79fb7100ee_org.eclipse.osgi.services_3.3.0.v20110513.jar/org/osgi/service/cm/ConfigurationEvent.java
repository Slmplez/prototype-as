/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.cm;

import org.osgi.framework.ServiceReference;

public class ConfigurationEvent {
    public static final int CM_UPDATED = 1;
    public static final int CM_DELETED = 2;
    private final int type;
    private final String factoryPid;
    private final String pid;
    private final ServiceReference reference;

    public ConfigurationEvent(ServiceReference reference, int type, String factoryPid, String pid) {
        this.reference = reference;
        this.type = type;
        this.factoryPid = factoryPid;
        this.pid = pid;
        if (reference == null || pid == null) {
            throw new NullPointerException("reference and pid must not be null");
        }
    }

    public String getFactoryPid() {
        return this.factoryPid;
    }

    public String getPid() {
        return this.pid;
    }

    public int getType() {
        return this.type;
    }

    public ServiceReference getReference() {
        return this.reference;
    }
}

