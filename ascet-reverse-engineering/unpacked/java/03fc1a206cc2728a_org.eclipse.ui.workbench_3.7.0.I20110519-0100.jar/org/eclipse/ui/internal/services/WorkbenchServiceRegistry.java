/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.AbstractSourceProvider;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.internal.services.SourcePriorityNameMapping;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.statushandlers.StatusManager;

public class WorkbenchServiceRegistry
implements IExtensionChangeHandler {
    private static final String WORKBENCH_LEVEL = "workbench";
    private static final String EXT_ID_SERVICES = "org.eclipse.ui.services";
    private static WorkbenchServiceRegistry registry = null;
    public static final IServiceLocator GLOBAL_PARENT = new IServiceLocator(){

        public Object getService(Class api) {
            return null;
        }

        public boolean hasService(Class api) {
            return false;
        }
    };
    private Map factories = new HashMap();
    private static final String[] supportedLevels = new String[]{"activeContexts", "activeShell", "activeWorkbenchWindow", "activeEditorId", "activePartId", "activeSite"};
    static /* synthetic */ Class class$0;

    public static WorkbenchServiceRegistry getRegistry() {
        if (registry == null) {
            registry = new WorkbenchServiceRegistry();
        }
        return registry;
    }

    private WorkbenchServiceRegistry() {
        PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPoint()));
    }

    public Object getService(Class key, IServiceLocator parentLocator, ServiceLocator locator) {
        Object result;
        ServiceFactoryHandle handle = (ServiceFactoryHandle)this.factories.get(key.getName());
        if (handle == null) {
            handle = this.loadFromRegistry(key);
        }
        if (handle != null && (result = handle.factory.create(key, parentLocator, locator)) != null) {
            handle.serviceLocators.put(locator, new Object());
            return result;
        }
        return null;
    }

    private ServiceFactoryHandle loadFromRegistry(Class key) {
        ServiceFactoryHandle result = null;
        IConfigurationElement[] serviceFactories = this.getExtensionPoint().getConfigurationElements();
        try {
            String requestedName = key.getName();
            boolean done = false;
            int i = 0;
            while (i < serviceFactories.length && !done) {
                IConfigurationElement[] serviceNameElements = serviceFactories[i].getChildren("service");
                int j = 0;
                while (j < serviceNameElements.length && !done) {
                    String serviceName = serviceNameElements[j].getAttribute("serviceClass");
                    if (requestedName.equals(serviceName)) {
                        done = true;
                    }
                    ++j;
                }
                if (done) {
                    AbstractServiceFactory f = (AbstractServiceFactory)serviceFactories[i].createExecutableExtension("factoryClass");
                    ServiceFactoryHandle handle = new ServiceFactoryHandle(f);
                    PlatformUI.getWorkbench().getExtensionTracker().registerObject(serviceFactories[i].getDeclaringExtension(), (Object)handle, 2);
                    ArrayList<String> serviceNames = new ArrayList<String>();
                    int j2 = 0;
                    while (j2 < serviceNameElements.length) {
                        String serviceName = serviceNameElements[j2].getAttribute("serviceClass");
                        if (this.factories.containsKey(serviceName)) {
                            WorkbenchPlugin.log("Factory already exists for " + serviceName);
                        } else {
                            this.factories.put(serviceName, handle);
                            serviceNames.add(serviceName);
                        }
                        ++j2;
                    }
                    handle.serviceNames = serviceNames.toArray(new String[serviceNames.size()]);
                    result = handle;
                }
                ++i;
            }
        }
        catch (CoreException e) {
            StatusManager.getManager().handle(e.getStatus());
        }
        return result;
    }

    private IExtensionPoint getExtensionPoint() {
        IExtensionRegistry reg = Platform.getExtensionRegistry();
        IExtensionPoint ep = reg.getExtensionPoint(EXT_ID_SERVICES);
        return ep;
    }

    public AbstractSourceProvider[] getSourceProviders() {
        ArrayList<Object> providers = new ArrayList<Object>();
        IExtensionPoint ep = this.getExtensionPoint();
        IConfigurationElement[] elements = ep.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            if (elements[i].getName().equals("sourceProvider")) {
                try {
                    Object sourceProvider = elements[i].createExecutableExtension("provider");
                    if (!(sourceProvider instanceof AbstractSourceProvider)) {
                        String attributeName = elements[i].getAttribute("provider");
                        String message = "Source Provider '" + attributeName + "' should extend AbstractSourceProvider";
                        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, message);
                        WorkbenchPlugin.log((IStatus)status);
                    } else {
                        providers.add(sourceProvider);
                    }
                }
                catch (CoreException e) {
                    StatusManager.getManager().handle(e.getStatus());
                }
            }
            ++i;
        }
        return providers.toArray(new AbstractSourceProvider[providers.size()]);
    }

    public void initializeSourcePriorities() {
        IExtensionPoint ep = this.getExtensionPoint();
        IConfigurationElement[] elements = ep.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            if (elements[i].getName().equals("sourceProvider")) {
                this.processVariables(elements[i].getChildren("variable"));
            }
            ++i;
        }
    }

    private void processVariables(IConfigurationElement[] children) {
        int i = 0;
        while (i < children.length) {
            String name = children[i].getAttribute("name");
            if (name != null && name.length() != 0) {
                String level = children[i].getAttribute("priorityLevel");
                if (level == null || level.length() == 0) {
                    level = WORKBENCH_LEVEL;
                } else {
                    boolean found = false;
                    int j = 0;
                    while (j < supportedLevels.length && !found) {
                        if (supportedLevels[j].equals(level)) {
                            found = true;
                        }
                        ++j;
                    }
                    if (!found) {
                        level = WORKBENCH_LEVEL;
                    }
                }
                int existingPriority = SourcePriorityNameMapping.getMapping(level);
                int newPriority = existingPriority << 1;
                SourcePriorityNameMapping.addMapping(name, newPriority);
            }
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof ServiceFactoryHandle) {
                ServiceFactoryHandle handle = (ServiceFactoryHandle)object;
                Set locatorSet = handle.serviceLocators.keySet();
                ServiceLocator[] locators = locatorSet.toArray(new ServiceLocator[locatorSet.size()]);
                Arrays.sort(locators, new Comparator(){

                    public int compare(Object o1, Object o2) {
                        int l2;
                        ServiceLocator loc1 = (ServiceLocator)o1;
                        ServiceLocator loc2 = (ServiceLocator)o2;
                        Class<?> clazz = class$0;
                        if (clazz == null) {
                            try {
                                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        int l1 = ((IWorkbenchLocationService)loc1.getService(clazz)).getServiceLevel();
                        Class<?> clazz2 = class$0;
                        if (clazz2 == null) {
                            try {
                                clazz2 = class$0 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        return l1 < (l2 = ((IWorkbenchLocationService)loc2.getService(clazz2)).getServiceLevel()) ? -1 : (l1 > l2 ? 1 : 0);
                    }
                });
                int j = 0;
                while (j < locators.length) {
                    ServiceLocator serviceLocator = locators[j];
                    if (!serviceLocator.isDisposed()) {
                        serviceLocator.unregisterServices(handle.serviceNames);
                    }
                    ++j;
                }
                handle.factory = null;
                j = 0;
                while (j < handle.serviceNames.length) {
                    String serviceName = handle.serviceNames[j];
                    if (this.factories.get(serviceName) == handle) {
                        this.factories.remove(serviceName);
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    static class ServiceFactoryHandle {
        AbstractServiceFactory factory;
        WeakHashMap serviceLocators = new WeakHashMap();
        String[] serviceNames;

        ServiceFactoryHandle(AbstractServiceFactory factory) {
            this.factory = factory;
        }
    }
}

