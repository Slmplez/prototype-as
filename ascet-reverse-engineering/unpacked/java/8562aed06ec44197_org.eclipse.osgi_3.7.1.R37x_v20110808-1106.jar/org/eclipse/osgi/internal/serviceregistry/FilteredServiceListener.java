/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.internal.serviceregistry.ModifiedServiceEvent;
import org.eclipse.osgi.internal.serviceregistry.ServiceReferenceImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.osgi.framework.AllServiceListener;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceListener;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.hooks.service.ListenerHook;

class FilteredServiceListener
implements ServiceListener,
ListenerHook.ListenerInfo {
    private final FilterImpl filter;
    private final ServiceListener listener;
    private final BundleContextImpl context;
    private final boolean allservices;
    private final String objectClass;
    private volatile boolean removed;

    FilteredServiceListener(BundleContextImpl context, ServiceListener listener, String filterstring) throws InvalidSyntaxException {
        if (filterstring == null) {
            this.filter = null;
            this.objectClass = null;
        } else {
            FilterImpl filterImpl = FilterImpl.newInstance(filterstring);
            String clazz = filterImpl.getRequiredObjectClass();
            if (clazz == null) {
                this.objectClass = null;
                this.filter = filterImpl;
            } else {
                this.objectClass = clazz.intern();
                this.filter = filterstring.equals(FilteredServiceListener.getObjectClassFilterString(this.objectClass)) ? null : filterImpl;
            }
        }
        this.removed = false;
        this.listener = listener;
        this.context = context;
        this.allservices = listener instanceof AllServiceListener;
    }

    public void serviceChanged(ServiceEvent event) {
        String listenerName;
        ServiceReferenceImpl reference;
        block8: {
            reference = (ServiceReferenceImpl)event.getServiceReference();
            if (this.objectClass != null) {
                String[] classes = reference.getClasses();
                int size = classes.length;
                int i = 0;
                while (i < size) {
                    if (classes[i] != this.objectClass) {
                        ++i;
                        continue;
                    }
                    break block8;
                }
                return;
            }
        }
        if (!ServiceRegistry.hasListenServicePermission(event, this.context)) {
            return;
        }
        if (Debug.DEBUG_EVENTS) {
            listenerName = String.valueOf(this.getClass().getName()) + "@" + Integer.toHexString(System.identityHashCode(this));
            Debug.println("filterServiceEvent(" + listenerName + ", \"" + this.getFilter() + "\", " + reference.getRegistration().getProperties() + ")");
        }
        if ((event = this.filterMatch(event)) == null) {
            return;
        }
        if (this.allservices || ServiceRegistry.isAssignableTo(this.context, reference)) {
            if (Debug.DEBUG_EVENTS) {
                listenerName = String.valueOf(this.listener.getClass().getName()) + "@" + Integer.toHexString(System.identityHashCode(this.listener));
                Debug.println("dispatchFilteredServiceEvent(" + listenerName + ")");
            }
            this.listener.serviceChanged(event);
        }
    }

    private ServiceEvent filterMatch(ServiceEvent delivered) {
        ModifiedServiceEvent modifiedServiceEvent;
        ServiceEvent event;
        boolean modified = delivered.getType() == 2;
        ServiceEvent serviceEvent = event = modified ? ((ModifiedServiceEvent)delivered).getModifiedEvent() : delivered;
        if (this.filter == null) {
            return event;
        }
        ServiceReference<?> reference = event.getServiceReference();
        if (this.filter.match(reference)) {
            return event;
        }
        if (modified && (modifiedServiceEvent = (ModifiedServiceEvent)delivered).matchPreviousProperties(this.filter)) {
            return modifiedServiceEvent.getModifiedEndMatchEvent();
        }
        return null;
    }

    public String toString() {
        String filterString = this.getFilter();
        if (filterString == null) {
            filterString = "";
        }
        return String.valueOf(this.listener.getClass().getName()) + "@" + Integer.toHexString(System.identityHashCode(this.listener)) + filterString;
    }

    public BundleContext getBundleContext() {
        return this.context;
    }

    public String getFilter() {
        if (this.filter != null) {
            return this.filter.toString();
        }
        return FilteredServiceListener.getObjectClassFilterString(this.objectClass);
    }

    public boolean isRemoved() {
        return this.removed;
    }

    void markRemoved() {
        this.removed = true;
    }

    private static String getObjectClassFilterString(String className) {
        if (className == null) {
            return null;
        }
        return "(objectClass=" + className + ")";
    }
}

