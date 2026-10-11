/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.application;

import org.osgi.service.application.ApplicationAdminPermission;
import org.osgi.service.application.ApplicationDescriptor;
import org.osgi.service.application.ApplicationException;

public abstract class ApplicationHandle {
    public static final String APPLICATION_PID = "service.pid";
    public static final String APPLICATION_DESCRIPTOR = "application.descriptor";
    public static final String APPLICATION_STATE = "application.state";
    public static final String APPLICATION_SUPPORTS_EXITVALUE = "application.supports.exitvalue";
    public static final String RUNNING = "RUNNING";
    public static final String STOPPING = "STOPPING";
    private final String instanceId;
    private final ApplicationDescriptor descriptor;

    protected ApplicationHandle(String instanceId, ApplicationDescriptor descriptor) {
        if (instanceId == null || descriptor == null) {
            throw new NullPointerException("Parameters must not be null!");
        }
        this.instanceId = instanceId;
        this.descriptor = descriptor;
    }

    public final ApplicationDescriptor getApplicationDescriptor() {
        return this.descriptor;
    }

    public abstract String getState();

    public Object getExitValue(long timeout) throws ApplicationException, InterruptedException {
        throw new UnsupportedOperationException();
    }

    public final String getInstanceId() {
        return this.instanceId;
    }

    public final void destroy() {
        if (STOPPING.equals(this.getState())) {
            return;
        }
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new ApplicationAdminPermission(this.getApplicationDescriptor(), "lifecycle"));
        }
        this.destroySpecific();
    }

    protected abstract void destroySpecific();
}

