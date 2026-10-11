/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.device;

import org.osgi.framework.ServiceReference;

public interface Match {
    public ServiceReference getDriver();

    public int getMatchValue();
}

