/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.File;
import java.io.IOException;
import java.net.URLConnection;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Properties;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.core.runtime.internal.adaptor.EclipseLogFactory;
import org.eclipse.core.runtime.internal.adaptor.EclipseLogWriter;
import org.eclipse.equinox.log.internal.LogServiceManager;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.log.LogListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseLogHook
implements HookConfigurator,
AdaptorHook {
    static final String EQUINOX_LOGGER_NAME = "org.eclipse.equinox.logger";
    static final String PERF_LOGGER_NAME = "org.eclipse.performance.logger";
    private static final String PROP_LOG_ENABLED = "eclipse.log.enabled";
    private static final String LOG_EXT = ".log";
    private final LogServiceManager logServiceManager;
    private final EclipseLogFactory eclipseLogFactory;
    private final EclipseLogWriter logWriter;
    private final EclipseLogWriter perfWriter;
    private ServiceRegistration<?> frameworkLogReg;
    private ServiceRegistration<?> perfLogReg;
    static /* synthetic */ Class class$0;

    public EclipseLogHook() {
        String logFileProp = FrameworkProperties.getProperty("osgi.logfile");
        boolean enabled = "true".equals(FrameworkProperties.getProperty(PROP_LOG_ENABLED, "true"));
        if (logFileProp != null) {
            this.logWriter = new EclipseLogWriter(new File(logFileProp), EQUINOX_LOGGER_NAME, enabled);
        } else {
            Location location = LocationManager.getConfigurationLocation();
            File configAreaDirectory = null;
            if (location != null) {
                configAreaDirectory = new File(location.getURL().getFile());
            }
            if (configAreaDirectory != null) {
                String logFileName = new StringBuffer(String.valueOf(Long.toString(System.currentTimeMillis()))).append(LOG_EXT).toString();
                File logFile = new File(configAreaDirectory, logFileName);
                FrameworkProperties.setProperty("osgi.logfile", logFile.getAbsolutePath());
                this.logWriter = new EclipseLogWriter(logFile, EQUINOX_LOGGER_NAME, enabled);
            } else {
                this.logWriter = new EclipseLogWriter(null, EQUINOX_LOGGER_NAME, enabled);
            }
        }
        File logFile = this.logWriter.getFile();
        if (logFile != null) {
            File perfLogFile = new File(logFile.getParentFile(), "performance.log");
            this.perfWriter = new EclipseLogWriter(perfLogFile, PERF_LOGGER_NAME, true);
        } else {
            this.perfWriter = new EclipseLogWriter(null, PERF_LOGGER_NAME, true);
        }
        if ("true".equals(FrameworkProperties.getProperty("eclipse.consoleLog"))) {
            this.logWriter.setConsoleLog(true);
        }
        this.logServiceManager = new LogServiceManager(new LogListener[]{this.logWriter, this.perfWriter});
        this.eclipseLogFactory = new EclipseLogFactory(this.logWriter, this.logServiceManager);
    }

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addAdaptorHook(this);
    }

    @Override
    public void initialize(BaseAdaptor initAdaptor) {
    }

    @Override
    public void frameworkStart(BundleContext context) throws BundleException {
        this.logServiceManager.start(context);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.frameworkLogReg = AdaptorUtil.register(clazz.getName(), this.eclipseLogFactory, context);
        this.perfLogReg = this.registerPerformanceLog(context);
    }

    @Override
    public void frameworkStop(BundleContext context) throws BundleException {
        this.frameworkLogReg.unregister();
        this.perfLogReg.unregister();
        this.logServiceManager.stop(context);
    }

    @Override
    public void frameworkStopping(BundleContext context) {
    }

    @Override
    public void addProperties(Properties properties) {
    }

    @Override
    public URLConnection mapLocationToURLConnection(String location) throws IOException {
        return null;
    }

    @Override
    public void handleRuntimeError(Throwable error) {
    }

    @Override
    public FrameworkLog createFrameworkLog() {
        return this.eclipseLogFactory.createFrameworkLog(null, this.logWriter);
    }

    private ServiceRegistration<?> registerPerformanceLog(BundleContext context) {
        FrameworkLog service = this.createPerformanceLog(context.getBundle());
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        String serviceName = clazz.getName();
        Hashtable<String, Object> serviceProperties = new Hashtable<String, Object>(7);
        Dictionary<String, String> headers = context.getBundle().getHeaders();
        ((Dictionary)serviceProperties).put("service.vendor", headers.get("Bundle-Vendor"));
        ((Dictionary)serviceProperties).put("service.ranking", new Integer(Integer.MIN_VALUE));
        ((Dictionary)serviceProperties).put("service.pid", new StringBuffer(String.valueOf(context.getBundle().getBundleId() + 46L)).append(service.getClass().getName()).toString());
        ((Dictionary)serviceProperties).put("performance", Boolean.TRUE.toString());
        return context.registerService(serviceName, (Object)service, serviceProperties);
    }

    private FrameworkLog createPerformanceLog(Bundle systemBundle) {
        return this.eclipseLogFactory.createFrameworkLog(systemBundle, this.perfWriter);
    }
}

