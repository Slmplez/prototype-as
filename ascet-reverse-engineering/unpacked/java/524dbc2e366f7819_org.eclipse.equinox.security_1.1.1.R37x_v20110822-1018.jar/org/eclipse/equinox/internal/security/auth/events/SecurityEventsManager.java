/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.auth.events;

import java.util.Iterator;
import java.util.Vector;
import javax.security.auth.Subject;
import javax.security.auth.login.LoginException;
import org.eclipse.equinox.security.auth.ILoginContextListener;

public class SecurityEventsManager {
    private Vector listeners = new Vector(5);

    public synchronized void addListener(ILoginContextListener listener) {
        this.listeners.add(listener);
    }

    public synchronized void removeListener(ILoginContextListener listener) {
        this.listeners.remove(listener);
    }

    public void notifyLoginBegin(Subject subject) {
        Iterator i = this.listeners.iterator();
        while (i.hasNext()) {
            Object listener = i.next();
            if (!(listener instanceof ILoginContextListener)) continue;
            ((ILoginContextListener)listener).onLoginStart(subject);
        }
    }

    public void notifyLoginEnd(Subject subject, LoginException loginException) {
        Iterator i = this.listeners.iterator();
        while (i.hasNext()) {
            Object listener = i.next();
            if (!(listener instanceof ILoginContextListener)) continue;
            ((ILoginContextListener)listener).onLoginFinish(subject, loginException);
        }
    }

    public void notifyLogoutBegin(Subject subject) {
        Iterator i = this.listeners.iterator();
        while (i.hasNext()) {
            Object listener = i.next();
            if (!(listener instanceof ILoginContextListener)) continue;
            ((ILoginContextListener)listener).onLogoutStart(subject);
        }
    }

    public void notifyLogoutEnd(Subject subject, LoginException loginException) {
        Iterator i = this.listeners.iterator();
        while (i.hasNext()) {
            Object listener = i.next();
            if (!(listener instanceof ILoginContextListener)) continue;
            ((ILoginContextListener)listener).onLogoutFinish(subject, loginException);
        }
    }
}

