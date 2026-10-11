/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachine
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IBreakpointManager
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IBreakpoint
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IProcess
 */
package org.eclipse.jdt.debug.core;

import com.sun.jdi.VirtualMachine;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdt.debug.core.IJavaBreakpointListener;
import org.eclipse.jdt.debug.core.IJavaClassPrepareBreakpoint;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaExceptionBreakpoint;
import org.eclipse.jdt.debug.core.IJavaHotCodeReplaceListener;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaMethodBreakpoint;
import org.eclipse.jdt.debug.core.IJavaMethodEntryBreakpoint;
import org.eclipse.jdt.debug.core.IJavaPatternBreakpoint;
import org.eclipse.jdt.debug.core.IJavaStratumLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaTargetPatternBreakpoint;
import org.eclipse.jdt.debug.core.IJavaWatchpoint;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaClassPrepareBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaExceptionBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaMethodBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaMethodEntryBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaPatternBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaStratumLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaTargetPatternBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaWatchpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class JDIDebugModel {
    public static final String PREF_REQUEST_TIMEOUT = String.valueOf(JDIDebugModel.getPluginIdentifier()) + ".PREF_REQUEST_TIMEOUT";
    public static final String PREF_HCR_WITH_COMPILATION_ERRORS = String.valueOf(JDIDebugModel.getPluginIdentifier()) + ".PREF_HCR_WITH_COMPILATION_ERRORS";
    public static final int DEF_REQUEST_TIMEOUT = 3000;
    public static final String PREF_SUSPEND_FOR_BREAKPOINTS_DURING_EVALUATION = String.valueOf(JDIDebugModel.getPluginIdentifier()) + ".suspend_for_breakpoints_during_evaluation";

    private JDIDebugModel() {
    }

    public static IDebugTarget newDebugTarget(ILaunch launch, VirtualMachine vm, String name, IProcess process, boolean allowTerminate, boolean allowDisconnect) {
        return JDIDebugModel.newDebugTarget(launch, vm, name, process, allowTerminate, allowDisconnect, true);
    }

    public static IDebugTarget newDebugTarget(final ILaunch launch, final VirtualMachine vm, final String name, final IProcess process, final boolean allowTerminate, final boolean allowDisconnect, final boolean resume) {
        final IJavaDebugTarget[] target = new IJavaDebugTarget[1];
        IWorkspaceRunnable r = new IWorkspaceRunnable(){

            public void run(IProgressMonitor m) {
                target[0] = new JDIDebugTarget(launch, vm, name, allowTerminate, allowDisconnect, process, resume);
            }
        };
        try {
            ResourcesPlugin.getWorkspace().run(r, null, 0, null);
        }
        catch (CoreException e) {
            JDIDebugPlugin.log(e);
        }
        return target[0];
    }

    public static String getPluginIdentifier() {
        return JDIDebugPlugin.getUniqueIdentifier();
    }

    public static void addHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        JDIDebugPlugin.getDefault().addHotCodeReplaceListener(listener);
    }

    public static void removeHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        JDIDebugPlugin.getDefault().removeHotCodeReplaceListener(listener);
    }

    public static void addJavaBreakpointListener(IJavaBreakpointListener listener) {
        JDIDebugPlugin.getDefault().addJavaBreakpointListener(listener);
    }

    public static void removeJavaBreakpointListener(IJavaBreakpointListener listener) {
        JDIDebugPlugin.getDefault().removeJavaBreakpointListener(listener);
    }

    public static IJavaLineBreakpoint createLineBreakpoint(IResource resource, String typeName, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaLineBreakpoint(resource, typeName, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaPatternBreakpoint createPatternBreakpoint(IResource resource, String sourceName, String pattern, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaPatternBreakpoint(resource, sourceName, pattern, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaStratumLineBreakpoint createStratumBreakpoint(IResource resource, String stratum, String sourceName, String sourcePath, String classNamePattern, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaStratumLineBreakpoint(resource, stratum, sourceName, sourcePath, classNamePattern, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaTargetPatternBreakpoint createTargetPatternBreakpoint(IResource resource, String sourceName, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaTargetPatternBreakpoint(resource, sourceName, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaExceptionBreakpoint createExceptionBreakpoint(IResource resource, String exceptionName, boolean caught, boolean uncaught, boolean checked, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaExceptionBreakpoint(resource, exceptionName, caught, uncaught, checked, register, attributes);
    }

    public static IJavaWatchpoint createWatchpoint(IResource resource, String typeName, String fieldName, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaWatchpoint(resource, typeName, fieldName, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaMethodBreakpoint createMethodBreakpoint(IResource resource, String typePattern, String methodName, String methodSignature, boolean entry, boolean exit, boolean nativeOnly, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaMethodBreakpoint(resource, typePattern, methodName, methodSignature, entry, exit, nativeOnly, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaMethodEntryBreakpoint createMethodEntryBreakpoint(IResource resource, String typeName, String methodName, String methodSignature, int lineNumber, int charStart, int charEnd, int hitCount, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaMethodEntryBreakpoint(resource, typeName, methodName, methodSignature, lineNumber, charStart, charEnd, hitCount, register, attributes);
    }

    public static IJavaLineBreakpoint lineBreakpointExists(String typeName, int lineNumber) throws CoreException {
        String modelId = JDIDebugModel.getPluginIdentifier();
        String markerType = JavaLineBreakpoint.getMarkerType();
        IBreakpointManager manager = DebugPlugin.getDefault().getBreakpointManager();
        IBreakpoint[] breakpoints = manager.getBreakpoints(modelId);
        int i = 0;
        while (i < breakpoints.length) {
            String breakpointTypeName;
            IJavaLineBreakpoint breakpoint;
            IMarker marker;
            if (breakpoints[i] instanceof IJavaLineBreakpoint && (marker = (breakpoint = (IJavaLineBreakpoint)breakpoints[i]).getMarker()) != null && marker.exists() && marker.getType().equals(markerType) && ((breakpointTypeName = breakpoint.getTypeName()).equals(typeName) || breakpointTypeName.startsWith(String.valueOf(typeName) + '$')) && breakpoint.getLineNumber() == lineNumber) {
                return breakpoint;
            }
            ++i;
        }
        return null;
    }

    public static IJavaLineBreakpoint lineBreakpointExists(IResource resource, String typeName, int lineNumber) throws CoreException {
        String modelId = JDIDebugModel.getPluginIdentifier();
        String markerType = JavaLineBreakpoint.getMarkerType();
        IBreakpointManager manager = DebugPlugin.getDefault().getBreakpointManager();
        IBreakpoint[] breakpoints = manager.getBreakpoints(modelId);
        int i = 0;
        while (i < breakpoints.length) {
            String breakpointTypeName;
            IJavaLineBreakpoint breakpoint;
            IMarker marker;
            if (breakpoints[i] instanceof IJavaLineBreakpoint && (marker = (breakpoint = (IJavaLineBreakpoint)breakpoints[i]).getMarker()) != null && marker.exists() && marker.getType().equals(markerType) && ((breakpointTypeName = breakpoint.getTypeName()).equals(typeName) || breakpointTypeName.startsWith(String.valueOf(typeName) + '$')) && breakpoint.getLineNumber() == lineNumber && resource.equals((Object)marker.getResource())) {
                return breakpoint;
            }
            ++i;
        }
        return null;
    }

    public static Preferences getPreferences() {
        JDIDebugPlugin deflt = JDIDebugPlugin.getDefault();
        if (deflt != null) {
            return deflt.getPluginPreferences();
        }
        return null;
    }

    public static void savePreferences() {
        JDIDebugPlugin.getDefault().savePluginPreferences();
    }

    public static IJavaClassPrepareBreakpoint createClassPrepareBreakpoint(IResource resource, String typeName, int memberType, int charStart, int charEnd, boolean register, Map attributes) throws CoreException {
        if (attributes == null) {
            attributes = new HashMap(10);
        }
        return new JavaClassPrepareBreakpoint(resource, typeName, memberType, charStart, charEnd, register, attributes);
    }
}

