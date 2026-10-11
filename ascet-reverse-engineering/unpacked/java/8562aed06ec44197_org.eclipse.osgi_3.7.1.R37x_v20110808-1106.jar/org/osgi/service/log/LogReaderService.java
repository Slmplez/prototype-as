/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.log;

import java.util.Enumeration;
import org.osgi.service.log.LogListener;

public interface LogReaderService {
    public void addLogListener(LogListener var1);

    public void removeLogListener(LogListener var1);

    public Enumeration getLog();
}

