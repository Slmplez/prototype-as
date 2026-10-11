/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import org.eclipse.core.runtime.internal.adaptor.EclipseLogWriter;
import org.eclipse.equinox.log.Logger;
import org.eclipse.equinox.log.internal.LogServiceManager;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseLogFactory
implements ServiceFactory<FrameworkLog> {
    final EclipseLogWriter defaultWriter;
    final LogServiceManager logManager;

    public EclipseLogFactory(EclipseLogWriter defaultWriter, LogServiceManager logManager) {
        this.defaultWriter = defaultWriter;
        this.logManager = logManager;
    }

    @Override
    public FrameworkLog getService(Bundle bundle, ServiceRegistration<FrameworkLog> registration) {
        return this.createFrameworkLog(bundle, this.defaultWriter);
    }

    FrameworkLog createFrameworkLog(Bundle bundle, EclipseLogWriter eclipseWriter) {
        final EclipseLogWriter logWriter = eclipseWriter == null ? this.defaultWriter : eclipseWriter;
        final Logger logger = bundle == null ? this.logManager.getSystemBundleLog().getLogger(eclipseWriter.getLoggerName()) : this.logManager.getSystemBundleLog().getLogger(bundle, logWriter.getLoggerName());
        return new FrameworkLog(){

            public void setWriter(Writer newWriter, boolean append) {
                logWriter.setWriter(newWriter, append);
            }

            public void setFile(File newFile, boolean append) throws IOException {
                logWriter.setFile(newFile, append);
            }

            public void setConsoleLog(boolean consoleLog) {
                logWriter.setConsoleLog(consoleLog);
            }

            public void log(FrameworkLogEntry logEntry) {
                logger.log(logEntry, EclipseLogFactory.convertLevel(logEntry), logEntry.getMessage(), logEntry.getThrowable());
            }

            public void log(FrameworkEvent frameworkEvent) {
                int severity;
                Bundle b = frameworkEvent.getBundle();
                Throwable t = frameworkEvent.getThrowable();
                String entry = b.getSymbolicName() == null ? b.getLocation() : b.getSymbolicName();
                switch (frameworkEvent.getType()) {
                    case 32: {
                        severity = 1;
                        break;
                    }
                    case 2: {
                        severity = 4;
                        break;
                    }
                    case 16: {
                        severity = 2;
                        break;
                    }
                    default: {
                        severity = 0;
                    }
                }
                FrameworkLogEntry logEntry = new FrameworkLogEntry(entry, severity, 0, "", 0, t, null);
                this.log(logEntry);
            }

            public File getFile() {
                return logWriter.getFile();
            }

            public void close() {
                logWriter.close();
            }
        };
    }

    @Override
    public void ungetService(Bundle bundle, ServiceRegistration<FrameworkLog> registration, FrameworkLog service) {
    }

    static int convertLevel(FrameworkLogEntry logEntry) {
        switch (logEntry.getSeverity()) {
            case 4: {
                return 1;
            }
            case 2: {
                return 2;
            }
            case 1: {
                return 3;
            }
            case 0: {
                return 4;
            }
        }
        return 32;
    }
}

