/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

class CompositeServiceTracker
implements ServiceTrackerCustomizer {
    final BundleContext sourceContext;
    final BundleContext targetContext;
    final ServiceTracker[] trackers;
    final String[] filters;
    final HashMap serviceComposites = new HashMap();

    public CompositeServiceTracker(BundleContext sourceContext, BundleContext targetContext, String serviceFilters) {
        this.sourceContext = sourceContext;
        this.targetContext = targetContext;
        this.filters = ManifestElement.getArrayFromList(serviceFilters, ",");
        this.trackers = new ServiceTracker[this.filters.length];
    }

    synchronized void open() {
        int i = 0;
        while (i < this.trackers.length) {
            try {
                this.trackers[i] = new ServiceTracker(this.sourceContext, this.sourceContext.createFilter(this.filters[i]), this);
                this.trackers[i].open();
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            ++i;
        }
    }

    synchronized void close() {
        int i = 0;
        while (i < this.trackers.length) {
            if (this.trackers[i] != null) {
                this.trackers[i].close();
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object addingService(ServiceReference reference) {
        int useCount;
        ServiceLink serviceLink;
        HashMap hashMap = this.serviceComposites;
        synchronized (hashMap) {
            serviceLink = (ServiceLink)this.serviceComposites.get(reference);
            if (serviceLink == null) {
                serviceLink = new ServiceLink(reference);
                this.serviceComposites.put(reference, serviceLink);
            }
            useCount = serviceLink.incrementUse();
        }
        if (useCount == 1) {
            serviceLink.register();
        }
        return serviceLink;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void modifiedService(ServiceReference reference, Object service) {
        ServiceLink serviceLink = (ServiceLink)service;
        Dictionary serviceProps = null;
        HashMap hashMap = this.serviceComposites;
        synchronized (hashMap) {
            serviceProps = serviceLink.getRefreshProperties();
        }
        if (serviceProps != null) {
            ((ServiceLink)service).setServiceProperties(serviceProps);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removedService(ServiceReference reference, Object service) {
        int useCount;
        HashMap hashMap = this.serviceComposites;
        synchronized (hashMap) {
            useCount = ((ServiceLink)service).decrementUse();
            if (useCount == 0) {
                this.serviceComposites.remove(reference);
            }
        }
        if (useCount == 0) {
            ((ServiceLink)service).unregister();
        }
    }

    class ServiceLink
    implements ServiceFactory {
        private final ServiceReference reference;
        private volatile ServiceRegistration registration;
        private Object service;
        private int useCount;

        ServiceLink(ServiceReference reference) {
            this.reference = reference;
        }

        Dictionary getRefreshProperties() {
            Dictionary result = this.getServiceProperties();
            if (this.useCount <= 1) {
                return result;
            }
            String[] originalKeys = this.registration.getReference().getPropertyKeys();
            int i = 0;
            while (i < originalKeys.length) {
                if (!"objectClass".equals(originalKeys[i]) && !"service.id".equals(originalKeys[i]) && this.registration.getReference().getProperty(originalKeys[i]) != result.get(originalKeys[i])) {
                    return result;
                }
                ++i;
            }
            Enumeration eKeys = result.keys();
            while (eKeys.hasMoreElements()) {
                String key = (String)eKeys.nextElement();
                if ("objectClass".equals(key) || "service.id".equals(key) || result.get(key) == this.registration.getReference().getProperty(key)) continue;
                return result;
            }
            return null;
        }

        int decrementUse() {
            return --this.useCount;
        }

        int incrementUse() {
            return ++this.useCount;
        }

        int getUse() {
            return this.useCount;
        }

        void setServiceProperties(Dictionary props) {
            ServiceRegistration current = this.registration;
            if (current != null) {
                current.setProperties(props);
            }
        }

        void register() {
            Dictionary props = this.getServiceProperties();
            this.registration = CompositeServiceTracker.this.targetContext.registerService((String[])props.get("objectClass"), (Object)this, props);
        }

        void unregister() {
            ServiceRegistration current = this.registration;
            if (current != null) {
                current.unregister();
            }
        }

        private Dictionary getServiceProperties() {
            String[] keys = this.reference.getPropertyKeys();
            Hashtable<String, Object> serviceProps = new Hashtable<String, Object>(keys.length);
            int i = 0;
            while (i < keys.length) {
                serviceProps.put(keys[i], this.reference.getProperty(keys[i]));
                ++i;
            }
            return serviceProps;
        }

        public synchronized Object getService(Bundle bundle, ServiceRegistration reg) {
            if (this.service == null) {
                this.service = CompositeServiceTracker.this.sourceContext.getService(this.reference);
            }
            return this.service;
        }

        public void ungetService(Bundle bundle, ServiceRegistration reg, Object serv) {
        }
    }
}

