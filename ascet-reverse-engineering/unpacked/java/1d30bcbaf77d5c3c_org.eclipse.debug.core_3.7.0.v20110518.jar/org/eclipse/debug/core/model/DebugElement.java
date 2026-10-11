/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IStepFilters;

public abstract class DebugElement
extends PlatformObject
implements IDebugElement {
    private IDebugTarget fTarget;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public DebugElement(IDebugTarget target) {
        this.fTarget = target;
    }

    public IDebugTarget getDebugTarget() {
        return this.fTarget;
    }

    public ILaunch getLaunch() {
        return this.getDebugTarget().getLaunch();
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
        if (adapter == clazz2 && this.getDebugTarget() instanceof IStepFilters) {
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
                clazz4 = class$3 = Class.forName("org.eclipse.debug.core.ILaunch");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz4) {
            return this.getLaunch();
        }
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.debug.core.model.IProcess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz5) {
            return this.getDebugTarget().getProcess();
        }
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("org.eclipse.debug.core.ILaunchConfiguration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz6) {
            return this.getLaunch().getLaunchConfiguration();
        }
        return super.getAdapter(adapter);
    }

    public void fireEvent(DebugEvent event) {
        DebugPlugin.getDefault().fireDebugEventSet(new DebugEvent[]{event});
    }

    public void fireChangeEvent(int detail) {
        this.fireEvent(new DebugEvent(this, 16, detail));
    }

    public void fireCreationEvent() {
        this.fireEvent(new DebugEvent(this, 4));
    }

    public void fireResumeEvent(int detail) {
        this.fireEvent(new DebugEvent(this, 1, detail));
    }

    public void fireSuspendEvent(int detail) {
        this.fireEvent(new DebugEvent(this, 2, detail));
    }

    public void fireTerminateEvent() {
        this.fireEvent(new DebugEvent(this, 8));
    }

    protected void requestFailed(String message, Throwable e) throws DebugException {
        throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5010, message, e));
    }

    protected void notSupported(String message, Throwable e) throws DebugException {
        throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5011, message, e));
    }
}

