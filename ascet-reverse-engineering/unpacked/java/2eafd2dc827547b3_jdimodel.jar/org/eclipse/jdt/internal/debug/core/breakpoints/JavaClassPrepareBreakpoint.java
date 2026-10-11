/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.event.ClassPrepareEvent
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.request.ClassPrepareRequest
 *  com.sun.jdi.request.EventRequest
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.event.ClassPrepareEvent;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.request.ClassPrepareRequest;
import com.sun.jdi.request.EventRequest;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaClassPrepareBreakpoint;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;

public class JavaClassPrepareBreakpoint
extends JavaBreakpoint
implements IJavaClassPrepareBreakpoint {
    public static final String JAVA_CLASS_PREPARE_BREAKPOINT = "org.eclipse.jdt.debug.javaClassPrepareBreakpointMarker";
    protected static final String MEMBER_TYPE = "org.eclipse.jdt.debug.core.memberType";

    public JavaClassPrepareBreakpoint(final IResource resource, final String typeName, final int memberType, final int charStart, final int charEnd, final boolean add, final Map attributes) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaClassPrepareBreakpoint.this.setMarker(resource.createMarker(JavaClassPrepareBreakpoint.JAVA_CLASS_PREPARE_BREAKPOINT));
                attributes.put("org.eclipse.debug.core.id", JavaClassPrepareBreakpoint.this.getModelIdentifier());
                attributes.put("charStart", new Integer(charStart));
                attributes.put("charEnd", new Integer(charEnd));
                attributes.put("org.eclipse.jdt.debug.core.typeName", typeName);
                attributes.put(JavaClassPrepareBreakpoint.MEMBER_TYPE, new Integer(memberType));
                attributes.put("org.eclipse.debug.core.enabled", Boolean.TRUE);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaClassPrepareBreakpoint.this.getDefaultSuspendPolicy()));
                JavaClassPrepareBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaClassPrepareBreakpoint.this.register(add);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    public JavaClassPrepareBreakpoint() {
    }

    protected void createRequests(JDIDebugTarget target) throws CoreException {
        if (target.isTerminated() || this.shouldSkipBreakpoint()) {
            return;
        }
        String referenceTypeName = this.getTypeName();
        if (referenceTypeName == null) {
            return;
        }
        ClassPrepareRequest request = target.createClassPrepareRequest(referenceTypeName, null, false);
        this.configureRequestHitCount((EventRequest)request);
        this.updateEnabledState((EventRequest)request, target);
        this.registerRequest((EventRequest)request, target);
        this.incrementInstallCount();
    }

    protected void deregisterRequest(EventRequest request, JDIDebugTarget target) throws CoreException {
        target.removeJDIEventListener(this, request);
        if (this.getMarker().exists()) {
            this.decrementInstallCount();
        }
    }

    protected void addInstanceFilter(EventRequest request, ObjectReference object) {
    }

    protected EventRequest[] newRequests(JDIDebugTarget target, ReferenceType type) throws CoreException {
        return null;
    }

    protected void setRequestThreadFilter(EventRequest request, ThreadReference thread) {
    }

    public boolean handleClassPrepareEvent(ClassPrepareEvent event, JDIDebugTarget target, boolean suspendVote) {
        block3: {
            JDIThread thread;
            block4: {
                try {
                    if (!this.isEnabled() || !event.referenceType().name().equals(this.getTypeName())) break block3;
                    ThreadReference threadRef = event.thread();
                    thread = target.findThread(threadRef);
                    if (thread != null && !thread.isIgnoringBreakpoints()) break block4;
                    return true;
                }
                catch (CoreException coreException) {}
            }
            return this.handleBreakpointEvent((Event)event, thread, suspendVote);
        }
        return true;
    }

    protected void classPrepareComplete(Event event, JDIThread thread, boolean suspend, EventSet eventSet) {
        thread.completeBreakpointHandling(this, suspend, true, eventSet);
    }

    public int getMemberType() throws CoreException {
        return this.ensureMarker().getAttribute(MEMBER_TYPE, 0);
    }

    public boolean supportsInstanceFilters() {
        return false;
    }

    public void addInstanceFilter(IJavaObject object) throws CoreException {
        throw new CoreException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, JDIDebugBreakpointMessages.JavaClassPrepareBreakpoint_2, null));
    }

    public void setThreadFilter(IJavaThread thread) throws CoreException {
        throw new CoreException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, JDIDebugBreakpointMessages.JavaClassPrepareBreakpoint_3, null));
    }

    public boolean supportsThreadFilters() {
        return false;
    }
}

