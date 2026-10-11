/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.core.runtime.internal.adaptor.BasicLocation;
import org.eclipse.core.runtime.internal.adaptor.BundleLocalizationImpl;
import org.eclipse.core.runtime.internal.adaptor.CachedManifest;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.EclipseCommandProvider;
import org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo;
import org.eclipse.core.runtime.internal.adaptor.MessageHelper;
import org.eclipse.core.runtime.internal.adaptor.PluginConverterImpl;
import org.eclipse.core.runtime.internal.adaptor.PluginParser;
import org.eclipse.core.runtime.internal.adaptor.URLConverterImpl;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;

public class EclipseAdaptorHook
implements AdaptorHook,
HookConfigurator {
    public static final String SAXFACTORYNAME = "javax.xml.parsers.SAXParserFactory";
    public static final String DOMFACTORYNAME = "javax.xml.parsers.DocumentBuilderFactory";
    private static final String RUNTIME_ADAPTOR = "org.eclipse.osgi/eclipseadaptor";
    private static final String OPTION_CONVERTER = "org.eclipse.osgi/eclipseadaptor/converter/debug";
    private static final String OPTION_LOCATION = "org.eclipse.osgi/eclipseadaptor/debug/location";
    private static final String OPTION_CACHEDMANIFEST = "org.eclipse.osgi/eclipseadaptor/debug/cachedmanifest";
    static final boolean SET_TCCL_XMLFACTORY = "true".equals(FrameworkProperties.getProperty("eclipse.parsers.setTCCL", "true"));
    private BaseAdaptor adaptor;
    private boolean noXML = false;
    private List<ServiceRegistration<?>> registrations = new ArrayList(10);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;

    public void frameworkStart(BundleContext context) throws BundleException {
        Class<?> clazz;
        this.registrations.clear();
        this.registerEndorsedXMLParser(context);
        Hashtable<String, String> locationProperties = new Hashtable<String, String>(1);
        Location location = LocationManager.getUserLocation();
        if (location != null) {
            ((Dictionary)locationProperties).put("type", "osgi.user.area");
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.registrations.add(context.registerService(clazz2.getName(), (Object)location, locationProperties));
        }
        if ((location = LocationManager.getInstanceLocation()) != null) {
            ((Dictionary)locationProperties).put("type", "osgi.instance.area");
            Class<?> clazz3 = class$0;
            if (clazz3 == null) {
                try {
                    clazz3 = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.registrations.add(context.registerService(clazz3.getName(), (Object)location, locationProperties));
        }
        if ((location = LocationManager.getConfigurationLocation()) != null) {
            ((Dictionary)locationProperties).put("type", "osgi.configuration.area");
            Class<?> clazz4 = class$0;
            if (clazz4 == null) {
                try {
                    clazz4 = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.registrations.add(context.registerService(clazz4.getName(), (Object)location, locationProperties));
        }
        if ((location = LocationManager.getInstallLocation()) != null) {
            ((Dictionary)locationProperties).put("type", "osgi.install.area");
            Class<?> clazz5 = class$0;
            if (clazz5 == null) {
                try {
                    clazz5 = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.registrations.add(context.registerService(clazz5.getName(), (Object)location, locationProperties));
        }
        if ((location = LocationManager.getEclipseHomeLocation()) != null) {
            ((Dictionary)locationProperties).put("type", "eclipse.home.location");
            Class<?> clazz6 = class$0;
            if (clazz6 == null) {
                try {
                    clazz6 = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.registrations.add(context.registerService(clazz6.getName(), (Object)location, locationProperties));
        }
        Hashtable<String, String[]> urlProperties = new Hashtable<String, String[]>();
        ((Dictionary)urlProperties).put("protocol", new String[]{"bundleentry", "bundleresource"});
        Class<?> clazz7 = class$1;
        if (clazz7 == null) {
            try {
                clazz7 = class$1 = Class.forName("org.eclipse.osgi.service.urlconversion.URLConverter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registrations.add(context.registerService(clazz7.getName(), (Object)new URLConverterImpl(), urlProperties));
        Class<?> clazz8 = class$2;
        if (clazz8 == null) {
            try {
                clazz8 = class$2 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registrations.add(AdaptorUtil.register(clazz8.getName(), EclipseEnvironmentInfo.getDefault(), context));
        Class<?> clazz9 = class$3;
        if (clazz9 == null) {
            try {
                clazz9 = class$3 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registrations.add(AdaptorUtil.register(clazz9.getName(), this.adaptor.getPlatformAdmin(), context));
        PluginConverterImpl converter = PluginConverterImpl.getDefault();
        if (converter == null) {
            converter = new PluginConverterImpl(this.adaptor, context);
        }
        if ((clazz = class$4) == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.osgi.service.pluginconversion.PluginConverter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registrations.add(AdaptorUtil.register(clazz.getName(), converter, context));
        Class<?> clazz10 = class$5;
        if (clazz10 == null) {
            try {
                clazz10 = class$5 = Class.forName("org.eclipse.osgi.framework.console.CommandProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registrations.add(AdaptorUtil.register(clazz10.getName(), new EclipseCommandProvider(context), context));
        Class<?> clazz11 = class$6;
        if (clazz11 == null) {
            try {
                clazz11 = class$6 = Class.forName("org.eclipse.osgi.service.localization.BundleLocalization");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registrations.add(AdaptorUtil.register(clazz11.getName(), new BundleLocalizationImpl(), context));
    }

    private void registerEndorsedXMLParser(BundleContext bc) {
        block2: {
            try {
                Class.forName(SAXFACTORYNAME);
                this.registrations.add(bc.registerService(SAXFACTORYNAME, (Object)new ParsingService(true), null));
                Class.forName(DOMFACTORYNAME);
                this.registrations.add(bc.registerService(DOMFACTORYNAME, (Object)new ParsingService(false), null));
            }
            catch (ClassNotFoundException e) {
                this.noXML = true;
                if (!Debug.DEBUG_ENABLED) break block2;
                String message = EclipseAdaptorMsg.ECLIPSE_ADAPTOR_ERROR_XML_SERVICE;
                this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null));
            }
        }
    }

    public void frameworkStop(BundleContext context) throws BundleException {
        this.printStats();
        if (!this.noXML) {
            PluginParser.releaseXMLParsing();
        }
        Iterator<ServiceRegistration<?>> iterator = this.registrations.iterator();
        while (iterator.hasNext()) {
            ServiceRegistration<?> registration = iterator.next();
            registration.unregister();
        }
        this.registrations.clear();
    }

    private void printStats() {
        String constraintResolution;
        String packageAdminResolution;
        FrameworkDebugOptions debugOptions = FrameworkDebugOptions.getDefault();
        if (debugOptions == null) {
            return;
        }
        String registryParsing = debugOptions.getOption("org.eclipse.core.runtime/registry/parsing/timing/value");
        if (registryParsing != null) {
            MessageHelper.debug("Time spent in registry parsing: " + registryParsing);
        }
        if ((packageAdminResolution = debugOptions.getOption("debug.packageadmin/timing/value")) != null) {
            System.out.println("Time spent in package admin resolve: " + packageAdminResolution);
        }
        if ((constraintResolution = debugOptions.getOption("org.eclipse.core.runtime.adaptor/resolver/timing/value")) != null) {
            System.out.println("Time spent resolving the dependency system: " + constraintResolution);
        }
    }

    public void frameworkStopping(BundleContext context) {
    }

    public void addProperties(Properties properties) {
    }

    public URLConnection mapLocationToURLConnection(String location) throws IOException {
        return null;
    }

    public void handleRuntimeError(Throwable error) {
    }

    public FrameworkLog createFrameworkLog() {
        return null;
    }

    public void initialize(BaseAdaptor initAdaptor) {
        this.adaptor = initAdaptor;
        EclipseEnvironmentInfo.getDefault();
        this.setDebugOptions();
    }

    private void setDebugOptions() {
        FrameworkDebugOptions options = FrameworkDebugOptions.getDefault();
        if (options == null) {
            return;
        }
        PluginConverterImpl.DEBUG = options.getBooleanOption(OPTION_CONVERTER, false);
        BasicLocation.DEBUG = options.getBooleanOption(OPTION_LOCATION, false);
        CachedManifest.DEBUG = options.getBooleanOption(OPTION_CACHEDMANIFEST, false);
    }

    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addAdaptorHook(this);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ParsingService
    implements ServiceFactory<Object> {
        private final boolean isSax;

        public ParsingService(boolean isSax) {
            this.isSax = isSax;
        }

        @Override
        public Object getService(Bundle bundle, ServiceRegistration<Object> registration) {
            BundleHost host;
            BundleHost bundleHost = host = bundle instanceof BundleHost ? (BundleHost)bundle : null;
            if (!SET_TCCL_XMLFACTORY || bundle == null) {
                return this.createService();
            }
            ClassLoader savedClassLoader = Thread.currentThread().getContextClassLoader();
            try {
                ClassLoader cl = host.getClassLoader();
                if (cl != null) {
                    Thread.currentThread().setContextClassLoader(cl);
                }
                Object object = this.createService();
                return object;
            }
            finally {
                Thread.currentThread().setContextClassLoader(savedClassLoader);
            }
        }

        private Object createService() {
            if (this.isSax) {
                return SAXParserFactory.newInstance();
            }
            return DocumentBuilderFactory.newInstance();
        }

        @Override
        public void ungetService(Bundle bundle, ServiceRegistration<Object> registration, Object service) {
        }
    }
}

