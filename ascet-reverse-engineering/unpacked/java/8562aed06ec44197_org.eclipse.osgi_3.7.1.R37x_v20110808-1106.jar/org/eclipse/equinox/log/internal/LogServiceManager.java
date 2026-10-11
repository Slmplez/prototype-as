/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.security.cert.X509Certificate;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.log.ExtendedLogService;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.internal.EventAdminAdapter;
import org.eclipse.equinox.log.internal.ExtendedLogReaderServiceFactory;
import org.eclipse.equinox.log.internal.ExtendedLogServiceFactory;
import org.eclipse.equinox.log.internal.ExtendedLogServiceImpl;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceListener;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.Version;
import org.osgi.service.log.LogListener;

public class LogServiceManager
implements BundleListener,
FrameworkListener,
ServiceListener {
    private static final String[] LOGSERVICE_CLASSES;
    private static final String[] LOGREADERSERVICE_CLASSES;
    private ServiceRegistration<?> logReaderServiceRegistration;
    private ServiceRegistration<?> logServiceRegistration;
    private final ExtendedLogReaderServiceFactory logReaderServiceFactory = new ExtendedLogReaderServiceFactory();
    private final ExtendedLogServiceFactory logServiceFactory = new ExtendedLogServiceFactory(this.logReaderServiceFactory);
    private final ExtendedLogServiceImpl systemBundleLog = this.logServiceFactory.getLogService(new MockSystemBundle());
    private EventAdminAdapter eventAdminAdapter;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        String[] stringArray = new String[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.log.LogService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray[0] = clazz.getName();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.equinox.log.ExtendedLogService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray[1] = clazz2.getName();
        LOGSERVICE_CLASSES = stringArray;
        String[] stringArray2 = new String[2];
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.osgi.service.log.LogReaderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray2[0] = clazz3.getName();
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.equinox.log.ExtendedLogReaderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray2[1] = clazz4.getName();
        LOGREADERSERVICE_CLASSES = stringArray2;
    }

    public LogServiceManager(LogListener[] systemListeners) {
        LogListener[] logListenerArray = systemListeners;
        int n = systemListeners.length;
        int n2 = 0;
        while (n2 < n) {
            LogListener logListener = logListenerArray[n2];
            if (logListener instanceof LogFilter) {
                this.logReaderServiceFactory.addLogListener(logListener, (LogFilter)((Object)logListener));
            } else {
                this.logReaderServiceFactory.addLogListener(logListener, ExtendedLogReaderServiceFactory.NULL_LOGGER_FILTER);
            }
            ++n2;
        }
    }

    public void start(BundleContext context) {
        this.systemBundleLog.setBundle(context.getBundle());
        context.addBundleListener(this);
        context.addServiceListener(this);
        context.addFrameworkListener(this);
        context.addBundleListener(this.logServiceFactory);
        this.logReaderServiceRegistration = context.registerService(LOGREADERSERVICE_CLASSES, (Object)this.logReaderServiceFactory, null);
        this.logServiceRegistration = context.registerService(LOGSERVICE_CLASSES, (Object)this.logServiceFactory, null);
        this.eventAdminAdapter = new EventAdminAdapter(context, this.logReaderServiceFactory);
        this.eventAdminAdapter.start();
    }

    public void stop(BundleContext context) {
        this.eventAdminAdapter.stop();
        this.eventAdminAdapter = null;
        this.logServiceRegistration.unregister();
        this.logServiceRegistration = null;
        this.logReaderServiceRegistration.unregister();
        this.logReaderServiceRegistration = null;
        this.logServiceFactory.shutdown();
        context.removeFrameworkListener(this);
        context.removeServiceListener(this);
        context.removeBundleListener(this);
    }

    public ExtendedLogService getSystemBundleLog() {
        return this.systemBundleLog;
    }

    public void bundleChanged(BundleEvent event) {
        Bundle bundle = event.getBundle();
        if (this.logReaderServiceFactory.isLoggable(bundle, null, 3)) {
            this.logReaderServiceFactory.log(bundle, null, null, 3, LogServiceManager.getBundleEventTypeName(event.getType()), null);
        }
    }

    public void serviceChanged(ServiceEvent event) {
        int logType;
        ServiceReference<?> reference = event.getServiceReference();
        Bundle bundle = reference.getBundle();
        int eventType = event.getType();
        int n = logType = eventType == 2 ? 4 : 3;
        if (this.logReaderServiceFactory.isLoggable(bundle, null, logType)) {
            this.logReaderServiceFactory.log(bundle, null, reference, logType, LogServiceManager.getServiceEventTypeName(eventType), null);
        }
    }

    public void frameworkEvent(FrameworkEvent event) {
        Throwable throwable;
        Bundle bundle = event.getBundle();
        int eventType = event.getType();
        int logType = eventType == 2 ? 1 : 3;
        Throwable throwable2 = throwable = eventType == 2 ? event.getThrowable() : null;
        if (this.logReaderServiceFactory.isLoggable(bundle, null, logType)) {
            this.logReaderServiceFactory.log(bundle, null, null, logType, LogServiceManager.getFrameworkEventTypeName(eventType), throwable);
        }
    }

    private static String getBundleEventTypeName(int type) {
        switch (type) {
            case 1: {
                return "BundleEvent INSTALLED";
            }
            case 32: {
                return "BundleEvent RESOLVED";
            }
            case 2: {
                return "BundleEvent STARTED";
            }
            case 128: {
                return "BundleEvent STARTING";
            }
            case 4: {
                return "BundleEvent STOPPED";
            }
            case 256: {
                return "BundleEvent STOPPING";
            }
            case 16: {
                return "BundleEvent UNINSTALLED";
            }
            case 64: {
                return "BundleEvent UNRESOLVED";
            }
            case 8: {
                return "BundleEvent UPDATED";
            }
        }
        return "BundleEvent " + Integer.toHexString(type);
    }

    private static String getServiceEventTypeName(int type) {
        switch (type) {
            case 1: {
                return "ServiceEvent REGISTERED";
            }
            case 2: {
                return "ServiceEvent MODIFIED";
            }
            case 4: {
                return "ServiceEvent UNREGISTERING";
            }
        }
        return "ServiceEvent " + Integer.toHexString(type);
    }

    private static String getFrameworkEventTypeName(int type) {
        switch (type) {
            case 2: {
                return "FrameworkEvent ERROR";
            }
            case 32: {
                return "FrameworkEvent INFO";
            }
            case 4: {
                return "FrameworkEvent PACKAGES REFRESHED";
            }
            case 1: {
                return "FrameworkEvent STARTED";
            }
            case 8: {
                return "FrameworkEvent STARTLEVEL CHANGED";
            }
            case 16: {
                return "FrameworkEvent WARNING";
            }
        }
        return "FrameworkEvent " + Integer.toHexString(type);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class MockSystemBundle
    implements Bundle {
        MockSystemBundle() {
        }

        @Override
        public int compareTo(Bundle o) {
            long idcomp = this.getBundleId() - o.getBundleId();
            return idcomp < 0L ? -1 : (idcomp > 0L ? 1 : 0);
        }

        @Override
        public int getState() {
            return 4;
        }

        @Override
        public void start(int options) {
        }

        @Override
        public void start() {
        }

        @Override
        public void stop(int options) {
        }

        @Override
        public void stop() {
        }

        @Override
        public void update(InputStream input) {
        }

        @Override
        public void update() {
        }

        @Override
        public void uninstall() {
        }

        @Override
        public Dictionary<String, String> getHeaders() {
            return new Hashtable<String, String>();
        }

        @Override
        public long getBundleId() {
            return 0L;
        }

        @Override
        public String getLocation() {
            return "System Bundle";
        }

        @Override
        public ServiceReference<?>[] getRegisteredServices() {
            return null;
        }

        @Override
        public ServiceReference<?>[] getServicesInUse() {
            return null;
        }

        @Override
        public boolean hasPermission(Object permission) {
            return true;
        }

        @Override
        public URL getResource(String name) {
            return null;
        }

        @Override
        public Dictionary<String, String> getHeaders(String locale) {
            return null;
        }

        @Override
        public String getSymbolicName() {
            return "org.eclipse.osgi";
        }

        @Override
        public Class<?> loadClass(String name) throws ClassNotFoundException {
            throw new ClassNotFoundException();
        }

        @Override
        public Enumeration<URL> getResources(String name) {
            return null;
        }

        @Override
        public Enumeration<String> getEntryPaths(String path) {
            return null;
        }

        @Override
        public URL getEntry(String path) {
            return null;
        }

        @Override
        public long getLastModified() {
            return System.currentTimeMillis();
        }

        @Override
        public Enumeration<URL> findEntries(String path, String filePattern, boolean recurse) {
            return null;
        }

        @Override
        public BundleContext getBundleContext() {
            return null;
        }

        @Override
        public Map<X509Certificate, List<X509Certificate>> getSignerCertificates(int signersType) {
            return new HashMap<X509Certificate, List<X509Certificate>>();
        }

        @Override
        public Version getVersion() {
            return new Version(0, 0, 0);
        }

        @Override
        public <A> A adapt(Class<A> type) {
            return null;
        }

        @Override
        public File getDataFile(String filename) {
            return null;
        }
    }
}

