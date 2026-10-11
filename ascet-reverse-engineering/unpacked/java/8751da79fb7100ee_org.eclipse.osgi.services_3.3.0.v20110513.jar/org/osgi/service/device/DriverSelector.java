/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.device;

import org.osgi.framework.ServiceReference;
import org.osgi.service.device.Match;

public interface DriverSelector {
    public static final int SELECT_NONE = -1;

    public int select(ServiceReference var1, Match[] var2);
}

