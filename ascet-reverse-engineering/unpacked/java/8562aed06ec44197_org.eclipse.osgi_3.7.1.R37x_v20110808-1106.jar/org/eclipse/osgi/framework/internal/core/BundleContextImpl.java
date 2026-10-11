/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.File;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.internal.adaptor.ContextFinder;
import org.eclipse.osgi.event.BatchBundleListener;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.internal.profile.Profile;
import org.eclipse.osgi.internal.serviceregistry.ServiceReferenceImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistrationImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.eclipse.osgi.internal.serviceregistry.ServiceUse;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleListener;
import org.osgi.framework.Filter;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceListener;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleContextImpl
implements BundleContext,
EventDispatcher<Object, Object, Object> {
    private static boolean SET_TCCL = "true".equals(FrameworkProperties.getProperty("eclipse.bundle.setTCCL", "true"));
    private volatile boolean valid;
    final BundleHost bundle;
    final Framework framework;
    private HashMap<ServiceRegistrationImpl<?>, ServiceUse<?>> servicesInUse;
    protected BundleActivator activator;
    private final Object contextLock = new Object();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected BundleContextImpl(BundleHost bundle) {
        this.bundle = bundle;
        this.valid = true;
        this.framework = bundle.framework;
        Object object = this.contextLock;
        synchronized (object) {
            this.servicesInUse = null;
        }
        this.activator = null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void close() {
        this.valid = false;
        ServiceRegistry registry = this.framework.getServiceRegistry();
        registry.removeAllServiceListeners(this);
        this.framework.removeAllListeners(this);
        registry.unregisterServices(this);
        registry.releaseServicesInUse(this);
        Object object = this.contextLock;
        synchronized (object) {
            this.servicesInUse = null;
        }
    }

    @Override
    public String getProperty(String key) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPropertyAccess(key);
        }
        return this.framework.getProperty(key);
    }

    @Override
    public Bundle getBundle() {
        this.checkValid();
        return this.getBundleImpl();
    }

    public AbstractBundle getBundleImpl() {
        return this.bundle;
    }

    @Override
    public Bundle installBundle(String location) throws BundleException {
        return this.installBundle(location, null);
    }

    @Override
    public Bundle installBundle(String location, InputStream in) throws BundleException {
        this.checkValid();
        return this.framework.installBundle(location, in, this);
    }

    @Override
    public Bundle getBundle(long id) {
        return this.framework.getBundle(this, id);
    }

    @Override
    public Bundle getBundle(String location) {
        return this.framework.getBundleByLocation(location);
    }

    public AbstractBundle getBundleByLocation(String location) {
        return this.framework.getBundleByLocation(location);
    }

    @Override
    public Bundle[] getBundles() {
        return this.framework.getBundles(this);
    }

    @Override
    public void addServiceListener(ServiceListener listener, String filter) throws InvalidSyntaxException {
        this.checkValid();
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        this.framework.getServiceRegistry().addServiceListener(this, listener, filter);
    }

    @Override
    public void addServiceListener(ServiceListener listener) {
        block2: {
            try {
                this.addServiceListener(listener, null);
            }
            catch (InvalidSyntaxException e) {
                if (!Debug.DEBUG_GENERAL) break block2;
                Debug.println(new StringBuffer("InvalidSyntaxException w/ null filter").append(e.getMessage()).toString());
                Debug.printStackTrace(e);
            }
        }
    }

    @Override
    public void removeServiceListener(ServiceListener listener) {
        this.checkValid();
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        this.framework.getServiceRegistry().removeServiceListener(this, listener);
    }

    @Override
    public void addBundleListener(BundleListener listener) {
        this.checkValid();
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        if (Debug.DEBUG_EVENTS) {
            String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
            Debug.println(new StringBuffer("addBundleListener[").append(this.bundle).append("](").append(listenerName).append(")").toString());
        }
        this.framework.addBundleListener(listener, this);
    }

    @Override
    public void removeBundleListener(BundleListener listener) {
        this.checkValid();
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        if (Debug.DEBUG_EVENTS) {
            String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
            Debug.println(new StringBuffer("removeBundleListener[").append(this.bundle).append("](").append(listenerName).append(")").toString());
        }
        this.framework.removeBundleListener(listener, this);
    }

    @Override
    public void addFrameworkListener(FrameworkListener listener) {
        this.checkValid();
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        if (Debug.DEBUG_EVENTS) {
            String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
            Debug.println(new StringBuffer("addFrameworkListener[").append(this.bundle).append("](").append(listenerName).append(")").toString());
        }
        this.framework.addFrameworkListener(listener, this);
    }

    @Override
    public void removeFrameworkListener(FrameworkListener listener) {
        this.checkValid();
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        if (Debug.DEBUG_EVENTS) {
            String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
            Debug.println(new StringBuffer("removeFrameworkListener[").append(this.bundle).append("](").append(listenerName).append(")").toString());
        }
        this.framework.removeFrameworkListener(listener, this);
    }

    @Override
    public ServiceRegistration<?> registerService(String[] clazzes, Object service, Dictionary<String, ?> properties) {
        this.checkValid();
        return this.framework.getServiceRegistry().registerService(this, clazzes, service, properties);
    }

    @Override
    public ServiceRegistration<?> registerService(String clazz, Object service, Dictionary<String, ?> properties) {
        String[] clazzes = new String[]{clazz};
        return this.registerService(clazzes, service, properties);
    }

    @Override
    public ServiceReference<?>[] getServiceReferences(String clazz, String filter) throws InvalidSyntaxException {
        this.checkValid();
        return this.framework.getServiceRegistry().getServiceReferences(this, clazz, filter, false);
    }

    @Override
    public ServiceReference<?>[] getAllServiceReferences(String clazz, String filter) throws InvalidSyntaxException {
        this.checkValid();
        return this.framework.getServiceRegistry().getServiceReferences(this, clazz, filter, true);
    }

    @Override
    public ServiceReference<?> getServiceReference(String clazz) {
        this.checkValid();
        return this.framework.getServiceRegistry().getServiceReference(this, clazz);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public <S> S getService(ServiceReference<S> reference) {
        this.checkValid();
        if (reference == null) {
            throw new NullPointerException("A null service reference is not allowed.");
        }
        Object object = this.contextLock;
        synchronized (object) {
            if (this.servicesInUse == null) {
                this.servicesInUse = new HashMap(10);
            }
        }
        Object service = this.framework.getServiceRegistry().getService(this, (ServiceReferenceImpl)reference);
        return (S)service;
    }

    @Override
    public boolean ungetService(ServiceReference<?> reference) {
        this.checkValid();
        return this.framework.getServiceRegistry().ungetService(this, (ServiceReferenceImpl)reference);
    }

    @Override
    public File getDataFile(String filename) {
        this.checkValid();
        return this.framework.getDataFile(this.bundle, filename);
    }

    protected void start() throws BundleException {
        this.activator = this.bundle.loadBundleActivator();
        if (this.activator != null) {
            try {
                this.startActivator(this.activator);
            }
            catch (BundleException be) {
                this.activator = null;
                throw be;
            }
        }
    }

    protected void startActivator(final BundleActivator bundleActivator) throws BundleException {
        if (Profile.STARTUP) {
            Profile.logEnter("BundleContextImpl.startActivator()", null);
        }
        try {
            try {
                AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                    @Override
                    public Object run() throws Exception {
                        if (bundleActivator != null) {
                            if (Profile.STARTUP) {
                                Profile.logTime("BundleContextImpl.startActivator()", new StringBuffer("calling ").append(BundleContextImpl.this.bundle.getLocation()).append(" bundle activator").toString());
                            }
                            Object previousTCCL = BundleContextImpl.this.setContextFinder();
                            try {
                                bundleActivator.start(BundleContextImpl.this);
                            }
                            finally {
                                if (previousTCCL != Boolean.FALSE) {
                                    Thread.currentThread().setContextClassLoader((ClassLoader)previousTCCL);
                                }
                            }
                            if (Profile.STARTUP) {
                                Profile.logTime("BundleContextImpl.startActivator()", new StringBuffer("returned from ").append(BundleContextImpl.this.bundle.getLocation()).append(" bundle activator").toString());
                            }
                        }
                        return null;
                    }
                });
            }
            catch (Throwable t2) {
                Exception t2;
                if (t2 instanceof PrivilegedActionException) {
                    t2 = ((PrivilegedActionException)t2).getException();
                }
                if (Debug.DEBUG_GENERAL) {
                    Debug.printStackTrace(t2);
                }
                String clazz = null;
                clazz = bundleActivator.getClass().getName();
                throw new BundleException(NLS.bind(Msg.BUNDLE_ACTIVATOR_EXCEPTION, new Object[]{clazz, "start", this.bundle.getSymbolicName() == null ? new StringBuffer().append(this.bundle.getBundleId()).toString() : this.bundle.getSymbolicName()}), 5, t2);
            }
        }
        finally {
            if (Profile.STARTUP) {
                Profile.logExit("BundleContextImpl.startActivator()");
            }
        }
    }

    Object setContextFinder() {
        ContextFinder contextFinder;
        if (!SET_TCCL) {
            return Boolean.FALSE;
        }
        Thread currentThread = Thread.currentThread();
        ClassLoader previousTCCL = currentThread.getContextClassLoader();
        if (previousTCCL != (contextFinder = this.framework.getContextFinder())) {
            currentThread.setContextClassLoader(this.framework.getContextFinder());
            return previousTCCL;
        }
        return Boolean.FALSE;
    }

    protected void stop() throws BundleException {
        try {
            try {
                AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                    @Override
                    public Object run() throws Exception {
                        if (BundleContextImpl.this.activator != null) {
                            Object previousTCCL = BundleContextImpl.this.setContextFinder();
                            try {
                                BundleContextImpl.this.activator.stop(BundleContextImpl.this);
                            }
                            finally {
                                if (previousTCCL != Boolean.FALSE) {
                                    Thread.currentThread().setContextClassLoader((ClassLoader)previousTCCL);
                                }
                            }
                        }
                        return null;
                    }
                });
            }
            catch (Throwable t2) {
                Exception t2;
                if (t2 instanceof PrivilegedActionException) {
                    t2 = ((PrivilegedActionException)t2).getException();
                }
                if (Debug.DEBUG_GENERAL) {
                    Debug.printStackTrace(t2);
                }
                String clazz = this.activator == null ? "" : this.activator.getClass().getName();
                throw new BundleException(NLS.bind(Msg.BUNDLE_ACTIVATOR_EXCEPTION, new Object[]{clazz, "stop", this.bundle.getSymbolicName() == null ? new StringBuffer().append(this.bundle.getBundleId()).toString() : this.bundle.getSymbolicName()}), 5, t2);
            }
        }
        finally {
            this.activator = null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Map<ServiceRegistrationImpl<?>, ServiceUse<?>> getServicesInUseMap() {
        Object object = this.contextLock;
        synchronized (object) {
            return this.servicesInUse;
        }
    }

    @Override
    public void dispatchEvent(Object originalListener, Object l, int action, Object object) {
        block23: {
            BundleHost tmpBundle = this.bundle;
            Object previousTCCL = this.setContextFinder();
            try {
                try {
                    if (!this.isValid()) break block23;
                    switch (action) {
                        case 1: 
                        case 2: {
                            BundleListener listener = (BundleListener)l;
                            if (Debug.DEBUG_EVENTS) {
                                String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
                                Debug.println(new StringBuffer("dispatchBundleEvent[").append(tmpBundle).append("](").append(listenerName).append(")").toString());
                            }
                            BundleEvent event = (BundleEvent)object;
                            switch (event.getType()) {
                                case -2147483647: {
                                    if (listener instanceof BatchBundleListener) {
                                        ((BatchBundleListener)listener).batchBegin();
                                        break;
                                    }
                                    break block23;
                                }
                                case -2147483648: {
                                    if (listener instanceof BatchBundleListener) {
                                        ((BatchBundleListener)listener).batchEnd();
                                        break;
                                    }
                                    break block23;
                                }
                                default: {
                                    listener.bundleChanged((BundleEvent)object);
                                    break;
                                }
                            }
                            break;
                        }
                        case 3: {
                            ServiceEvent event = (ServiceEvent)object;
                            ServiceListener listener = (ServiceListener)l;
                            if (Debug.DEBUG_EVENTS) {
                                String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
                                Debug.println(new StringBuffer("dispatchServiceEvent[").append(tmpBundle).append("](").append(listenerName).append(")").toString());
                            }
                            listener.serviceChanged(event);
                            break;
                        }
                        case 4: {
                            FrameworkListener listener = (FrameworkListener)l;
                            if (Debug.DEBUG_EVENTS) {
                                String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
                                Debug.println(new StringBuffer("dispatchFrameworkEvent[").append(tmpBundle).append("](").append(listenerName).append(")").toString());
                            }
                            listener.frameworkEvent((FrameworkEvent)object);
                            break;
                        }
                        default: {
                            throw new InternalError();
                        }
                    }
                }
                catch (Throwable t) {
                    FrameworkEvent event;
                    if (Debug.DEBUG_GENERAL) {
                        Debug.println(new StringBuffer("Exception in bottom level event dispatcher: ").append(t.getMessage()).toString());
                        Debug.printStackTrace(t);
                    }
                    this.framework.adaptor.handleRuntimeError(t);
                    if (action != 4 || (event = (FrameworkEvent)object).getType() != 2) {
                        this.framework.publishFrameworkEvent(2, tmpBundle, t);
                    }
                    if (previousTCCL != Boolean.FALSE) {
                        Thread.currentThread().setContextClassLoader((ClassLoader)previousTCCL);
                    }
                }
            }
            finally {
                if (previousTCCL != Boolean.FALSE) {
                    Thread.currentThread().setContextClassLoader((ClassLoader)previousTCCL);
                }
            }
        }
    }

    @Override
    public Filter createFilter(String filter) throws InvalidSyntaxException {
        this.checkValid();
        return FilterImpl.newInstance(filter);
    }

    public void checkValid() {
        if (!this.isValid()) {
            throw new IllegalStateException(Msg.BUNDLE_CONTEXT_INVALID_EXCEPTION);
        }
    }

    protected boolean isValid() {
        return this.valid;
    }

    public Framework getFramework() {
        return this.framework;
    }

    @Override
    public <S> ServiceRegistration<S> registerService(Class<S> clazz, S service, Dictionary<String, ?> properties) {
        ServiceRegistration<?> registration = this.registerService(clazz.getName(), service, properties);
        return registration;
    }

    @Override
    public <S> ServiceReference<S> getServiceReference(Class<S> clazz) {
        ServiceReference<?> reference = this.getServiceReference(clazz.getName());
        return reference;
    }

    @Override
    public <S> Collection<ServiceReference<S>> getServiceReferences(Class<S> clazz, String filter) throws InvalidSyntaxException {
        ServiceReference<?>[] refs = this.getServiceReferences(clazz.getName(), filter);
        if (refs == null) {
            List empty = Collections.EMPTY_LIST;
            return empty;
        }
        ArrayList<ServiceReference<S>> result = new ArrayList<ServiceReference<S>>(refs.length);
        ServiceReference<?>[] serviceReferenceArray = refs;
        int n = refs.length;
        int n2 = 0;
        while (n2 < n) {
            ServiceReference<?> b = serviceReferenceArray[n2];
            result.add(b);
            ++n2;
        }
        return result;
    }
}

