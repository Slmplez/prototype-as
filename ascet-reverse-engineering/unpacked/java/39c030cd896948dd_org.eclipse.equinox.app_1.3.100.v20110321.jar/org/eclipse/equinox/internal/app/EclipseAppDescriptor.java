/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.service.condpermadmin.BundleSignerCondition
 *  org.osgi.service.condpermadmin.ConditionInfo
 */
package org.eclipse.equinox.internal.app;

import java.net.URL;
import java.security.AccessController;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.AppPersistence;
import org.eclipse.equinox.internal.app.EclipseAppContainer;
import org.eclipse.equinox.internal.app.EclipseAppHandle;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.application.ApplicationDescriptor;
import org.osgi.service.application.ApplicationException;
import org.osgi.service.application.ApplicationHandle;
import org.osgi.service.condpermadmin.BundleSignerCondition;
import org.osgi.service.condpermadmin.ConditionInfo;

public class EclipseAppDescriptor
extends ApplicationDescriptor {
    static final String APP_TYPE = "eclipse.application.type";
    static final String APP_DEFAULT = "eclipse.application.default";
    static final String APP_TYPE_MAIN_THREAD = "main.thread";
    static final String APP_TYPE_ANY_THREAD = "any.thread";
    static final int FLAG_VISIBLE = 1;
    static final int FLAG_CARD_SINGLETON_GLOGAL = 2;
    static final int FLAG_CARD_SINGLETON_SCOPED = 4;
    static final int FLAG_CARD_UNLIMITED = 8;
    static final int FLAG_CARD_LIMITED = 16;
    static final int FLAG_TYPE_MAIN_THREAD = 32;
    static final int FLAG_TYPE_ANY_THREAD = 64;
    static final int FLAG_DEFAULT_APP = 128;
    private long instanceID = 0L;
    private ServiceRegistration sr;
    private Boolean locked = Boolean.FALSE;
    private final EclipseAppContainer appContainer;
    private final Bundle contributor;
    private final int flags;
    private final int cardinality;
    private final String name;
    private final URL iconURL;
    private final boolean[] registrationLock = new boolean[]{true};
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    protected EclipseAppDescriptor(Bundle contributor, String pid, String name, String iconPath, int flags, int cardinality, EclipseAppContainer appContainer) {
        super(pid);
        this.name = name;
        this.contributor = contributor;
        this.appContainer = appContainer;
        this.locked = AppPersistence.isLocked(this) ? Boolean.TRUE : Boolean.FALSE;
        this.flags = flags;
        this.cardinality = cardinality;
        URL iconResult = null;
        if (iconPath != null && iconPath.length() > 0) {
            Enumeration urls;
            if (iconPath.charAt(0) == '/') {
                iconPath = iconPath.substring(1);
            }
            String baseIconDir = "/";
            String iconFile = iconPath;
            int lastSlash = iconPath.lastIndexOf(47);
            if (lastSlash > 0 && lastSlash < iconPath.length() - 1) {
                baseIconDir = iconPath.substring(0, lastSlash);
                iconFile = iconPath.substring(lastSlash + 1);
            }
            if ((urls = contributor.findEntries(baseIconDir, iconFile, false)) != null && urls.hasMoreElements()) {
                iconResult = (URL)urls.nextElement();
            }
        }
        this.iconURL = iconResult;
    }

    protected Map getPropertiesSpecific(String locale) {
        return this.getServiceProperties();
    }

    protected ApplicationHandle launchSpecific(Map arguments) throws Exception {
        if (this.getLocked().booleanValue()) {
            throw new IllegalStateException("Cannot launch a locked application.");
        }
        EclipseAppHandle appHandle = this.createAppHandle(arguments);
        try {
            this.appContainer.launch(appHandle);
        }
        catch (Throwable t) {
            try {
                appHandle.destroy();
            }
            catch (Throwable throwable) {}
            if (t instanceof Exception) {
                throw (Exception)t;
            }
            throw (Error)t;
        }
        return appHandle;
    }

    protected synchronized void lockSpecific() {
        this.locked = Boolean.TRUE;
        this.refreshProperties();
    }

    protected synchronized void unlockSpecific() {
        this.locked = Boolean.FALSE;
        this.refreshProperties();
    }

    void refreshProperties() {
        ServiceRegistration reg = this.getServiceRegistration();
        if (reg != null) {
            try {
                reg.setProperties((Dictionary)this.getServiceProperties());
            }
            catch (IllegalStateException illegalStateException) {}
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setServiceRegistration(ServiceRegistration sr) {
        boolean[] blArray = this.registrationLock;
        synchronized (this.registrationLock) {
            this.sr = sr;
            this.registrationLock[0] = sr != null;
            this.registrationLock.notifyAll();
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ServiceRegistration getServiceRegistration() {
        boolean[] blArray = this.registrationLock;
        synchronized (this.registrationLock) {
            if (this.sr == null && this.registrationLock[0]) {
                try {
                    this.registrationLock.wait(1000L);
                }
                catch (InterruptedException interruptedException) {}
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return this.sr;
        }
    }

    private synchronized Boolean getLocked() {
        return this.locked;
    }

    Hashtable getServiceProperties() {
        Hashtable<String, Object> props = new Hashtable<String, Object>(10);
        props.put("service.pid", this.getApplicationId());
        if (this.name != null) {
            props.put("application.name", this.name);
        }
        props.put("application.container", "org.eclipse.equinox.app");
        props.put("application.location", this.getLocation());
        Boolean launchable = this.appContainer.isLocked(this) == 0 ? Boolean.TRUE : Boolean.FALSE;
        props.put("application.launchable", launchable);
        props.put("application.locked", this.getLocked());
        Boolean visible = (this.flags & 1) != 0 ? Boolean.TRUE : Boolean.FALSE;
        props.put("application.visible", visible);
        props.put(APP_TYPE, this.getThreadTypeString());
        if ((this.flags & 0x80) != 0) {
            props.put(APP_DEFAULT, Boolean.TRUE);
        }
        if (this.iconURL != null) {
            props.put("application.icon", this.iconURL);
        }
        return props;
    }

    private String getLocation() {
        if (this.contributor == null) {
            return "";
        }
        return Activator.getLocation(this.contributor);
    }

    private EclipseAppHandle createAppHandle(Map arguments) throws ApplicationException {
        EclipseAppHandle newAppHandle = new EclipseAppHandle(this.getInstanceID(), arguments, this);
        this.appContainer.lock(newAppHandle);
        String[] stringArray = new String[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.application.ApplicationHandle");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray[0] = clazz.getName();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.equinox.app.IApplicationContext");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray[1] = clazz2.getName();
        ServiceRegistration appHandleReg = (ServiceRegistration)AccessController.doPrivileged(this.appContainer.getRegServiceAction(stringArray, newAppHandle, newAppHandle.getServiceProperties()));
        newAppHandle.setServiceRegistration(appHandleReg);
        return newAppHandle;
    }

    EclipseAppContainer getContainerManager() {
        return this.appContainer;
    }

    public boolean matchDNChain(String pattern) {
        if (this.contributor == null) {
            return false;
        }
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.osgi.service.condpermadmin.BundleSignerCondition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return BundleSignerCondition.getCondition((Bundle)this.contributor, (ConditionInfo)new ConditionInfo(clazz.getName(), new String[]{pattern})).isSatisfied();
    }

    protected boolean isLaunchableSpecific() {
        return true;
    }

    public void unregister() {
        ServiceRegistration temp = this.getServiceRegistration();
        if (temp != null) {
            this.setServiceRegistration(null);
            temp.unregister();
        }
    }

    String getThreadTypeString() {
        if ((this.flags & 0x40) != 0) {
            return APP_TYPE_ANY_THREAD;
        }
        return APP_TYPE_MAIN_THREAD;
    }

    int getThreadType() {
        return this.flags & 0x60;
    }

    int getCardinalityType() {
        return this.flags & 0x1E;
    }

    int getCardinality() {
        return this.cardinality;
    }

    private synchronized String getInstanceID() {
        if (this.instanceID == Long.MAX_VALUE) {
            this.instanceID = 0L;
        }
        return String.valueOf(this.getApplicationId()) + "." + this.instanceID++;
    }
}

