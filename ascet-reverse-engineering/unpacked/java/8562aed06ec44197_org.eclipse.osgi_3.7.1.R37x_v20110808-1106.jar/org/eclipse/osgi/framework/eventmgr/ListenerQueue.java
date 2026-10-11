/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.eventmgr;

import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.EventListeners;
import org.eclipse.osgi.framework.eventmgr.EventManager;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ListenerQueue<K, V, E> {
    protected final EventManager manager;
    private final Map<Set<Map.Entry<K, V>>, EventDispatcher<K, V, E>> queue;
    private boolean readOnly;

    public ListenerQueue(EventManager manager) {
        if (manager == null) {
            throw new IllegalArgumentException();
        }
        this.manager = manager;
        this.queue = new CopyOnWriteIdentityMap<Set<Map.Entry<K, V>>, EventDispatcher<K, V, E>>();
        this.readOnly = false;
    }

    public void queueListeners(EventListeners<K, V> listeners, EventDispatcher<K, V, E> dispatcher) {
        this.queueListeners(listeners.entrySet(), dispatcher);
    }

    public synchronized void queueListeners(Set<Map.Entry<K, V>> listeners, EventDispatcher<K, V, E> dispatcher) {
        if (this.readOnly) {
            throw new IllegalStateException();
        }
        if (!listeners.isEmpty()) {
            this.queue.put(listeners, dispatcher);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispatchEventAsynchronous(int eventAction, E eventObject) {
        EventManager.EventThread<K, V, E> eventThread;
        ListenerQueue listenerQueue = this;
        synchronized (listenerQueue) {
            this.readOnly = true;
        }
        EventManager.EventThread<K, V, E> eventThread2 = eventThread = this.manager.getEventThread();
        synchronized (eventThread2) {
            for (Map.Entry<Set<Map.Entry<K, V>>, EventDispatcher<K, V, E>> entry : this.queue.entrySet()) {
                eventThread.postEvent(entry.getKey(), entry.getValue(), eventAction, eventObject);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispatchEventSynchronous(int eventAction, E eventObject) {
        ListenerQueue listenerQueue = this;
        synchronized (listenerQueue) {
            this.readOnly = true;
        }
        for (Map.Entry<Set<Map.Entry<K, V>>, EventDispatcher<K, V, E>> entry : this.queue.entrySet()) {
            EventManager.dispatchEvent(entry.getKey(), entry.getValue(), eventAction, eventObject);
        }
    }
}

