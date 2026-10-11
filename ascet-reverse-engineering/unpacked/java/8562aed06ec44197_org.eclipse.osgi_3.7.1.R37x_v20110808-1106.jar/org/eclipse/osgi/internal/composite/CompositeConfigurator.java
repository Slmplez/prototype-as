/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.security.AllPermission;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.internal.composite.CompositeBase;
import org.eclipse.osgi.internal.composite.CompositeClassLoader;
import org.eclipse.osgi.internal.composite.CompositeHelper;
import org.eclipse.osgi.internal.module.CompositeResolveHelper;
import org.eclipse.osgi.internal.module.CompositeResolveHelperRegistry;
import org.eclipse.osgi.internal.module.ResolverImpl;
import org.eclipse.osgi.service.internal.composite.CompositeModule;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.framework.launch.Framework;
import org.osgi.service.framework.CompositeBundle;
import org.osgi.service.framework.CompositeBundleFactory;

public class CompositeConfigurator
implements SynchronousBundleListener,
HookConfigurator,
AdaptorHook,
ClassLoadingHook,
CompositeBundleFactory,
CompositeResolveHelperRegistry {
    private BaseAdaptor adaptor;
    private ServiceRegistration factoryService;
    private BundleContext systemContext;
    private final Collection helpers = new ArrayList(0);
    static /* synthetic */ Class class$0;

    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addAdaptorHook(this);
        hookRegistry.addClassLoadingHook(this);
    }

    public void addProperties(Properties properties) {
    }

    public FrameworkLog createFrameworkLog() {
        return null;
    }

    public void frameworkStart(BundleContext context) throws BundleException {
        this.systemContext = context;
        context.addBundleListener(this);
        this.addHelpers(context.getBundles());
        ((ResolverImpl)this.adaptor.getState().getResolver()).setCompositeResolveHelperRegistry(this);
        String[] stringArray = new String[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.framework.CompositeBundleFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray[0] = clazz.getName();
        this.factoryService = context.registerService(stringArray, (Object)this, null);
    }

    public void frameworkStop(BundleContext context) {
        if (this.factoryService != null) {
            this.factoryService.unregister();
        }
        this.factoryService = null;
        this.stopFrameworks();
        context.removeBundleListener(this);
        this.removeAllHelpers();
    }

    public void frameworkStopping(BundleContext context) {
    }

    public void handleRuntimeError(Throwable error) {
    }

    public void initialize(BaseAdaptor initAdaptor) {
        this.adaptor = initAdaptor;
    }

    public URLConnection mapLocationToURLConnection(String location) {
        return null;
    }

    public boolean matchDNChain(String pattern, String[] dnChain) {
        return false;
    }

    public CompositeBundle installCompositeBundle(Map frameworkConfig, String location, Map compositeManifest) throws BundleException {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new AllPermission());
        }
        compositeManifest = new HashMap(compositeManifest);
        CompositeHelper.validateCompositeManifest(compositeManifest);
        try {
            InputStream content = CompositeHelper.getCompositeInput(frameworkConfig, compositeManifest);
            CompositeBundle result = (CompositeBundle)this.systemContext.installBundle(location, content);
            CompositeHelper.setCompositePermissions(location, this.systemContext);
            return result;
        }
        catch (IOException e) {
            throw new BundleException("Error creating composite bundle", e);
        }
    }

    private void stopFrameworks() {
        Bundle[] allBundles = this.systemContext.getBundles();
        int i = 0;
        while (i < allBundles.length) {
            if (allBundles[i] instanceof CompositeBundle) {
                CompositeBundle composite = (CompositeBundle)allBundles[i];
                try {
                    Framework child = composite.getCompositeFramework();
                    child.stop();
                    child.waitForStop(30000L);
                }
                catch (Throwable t) {
                    t.printStackTrace();
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public CompositeResolveHelper getCompositeResolveHelper(BundleDescription bundle) {
        Collection collection = this.helpers;
        synchronized (collection) {
            block5: {
                if (this.helpers.size() != 0) break block5;
                return null;
            }
            Iterator iHelpers = this.helpers.iterator();
            while (iHelpers.hasNext()) {
                CompositeBase composite = (CompositeBase)iHelpers.next();
                if (composite.getBundleId() != bundle.getBundleId()) continue;
                return composite;
            }
            return null;
        }
    }

    public boolean addClassPathEntry(ArrayList cpEntries, String cp, ClasspathManager hostmanager, BaseData sourcedata, ProtectionDomain sourcedomain) {
        return false;
    }

    public BaseClassLoader createClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, BundleProtectionDomain domain, BaseData data, String[] bundleclasspath) {
        if ((data.getType() & 0x60) == 0) {
            return null;
        }
        ClassLoaderDelegate companionDelegate = ((CompositeModule)((Object)((CompositeBase)data.getBundle()).getCompanionBundle())).getDelegate();
        return new CompositeClassLoader(parent, delegate, companionDelegate, data);
    }

    public String findLibrary(BaseData data, String libName) {
        return null;
    }

    public ClassLoader getBundleClassLoaderParent() {
        return null;
    }

    public void initializedClassLoader(BaseClassLoader baseClassLoader, BaseData data) {
    }

    public byte[] processClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addHelpers(Bundle[] bundles) {
        Collection collection = this.helpers;
        synchronized (collection) {
            int i = 0;
            while (i < bundles.length) {
                this.addHelper(bundles[i]);
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addHelper(Bundle bundle) {
        if (!(bundle instanceof CompositeBase)) {
            return;
        }
        Collection collection = this.helpers;
        synchronized (collection) {
            if (!this.helpers.contains(bundle)) {
                this.helpers.add(bundle);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeHelper(Bundle bundle) {
        if (!(bundle instanceof CompositeBase)) {
            return;
        }
        Collection collection = this.helpers;
        synchronized (collection) {
            this.helpers.remove(bundle);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeAllHelpers() {
        Collection collection = this.helpers;
        synchronized (collection) {
            this.helpers.clear();
        }
    }

    public void bundleChanged(BundleEvent event) {
        switch (event.getType()) {
            case 1: {
                this.addHelper(event.getBundle());
                break;
            }
            case 16: {
                this.removeHelper(event.getBundle());
                break;
            }
        }
    }
}

