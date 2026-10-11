/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.ui.internal.services.INestable;
import org.eclipse.ui.internal.services.WorkbenchServiceRegistry;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IServiceLocator;

public final class ServiceLocator
implements IDisposable,
INestable,
IServiceLocator {
    boolean activated = false;
    private AbstractServiceFactory factory;
    private IServiceLocator parent;
    private Map services = null;
    private boolean disposed;
    private final IDisposable owner;

    public ServiceLocator() {
        this(null, null, null);
    }

    public ServiceLocator(IServiceLocator parent, AbstractServiceFactory factory, IDisposable owner) {
        this.parent = parent;
        this.factory = factory;
        this.owner = owner;
    }

    public final void activate() {
        this.activated = true;
        if (this.services != null) {
            Iterator serviceItr = this.services.values().iterator();
            while (serviceItr.hasNext()) {
                Object service = serviceItr.next();
                if (!(service instanceof INestable)) continue;
                INestable nestableService = (INestable)service;
                nestableService.activate();
            }
        }
    }

    public final void deactivate() {
        this.activated = false;
        if (this.services != null) {
            Iterator serviceItr = this.services.values().iterator();
            while (serviceItr.hasNext()) {
                Object service = serviceItr.next();
                if (!(service instanceof INestable)) continue;
                INestable nestableService = (INestable)service;
                nestableService.deactivate();
            }
        }
    }

    public final void dispose() {
        if (this.services != null) {
            Iterator serviceItr = this.services.values().iterator();
            while (serviceItr.hasNext()) {
                Object object = serviceItr.next();
                if (!(object instanceof IDisposable)) continue;
                IDisposable service = (IDisposable)object;
                service.dispose();
            }
            this.services = null;
        }
        this.parent = null;
        this.disposed = true;
    }

    public final Object getService(Class key) {
        if (this.disposed) {
            return null;
        }
        Object service = this.services != null ? (Object)this.services.get(key) : null;
        if (service == null) {
            IServiceLocator factoryParent = WorkbenchServiceRegistry.GLOBAL_PARENT;
            if (this.parent != null) {
                factoryParent = new ParentLocator(this.parent, key);
            }
            if (this.factory != null) {
                service = this.factory.create(key, factoryParent, this);
            }
            if (service == null) {
                service = WorkbenchServiceRegistry.getRegistry().getService(key, factoryParent, this);
            }
            if (service == null) {
                service = factoryParent.getService(key);
            } else {
                this.registerService(key, service);
            }
        }
        return service;
    }

    public final boolean hasService(Class key) {
        if (this.disposed) {
            return false;
        }
        return this.services != null && this.services.containsKey(key);
    }

    public final void registerService(Class api, Object service) {
        Object currentService;
        if (api == null) {
            throw new NullPointerException("The service key cannot be null");
        }
        if (!api.isInstance(service)) {
            throw new IllegalArgumentException("The service does not implement the given interface");
        }
        if (this.services == null) {
            this.services = new HashMap();
        }
        if (this.services.containsKey(api) && (currentService = this.services.remove(api)) instanceof IDisposable) {
            IDisposable disposable = (IDisposable)currentService;
            disposable.dispose();
        }
        if (service == null) {
            if (this.services.isEmpty()) {
                this.services = null;
            }
        } else {
            this.services.put(api, service);
            if (service instanceof INestable && this.activated) {
                ((INestable)service).activate();
            }
        }
    }

    public boolean isDisposed() {
        return this.disposed;
    }

    public void unregisterServices(String[] serviceNames) {
        if (this.owner != null) {
            this.owner.dispose();
        }
    }

    private static class ParentLocator
    implements IServiceLocator {
        private IServiceLocator locator;
        private Class key;

        public ParentLocator(IServiceLocator parent, Class serviceInterface) {
            this.locator = parent;
            this.key = serviceInterface;
        }

        public Object getService(Class api) {
            if (this.key.equals(api)) {
                return this.locator.getService(this.key);
            }
            return null;
        }

        public boolean hasService(Class api) {
            return this.key.equals(api);
        }
    }
}

