/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap
 *  org.eclipse.osgi.framework.eventmgr.EventDispatcher
 *  org.eclipse.osgi.framework.eventmgr.EventManager
 *  org.eclipse.osgi.framework.eventmgr.ListenerQueue
 */
package org.eclipse.equinox.internal.p2.core;

import java.util.EventObject;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.SynchronousProvisioningListener;
import org.eclipse.equinox.p2.core.spi.IAgentService;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.EventManager;
import org.eclipse.osgi.framework.eventmgr.ListenerQueue;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProvisioningEventBus
implements EventDispatcher<ProvisioningListener, ProvisioningListener, EventObject>,
IProvisioningEventBus,
IAgentService {
    private final CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> syncListeners = new CopyOnWriteIdentityMap();
    private final CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> asyncListeners = new CopyOnWriteIdentityMap();
    private EventManager eventManager = new EventManager("Provisioning Event Dispatcher");
    private Object dispatchEventLock = new Object();
    private boolean closed = false;
    private int dispatchingEvents = 0;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void addListener(ProvisioningListener toAdd) {
        if (toAdd instanceof SynchronousProvisioningListener) {
            CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> copyOnWriteIdentityMap = this.syncListeners;
            synchronized (copyOnWriteIdentityMap) {
                this.syncListeners.put((Object)toAdd, (Object)toAdd);
            }
        }
        CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> copyOnWriteIdentityMap = this.asyncListeners;
        synchronized (copyOnWriteIdentityMap) {
            this.asyncListeners.put((Object)toAdd, (Object)toAdd);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void removeListener(ProvisioningListener toRemove) {
        if (toRemove instanceof SynchronousProvisioningListener) {
            CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> copyOnWriteIdentityMap = this.syncListeners;
            synchronized (copyOnWriteIdentityMap) {
                this.syncListeners.remove((Object)toRemove);
            }
        }
        CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> copyOnWriteIdentityMap = this.asyncListeners;
        synchronized (copyOnWriteIdentityMap) {
            this.asyncListeners.remove((Object)toRemove);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void publishEvent(EventObject event) {
        Object object = this.dispatchEventLock;
        synchronized (object) {
            if (this.closed) {
                return;
            }
        }
        ListenerQueue listeners = new ListenerQueue(this.eventManager);
        CopyOnWriteIdentityMap<ProvisioningListener, ProvisioningListener> copyOnWriteIdentityMap = this.syncListeners;
        synchronized (copyOnWriteIdentityMap) {
            listeners.queueListeners(this.syncListeners.entrySet(), (EventDispatcher)this);
            listeners.dispatchEventSynchronous(0, (Object)event);
        }
        listeners = new ListenerQueue(this.eventManager);
        copyOnWriteIdentityMap = this.asyncListeners;
        synchronized (copyOnWriteIdentityMap) {
            listeners.queueListeners(this.asyncListeners.entrySet(), (EventDispatcher)this);
            Object object2 = this.dispatchEventLock;
            synchronized (object2) {
                if (!this.closed) {
                    listeners.dispatchEventAsynchronous(0, (Object)event);
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispatchEvent(ProvisioningListener eventListener, ProvisioningListener listenerObject, int eventAction, EventObject eventObject) {
        block21: {
            Object object = this.dispatchEventLock;
            synchronized (object) {
                if (this.closed) {
                    return;
                }
                ++this.dispatchingEvents;
            }
            try {
                try {
                    eventListener.notify(eventObject);
                }
                catch (Exception e) {
                    LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.core", "Exception during event notification", (Throwable)e));
                    Object object2 = this.dispatchEventLock;
                    synchronized (object2) {
                        --this.dispatchingEvents;
                        if (this.dispatchingEvents == 0) {
                            this.dispatchEventLock.notifyAll();
                        }
                        break block21;
                    }
                }
            }
            catch (Throwable throwable) {
                Object object3 = this.dispatchEventLock;
                synchronized (object3) {
                    --this.dispatchingEvents;
                    if (this.dispatchingEvents == 0) {
                        this.dispatchEventLock.notifyAll();
                    }
                }
                throw throwable;
            }
            Object object4 = this.dispatchEventLock;
            synchronized (object4) {
                --this.dispatchingEvents;
                if (this.dispatchingEvents == 0) {
                    this.dispatchEventLock.notifyAll();
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void close() {
        boolean interrupted = false;
        Object object = this.dispatchEventLock;
        synchronized (object) {
            this.eventManager.close();
            this.closed = true;
            while (this.dispatchingEvents != 0) {
                try {
                    this.dispatchEventLock.wait(30000L);
                    break;
                }
                catch (InterruptedException interruptedException) {
                    interrupted = true;
                }
            }
        }
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
    }

    @Override
    public void start() {
    }

    @Override
    public void stop() {
        this.close();
    }
}

