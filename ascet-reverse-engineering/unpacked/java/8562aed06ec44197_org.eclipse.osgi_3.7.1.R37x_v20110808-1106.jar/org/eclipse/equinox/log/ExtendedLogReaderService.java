/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import org.eclipse.equinox.log.LogFilter;
import org.osgi.service.log.LogListener;
import org.osgi.service.log.LogReaderService;

public interface ExtendedLogReaderService
extends LogReaderService {
    public void addLogListener(LogListener var1, LogFilter var2);
}

