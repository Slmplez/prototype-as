/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.p2.core;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.AgentLocation;
import org.eclipse.equinox.internal.p2.core.DefaultAgentProvider;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Activator
implements BundleActivator {
    public static IAgentLocation agentDataLocation = null;
    public static BundleContext context;
    private static final String DEFAULT_AGENT_LOCATION = "../p2";
    public static final String ID = "org.eclipse.equinox.p2.core";
    private static Activator instance;
    private static final String NO_DEFAULT = "@noDefault";
    private static final String NONE = "@none";
    private static final String PROP_AGENT_DATA_AREA = "eclipse.p2.data.area";
    private static final String PROP_CONFIG_DIR = "osgi.configuration.area";
    private static final String PROP_USER_DIR = "user.dir";
    private static final String PROP_USER_HOME = "user.home";
    public static final String READ_ONLY_AREA_SUFFIX = ".readOnly";
    private static final String VAR_CONFIG_DIR = "@config.dir";
    private static final String VAR_USER_DIR = "@user.dir";
    private static final String VAR_USER_HOME = "@user.home";
    private IProvisioningAgent agent;
    private ServiceRegistration<IAgentLocation> agentLocationRegistration = null;
    ServiceTracker<FrameworkLog, FrameworkLog> logTracker;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    private static URI adjustTrailingSlash(URI url, boolean trailingSlash) throws URISyntaxException {
        String file = url.toString();
        if (trailingSlash == file.endsWith("/")) {
            return url;
        }
        file = trailingSlash ? new StringBuffer(String.valueOf(file)).append("/").toString() : file.substring(0, file.length() - 1);
        return new URI(file);
    }

    private static URI buildURL(String spec, boolean trailingSlash) {
        if (spec == null) {
            return null;
        }
        boolean isFile = spec.startsWith("file:");
        try {
            if (isFile) {
                return Activator.adjustTrailingSlash(new File(spec.substring(5)).toURI(), trailingSlash);
            }
            new URL(spec);
            return new URI(spec);
        }
        catch (Exception exception) {
            if (isFile) {
                return null;
            }
            try {
                return Activator.adjustTrailingSlash(new File(spec).toURI(), trailingSlash);
            }
            catch (URISyntaxException uRISyntaxException) {
                return null;
            }
        }
    }

    public static BundleContext getContext() {
        return context;
    }

    public static FrameworkLog getFrameworkLog() {
        Activator a = instance;
        if (a == null) {
            return null;
        }
        ServiceTracker<FrameworkLog, FrameworkLog> tracker = a.getLogTracker();
        if (tracker == null) {
            return null;
        }
        return (FrameworkLog)tracker.getService();
    }

    private static String substituteVar(String source, String var, String prop) {
        String value = context.getProperty(prop);
        if (value == null) {
            value = "";
        }
        return new StringBuffer(String.valueOf(value)).append(source.substring(var.length())).toString();
    }

    private IAgentLocation buildLocation(String property, URI defaultLocation, boolean readOnlyDefault, boolean addTrailingSlash) {
        String base;
        String location = context.getProperty(property);
        if (location == null) {
            return new AgentLocation(defaultLocation);
        }
        if (location.equalsIgnoreCase(NONE)) {
            return null;
        }
        if (location.equalsIgnoreCase(NO_DEFAULT)) {
            return new AgentLocation(null);
        }
        if (location.startsWith(VAR_USER_HOME)) {
            base = Activator.substituteVar(location, VAR_USER_HOME, PROP_USER_HOME);
            location = new Path(base).toFile().getAbsolutePath();
        } else if (location.startsWith(VAR_USER_DIR)) {
            base = Activator.substituteVar(location, VAR_USER_DIR, PROP_USER_DIR);
            location = new Path(base).toFile().getAbsolutePath();
        } else if (location.startsWith(VAR_CONFIG_DIR)) {
            location = Activator.substituteVar(location, VAR_CONFIG_DIR, PROP_CONFIG_DIR);
        }
        URI url = Activator.buildURL(location, addTrailingSlash);
        AgentLocation result = null;
        if (url != null) {
            result = new AgentLocation(url);
        }
        return result;
    }

    private ServiceTracker<FrameworkLog, FrameworkLog> getLogTracker() {
        if (this.logTracker != null) {
            return this.logTracker;
        }
        if (context == null) {
            return null;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.logTracker = new ServiceTracker(context, (Class)clazz, null);
        this.logTracker.open();
        return this.logTracker;
    }

    private void registerAgent() {
        if (agentDataLocation == null) {
            return;
        }
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgentProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference agentProviderRef = context.getServiceReference((Class)clazz);
        IProvisioningAgentProvider provider = null;
        if (agentProviderRef != null) {
            provider = (IProvisioningAgentProvider)context.getService(agentProviderRef);
        }
        if (provider == null) {
            provider = new DefaultAgentProvider();
            ((DefaultAgentProvider)provider).activate(context);
        }
        try {
            this.agent = provider.createAgent(null);
        }
        catch (Exception e) {
            String msg = new StringBuffer("Unable to instantiate p2 agent at location ").append(agentDataLocation.getRootLocation()).toString();
            LogHelper.log((IStatus)new Status(4, ID, msg, (Throwable)e));
        }
    }

    public void start(BundleContext aContext) throws Exception {
        instance = this;
        context = aContext;
        URI defaultLocation = URIUtil.fromString((String)new StringBuffer(String.valueOf(aContext.getProperty(PROP_CONFIG_DIR))).append(DEFAULT_AGENT_LOCATION).append('/').toString());
        agentDataLocation = this.buildLocation(PROP_AGENT_DATA_AREA, defaultLocation, false, true);
        Hashtable<String, String> locationProperties = new Hashtable<String, String>();
        if (agentDataLocation != null) {
            ((Dictionary)locationProperties).put("type", PROP_AGENT_DATA_AREA);
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.equinox.p2.core.IAgentLocation");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.agentLocationRegistration = aContext.registerService((Class)clazz, (Object)agentDataLocation, locationProperties);
        }
        this.registerAgent();
    }

    public void stop(BundleContext aContext) throws Exception {
        this.unregisterAgent();
        instance = null;
        agentDataLocation = null;
        if (this.agentLocationRegistration != null) {
            this.agentLocationRegistration.unregister();
        }
        if (this.logTracker != null) {
            this.logTracker.close();
            this.logTracker = null;
        }
        context = null;
    }

    private void unregisterAgent() {
        if (this.agent != null) {
            this.agent.stop();
            this.agent = null;
        }
    }
}

