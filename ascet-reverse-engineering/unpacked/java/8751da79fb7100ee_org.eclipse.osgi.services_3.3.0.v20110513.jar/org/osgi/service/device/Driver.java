/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.device;

import org.osgi.framework.ServiceReference;

public interface Driver {
    public int match(ServiceReference var1) throws Exception;

    public String attach(ServiceReference var1) throws Exception;
}

