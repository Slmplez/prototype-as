/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.eventmgr;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventManager {
    static final boolean DEBUG = false;
    private EventThread<?, ?, ?> thread = null;
    private boolean closed = false;
    protected final String threadName;
    protected final ThreadGroup threadGroup;

    public EventManager() {
        this(null, null);
    }

    public EventManager(String threadName) {
        this(threadName, null);
    }

    public EventManager(String threadName, ThreadGroup threadGroup) {
        this.threadName = threadName;
        this.threadGroup = threadGroup;
    }

    public synchronized void close() {
        if (this.closed) {
            return;
        }
        if (this.thread != null) {
            this.thread.close();
            this.thread = null;
        }
        this.closed = true;
    }

    synchronized <K, V, E> EventThread<K, V, E> getEventThread() {
        if (this.closed) {
            throw new IllegalStateException();
        }
        if (this.thread == null) {
            this.thread = (EventThread)AccessController.doPrivileged(new PrivilegedAction<EventThread<K, V, E>>(){

                @Override
                public EventThread<K, V, E> run() {
                    EventThread t = new EventThread(EventManager.this.threadGroup, EventManager.this.threadName);
                    return t;
                }
            });
            this.thread.start();
        }
        EventThread<?, ?, ?> result = this.thread;
        return result;
    }

    static <K, V, E> void dispatchEvent(Set<Map.Entry<K, V>> listeners, EventDispatcher<K, V, E> dispatcher, int eventAction, E eventObject) {
        for (Map.Entry<K, V> listener : listeners) {
            K eventListener = listener.getKey();
            V listenerObject = listener.getValue();
            try {
                dispatcher.dispatchEvent(eventListener, listenerObject, eventAction, eventObject);
            }
            catch (Throwable throwable) {
                // empty catch block
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class EventThread<K, V, E>
    extends Thread {
        private static int nextThreadNumber;
        private Queued<K, V, E> head = null;
        private Queued<K, V, E> tail = null;
        private volatile boolean running = true;

        EventThread(ThreadGroup threadGroup, String threadName) {
            super(threadGroup, threadName == null ? EventThread.getNextName() : threadName);
            this.setDaemon(true);
        }

        private static synchronized String getNextName() {
            return new StringBuffer("EventManagerThread-").append(nextThreadNumber++).toString();
        }

        EventThread(String threadName) {
            this((ThreadGroup)null, threadName);
        }

        EventThread() {
            this((ThreadGroup)null, (String)null);
        }

        void close() {
            this.running = false;
            this.interrupt();
        }

        @Override
        public void run() {
            try {
                while (true) {
                    Queued<K, V, E> item;
                    if ((item = this.getNextEvent()) == null) {
                        return;
                    }
                    EventManager.dispatchEvent(item.listeners, item.dispatcher, item.action, item.object);
                    item = null;
                }
            }
            catch (RuntimeException e) {
                throw e;
            }
            catch (Error e) {
                throw e;
            }
        }

        synchronized void postEvent(Set<Map.Entry<K, V>> l, EventDispatcher<K, V, E> d, int a, E o) {
            if (!this.isAlive()) {
                throw new IllegalStateException();
            }
            Queued<K, V, E> item = new Queued<K, V, E>(l, d, a, o);
            if (this.head == null) {
                this.head = item;
                this.tail = item;
            } else {
                this.tail.next = item;
                this.tail = item;
            }
            this.notify();
        }

        private synchronized Queued<K, V, E> getNextEvent() {
            while (this.running && this.head == null) {
                try {
                    this.wait();
                }
                catch (InterruptedException interruptedException) {}
            }
            if (!this.running) {
                return null;
            }
            Queued<K, V, E> item = this.head;
            this.head = item.next;
            if (this.head == null) {
                this.tail = null;
            }
            return item;
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private static class Queued<K, V, E> {
            final Set<Map.Entry<K, V>> listeners;
            final EventDispatcher<K, V, E> dispatcher;
            final int action;
            final E object;
            Queued<K, V, E> next;

            Queued(Set<Map.Entry<K, V>> l, EventDispatcher<K, V, E> d, int a, E o) {
                this.listeners = l;
                this.dispatcher = d;
                this.action = a;
                this.object = o;
                this.next = null;
            }
        }
    }
}

