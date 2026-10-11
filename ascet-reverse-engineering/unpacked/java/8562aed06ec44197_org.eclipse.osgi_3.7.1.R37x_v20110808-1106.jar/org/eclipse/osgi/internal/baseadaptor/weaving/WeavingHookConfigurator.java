/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor.weaving;

import java.net.URL;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingStatsHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.internal.baseadaptor.weaving.WovenClassImpl;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WeavingHookConfigurator
implements HookConfigurator,
ClassLoadingHook,
ClassLoadingStatsHook {
    private BaseAdaptor adaptor;
    private final Map<ServiceRegistration<?>, Boolean> blackList = Collections.synchronizedMap(new WeakHashMap());
    private final ThreadLocal<List<WovenClassImpl>> wovenClassStack = new ThreadLocal();

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        this.adaptor = hookRegistry.getAdaptor();
        hookRegistry.addClassLoadingHook(this);
        hookRegistry.addClassLoadingStatsHook(this);
    }

    private ServiceRegistry getRegistry() {
        return ((Framework)this.adaptor.getEventPublisher()).getServiceRegistry();
    }

    @Override
    public byte[] processClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
        ServiceRegistry registry = this.getRegistry();
        if (registry == null) {
            return null;
        }
        ClassLoaderDelegate delegate = manager.getBaseClassLoader().getDelegate();
        if (!(delegate instanceof BundleLoader)) {
            IllegalStateException e = new IllegalStateException("Could not obtain loader");
            this.adaptor.getEventPublisher().publishFrameworkEvent(2, manager.getBaseData().getBundle(), e);
            return null;
        }
        BundleLoader loader = (BundleLoader)delegate;
        WovenClassImpl wovenClass = new WovenClassImpl(name, classbytes, classpathEntry.getDomain(), loader, registry, this.blackList);
        List<WovenClassImpl> wovenClasses = this.wovenClassStack.get();
        if (wovenClasses == null) {
            wovenClasses = new ArrayList<WovenClassImpl>(6);
            this.wovenClassStack.set(wovenClasses);
        }
        wovenClasses.add(wovenClass);
        try {
            return wovenClass.callHooks();
        }
        catch (Throwable t) {
            ServiceRegistration<?> errorHook = wovenClass.getErrorHook();
            Bundle errorBundle = errorHook != null ? errorHook.getReference().getBundle() : manager.getBaseData().getBundle();
            this.adaptor.getEventPublisher().publishFrameworkEvent(2, errorBundle, t);
            ClassFormatError error = new ClassFormatError("Unexpected error from weaving hook.");
            error.initCause(t);
            throw error;
        }
    }

    @Override
    public boolean addClassPathEntry(ArrayList<ClasspathEntry> cpEntries, String cp, ClasspathManager hostmanager, BaseData sourcedata, ProtectionDomain sourcedomain) {
        return false;
    }

    @Override
    public String findLibrary(BaseData data, String libName) {
        return null;
    }

    @Override
    public ClassLoader getBundleClassLoaderParent() {
        return null;
    }

    @Override
    public BaseClassLoader createClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, BundleProtectionDomain domain, BaseData data, String[] bundleclasspath) {
        return null;
    }

    @Override
    public void initializedClassLoader(BaseClassLoader baseClassLoader, BaseData data) {
    }

    @Override
    public void preFindLocalClass(String name, ClasspathManager manager) {
    }

    @Override
    public void postFindLocalClass(String name, Class<?> clazz, ClasspathManager manager) {
    }

    @Override
    public void preFindLocalResource(String name, ClasspathManager manager) {
    }

    @Override
    public void postFindLocalResource(String name, URL resource, ClasspathManager manager) {
    }

    @Override
    public void recordClassDefine(String name, Class<?> clazz, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
        List<WovenClassImpl> wovenClasses = this.wovenClassStack.get();
        if (wovenClasses == null || wovenClasses.size() == 0) {
            return;
        }
        WovenClassImpl wovenClass = wovenClasses.remove(wovenClasses.size() - 1);
        wovenClass.setWeavingCompleted(clazz);
    }
}

