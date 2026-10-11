/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.util.HashMap;
import org.eclipse.equinox.log.ExtendedLogService;
import org.eclipse.equinox.log.Logger;
import org.eclipse.equinox.log.internal.ExtendedLogServiceFactory;
import org.eclipse.equinox.log.internal.LoggerImpl;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceReference;
import org.osgi.service.log.LogService;

public class ExtendedLogServiceImpl
implements ExtendedLogService,
LogService {
    private final ExtendedLogServiceFactory factory;
    private volatile Bundle bundle;
    private final HashMap<String, Logger> loggerCache = new HashMap();

    public ExtendedLogServiceImpl(ExtendedLogServiceFactory factory, Bundle bundle) {
        this.factory = factory;
        this.bundle = bundle;
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
        this.getLogger(null).log(sr, level, message, exception);
    }

    public void log(Object context, int level, String message) {
        this.log(context, level, message, null);
    }

    public void log(Object context, int level, String message, Throwable exception) {
        this.getLogger(null).log(context, level, message, exception);
    }

    public synchronized Logger getLogger(String name) {
        Logger logger = this.loggerCache.get(name);
        if (logger == null) {
            logger = new LoggerImpl(this, name);
            this.loggerCache.put(name, logger);
        }
        return logger;
    }

    public Logger getLogger(Bundle logBundle, String name) {
        if (logBundle == null || logBundle == this.bundle) {
            return this.getLogger(name);
        }
        this.factory.checkLogPermission();
        ExtendedLogServiceImpl bundleLogService = this.factory.getLogService(logBundle);
        return bundleLogService.getLogger(name);
    }

    public String getName() {
        return this.getLogger(null).getName();
    }

    public boolean isLoggable(int level) {
        return this.getLogger(null).isLoggable(level);
    }

    boolean isLoggable(String name, int level) {
        return this.factory.isLoggable(this.bundle, name, level);
    }

    void log(String name, Object context, int level, String message, Throwable exception) {
        this.factory.log(this.bundle, name, context, level, message, exception);
    }

    void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }
}

