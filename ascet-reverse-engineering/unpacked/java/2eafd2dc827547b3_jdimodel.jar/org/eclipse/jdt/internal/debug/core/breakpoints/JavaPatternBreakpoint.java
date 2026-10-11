/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.request.EventRequest
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.request.EventRequest;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaPatternBreakpoint;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class JavaPatternBreakpoint
extends JavaLineBreakpoint
implements IJavaPatternBreakpoint {
    private static final String PATTERN_BREAKPOINT = "org.eclipse.jdt.debug.javaPatternBreakpointMarker";
    protected static final String PATTERN = "org.eclipse.jdt.debug.core.pattern";

    public JavaPatternBreakpoint() {
    }

    public JavaPatternBreakpoint(IResource resource, String sourceName, String pattern, int lineNumber, int charStart, int charEnd, int hitCount, boolean add, Map attributes) throws DebugException {
        this(resource, sourceName, pattern, lineNumber, charStart, charEnd, hitCount, add, attributes, PATTERN_BREAKPOINT);
    }

    public JavaPatternBreakpoint(final IResource resource, final String sourceName, final String pattern, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean add, final Map attributes, final String markerType) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaPatternBreakpoint.this.setMarker(resource.createMarker(markerType));
                JavaPatternBreakpoint.this.addLineBreakpointAttributes(attributes, JavaPatternBreakpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaPatternBreakpoint.this.addPatternAndHitCount(attributes, sourceName, pattern, hitCount);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaPatternBreakpoint.this.getDefaultSuspendPolicy()));
                JavaPatternBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaPatternBreakpoint.this.register(add);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    protected String getReferenceTypeName() {
        String name = "";
        try {
            name = this.getPattern();
        }
        catch (CoreException ce) {
            JDIDebugPlugin.log(ce);
        }
        return name;
    }

    protected boolean installableReferenceType(ReferenceType type, JDIDebugTarget target) throws CoreException {
        if (this.getSourceName() != null) {
            String sourceName = null;
            try {
                sourceName = type.sourceName();
            }
            catch (AbsentInformationException absentInformationException) {
            }
            catch (VMDisconnectedException e) {
                if (!target.isAvailable()) {
                    return false;
                }
                target.targetRequestFailed(MessageFormat.format((String)JDIDebugBreakpointMessages.JavaPatternBreakpoint_exception_source_name, (Object[])new String[]{e.toString(), type.name()}), (RuntimeException)((Object)e));
                return false;
            }
            catch (RuntimeException e) {
                target.targetRequestFailed(MessageFormat.format((String)JDIDebugBreakpointMessages.JavaPatternBreakpoint_exception_source_name, (Object[])new String[]{e.toString(), type.name()}), e);
                return false;
            }
            if (sourceName != null && !this.getSourceName().equalsIgnoreCase(sourceName)) {
                return false;
            }
        }
        String pattern = this.getPattern();
        String queriedType = type.name();
        if (pattern == null || queriedType == null) {
            return false;
        }
        if (queriedType.startsWith(pattern)) {
            return this.queryInstallListeners(target, type);
        }
        return false;
    }

    protected void addPatternAndHitCount(Map attributes, String sourceName, String pattern, int hitCount) {
        attributes.put(PATTERN, pattern);
        if (sourceName != null) {
            attributes.put("org.eclipse.jdt.debug.core.sourceName", sourceName);
        }
        if (hitCount > 0) {
            attributes.put("org.eclipse.jdt.debug.core.hitCount", new Integer(hitCount));
            attributes.put("org.eclipse.jdt.debug.core.expired", Boolean.FALSE);
        }
    }

    public String getPattern() throws CoreException {
        return (String)this.ensureMarker().getAttribute(PATTERN);
    }

    public String getSourceName() throws CoreException {
        return (String)this.ensureMarker().getAttribute("org.eclipse.jdt.debug.core.sourceName");
    }

    protected void createRequests(JDIDebugTarget target) throws CoreException {
        if (target.isTerminated() || this.shouldSkipBreakpoint()) {
            return;
        }
        String referenceTypeName = this.getReferenceTypeName();
        if (referenceTypeName == null) {
            return;
        }
        String classPrepareTypeName = referenceTypeName;
        if (!referenceTypeName.endsWith("*")) {
            classPrepareTypeName = String.valueOf(classPrepareTypeName) + '*';
        }
        this.registerRequest((EventRequest)target.createClassPrepareRequest(classPrepareTypeName), target);
        VirtualMachine vm = target.getVM();
        if (vm == null) {
            target.requestFailed(JDIDebugBreakpointMessages.JavaPatternBreakpoint_Unable_to_add_breakpoint___VM_disconnected__1, null);
        }
        List classes = null;
        try {
            classes = vm.allClasses();
        }
        catch (RuntimeException e) {
            target.targetRequestFailed(JDIDebugBreakpointMessages.JavaPatternBreakpoint_0, e);
        }
        if (classes != null) {
            Iterator iter = classes.iterator();
            String typeName = null;
            ReferenceType type = null;
            while (iter.hasNext()) {
                type = (ReferenceType)iter.next();
                typeName = type.name();
                if (typeName == null || !typeName.startsWith(referenceTypeName)) continue;
                this.createRequest(target, type);
            }
        }
    }
}

