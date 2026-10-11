/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.DebugElement
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IDisconnect
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.DebugElement;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IDisconnect;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.EventDispatcher;
import org.eclipse.jdt.internal.debug.core.IJDIEventListener;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public abstract class JDIDebugElement
extends DebugElement
implements IDisconnect {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public JDIDebugElement(JDIDebugTarget target) {
        super((IDebugTarget)target);
    }

    protected void logError(Exception e) {
        if (!((JDIDebugTarget)this.getDebugTarget()).isAvailable() && (e instanceof VMDisconnectedException || e instanceof CoreException && ((CoreException)((Object)e)).getStatus().getException() instanceof VMDisconnectedException)) {
            return;
        }
        JDIDebugPlugin.log(e);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.model.IDebugElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.debug.core.model.IStepFilters");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz2) {
            return this.getDebugTarget();
        }
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.debug.core.model.IDebugTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz3) {
            return this.getDebugTarget();
        }
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.debug.core.model.ITerminate");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz4) {
            return this.getDebugTarget();
        }
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz5) {
            return this.getJavaDebugTarget();
        }
        return super.getAdapter(adapter);
    }

    public String getModelIdentifier() {
        return JDIDebugModel.getPluginIdentifier();
    }

    public void queueEvent(DebugEvent event, EventSet set) {
        EventDispatcher dispatcher = ((JDIDebugTarget)this.getDebugTarget()).getEventDispatcher();
        if (dispatcher != null) {
            dispatcher.queue(event, set);
        }
    }

    public void fireSuspendEvent(int detail) {
        this.getJavaDebugTarget().incrementSuspendCount(detail);
        super.fireSuspendEvent(detail);
    }

    public void queueSuspendEvent(int detail, EventSet set) {
        this.getJavaDebugTarget().incrementSuspendCount(detail);
        this.queueEvent(new DebugEvent((Object)this, 2, detail), set);
    }

    public void requestFailed(String message, Exception e) throws DebugException {
        this.requestFailed(message, e, 5012);
    }

    public void targetRequestFailed(String message, RuntimeException e) throws DebugException {
        if (e != null && !e.getClass().getName().startsWith("com.sun.jdi") && !(e instanceof TimeoutException)) {
            throw e;
        }
        this.requestFailed(message, e, 5010);
    }

    public void requestFailed(String message, Throwable e, int code) throws DebugException {
        this.throwDebugException(message, code, e);
    }

    public void targetRequestFailed(String message, Throwable e) throws DebugException {
        this.throwDebugException(message, 5010, e);
    }

    public void jdiRequestFailed(String message, Throwable e) throws DebugException {
        this.throwDebugException(message, 5010, e);
    }

    public void notSupported(String message) throws DebugException {
        this.throwDebugException(message, 5011, null);
    }

    protected void throwDebugException(String message, int code, Throwable exception) throws DebugException {
        if (exception instanceof VMDisconnectedException) {
            this.disconnected();
        }
        throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), code, message, exception));
    }

    public void internalError(RuntimeException e) {
        if (!e.getClass().getName().startsWith("com.sun.jdi") && !(e instanceof TimeoutException)) {
            throw e;
        }
        this.logError(e);
    }

    protected void internalError(String message) {
        this.logError((Exception)((Object)new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5013, message, null))));
    }

    protected String getUnknownMessage() {
        return JDIDebugModelMessages.JDIDebugElement_unknown;
    }

    public JDIDebugTarget getJavaDebugTarget() {
        return (JDIDebugTarget)this.getDebugTarget();
    }

    protected VirtualMachine getVM() {
        return ((JDIDebugTarget)this.getDebugTarget()).getVM();
    }

    public EventRequestManager getEventRequestManager() {
        VirtualMachine vm = this.getVM();
        if (vm == null) {
            return null;
        }
        return vm.eventRequestManager();
    }

    public void addJDIEventListener(IJDIEventListener listener, EventRequest request) {
        EventDispatcher dispatcher = ((JDIDebugTarget)this.getDebugTarget()).getEventDispatcher();
        if (dispatcher != null) {
            dispatcher.addJDIEventListener(listener, request);
        }
    }

    public void removeJDIEventListener(IJDIEventListener listener, EventRequest request) {
        EventDispatcher dispatcher = ((JDIDebugTarget)this.getDebugTarget()).getEventDispatcher();
        if (dispatcher != null) {
            dispatcher.removeJDIEventListener(listener, request);
        }
    }

    protected void disconnected() {
        if (this.getDebugTarget() != null) {
            this.getJavaDebugTarget().disconnected();
        }
    }

    public void setRequestTimeout(int timeout) {
        VirtualMachine vm;
        if (this.supportsRequestTimeout() && (vm = this.getVM()) != null) {
            ((org.eclipse.jdi.VirtualMachine)vm).setRequestTimeout(timeout);
        }
    }

    public int getRequestTimeout() {
        VirtualMachine vm;
        if (this.supportsRequestTimeout() && (vm = this.getVM()) != null) {
            return ((org.eclipse.jdi.VirtualMachine)vm).getRequestTimeout();
        }
        return -1;
    }

    public boolean supportsRequestTimeout() {
        return this.getJavaDebugTarget().isAvailable() && this.getVM() instanceof org.eclipse.jdi.VirtualMachine;
    }

    public boolean canDisconnect() {
        return this.getDebugTarget().canDisconnect();
    }

    public void disconnect() throws DebugException {
        this.getDebugTarget().disconnect();
    }

    public boolean isDisconnected() {
        return this.getDebugTarget().isDisconnected();
    }

    public boolean isStepFiltersEnabled() {
        return this.getJavaDebugTarget().isStepFiltersEnabled();
    }
}

