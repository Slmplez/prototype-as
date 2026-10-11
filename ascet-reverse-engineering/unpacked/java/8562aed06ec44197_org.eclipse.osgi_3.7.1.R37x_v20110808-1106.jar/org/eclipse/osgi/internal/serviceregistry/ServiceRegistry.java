/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.ListenerQueue;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.internal.serviceregistry.FilteredServiceListener;
import org.eclipse.osgi.internal.serviceregistry.HookContext;
import org.eclipse.osgi.internal.serviceregistry.ServiceReferenceImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistrationImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceUse;
import org.eclipse.osgi.internal.serviceregistry.ShrinkableCollection;
import org.eclipse.osgi.internal.serviceregistry.ShrinkableValueCollectionMap;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceException;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceListener;
import org.osgi.framework.ServicePermission;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.hooks.service.EventHook;
import org.osgi.framework.hooks.service.EventListenerHook;
import org.osgi.framework.hooks.service.FindHook;
import org.osgi.framework.hooks.service.ListenerHook;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceRegistry {
    public static final int SERVICEEVENT = 3;
    static final String findHookName;
    static final String eventHookName;
    static final String eventListenerHookName;
    static final String listenerHookName;
    private final Map<String, List<ServiceRegistrationImpl<?>>> publishedServicesByClass;
    private final List<ServiceRegistrationImpl<?>> allPublishedServices;
    private final Map<BundleContextImpl, List<ServiceRegistrationImpl<?>>> publishedServicesByContext;
    private long serviceid;
    private final Map<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> serviceEventListeners;
    private static final int initialCapacity = 50;
    private static final int initialSubCapacity = 10;
    private final Framework framework;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.osgi.internal.serviceregistry.ServiceRegistry");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        $assertionsDisabled = !clazz.desiredAssertionStatus();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.osgi.framework.hooks.service.FindHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        findHookName = clazz2.getName();
        Class<?> clazz3 = class$1;
        if (clazz3 == null) {
            try {
                clazz3 = class$1 = Class.forName("org.osgi.framework.hooks.service.EventHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        eventHookName = clazz3.getName();
        Class<?> clazz4 = class$2;
        if (clazz4 == null) {
            try {
                clazz4 = class$2 = Class.forName("org.osgi.framework.hooks.service.EventListenerHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        eventListenerHookName = clazz4.getName();
        Class<?> clazz5 = class$3;
        if (clazz5 == null) {
            try {
                clazz5 = class$3 = Class.forName("org.osgi.framework.hooks.service.ListenerHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        listenerHookName = clazz5.getName();
    }

    public ServiceRegistry(Framework framework) {
        this.framework = framework;
        this.serviceid = 1L;
        this.publishedServicesByClass = new HashMap(50);
        this.publishedServicesByContext = new HashMap(50);
        this.allPublishedServices = new ArrayList(50);
        this.serviceEventListeners = new HashMap<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>>(50);
    }

    public ServiceRegistrationImpl<?> registerService(BundleContextImpl context, String[] clazzes, Object service, Dictionary<String, ?> properties) {
        String invalidService;
        if (service == null) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println("Service object is null");
            }
            throw new IllegalArgumentException(Msg.SERVICE_ARGUMENT_NULL_EXCEPTION);
        }
        int size = clazzes.length;
        if (size == 0) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println("Classes array is empty");
            }
            throw new IllegalArgumentException(Msg.SERVICE_EMPTY_CLASS_LIST_EXCEPTION);
        }
        ArrayList<String> copy = new ArrayList<String>(size);
        int i = 0;
        while (i < size) {
            String clazz = clazzes[i].intern();
            if (!copy.contains(clazz)) {
                copy.add(clazz);
            }
            ++i;
        }
        size = copy.size();
        clazzes = copy.toArray(new String[size]);
        ServiceRegistry.checkRegisterServicePermission(clazzes);
        if (!(service instanceof ServiceFactory) && (invalidService = ServiceRegistry.checkServiceClass(clazzes, service)) != null) {
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer("Service object is not an instanceof ").append(invalidService).toString());
            }
            throw new IllegalArgumentException(NLS.bind(Msg.SERVICE_NOT_INSTANCEOF_CLASS_EXCEPTION, invalidService));
        }
        ServiceRegistrationImpl<Object> registration = new ServiceRegistrationImpl<Object>(this, context, clazzes, service);
        registration.register(properties);
        if (copy.contains(listenerHookName)) {
            this.notifyNewListenerHook(registration);
        }
        return registration;
    }

    public ServiceReferenceImpl<?>[] getServiceReferences(BundleContextImpl context, String clazz, String filterstring, boolean allservices, boolean callHooks) throws InvalidSyntaxException {
        int size;
        if (Debug.DEBUG_SERVICES) {
            Debug.println(new StringBuffer(String.valueOf(allservices ? "getAllServiceReferences(" : "getServiceReferences(")).append(clazz).append(", \"").append(filterstring).append("\")").toString());
        }
        Filter filter = filterstring == null ? null : context.createFilter(filterstring);
        List<ServiceRegistrationImpl<?>> registrations = this.lookupServiceRegistrations(clazz, filter);
        ArrayList references = new ArrayList(registrations.size());
        for (ServiceRegistrationImpl<?> registration : registrations) {
            ServiceReferenceImpl<?> reference;
            try {
                reference = registration.getReferenceImpl();
            }
            catch (IllegalStateException illegalStateException) {
                continue;
            }
            if (!allservices && !ServiceRegistry.isAssignableTo(context, reference)) continue;
            try {
                ServiceRegistry.checkGetServicePermission(reference);
            }
            catch (SecurityException securityException) {
                continue;
            }
            references.add(reference);
        }
        if (callHooks) {
            ShrinkableCollection shrinkable = new ShrinkableCollection(references);
            this.notifyFindHooks(context, clazz, filterstring, allservices, shrinkable);
        }
        if ((size = references.size()) == 0) {
            return null;
        }
        return references.toArray(new ServiceReferenceImpl[size]);
    }

    public ServiceReferenceImpl<?>[] getServiceReferences(BundleContextImpl context, String clazz, String filterstring, boolean allservices) throws InvalidSyntaxException {
        return this.getServiceReferences(context, clazz, filterstring, allservices, true);
    }

    public ServiceReferenceImpl<?> getServiceReference(BundleContextImpl context, String clazz) {
        block4: {
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer("getServiceReference(").append(clazz).append(")").toString());
            }
            try {
                ServiceReferenceImpl<?>[] references = this.getServiceReferences(context, clazz, null, false);
                if (references != null) {
                    return references[0];
                }
            }
            catch (InvalidSyntaxException e) {
                if (!Debug.DEBUG_GENERAL) break block4;
                Debug.println(new StringBuffer("InvalidSyntaxException w/ null filter").append(e.getMessage()).toString());
                Debug.printStackTrace(e);
            }
        }
        return null;
    }

    public Object getService(BundleContextImpl context, ServiceReferenceImpl<?> reference) {
        ServiceRegistry.checkGetServicePermission(reference);
        return reference.getRegistration().getService(context);
    }

    public boolean ungetService(BundleContextImpl context, ServiceReferenceImpl<?> reference) {
        ServiceRegistrationImpl<?> registration = reference.getRegistration();
        return registration.ungetService(context);
    }

    public ServiceReferenceImpl<?>[] getRegisteredServices(BundleContextImpl context) {
        List<ServiceRegistrationImpl<?>> registrations = this.lookupServiceRegistrations(context);
        ArrayList references = new ArrayList(registrations.size());
        for (ServiceRegistrationImpl<?> registration : registrations) {
            ServiceReferenceImpl<?> reference;
            try {
                reference = registration.getReferenceImpl();
            }
            catch (IllegalStateException illegalStateException) {
                continue;
            }
            try {
                ServiceRegistry.checkGetServicePermission(reference);
            }
            catch (SecurityException securityException) {
                continue;
            }
            references.add(reference);
        }
        int size = references.size();
        if (size == 0) {
            return null;
        }
        return references.toArray(new ServiceReferenceImpl[size]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ServiceReferenceImpl<?>[] getServicesInUse(BundleContextImpl context) {
        ArrayList registrations;
        Map<ServiceRegistrationImpl<?>, ServiceUse<?>> servicesInUse = context.getServicesInUseMap();
        if (servicesInUse == null) {
            return null;
        }
        Map<ServiceRegistrationImpl<?>, ServiceUse<?>> map = servicesInUse;
        synchronized (map) {
            block11: {
                if (!servicesInUse.isEmpty()) break block11;
                return null;
            }
            registrations = new ArrayList(servicesInUse.keySet());
        }
        ArrayList references = new ArrayList(registrations.size());
        for (ServiceRegistrationImpl serviceRegistrationImpl : registrations) {
            ServiceReferenceImpl reference;
            try {
                reference = serviceRegistrationImpl.getReferenceImpl();
            }
            catch (IllegalStateException illegalStateException) {
                continue;
            }
            try {
                ServiceRegistry.checkGetServicePermission(reference);
            }
            catch (SecurityException securityException) {
                continue;
            }
            references.add(reference);
        }
        int n = references.size();
        if (n == 0) {
            return null;
        }
        return references.toArray(new ServiceReferenceImpl[n]);
    }

    public void unregisterServices(BundleContextImpl context) {
        for (ServiceRegistrationImpl<?> registration : this.lookupServiceRegistrations(context)) {
            try {
                registration.unregister();
            }
            catch (IllegalStateException illegalStateException) {}
        }
        this.removeServiceRegistrations(context);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void releaseServicesInUse(BundleContextImpl context) {
        ArrayList registrations;
        Map<ServiceRegistrationImpl<?>, ServiceUse<?>> servicesInUse = context.getServicesInUseMap();
        if (servicesInUse == null) {
            return;
        }
        Map<ServiceRegistrationImpl<?>, ServiceUse<?>> map = servicesInUse;
        synchronized (map) {
            if (servicesInUse.isEmpty()) {
                return;
            }
            registrations = new ArrayList(servicesInUse.keySet());
        }
        if (Debug.DEBUG_SERVICES) {
            Debug.println("Releasing services");
        }
        for (ServiceRegistrationImpl serviceRegistrationImpl : registrations) {
            serviceRegistrationImpl.releaseService(context);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addServiceListener(BundleContextImpl context, ServiceListener listener, String filter) throws InvalidSyntaxException {
        FilteredServiceListener oldFilteredListener;
        if (Debug.DEBUG_EVENTS) {
            String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
            Debug.println(new StringBuffer("addServiceListener[").append(context.getBundleImpl()).append("](").append(listenerName).append(", \"").append(filter).append("\")").toString());
        }
        FilteredServiceListener filteredListener = new FilteredServiceListener(context, listener, filter);
        Map<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> map = this.serviceEventListeners;
        synchronized (map) {
            CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener> listeners = this.serviceEventListeners.get(context);
            if (listeners == null) {
                listeners = new CopyOnWriteIdentityMap();
                this.serviceEventListeners.put(context, listeners);
            }
            oldFilteredListener = listeners.put(listener, filteredListener);
        }
        if (oldFilteredListener != null) {
            oldFilteredListener.markRemoved();
            List<ListenerHook.ListenerInfo> removedListeners = Collections.singletonList(oldFilteredListener);
            this.notifyListenerHooks(removedListeners, false);
        }
        List<ListenerHook.ListenerInfo> addedListeners = Collections.singletonList(filteredListener);
        this.notifyListenerHooks(addedListeners, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeServiceListener(BundleContextImpl context, ServiceListener listener) {
        FilteredServiceListener oldFilteredListener;
        if (Debug.DEBUG_EVENTS) {
            String listenerName = new StringBuffer(String.valueOf(listener.getClass().getName())).append("@").append(Integer.toHexString(System.identityHashCode(listener))).toString();
            Debug.println(new StringBuffer("removeServiceListener[").append(context.getBundleImpl()).append("](").append(listenerName).append(")").toString());
        }
        Map<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> map = this.serviceEventListeners;
        synchronized (map) {
            Map listeners = this.serviceEventListeners.get(context);
            if (listeners == null) {
                return;
            }
            oldFilteredListener = (FilteredServiceListener)listeners.remove(listener);
        }
        if (oldFilteredListener == null) {
            return;
        }
        oldFilteredListener.markRemoved();
        List<ListenerHook.ListenerInfo> removedListeners = Collections.singletonList(oldFilteredListener);
        this.notifyListenerHooks(removedListeners, false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeAllServiceListeners(BundleContextImpl context) {
        Map removedListenersMap;
        Map<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> map = this.serviceEventListeners;
        synchronized (map) {
            removedListenersMap = this.serviceEventListeners.remove(context);
        }
        if (removedListenersMap == null || removedListenersMap.isEmpty()) {
            return;
        }
        Collection removedListeners = removedListenersMap.values();
        for (FilteredServiceListener oldFilteredListener : removedListeners) {
            oldFilteredListener.markRemoved();
        }
        this.notifyListenerHooks(ServiceRegistry.asListenerInfos(removedListeners), false);
    }

    private static Collection<ListenerHook.ListenerInfo> asListenerInfos(Collection<? extends ListenerHook.ListenerInfo> c) {
        return c;
    }

    public void publishServiceEvent(final ServiceEvent event) {
        if (System.getSecurityManager() == null) {
            this.publishServiceEventPrivileged(event);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    ServiceRegistry.this.publishServiceEventPrivileged(event);
                    return null;
                }
            });
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void publishServiceEventPrivileged(ServiceEvent event) {
        HashMap<BundleContextImpl, Set<Map.Entry<ServiceListener, FilteredServiceListener>>> listenerSnapshot;
        Map<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> map = this.serviceEventListeners;
        synchronized (map) {
            listenerSnapshot = new HashMap<BundleContextImpl, Set<Map.Entry<ServiceListener, FilteredServiceListener>>>(this.serviceEventListeners.size());
            for (Map.Entry<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> entry : this.serviceEventListeners.entrySet()) {
                CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener> listeners = entry.getValue();
                if (listeners.isEmpty()) continue;
                listenerSnapshot.put(entry.getKey(), listeners.entrySet());
            }
        }
        Collection<BundleContext> contexts = ServiceRegistry.asBundleContexts(listenerSnapshot.keySet());
        this.notifyEventHooksPrivileged(event, contexts);
        if (listenerSnapshot.isEmpty()) {
            return;
        }
        ShrinkableValueCollectionMap<BundleContext, ListenerHook.ListenerInfo> listeners = new ShrinkableValueCollectionMap<BundleContext, ListenerHook.ListenerInfo>(listenerSnapshot);
        this.notifyEventListenerHooksPrivileged(event, listeners);
        if (listenerSnapshot.isEmpty()) {
            return;
        }
        ListenerQueue queue = this.framework.newListenerQueue();
        for (Map.Entry entry : listenerSnapshot.entrySet()) {
            EventDispatcher dispatcher = (EventDispatcher)entry.getKey();
            Set listenerSet = (Set)entry.getValue();
            queue.queueListeners(listenerSet, dispatcher);
        }
        queue.dispatchEventSynchronous(3, event);
    }

    private static Collection<BundleContext> asBundleContexts(Collection<? extends BundleContext> c) {
        return c;
    }

    synchronized long getNextServiceId() {
        long id = this.serviceid;
        this.serviceid = id + 1L;
        return id;
    }

    void addServiceRegistration(BundleContextImpl context, ServiceRegistrationImpl<?> registration) {
        int insertIndex;
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        List<ServiceRegistrationImpl<?>> contextServices = this.publishedServicesByContext.get(context);
        if (contextServices == null) {
            contextServices = new ArrayList(10);
            this.publishedServicesByContext.put(context, contextServices);
        }
        contextServices.add(registration);
        String[] stringArray = registration.getClasses();
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String clazz = stringArray[n2];
            List<ServiceRegistrationImpl<?>> services = this.publishedServicesByClass.get(clazz);
            if (services == null) {
                services = new ArrayList(10);
                this.publishedServicesByClass.put(clazz, services);
            }
            insertIndex = -Collections.binarySearch(services, registration) - 1;
            services.add(insertIndex, registration);
            ++n2;
        }
        insertIndex = -Collections.binarySearch(this.allPublishedServices, registration) - 1;
        this.allPublishedServices.add(insertIndex, registration);
    }

    void modifyServiceRegistration(BundleContextImpl context, ServiceRegistrationImpl<?> registration) {
        int insertIndex;
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        String[] stringArray = registration.getClasses();
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String clazz = stringArray[n2];
            List<ServiceRegistrationImpl<?>> services = this.publishedServicesByClass.get(clazz);
            services.remove(registration);
            insertIndex = -Collections.binarySearch(services, registration) - 1;
            services.add(insertIndex, registration);
            ++n2;
        }
        this.allPublishedServices.remove(registration);
        insertIndex = -Collections.binarySearch(this.allPublishedServices, registration) - 1;
        this.allPublishedServices.add(insertIndex, registration);
    }

    void removeServiceRegistration(BundleContextImpl context, ServiceRegistrationImpl<?> registration) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        List<ServiceRegistrationImpl<?>> contextServices = this.publishedServicesByContext.get(context);
        if (contextServices != null) {
            contextServices.remove(registration);
        }
        String[] stringArray = registration.getClasses();
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String clazz = stringArray[n2];
            List<ServiceRegistrationImpl<?>> services = this.publishedServicesByClass.get(clazz);
            services.remove(registration);
            if (services.isEmpty()) {
                this.publishedServicesByClass.remove(clazz);
            }
            ++n2;
        }
        this.allPublishedServices.remove(registration);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private List<ServiceRegistrationImpl<?>> lookupServiceRegistrations(String clazz, Filter filter) {
        List<ServiceRegistrationImpl<?>> result;
        ServiceRegistry serviceRegistry = this;
        synchronized (serviceRegistry) {
            result = clazz == null ? this.allPublishedServices : this.publishedServicesByClass.get(clazz);
            if (result == null || result.isEmpty()) {
                List empty = Collections.EMPTY_LIST;
                return empty;
            }
            result = new ArrayList(result);
        }
        if (filter == null) {
            return result;
        }
        Iterator<ServiceRegistrationImpl<?>> iter = result.iterator();
        while (iter.hasNext()) {
            ServiceReferenceImpl<?> reference;
            ServiceRegistrationImpl<?> registration = iter.next();
            try {
                reference = registration.getReferenceImpl();
            }
            catch (IllegalStateException illegalStateException) {
                iter.remove();
                continue;
            }
            if (filter.match(reference)) continue;
            iter.remove();
        }
        return result;
    }

    private synchronized List<ServiceRegistrationImpl<?>> lookupServiceRegistrations(BundleContextImpl context) {
        List<ServiceRegistrationImpl<?>> result = this.publishedServicesByContext.get(context);
        if (result == null || result.isEmpty()) {
            List empty = Collections.EMPTY_LIST;
            return empty;
        }
        return new ArrayList(result);
    }

    private synchronized void removeServiceRegistrations(BundleContextImpl context) {
        this.publishedServicesByContext.remove(context);
    }

    private static void checkRegisterServicePermission(String[] names) {
        SecurityManager sm = System.getSecurityManager();
        if (sm == null) {
            return;
        }
        int i = 0;
        int len = names.length;
        while (i < len) {
            sm.checkPermission(new ServicePermission(names[i], "register"));
            ++i;
        }
    }

    private static void checkGetServicePermission(ServiceReference<?> reference) {
        SecurityManager sm = System.getSecurityManager();
        if (sm == null) {
            return;
        }
        sm.checkPermission(new ServicePermission(reference, "get"));
    }

    static boolean hasListenServicePermission(ServiceEvent event, BundleContextImpl context) {
        BundleProtectionDomain domain = context.getBundleImpl().getProtectionDomain();
        if (domain == null) {
            return true;
        }
        return domain.implies(new ServicePermission(event.getServiceReference(), "get"));
    }

    static String checkServiceClass(String[] clazzes, final Object serviceObject) {
        ClassLoader cl = AccessController.doPrivileged(new PrivilegedAction<ClassLoader>(){

            @Override
            public ClassLoader run() {
                return serviceObject.getClass().getClassLoader();
            }
        });
        int i = 0;
        int len = clazzes.length;
        while (i < len) {
            block4: {
                try {
                    Class<?> serviceClazz;
                    Class<?> clazz = serviceClazz = cl == null ? Class.forName(clazzes[i]) : cl.loadClass(clazzes[i]);
                    if (!serviceClazz.isInstance(serviceObject)) {
                        return clazzes[i];
                    }
                }
                catch (ClassNotFoundException classNotFoundException) {
                    if (!ServiceRegistry.extensiveCheckServiceClass(clazzes[i], serviceObject.getClass())) break block4;
                    return clazzes[i];
                }
            }
            ++i;
        }
        return null;
    }

    private static boolean extensiveCheckServiceClass(String clazz, Class<?> serviceClazz) {
        if (clazz.equals(serviceClazz.getName())) {
            return false;
        }
        Class<?>[] interfaces = serviceClazz.getInterfaces();
        int i = 0;
        int len = interfaces.length;
        while (i < len) {
            if (!ServiceRegistry.extensiveCheckServiceClass(clazz, interfaces[i])) {
                return false;
            }
            ++i;
        }
        Class<?> superClazz = serviceClazz.getSuperclass();
        return superClazz == null || ServiceRegistry.extensiveCheckServiceClass(clazz, superClazz);
    }

    static boolean isAssignableTo(BundleContextImpl context, ServiceReferenceImpl<?> reference) {
        AbstractBundle bundle = context.getBundleImpl();
        String[] clazzes = reference.getClasses();
        int i = 0;
        int len = clazzes.length;
        while (i < len) {
            if (!reference.isAssignableTo(bundle, clazzes[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void notifyFindHooks(final BundleContextImpl context, final String clazz, final String filterstring, final boolean allservices, final Collection<ServiceReference<?>> result) {
        if (System.getSecurityManager() == null) {
            this.notifyFindHooksPrivileged(context, clazz, filterstring, allservices, result);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    ServiceRegistry.this.notifyFindHooksPrivileged(context, clazz, filterstring, allservices, result);
                    return null;
                }
            });
        }
    }

    void notifyFindHooksPrivileged(final BundleContextImpl context, final String clazz, final String filterstring, final boolean allservices, final Collection<ServiceReference<?>> result) {
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyServiceFindHooks(").append(context.getBundleImpl()).append(",").append(clazz).append(",").append(filterstring).append(",").append(allservices).append(",").append(result).append(")").toString());
        }
        this.notifyHooksPrivileged(new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof FindHook) {
                    ((FindHook)hook).find(context, clazz, filterstring, allservices, result);
                }
            }

            @Override
            public String getHookClassName() {
                return findHookName;
            }

            @Override
            public String getHookMethodName() {
                return "find";
            }
        });
    }

    private void notifyEventHooksPrivileged(final ServiceEvent event, final Collection<BundleContext> result) {
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyServiceEventHooks(").append(event.getType()).append(":").append(event.getServiceReference()).append(",").append(result).append(")").toString());
        }
        this.notifyHooksPrivileged(new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof EventHook) {
                    ((EventHook)hook).event(event, result);
                }
            }

            @Override
            public String getHookClassName() {
                return eventHookName;
            }

            @Override
            public String getHookMethodName() {
                return "event";
            }
        });
    }

    private void notifyEventListenerHooksPrivileged(final ServiceEvent event, final Map<BundleContext, Collection<ListenerHook.ListenerInfo>> result) {
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyServiceEventListenerHooks(").append(event.getType()).append(":").append(event.getServiceReference()).append(",").append(result).append(")").toString());
        }
        this.notifyHooksPrivileged(new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof EventListenerHook) {
                    ((EventListenerHook)hook).event(event, result);
                }
            }

            @Override
            public String getHookClassName() {
                return eventListenerHookName;
            }

            @Override
            public String getHookMethodName() {
                return "event";
            }
        });
    }

    public void notifyHooksPrivileged(HookContext hookContext) {
        BundleContextImpl systemBundleContext = this.framework.getSystemBundleContext();
        if (systemBundleContext == null) {
            return;
        }
        List<ServiceRegistrationImpl<?>> hooks = this.lookupServiceRegistrations(hookContext.getHookClassName(), null);
        for (ServiceRegistrationImpl<?> registration : hooks) {
            this.notifyHookPrivileged(systemBundleContext, registration, hookContext);
        }
    }

    private void notifyHookPrivileged(BundleContextImpl context, ServiceRegistrationImpl<?> registration, HookContext hookContext) {
        Object hook = registration.getSafeService(context);
        if (hook == null) {
            return;
        }
        try {
            try {
                hookContext.call(hook, registration);
            }
            catch (Throwable t) {
                if (Debug.DEBUG_HOOKS) {
                    Debug.println(new StringBuffer(String.valueOf(hook.getClass().getName())).append(".").append(hookContext.getHookMethodName()).append("() exception: ").append(t.getMessage()).toString());
                    Debug.printStackTrace(t);
                }
                this.framework.getAdaptor().handleRuntimeError(t);
                ServiceException se = new ServiceException(NLS.bind(Msg.SERVICE_FACTORY_EXCEPTION, hook.getClass().getName(), hookContext.getHookMethodName()), t);
                this.framework.publishFrameworkEvent(2, registration.getBundle(), se);
                registration.ungetService(context);
            }
        }
        finally {
            registration.ungetService(context);
        }
    }

    private void notifyNewListenerHook(final ServiceRegistrationImpl<?> registration) {
        if (System.getSecurityManager() == null) {
            this.notifyNewListenerHookPrivileged(registration);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    ServiceRegistry.this.notifyNewListenerHookPrivileged(registration);
                    return null;
                }
            });
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void notifyNewListenerHookPrivileged(ServiceRegistrationImpl<?> registration) {
        BundleContextImpl systemBundleContext = this.framework.getSystemBundleContext();
        if (systemBundleContext == null) {
            return;
        }
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyServiceNewListenerHook(").append(registration).append(")").toString());
        }
        ArrayList<FilteredServiceListener> addedListeners = new ArrayList<FilteredServiceListener>(50);
        Map<BundleContextImpl, CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener>> map = this.serviceEventListeners;
        synchronized (map) {
            for (CopyOnWriteIdentityMap<ServiceListener, FilteredServiceListener> listeners : this.serviceEventListeners.values()) {
                if (listeners.isEmpty()) continue;
                addedListeners.addAll(listeners.values());
            }
        }
        final Collection listeners = Collections.unmodifiableCollection(addedListeners);
        this.notifyHookPrivileged(systemBundleContext, registration, new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof ListenerHook) {
                    ((ListenerHook)hook).added(listeners);
                }
            }

            @Override
            public String getHookClassName() {
                return listenerHookName;
            }

            @Override
            public String getHookMethodName() {
                return "added";
            }
        });
    }

    private void notifyListenerHooks(final Collection<ListenerHook.ListenerInfo> listeners, final boolean added) {
        if (System.getSecurityManager() == null) {
            this.notifyListenerHooksPrivileged(listeners, added);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    ServiceRegistry.this.notifyListenerHooksPrivileged(listeners, added);
                    return null;
                }
            });
        }
    }

    void notifyListenerHooksPrivileged(final Collection<ListenerHook.ListenerInfo> listeners, final boolean added) {
        if (!$assertionsDisabled && listeners.isEmpty()) {
            throw new AssertionError();
        }
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyServiceListenerHooks(").append(listeners).append(",").append(added ? "added" : "removed").append(")").toString());
        }
        this.notifyHooksPrivileged(new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof ListenerHook) {
                    if (added) {
                        ((ListenerHook)hook).added(listeners);
                    } else {
                        ((ListenerHook)hook).removed(listeners);
                    }
                }
            }

            @Override
            public String getHookClassName() {
                return listenerHookName;
            }

            @Override
            public String getHookMethodName() {
                return added ? "added" : "removed";
            }
        });
    }
}

