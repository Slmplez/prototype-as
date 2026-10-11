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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaTargetPatternBreakpoint;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class JavaTargetPatternBreakpoint
extends JavaLineBreakpoint
implements IJavaTargetPatternBreakpoint {
    private static final String TARGET_PATTERN_BREAKPOINT = "org.eclipse.jdt.debug.javaTargetPatternBreakpointMarker";
    private HashMap fPatterns;

    public JavaTargetPatternBreakpoint() {
    }

    public JavaTargetPatternBreakpoint(IResource resource, String sourceName, int lineNumber, int charStart, int charEnd, int hitCount, boolean add, Map attributes) throws DebugException {
        this(resource, sourceName, lineNumber, charStart, charEnd, hitCount, add, attributes, TARGET_PATTERN_BREAKPOINT);
    }

    public JavaTargetPatternBreakpoint(final IResource resource, final String sourceName, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean add, final Map attributes, final String markerType) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaTargetPatternBreakpoint.this.setMarker(resource.createMarker(markerType));
                JavaTargetPatternBreakpoint.this.addLineBreakpointAttributes(attributes, JavaTargetPatternBreakpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaTargetPatternBreakpoint.this.addSourceNameAndHitCount(attributes, sourceName, hitCount);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaTargetPatternBreakpoint.this.getDefaultSuspendPolicy()));
                JavaTargetPatternBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaTargetPatternBreakpoint.this.register(add);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    public void addToTarget(JDIDebugTarget target) throws CoreException {
        List classes;
        this.fireAdding(target);
        String referenceTypeName = this.getPattern(target);
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
            target.requestFailed(JDIDebugBreakpointMessages.JavaTargetPatternBreakpoint_Unable_to_add_breakpoint___VM_disconnected__1, null);
        }
        if ((classes = vm.allClasses()) != null) {
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

    protected String getReferenceTypeName() {
        String name = "*";
        try {
            name = this.getSourceName();
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
        String pattern = this.getPattern(target);
        String queriedType = type.name();
        if (pattern == null || queriedType == null) {
            return false;
        }
        if (queriedType.startsWith(pattern)) {
            return this.queryInstallListeners(target, type);
        }
        return false;
    }

    protected void addSourceNameAndHitCount(Map attributes, String sourceName, int hitCount) {
        if (sourceName != null) {
            attributes.put("org.eclipse.jdt.debug.core.sourceName", sourceName);
        }
        if (hitCount > 0) {
            attributes.put("org.eclipse.jdt.debug.core.hitCount", new Integer(hitCount));
            attributes.put("org.eclipse.jdt.debug.core.expired", Boolean.FALSE);
        }
    }

    public String getPattern(IJavaDebugTarget target) {
        if (this.fPatterns != null) {
            return (String)this.fPatterns.get(target);
        }
        return null;
    }

    public void setPattern(IJavaDebugTarget target, String pattern) throws CoreException {
        if (this.fPatterns == null) {
            this.fPatterns = new HashMap(2);
        }
        String oldPattern = this.getPattern(target);
        this.fPatterns.put(target, pattern);
        if (oldPattern != null && !oldPattern.equals(pattern)) {
            this.recreate((JDIDebugTarget)target);
            this.fireChanged();
        }
    }

    public String getSourceName() throws CoreException {
        return (String)this.ensureMarker().getAttribute("org.eclipse.jdt.debug.core.sourceName");
    }

    public void removeFromTarget(JDIDebugTarget target) throws CoreException {
        this.fPatterns.remove(target);
        super.removeFromTarget(target);
    }
}

