/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.FrameworkUtil
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.equinox.internal.p2.core;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.AgentLocation;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentService;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;
import org.osgi.framework.BundleContext;
import org.osgi.framework.FrameworkUtil;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProvisioningAgent
implements IProvisioningAgent,
ServiceTrackerCustomizer<IAgentServiceFactory, Object> {
    private final Map<String, Object> agentServices = Collections.synchronizedMap(new HashMap());
    private BundleContext context;
    private volatile boolean stopped = false;
    private ServiceRegistration<IProvisioningAgent> reg;
    private final Map<ServiceReference<IAgentServiceFactory>, ServiceTracker<IAgentServiceFactory, Object>> trackers = Collections.synchronizedMap(new HashMap());
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ProvisioningAgent() {
        this.registerService("org.eclipse.equinox.p2.installer.agent", this);
        this.registerService("org.eclipse.equinox.p2.installer.profile.id", "_SELF_");
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Object getService(String serviceName) {
        Map<String, Object> map = this.agentServices;
        synchronized (map) {
            ServiceTracker tracker;
            ServiceReference firstRef;
            Object service;
            block16: {
                IAgentServiceFactory factory;
                block15: {
                    Collection refs;
                    block14: {
                        this.checkRunning();
                        service = this.agentServices.get(serviceName);
                        if (service != null) {
                            return service;
                        }
                        try {
                            Class<?> clazz = class$0;
                            if (clazz == null) {
                                try {
                                    clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.spi.IAgentServiceFactory");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            refs = this.context.getServiceReferences(clazz, new StringBuffer("(p2.agent.servicename=").append(serviceName).append(')').toString());
                        }
                        catch (InvalidSyntaxException e) {
                            e.printStackTrace();
                            return null;
                        }
                        if (refs != null && !refs.isEmpty()) break block14;
                        return null;
                    }
                    firstRef = (ServiceReference)refs.iterator().next();
                    tracker = new ServiceTracker(this.context, firstRef, (ServiceTrackerCustomizer)this);
                    tracker.open();
                    factory = (IAgentServiceFactory)tracker.getService();
                    if (factory != null) break block15;
                    tracker.close();
                    return null;
                }
                service = factory.createService(this);
                if (service != null) break block16;
                tracker.close();
                return null;
            }
            this.registerService(serviceName, service);
            this.trackers.put((ServiceReference<IAgentServiceFactory>)firstRef, (ServiceTracker<IAgentServiceFactory, Object>)tracker);
            return service;
        }
    }

    private void checkRunning() {
        if (this.stopped) {
            throw new IllegalStateException(new StringBuffer("Attempt to access stopped agent: ").append(this).toString());
        }
    }

    @Override
    public void registerService(String serviceName, Object service) {
        this.checkRunning();
        this.agentServices.put(serviceName, service);
        if (service instanceof IAgentService) {
            ((IAgentService)service).start();
        }
    }

    public void setBundleContext(BundleContext context) {
        this.context = context;
    }

    public void setLocation(URI location) {
        IAgentLocation agentLocation = null;
        if (location == null) {
            ServiceReference ref;
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.equinox.p2.core.IAgentLocation");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((ref = this.context.getServiceReference((Class)clazz)) != null) {
                agentLocation = (IAgentLocation)this.context.getService(ref);
                this.context.ungetService(ref);
            }
        } else {
            agentLocation = new AgentLocation(location);
        }
        this.registerService(IAgentLocation.SERVICE_NAME, agentLocation);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void unregisterService(String serviceName, Object service) {
        Map<String, Object> map = this.agentServices;
        synchronized (map) {
            if (this.stopped) {
                return;
            }
            if (this.agentServices.get(serviceName) == service) {
                this.agentServices.remove(serviceName);
            }
        }
        if (service instanceof IAgentService) {
            ((IAgentService)service).stop();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void stop() {
        ArrayList<Object> toStop;
        Map<String, Object> map = this.agentServices;
        synchronized (map) {
            toStop = new ArrayList<Object>(this.agentServices.values());
        }
        for (Object e : toStop) {
            if (!(e instanceof IAgentService) || e == this) continue;
            ((IAgentService)e).stop();
        }
        this.stopped = true;
        Map<ServiceReference<IAgentServiceFactory>, ServiceTracker<IAgentServiceFactory, Object>> map2 = this.trackers;
        synchronized (map2) {
            for (ServiceTracker<IAgentServiceFactory, Object> t : this.trackers.values()) {
                t.close();
            }
            this.trackers.clear();
        }
        if (this.reg != null) {
            this.reg.unregister();
            this.reg = null;
        }
    }

    public void setServiceRegistration(ServiceRegistration<IProvisioningAgent> reg) {
        this.reg = reg;
    }

    public Object addingService(ServiceReference<IAgentServiceFactory> reference) {
        if (this.stopped) {
            return null;
        }
        return this.context.getService(reference);
    }

    public void modifiedService(ServiceReference<IAgentServiceFactory> reference, Object service) {
    }

    public void removedService(ServiceReference<IAgentServiceFactory> reference, Object factoryService) {
        if (this.stopped) {
            return;
        }
        String serviceName = (String)reference.getProperty("p2.agent.servicename");
        if (serviceName == null) {
            return;
        }
        Object registered = this.agentServices.get(serviceName);
        if (registered == null) {
            return;
        }
        if (FrameworkUtil.getBundle(registered.getClass()) == FrameworkUtil.getBundle(factoryService.getClass())) {
            this.unregisterService(serviceName, registered);
            ServiceTracker<IAgentServiceFactory, Object> toRemove = this.trackers.remove(reference);
            if (toRemove != null) {
                toRemove.close();
            }
        }
    }
}

