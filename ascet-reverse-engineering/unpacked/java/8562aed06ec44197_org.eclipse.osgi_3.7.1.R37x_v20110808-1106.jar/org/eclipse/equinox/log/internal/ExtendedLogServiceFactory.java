/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.security.Permission;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.log.ExtendedLogService;
import org.eclipse.equinox.log.LogPermission;
import org.eclipse.equinox.log.internal.ExtendedLogReaderServiceFactory;
import org.eclipse.equinox.log.internal.ExtendedLogServiceImpl;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedLogServiceFactory
implements ServiceFactory<ExtendedLogService>,
BundleListener {
    private final Permission logPermission = new LogPermission("*", "log");
    private final ExtendedLogReaderServiceFactory logReaderServiceFactory;
    private final Map<Bundle, ExtendedLogService> logServices = new HashMap<Bundle, ExtendedLogService>();

    public ExtendedLogServiceFactory(ExtendedLogReaderServiceFactory logReaderServiceFactory) {
        this.logReaderServiceFactory = logReaderServiceFactory;
    }

    @Override
    public ExtendedLogServiceImpl getService(Bundle bundle, ServiceRegistration<ExtendedLogService> registration) {
        return this.getLogService(bundle);
    }

    @Override
    public void ungetService(Bundle bundle, ServiceRegistration<ExtendedLogService> registration, ExtendedLogService service) {
    }

    @Override
    public void bundleChanged(BundleEvent event) {
        if (event.getType() == 16) {
            this.removeLogService(event.getBundle());
        }
    }

    synchronized ExtendedLogServiceImpl getLogService(Bundle bundle) {
        ExtendedLogServiceImpl logService = (ExtendedLogServiceImpl)this.logServices.get(bundle);
        if (logService == null) {
            logService = new ExtendedLogServiceImpl(this, bundle);
            if (bundle != null && bundle.getState() != 1) {
                this.logServices.put(bundle, logService);
            }
        }
        return logService;
    }

    synchronized void shutdown() {
        this.logServices.clear();
    }

    synchronized void removeLogService(Bundle bundle) {
        this.logServices.remove(bundle);
    }

    boolean isLoggable(Bundle bundle, String name, int level) {
        return this.logReaderServiceFactory.isLoggable(bundle, name, level);
    }

    void log(Bundle bundle, String name, Object context, int level, String message, Throwable exception) {
        this.logReaderServiceFactory.log(bundle, name, context, level, message, exception);
    }

    void checkLogPermission() throws SecurityException {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(this.logPermission);
        }
    }
}

