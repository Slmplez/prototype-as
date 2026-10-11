/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.log.ExtendedLogReaderService;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.internal.ExtendedLogReaderServiceFactory;
import org.osgi.service.log.LogListener;

public class ExtendedLogReaderServiceImpl
implements ExtendedLogReaderService {
    private final ExtendedLogReaderServiceFactory factory;
    private Set<LogListener> listeners = new HashSet<LogListener>();

    ExtendedLogReaderServiceImpl(ExtendedLogReaderServiceFactory factory) {
        this.factory = factory;
    }

    public synchronized void addLogListener(LogListener listener, LogFilter filter) {
        this.checkShutdown();
        if (listener == null) {
            throw new IllegalArgumentException("LogListener must not be null");
        }
        if (filter == null) {
            throw new IllegalArgumentException("LogFilter must not be null");
        }
        this.listeners.add(listener);
        this.factory.addLogListener(listener, filter);
    }

    public void addLogListener(LogListener listener) {
        this.addLogListener(listener, ExtendedLogReaderServiceFactory.NULL_LOGGER_FILTER);
    }

    public Enumeration getLog() {
        this.checkShutdown();
        return this.factory.getLog();
    }

    public synchronized void removeLogListener(LogListener listener) {
        this.checkShutdown();
        if (listener == null) {
            throw new IllegalArgumentException("LogListener must not be null");
        }
        this.factory.removeLogListener(listener);
        this.listeners.remove(listener);
    }

    private synchronized void checkShutdown() {
        if (this.listeners == null) {
            throw new IllegalStateException("LogReaderService is shutdown.");
        }
    }

    synchronized void shutdown() {
        Iterator<LogListener> iterator = this.listeners.iterator();
        while (iterator.hasNext()) {
            LogListener listener = iterator.next();
            this.factory.removeLogListener(listener);
        }
        this.listeners = null;
    }
}

