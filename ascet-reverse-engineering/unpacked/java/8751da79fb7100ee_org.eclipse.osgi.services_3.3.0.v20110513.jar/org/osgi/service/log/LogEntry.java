/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.log;

import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceReference;

public interface LogEntry {
    public Bundle getBundle();

    public ServiceReference getServiceReference();

    public int getLevel();

    public String getMessage();

    public Throwable getException();

    public long getTime();
}

