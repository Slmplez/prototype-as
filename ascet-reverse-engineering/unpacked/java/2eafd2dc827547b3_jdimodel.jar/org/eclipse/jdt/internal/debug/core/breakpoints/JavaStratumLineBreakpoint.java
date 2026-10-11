/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.Location
 *  com.sun.jdi.NativeMethodException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.request.EventRequest
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IStatusHandler
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.Location;
import com.sun.jdi.NativeMethodException;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.request.EventRequest;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.jdt.debug.core.IJavaStratumLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class JavaStratumLineBreakpoint
extends JavaLineBreakpoint
implements IJavaStratumLineBreakpoint {
    private static final String PATTERN = "org.eclipse.jdt.debug.pattern";
    protected static final String STRATUM = "org.eclipse.jdt.debug.stratum";
    protected static final String SOURCE_PATH = "org.eclipse.jdt.debug.source_path";
    private static final String STRATUM_BREAKPOINT = "org.eclipse.jdt.debug.javaStratumLineBreakpointMarker";
    private String[] fTypeNamePatterns;
    private String[] fSuffix;
    private String[] fPrefix;

    public JavaStratumLineBreakpoint() {
    }

    public JavaStratumLineBreakpoint(IResource resource, String stratum, String sourceName, String sourcePath, String classNamePattern, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws DebugException {
        this(resource, stratum, sourceName, sourcePath, classNamePattern, lineNumber, charStart, charEnd, hitCount, register, attributes, STRATUM_BREAKPOINT);
    }

    protected JavaStratumLineBreakpoint(final IResource resource, final String stratum, final String sourceName, final String sourcePath, final String classNamePattern, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean register, final Map attributes, final String markerType) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaStratumLineBreakpoint.this.setMarker(resource.createMarker(markerType));
                String pattern = classNamePattern;
                if (pattern != null && pattern.length() == 0) {
                    pattern = null;
                }
                JavaStratumLineBreakpoint.this.addLineBreakpointAttributes(attributes, JavaStratumLineBreakpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaStratumLineBreakpoint.this.addStratumPatternAndHitCount(attributes, stratum, sourceName, sourcePath, pattern, hitCount);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaStratumLineBreakpoint.this.getDefaultSuspendPolicy()));
                JavaStratumLineBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaStratumLineBreakpoint.this.register(register);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    protected void addStratumPatternAndHitCount(Map attributes, String stratum, String sourceName, String sourcePath, String pattern, int hitCount) {
        attributes.put(PATTERN, pattern);
        attributes.put(STRATUM, stratum);
        if (sourceName != null) {
            attributes.put("org.eclipse.jdt.debug.core.sourceName", sourceName);
        }
        if (sourcePath != null) {
            attributes.put(SOURCE_PATH, sourcePath);
        }
        if (hitCount > 0) {
            attributes.put("org.eclipse.jdt.debug.core.hitCount", new Integer(hitCount));
            attributes.put("org.eclipse.jdt.debug.core.expired", Boolean.FALSE);
        }
    }

    protected boolean installableReferenceType(ReferenceType type, JDIDebugTarget target) throws CoreException {
        String bpSourcePath;
        String typeName = type.name();
        if (!this.validType(typeName)) {
            return false;
        }
        String stratum = this.getStratum();
        String bpSourceName = this.getSourceName();
        if (bpSourceName != null) {
            List sourceNames;
            try {
                sourceNames = type.sourceNames(stratum);
            }
            catch (AbsentInformationException absentInformationException) {
                return false;
            }
            catch (VMDisconnectedException e) {
                if (!target.isAvailable()) {
                    return false;
                }
                throw e;
            }
            if (!this.containsMatch(sourceNames, bpSourceName)) {
                return false;
            }
        }
        if ((bpSourcePath = this.getSourcePath()) != null) {
            List sourcePaths;
            try {
                sourcePaths = type.sourcePaths(stratum);
            }
            catch (AbsentInformationException absentInformationException) {
                return false;
            }
            catch (VMDisconnectedException e) {
                if (!target.isAvailable()) {
                    return false;
                }
                throw e;
            }
            if (!this.containsMatch(sourcePaths, bpSourcePath)) {
                return false;
            }
        }
        return this.queryInstallListeners(target, type);
    }

    private boolean containsMatch(List strings, String key) {
        Iterator iter = strings.iterator();
        while (iter.hasNext()) {
            if (!((String)iter.next()).equals(key)) continue;
            return true;
        }
        return false;
    }

    private boolean validType(String typeName) throws CoreException {
        String[] patterns = this.getTypeNamePatterns();
        int i = 0;
        while (i < patterns.length) {
            if (this.fSuffix[i] != null) {
                if (this.fSuffix[i].length() == 0) {
                    return true;
                }
                if (typeName.endsWith(this.fSuffix[i])) {
                    return true;
                }
            } else if (this.fPrefix[i] != null ? typeName.startsWith(this.fPrefix[i]) : typeName.startsWith(patterns[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected List determineLocations(int lineNumber, ReferenceType type, JDIDebugTarget target) {
        String sourcePath;
        List locations;
        try {
            locations = type.locationsOfLine(this.getStratum(), this.getSourceName(), lineNumber);
            sourcePath = this.getSourcePath();
        }
        catch (AbsentInformationException absentInformationException) {
            Status status = new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 162, JDIDebugBreakpointMessages.JavaLineBreakpoint_Absent_Line_Number_Information_1, null);
            IStatusHandler handler = DebugPlugin.getDefault().getStatusHandler((IStatus)status);
            if (handler != null) {
                try {
                    handler.handleStatus((IStatus)status, (Object)type);
                }
                catch (CoreException coreException) {}
            }
            return null;
        }
        catch (NativeMethodException nativeMethodException) {
            return null;
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            return null;
        }
        catch (ClassNotPreparedException classNotPreparedException) {
            return null;
        }
        catch (RuntimeException e) {
            target.internalError(e);
            return null;
        }
        catch (CoreException e) {
            JDIDebugPlugin.log(e);
            return null;
        }
        if (sourcePath == null) {
            if (locations.size() > 0) {
                return locations;
            }
        } else {
            ListIterator iter = locations.listIterator();
            while (iter.hasNext()) {
                Location location = (Location)iter.next();
                try {
                    if (sourcePath.equals(location.sourcePath())) continue;
                    iter.remove();
                }
                catch (AbsentInformationException absentInformationException) {}
            }
            if (locations.size() > 0) {
                return locations;
            }
        }
        return null;
    }

    public String getPattern() throws CoreException {
        return this.ensureMarker().getAttribute(PATTERN, "*");
    }

    public String getSourceName() throws CoreException {
        return (String)this.ensureMarker().getAttribute("org.eclipse.jdt.debug.core.sourceName");
    }

    public String getStratum() throws CoreException {
        return (String)this.ensureMarker().getAttribute(STRATUM);
    }

    public String getSourcePath() throws CoreException {
        return (String)this.ensureMarker().getAttribute(SOURCE_PATH);
    }

    protected void createRequests(JDIDebugTarget target) throws CoreException {
        if (target.isTerminated() || this.shouldSkipBreakpoint()) {
            return;
        }
        String[] patterns = null;
        try {
            patterns = this.getTypeNamePatterns();
        }
        catch (CoreException e1) {
            JDIDebugPlugin.log(e1);
            return;
        }
        String sourceName = this.getSourceName();
        int i = 0;
        while (i < patterns.length) {
            String classPrepareTypeName = patterns[i];
            this.registerRequest((EventRequest)target.createClassPrepareRequest(classPrepareTypeName, null, true, sourceName), target);
            ++i;
        }
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
            while (iter.hasNext()) {
                ReferenceType type = (ReferenceType)iter.next();
                if (!this.installableReferenceType(type, target)) continue;
                this.createRequest(target, type);
            }
        }
    }

    public synchronized String[] getTypeNamePatterns() throws CoreException {
        if (this.fTypeNamePatterns != null) {
            return this.fTypeNamePatterns;
        }
        String patterns = this.getPattern();
        this.fTypeNamePatterns = patterns.split(",");
        this.fSuffix = new String[this.fTypeNamePatterns.length];
        this.fPrefix = new String[this.fTypeNamePatterns.length];
        int i = 0;
        while (i < this.fTypeNamePatterns.length) {
            this.fTypeNamePatterns[i] = this.fTypeNamePatterns[i].trim();
            String pattern = this.fTypeNamePatterns[i];
            if (pattern.charAt(0) == '*') {
                this.fSuffix[i] = pattern.length() > 1 ? pattern.substring(1) : "";
            } else if (pattern.charAt(pattern.length() - 1) == '*') {
                this.fPrefix[i] = pattern.substring(0, pattern.length() - 1);
            }
            ++i;
        }
        return this.fTypeNamePatterns;
    }
}

