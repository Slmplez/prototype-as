/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Field
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.event.AccessWatchpointEvent
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.event.ModificationWatchpointEvent
 *  com.sun.jdi.request.AccessWatchpointRequest
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  com.sun.jdi.request.ModificationWatchpointRequest
 *  com.sun.jdi.request.WatchpointRequest
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.model.IDebugTarget
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.sun.jdi.Field;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.event.AccessWatchpointEvent;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.event.ModificationWatchpointEvent;
import com.sun.jdi.request.AccessWatchpointRequest;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import com.sun.jdi.request.ModificationWatchpointRequest;
import com.sun.jdi.request.WatchpointRequest;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdt.debug.core.IJavaWatchpoint;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class JavaWatchpoint
extends JavaLineBreakpoint
implements IJavaWatchpoint {
    public static final String JAVA_WATCHPOINT = "org.eclipse.jdt.debug.javaWatchpointMarker";
    protected static final String ACCESS = "org.eclipse.jdt.debug.core.access";
    protected static final String MODIFICATION = "org.eclipse.jdt.debug.core.modification";
    protected static final String AUTO_DISABLED = "org.eclipse.jdt.debug.core.auto_disabled";
    protected static final String FIELD_NAME = "org.eclipse.jdt.debug.core.fieldName";
    protected static final Integer ACCESS_EVENT = new Integer(0);
    protected static final Integer MODIFICATION_EVENT = new Integer(1);
    private HashMap fLastEventTypes = new HashMap(10);

    public JavaWatchpoint() {
    }

    public JavaWatchpoint(final IResource resource, final String typeName, final String fieldName, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean add, final Map attributes) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaWatchpoint.this.setMarker(resource.createMarker(JavaWatchpoint.JAVA_WATCHPOINT));
                JavaWatchpoint.this.addLineBreakpointAttributes(attributes, JavaWatchpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaWatchpoint.this.addTypeNameAndHitCount(attributes, typeName, hitCount);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaWatchpoint.this.getDefaultSuspendPolicy()));
                JavaWatchpoint.this.addFieldName(attributes, fieldName);
                JavaWatchpoint.this.addDefaultAccessAndModification(attributes);
                JavaWatchpoint.this.ensureMarker().setAttributes(attributes);
                JavaWatchpoint.this.register(add);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    protected boolean createRequest(JDIDebugTarget target, ReferenceType type) throws CoreException {
        if (this.shouldSkipBreakpoint()) {
            return false;
        }
        Field field = null;
        field = type.fieldByName(this.getFieldName());
        if (field == null) {
            return false;
        }
        AccessWatchpointRequest accessRequest = null;
        ModificationWatchpointRequest modificationRequest = null;
        if (target.supportsAccessWatchpoints()) {
            accessRequest = this.createAccessWatchpoint(target, field);
            this.registerRequest((EventRequest)accessRequest, target);
        } else {
            this.notSupported(JDIDebugBreakpointMessages.JavaWatchpoint_no_access_watchpoints);
        }
        if (target.supportsModificationWatchpoints()) {
            modificationRequest = this.createModificationWatchpoint(target, field);
            if (modificationRequest == null) {
                return false;
            }
            this.registerRequest((EventRequest)modificationRequest, target);
            return true;
        }
        this.notSupported(JDIDebugBreakpointMessages.JavaWatchpoint_no_modification_watchpoints);
        return false;
    }

    protected void setRequestThreadFilter(EventRequest request, ThreadReference thread) {
        ((WatchpointRequest)request).addThreadFilter(thread);
    }

    protected void notSupported(String message) throws DebugException {
        throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5011, message, null));
    }

    protected AccessWatchpointRequest createAccessWatchpoint(JDIDebugTarget target, Field field) throws CoreException {
        return (AccessWatchpointRequest)this.createWatchpoint(target, field, true);
    }

    protected ModificationWatchpointRequest createModificationWatchpoint(JDIDebugTarget target, Field field) throws CoreException {
        return (ModificationWatchpointRequest)this.createWatchpoint(target, field, false);
    }

    protected WatchpointRequest createWatchpoint(JDIDebugTarget target, Field field, boolean access) throws CoreException {
        Object request = null;
        EventRequestManager manager = target.getEventRequestManager();
        if (manager == null) {
            target.requestFailed(JDIDebugBreakpointMessages.JavaWatchpoint_Unable_to_create_breakpoint_request___VM_disconnected__1, null);
        }
        try {
            request = access ? manager.createAccessWatchpointRequest(field) : manager.createModificationWatchpointRequest(field);
            this.configureRequest((EventRequest)request, target);
        }
        catch (VMDisconnectedException e) {
            if (!target.isAvailable()) {
                return null;
            }
            target.internalError((RuntimeException)((Object)e));
            return null;
        }
        catch (RuntimeException e) {
            target.internalError(e);
            return null;
        }
        return request;
    }

    protected EventRequest recreateRequest(EventRequest request, JDIDebugTarget target) throws CoreException {
        try {
            Field field = ((WatchpointRequest)request).field();
            if (request instanceof AccessWatchpointRequest) {
                request = this.createAccessWatchpoint(target, field);
            } else if (request instanceof ModificationWatchpointRequest) {
                request = this.createModificationWatchpoint(target, field);
            }
        }
        catch (VMDisconnectedException e) {
            if (!target.isAvailable()) {
                return request;
            }
            target.internalError((RuntimeException)((Object)e));
            return request;
        }
        catch (RuntimeException e) {
            target.internalError(e);
        }
        return request;
    }

    public void setEnabled(boolean enabled) throws CoreException {
        if (enabled && !this.isAccess() && !this.isModification()) {
            this.setDefaultAccessAndModification();
        }
        super.setEnabled(enabled);
    }

    public boolean isAccess() throws CoreException {
        return this.ensureMarker().getAttribute(ACCESS, false);
    }

    public void setAccess(boolean access) throws CoreException {
        if (access == this.isAccess()) {
            return;
        }
        this.setAttribute(ACCESS, access);
        if (access && !this.isEnabled()) {
            this.setEnabled(true);
        } else if (!access && !this.isModification()) {
            this.setEnabled(false);
        }
        this.recreate();
    }

    public boolean isModification() throws CoreException {
        return this.ensureMarker().getAttribute(MODIFICATION, false);
    }

    public void setModification(boolean modification) throws CoreException {
        if (modification == this.isModification()) {
            return;
        }
        this.setAttribute(MODIFICATION, modification);
        if (modification && !this.isEnabled()) {
            this.setEnabled(true);
        } else if (!modification && !this.isAccess()) {
            this.setEnabled(false);
        }
        this.recreate();
    }

    protected void setDefaultAccessAndModification() throws CoreException {
        boolean[] def = this.getDefaultAccessAndModificationValues();
        Object[] values = new Object[def.length];
        int i = 0;
        while (i < def.length) {
            values[i] = new Boolean(def[i]);
            ++i;
        }
        String[] attributes = new String[]{ACCESS, MODIFICATION};
        this.setAttributes(attributes, values);
    }

    protected boolean[] getDefaultAccessAndModificationValues() {
        int value = JDIDebugPlugin.getDefault().getPluginPreferences().getInt(JDIDebugPlugin.PREF_DEFAULT_WATCHPOINT_SUSPEND_POLICY);
        switch (value) {
            case 0: {
                return new boolean[]{true, true};
            }
            case 1: {
                boolean[] blArray = new boolean[2];
                blArray[0] = true;
                return blArray;
            }
            case 2: {
                boolean[] blArray = new boolean[2];
                blArray[1] = true;
                return blArray;
            }
        }
        return new boolean[]{true, true};
    }

    protected void addDefaultAccessAndModification(Map attributes) {
        boolean[] values = this.getDefaultAccessAndModificationValues();
        attributes.put(ACCESS, values[0] ? Boolean.TRUE : Boolean.FALSE);
        attributes.put(MODIFICATION, values[1] ? Boolean.TRUE : Boolean.FALSE);
        attributes.put(AUTO_DISABLED, Boolean.FALSE);
    }

    protected void addFieldName(Map attributes, String fieldName) {
        attributes.put(FIELD_NAME, fieldName);
    }

    public String getFieldName() throws CoreException {
        return this.ensureMarker().getAttribute(FIELD_NAME, null);
    }

    public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
        if (event instanceof AccessWatchpointEvent) {
            this.fLastEventTypes.put(target, ACCESS_EVENT);
        } else if (event instanceof ModificationWatchpointEvent) {
            this.fLastEventTypes.put(target, MODIFICATION_EVENT);
        }
        return super.handleEvent(event, target, suspendVote, eventSet);
    }

    protected void updateEnabledState(EventRequest request, JDIDebugTarget target) throws CoreException {
        boolean enabled = this.isEnabled();
        if (request instanceof AccessWatchpointRequest) {
            if (this.isAccess()) {
                if (enabled != request.isEnabled()) {
                    this.internalUpdateEnabledState(request, enabled, target);
                }
            } else if (request.isEnabled()) {
                this.internalUpdateEnabledState(request, false, target);
            }
        }
        if (request instanceof ModificationWatchpointRequest) {
            if (this.isModification()) {
                if (enabled != request.isEnabled()) {
                    this.internalUpdateEnabledState(request, enabled, target);
                }
            } else if (request.isEnabled()) {
                this.internalUpdateEnabledState(request, false, target);
            }
        }
    }

    public boolean isAccessSuspend(IDebugTarget target) {
        Integer lastEventType = (Integer)this.fLastEventTypes.get(target);
        if (lastEventType == null) {
            return false;
        }
        return lastEventType.equals(ACCESS_EVENT);
    }

    public boolean supportsCondition() {
        return false;
    }

    public void removeFromTarget(JDIDebugTarget target) throws CoreException {
        this.fLastEventTypes.remove(target);
        super.removeFromTarget(target);
    }

    protected void addInstanceFilter(EventRequest request, ObjectReference object) {
        if (request instanceof WatchpointRequest) {
            ((WatchpointRequest)request).addInstanceFilter(object);
        }
    }

    public boolean supportsAccess() {
        return true;
    }

    public boolean supportsModification() {
        return true;
    }

    protected boolean installableReferenceType(ReferenceType type, JDIDebugTarget target) throws CoreException {
        String installableType = this.getTypeName();
        String queriedType = type.name();
        if (installableType == null || queriedType == null) {
            return false;
        }
        if (installableType.equals(queriedType)) {
            return this.queryInstallListeners(target, type);
        }
        return false;
    }
}

