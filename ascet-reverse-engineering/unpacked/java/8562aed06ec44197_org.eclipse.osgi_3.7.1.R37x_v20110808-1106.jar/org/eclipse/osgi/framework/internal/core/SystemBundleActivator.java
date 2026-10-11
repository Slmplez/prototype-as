/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.core.runtime.internal.adaptor.ContextFinder;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.CoreResolverHookFactory;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.InternalSystemBundle;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.service.resolver.State;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemBundleActivator
implements BundleActivator {
    private BundleContext context;
    private InternalSystemBundle bundle;
    private Framework framework;
    private ServiceRegistration<?> packageAdmin;
    private ServiceRegistration<?> securityAdmin;
    private ServiceRegistration<?> startLevel;
    private ServiceRegistration<?> debugOptions;
    private ServiceRegistration<?> contextFinder;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    @Override
    public void start(BundleContext bc) throws Exception {
        ContextFinder tccl;
        this.context = bc;
        this.bundle = (InternalSystemBundle)bc.getBundle();
        this.framework = this.bundle.framework;
        if (this.framework.packageAdmin != null) {
            this.packageAdmin = this.register(new String[]{"org.osgi.service.packageadmin.PackageAdmin"}, this.framework.packageAdmin, null);
        }
        if (this.framework.securityAdmin != null) {
            String[] stringArray = new String[2];
            stringArray[0] = "org.osgi.service.permissionadmin.PermissionAdmin";
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.osgi.service.condpermadmin.ConditionalPermissionAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            stringArray[1] = clazz.getName();
            this.securityAdmin = this.register(stringArray, this.framework.securityAdmin, null);
        }
        if (this.framework.startLevelManager != null) {
            this.startLevel = this.register(new String[]{"org.osgi.service.startlevel.StartLevel"}, this.framework.startLevelManager, null);
        }
        FrameworkDebugOptions dbgOptions = null;
        dbgOptions = FrameworkDebugOptions.getDefault();
        if (dbgOptions != null) {
            dbgOptions.start(bc);
            String[] stringArray = new String[1];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            stringArray[0] = clazz.getName();
            this.debugOptions = this.register(stringArray, dbgOptions, null);
        }
        if ((tccl = this.framework.getContextFinder()) != null) {
            Hashtable<String, Object> props = new Hashtable<String, Object>(7);
            ((Dictionary)props).put("equinox.classloader.type", "contextClassLoader");
            String[] stringArray = new String[1];
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("java.lang.ClassLoader");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            stringArray[0] = clazz.getName();
            this.contextFinder = this.register(stringArray, tccl, props);
        }
        this.framework.adaptor.frameworkStart(bc);
        State state = this.framework.adaptor.getState();
        if (state instanceof StateImpl) {
            ((StateImpl)state).setResolverHookFactory(new CoreResolverHookFactory((BundleContextImpl)this.context, this.framework.getServiceRegistry()));
        }
        this.framework.packageAdmin.setResolvedBundles(this.bundle);
        this.framework.systemBundle.manifestLocalization = null;
    }

    @Override
    public void stop(BundleContext bc) throws Exception {
        this.framework.adaptor.frameworkStop(bc);
        if (this.packageAdmin != null) {
            this.packageAdmin.unregister();
        }
        if (this.securityAdmin != null) {
            this.securityAdmin.unregister();
        }
        if (this.startLevel != null) {
            this.startLevel.unregister();
        }
        if (this.debugOptions != null) {
            FrameworkDebugOptions dbgOptions = FrameworkDebugOptions.getDefault();
            if (dbgOptions != null) {
                dbgOptions.stop(bc);
            }
            this.debugOptions.unregister();
        }
        if (this.contextFinder != null) {
            this.contextFinder.unregister();
        }
        this.framework = null;
        this.bundle = null;
        this.context = null;
    }

    private ServiceRegistration<?> register(String[] names, Object service, Dictionary<String, Object> properties) {
        if (properties == null) {
            properties = new Hashtable<String, Object>(7);
        }
        Dictionary<String, String> headers = this.bundle.getHeaders();
        properties.put("service.vendor", headers.get("Bundle-Vendor"));
        properties.put("service.ranking", new Integer(Integer.MAX_VALUE));
        properties.put("service.pid", new StringBuffer(String.valueOf(this.bundle.getBundleId())).append(".").append(service.getClass().getName()).toString());
        return this.context.registerService(names, service, properties);
    }
}

