/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.security.AccessController;
import java.security.PrivilegedAction;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistrationImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.ServiceException;
import org.osgi.framework.ServiceFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceUse<S> {
    final ServiceFactory<S> factory;
    final BundleContextImpl context;
    final ServiceRegistrationImpl<S> registration;
    private S cachedService;
    private int useCount = 0;
    private boolean factoryInUse = false;
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.osgi.internal.serviceregistry.ServiceUse");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        $assertionsDisabled = !clazz.desiredAssertionStatus();
    }

    ServiceUse(BundleContextImpl context, ServiceRegistrationImpl<S> registration) {
        S service = registration.getServiceObject();
        if (service instanceof ServiceFactory) {
            ServiceFactory f;
            this.factory = f = (ServiceFactory)service;
            this.cachedService = null;
        } else {
            this.factory = null;
            this.cachedService = service;
        }
        this.context = context;
        this.registration = registration;
    }

    S getService() {
        Object service;
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.useCount > 0 || this.factory == null) {
            ++this.useCount;
            return this.cachedService;
        }
        if (Debug.DEBUG_SERVICES) {
            Debug.println(new StringBuffer("getService[factory=").append(this.registration.getBundle()).append("](").append(this.context.getBundleImpl()).append(",").append(this.registration).append(")").toString());
        }
        if (this.factoryInUse) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer().append(this.factory).append(".getService() recursively called.").toString());
            }
            ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_FACTORY_RECURSION, this.factory.getClass().getName(), "getService"), 6);
            this.context.getFramework().publishFrameworkEvent(16, this.registration.getBundle(), se);
            return null;
        }
        this.factoryInUse = true;
        try {
            try {
                service = AccessController.doPrivileged(new PrivilegedAction<S>(){

                    @Override
                    public S run() {
                        return ServiceUse.this.factory.getService(ServiceUse.this.context.getBundleImpl(), ServiceUse.this.registration);
                    }
                });
            }
            catch (Throwable t) {
                if (Debug.DEBUG_SERVICES) {
                    Debug.println(new StringBuffer().append(this.factory).append(".getService() exception: ").append(t.getMessage()).toString());
                    Debug.printStackTrace(t);
                }
                this.context.getFramework().getAdaptor().handleRuntimeError(t);
                ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_FACTORY_EXCEPTION, this.factory.getClass().getName(), "getService"), 3, t);
                this.context.getFramework().publishFrameworkEvent(2, this.registration.getBundle(), se);
                this.factoryInUse = false;
                return null;
            }
        }
        finally {
            this.factoryInUse = false;
        }
        if (service == null) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer().append(this.factory).append(".getService() returned null.").toString());
            }
            ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_OBJECT_NULL_EXCEPTION, this.factory.getClass().getName()), 2);
            this.context.getFramework().publishFrameworkEvent(16, this.registration.getBundle(), se);
            return null;
        }
        String[] clazzes = this.registration.getClasses();
        String invalidService = ServiceRegistry.checkServiceClass(clazzes, service);
        if (invalidService != null) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer("Service object is not an instanceof ").append(invalidService).toString());
            }
            ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_FACTORY_NOT_INSTANCEOF_CLASS_EXCEPTION, this.factory.getClass().getName(), invalidService), 2);
            this.context.getFramework().publishFrameworkEvent(2, this.registration.getBundle(), se);
            return null;
        }
        this.cachedService = service;
        ++this.useCount;
        return (S)service;
    }

    boolean ungetService() {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.useCount == 0) {
            return true;
        }
        --this.useCount;
        if (this.useCount > 0) {
            return false;
        }
        if (this.factory == null) {
            return true;
        }
        final S service = this.cachedService;
        this.cachedService = null;
        if (Debug.DEBUG_SERVICES) {
            Debug.println(new StringBuffer("ungetService[factory=").append(this.registration.getBundle()).append("](").append(this.context.getBundleImpl()).append(",").append(this.registration).append(")").toString());
        }
        try {
            AccessController.doPrivileged(new PrivilegedAction<S>(){

                @Override
                public S run() {
                    ServiceUse.this.factory.ungetService(ServiceUse.this.context.getBundleImpl(), ServiceUse.this.registration, service);
                    return null;
                }
            });
        }
        catch (Throwable t) {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer().append(this.factory).append(".ungetService() exception").toString());
                Debug.printStackTrace(t);
            }
            ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_FACTORY_EXCEPTION, this.factory.getClass().getName(), "ungetService"), 3, t);
            this.context.getFramework().publishFrameworkEvent(2, this.registration.getBundle(), se);
        }
        return true;
    }

    void releaseService() {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.useCount == 0 || this.factory == null) {
            return;
        }
        final S service = this.cachedService;
        this.cachedService = null;
        this.useCount = 0;
        if (Debug.DEBUG_SERVICES) {
            Debug.println(new StringBuffer("releaseService[factory=").append(this.registration.getBundle()).append("](").append(this.context.getBundleImpl()).append(",").append(this.registration).append(")").toString());
        }
        try {
            AccessController.doPrivileged(new PrivilegedAction<S>(){

                @Override
                public S run() {
                    ServiceUse.this.factory.ungetService(ServiceUse.this.context.getBundleImpl(), ServiceUse.this.registration, service);
                    return null;
                }
            });
        }
        catch (Throwable t) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer().append(this.factory).append(".ungetService() exception").toString());
                Debug.printStackTrace(t);
            }
            ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_FACTORY_EXCEPTION, this.factory.getClass().getName(), "ungetService"), 3, t);
            this.context.getFramework().publishFrameworkEvent(2, this.registration.getBundle(), se);
        }
    }
}

