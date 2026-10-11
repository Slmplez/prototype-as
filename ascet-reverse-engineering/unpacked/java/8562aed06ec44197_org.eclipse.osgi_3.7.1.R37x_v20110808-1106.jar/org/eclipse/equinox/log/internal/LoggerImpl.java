/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import org.eclipse.equinox.log.Logger;
import org.eclipse.equinox.log.internal.ExtendedLogServiceImpl;
import org.osgi.framework.ServiceReference;

public class LoggerImpl
implements Logger {
    private final ExtendedLogServiceImpl logServiceImpl;
    private final String name;

    public LoggerImpl(ExtendedLogServiceImpl logServiceImpl, String name) {
        this.logServiceImpl = logServiceImpl;
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public boolean isLoggable(int level) {
        return this.logServiceImpl.isLoggable(this.name, level);
    }

    public void log(int level, String message) {
        this.log((ServiceReference)null, level, message, (Throwable)null);
    }

    public void log(int level, String message, Throwable exception) {
        this.log((ServiceReference)null, level, message, exception);
    }

    public void log(ServiceReference sr, int level, String message) {
        this.log(sr, level, message, (Throwable)null);
    }

    public void log(ServiceReference sr, int level, String message, Throwable exception) {
        this.logServiceImpl.log(this.name, sr, level, message, exception);
    }

    public void log(Object context, int level, String message) {
        this.log(context, level, message, null);
    }

    public void log(Object context, int level, String message, Throwable exception) {
        this.logServiceImpl.log(this.name, context, level, message, exception);
    }
}

