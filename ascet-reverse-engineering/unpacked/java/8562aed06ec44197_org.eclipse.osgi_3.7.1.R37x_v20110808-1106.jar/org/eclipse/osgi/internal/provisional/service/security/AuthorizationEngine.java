/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.service.security;

import java.util.HashMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.EventManager;
import org.eclipse.osgi.framework.eventmgr.ListenerQueue;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationEvent;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationListener;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;

public abstract class AuthorizationEngine {
    private EventManager manager = new EventManager();
    private EventDispatcher<AuthorizationListener, Object, AuthorizationEvent> dispatcher = new AuthEventDispatcher();
    private final ServiceTracker<AuthorizationListener, AuthorizationListener> listenerTracker;
    static /* synthetic */ Class class$0;

    public AuthorizationEngine(BundleContext context) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.provisional.service.security.AuthorizationListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.listenerTracker = new ServiceTracker(context, clazz.getName(), null);
        this.listenerTracker.open();
    }

    public final void authorize(SignedContent content, Object context) {
        this.fireEvent(this.doAuthorize(content, context));
    }

    private void fireEvent(AuthorizationEvent event) {
        if (event == null) {
            return;
        }
        Object[] services = this.listenerTracker.getServices();
        if (services == null) {
            return;
        }
        HashMap<AuthorizationListener, Object> listeners = new HashMap<AuthorizationListener, Object>();
        Object[] objectArray = services;
        int n = services.length;
        int n2 = 0;
        while (n2 < n) {
            Object service = objectArray[n2];
            listeners.put((AuthorizationListener)service, service);
            ++n2;
        }
        ListenerQueue<AuthorizationListener, Object, AuthorizationEvent> queue = new ListenerQueue<AuthorizationListener, Object, AuthorizationEvent>(this.manager);
        queue.queueListeners(listeners.entrySet(), this.dispatcher);
        queue.dispatchEventSynchronous(0, event);
    }

    protected abstract AuthorizationEvent doAuthorize(SignedContent var1, Object var2);

    public abstract int getStatus();

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class AuthEventDispatcher
    implements EventDispatcher<AuthorizationListener, Object, AuthorizationEvent> {
        AuthEventDispatcher() {
        }

        @Override
        public void dispatchEvent(AuthorizationListener eventListener, Object listenerObject, int eventAction, AuthorizationEvent eventObject) {
            eventListener.authorizationEvent(eventObject);
        }
    }
}

