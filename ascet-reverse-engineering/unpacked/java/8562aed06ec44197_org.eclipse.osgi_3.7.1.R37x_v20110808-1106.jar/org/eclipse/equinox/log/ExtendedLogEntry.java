/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import org.osgi.service.log.LogEntry;

public interface ExtendedLogEntry
extends LogEntry {
    public String getLoggerName();

    public Object getContext();

    public long getThreadId();

    public String getThreadName();

    public long getSequenceNumber();
}

