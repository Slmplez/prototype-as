/*
 * Decompiled with CFR 0.152.
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

