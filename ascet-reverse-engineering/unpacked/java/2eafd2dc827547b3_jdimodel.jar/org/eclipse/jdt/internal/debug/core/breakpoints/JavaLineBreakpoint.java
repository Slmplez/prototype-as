/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.Location
 *  com.sun.jdi.NativeMethodException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.request.BreakpointRequest
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.IStatusHandler
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.ISourceLocator
 *  org.eclipse.debug.core.model.IStackFrame
 *  org.eclipse.debug.core.model.IValue
 *  org.eclipse.debug.core.sourcelookup.ISourceLookupDirector
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.Location;
import com.sun.jdi.NativeMethodException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.event.Event;
import com.sun.jdi.request.BreakpointRequest;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.eval.ICompiledExpression;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIStackFrame;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;

public class JavaLineBreakpoint
extends JavaBreakpoint
implements IJavaLineBreakpoint {
    protected static final String CONDITION = "org.eclipse.jdt.debug.core.condition";
    protected static final String CONDITION_ENABLED = "org.eclipse.jdt.debug.core.conditionEnabled";
    protected static final String CONDITION_SUSPEND_ON_TRUE = "org.eclipse.jdt.debug.core.conditionSuspendOnTrue";
    protected static final String SOURCE_NAME = "org.eclipse.jdt.debug.core.sourceName";
    public static final String JAVA_LINE_BREAKPOINT = "org.eclipse.jdt.debug.javaLineBreakpointMarker";
    private Map fSuspendEvents = new HashMap();
    private Map fCompiledExpressions = new HashMap();
    private Map fProjectsByFrame = new HashMap();
    private Map fConditionValues = new HashMap();
    public static final int NO_LINE_NUMBERS = 162;
    static /* synthetic */ Class class$0;

    public JavaLineBreakpoint() {
    }

    public JavaLineBreakpoint(IResource resource, String typeName, int lineNumber, int charStart, int charEnd, int hitCount, boolean add, Map attributes) throws DebugException {
        this(resource, typeName, lineNumber, charStart, charEnd, hitCount, add, attributes, JAVA_LINE_BREAKPOINT);
    }

    protected JavaLineBreakpoint(final IResource resource, final String typeName, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean add, final Map attributes, final String markerType) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaLineBreakpoint.this.setMarker(resource.createMarker(markerType));
                JavaLineBreakpoint.this.addLineBreakpointAttributes(attributes, JavaLineBreakpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaLineBreakpoint.this.addTypeNameAndHitCount(attributes, typeName, hitCount);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaLineBreakpoint.this.getDefaultSuspendPolicy()));
                JavaLineBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaLineBreakpoint.this.register(add);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    public void addToTarget(JDIDebugTarget target) throws CoreException {
        this.clearCachedExpressionFor(target);
        super.addToTarget(target);
    }

    public void removeFromTarget(JDIDebugTarget target) throws CoreException {
        this.clearCachedExpressionFor(target);
        this.clearCachedSuspendEvents(target);
        this.fConditionValues.remove(target);
        super.removeFromTarget(target);
    }

    protected void clearCachedSuspendEvents(JDIDebugTarget target) {
        this.removeCachedThreads(this.fSuspendEvents, target);
    }

    private void removeCachedThreads(Map map, JDIDebugTarget target) {
        Set threads = map.keySet();
        ArrayList<JDIThread> threadsToRemove = new ArrayList<JDIThread>();
        Iterator<Object> iter = threads.iterator();
        while (iter.hasNext()) {
            JDIThread thread = (JDIThread)iter.next();
            if (thread.getDebugTarget() != target) continue;
            threadsToRemove.add(thread);
        }
        iter = threadsToRemove.iterator();
        while (iter.hasNext()) {
            map.remove(iter.next());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void clearCachedExpressionFor(JDIDebugTarget target) {
        this.removeCachedThreads(this.fCompiledExpressions, target);
        Map map = this.fProjectsByFrame;
        synchronized (map) {
            Set frames = this.fProjectsByFrame.keySet();
            ArrayList<JDIStackFrame> framesToRemove = new ArrayList<JDIStackFrame>();
            Iterator<Object> iter = frames.iterator();
            while (iter.hasNext()) {
                JDIStackFrame frame = (JDIStackFrame)iter.next();
                if (frame.getDebugTarget() != target) continue;
                framesToRemove.add(frame);
            }
            iter = framesToRemove.iterator();
            while (iter.hasNext()) {
                this.fProjectsByFrame.remove(iter.next());
            }
        }
    }

    public int getLineNumber() throws CoreException {
        return this.ensureMarker().getAttribute("lineNumber", -1);
    }

    public int getCharStart() throws CoreException {
        return this.ensureMarker().getAttribute("charStart", -1);
    }

    public int getCharEnd() throws CoreException {
        return this.ensureMarker().getAttribute("charEnd", -1);
    }

    public static String getMarkerType() {
        return JAVA_LINE_BREAKPOINT;
    }

    protected EventRequest[] newRequests(JDIDebugTarget target, ReferenceType type) throws CoreException {
        int lineNumber = this.getLineNumber();
        List locations = this.determineLocations(lineNumber, type, target);
        if (locations == null || locations.isEmpty()) {
            return null;
        }
        EventRequest[] requests = new EventRequest[locations.size()];
        int i = 0;
        Iterator iterator = locations.iterator();
        while (iterator.hasNext()) {
            Location location = (Location)iterator.next();
            requests[i] = this.createLineBreakpointRequest(location, target);
            ++i;
        }
        return requests;
    }

    protected BreakpointRequest createLineBreakpointRequest(Location location, JDIDebugTarget target) throws CoreException {
        BreakpointRequest request = null;
        EventRequestManager manager = target.getEventRequestManager();
        if (manager == null) {
            target.requestFailed(JDIDebugBreakpointMessages.JavaLineBreakpoint_Unable_to_create_breakpoint_request___VM_disconnected__1, null);
        }
        try {
            request = manager.createBreakpointRequest(location);
            this.configureRequest((EventRequest)request, target);
        }
        catch (VMDisconnectedException e) {
            if (!target.isAvailable()) {
                return null;
            }
            JDIDebugPlugin.log(e);
        }
        catch (RuntimeException e) {
            target.internalError(e);
            return null;
        }
        return request;
    }

    protected void setRequestThreadFilter(EventRequest request, ThreadReference thread) {
        ((BreakpointRequest)request).addThreadFilter(thread);
    }

    protected List determineLocations(int lineNumber, ReferenceType type, JDIDebugTarget target) {
        List locations = null;
        try {
            locations = type.locationsOfLine(lineNumber);
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
        return locations;
    }

    public void addLineBreakpointAttributes(Map attributes, String modelIdentifier, boolean enabled, int lineNumber, int charStart, int charEnd) {
        attributes.put("org.eclipse.debug.core.id", modelIdentifier);
        attributes.put("org.eclipse.debug.core.enabled", enabled);
        attributes.put("lineNumber", new Integer(lineNumber));
        attributes.put("charStart", new Integer(charStart));
        attributes.put("charEnd", new Integer(charEnd));
    }

    public void addTypeNameAndHitCount(Map attributes, String typeName, int hitCount) {
        attributes.put("org.eclipse.jdt.debug.core.typeName", typeName);
        if (hitCount > 0) {
            attributes.put("org.eclipse.jdt.debug.core.hitCount", new Integer(hitCount));
            attributes.put("org.eclipse.jdt.debug.core.expired", Boolean.FALSE);
        }
    }

    public boolean hasCondition() {
        try {
            String condition = this.getCondition();
            return this.isConditionEnabled() && condition != null && condition.length() > 0;
        }
        catch (CoreException exception) {
            JDIDebugPlugin.log(exception);
            return false;
        }
    }

    protected boolean suspendForEvent(Event event, JDIThread thread, boolean suspendVote) {
        this.expireHitCount(event);
        return this.suspend(thread, suspendVote);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IJavaProject getJavaProject(IJavaStackFrame stackFrame) {
        Map map = this.fProjectsByFrame;
        synchronized (map) {
            IJavaProject project = (IJavaProject)this.fProjectsByFrame.get(stackFrame);
            if (project == null && (project = this.computeJavaProject(stackFrame)) != null) {
                this.fProjectsByFrame.put(stackFrame, project);
            }
            return project;
        }
    }

    private IJavaProject computeJavaProject(IJavaStackFrame stackFrame) {
        IJavaProject project;
        ILaunch launch = stackFrame.getLaunch();
        if (launch == null) {
            return null;
        }
        ISourceLocator locator = launch.getSourceLocator();
        if (locator == null) {
            return null;
        }
        Object sourceElement = null;
        try {
            String[] sourcePaths;
            IJavaType thisType;
            if (locator instanceof ISourceLookupDirector && !stackFrame.isStatic() && (thisType = stackFrame.getThis().getJavaType()) instanceof IJavaReferenceType && (sourcePaths = ((IJavaReferenceType)thisType).getSourcePaths(null)) != null && sourcePaths.length > 0) {
                sourceElement = ((ISourceLookupDirector)locator).getSourceElement((Object)sourcePaths[0]);
            }
        }
        catch (DebugException e) {
            DebugPlugin.log((Throwable)e);
        }
        if (sourceElement == null) {
            sourceElement = locator.getSourceElement((IStackFrame)stackFrame);
        }
        if (!(sourceElement instanceof IJavaElement) && sourceElement instanceof IAdaptable) {
            Object element;
            IAdaptable iAdaptable = (IAdaptable)sourceElement;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.core.IJavaElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((element = iAdaptable.getAdapter((Class)clazz)) != null) {
                sourceElement = element;
            }
        }
        if (sourceElement instanceof IJavaElement) {
            return ((IJavaElement)sourceElement).getJavaProject();
        }
        if (sourceElement instanceof IResource && (project = JavaCore.create((IProject)((IResource)sourceElement).getProject())).exists()) {
            return project;
        }
        return null;
    }

    public boolean supportsCondition() {
        return true;
    }

    public String getCondition() throws CoreException {
        return this.ensureMarker().getAttribute(CONDITION, null);
    }

    public void setCondition(String condition) throws CoreException {
        this.fCompiledExpressions.clear();
        this.fConditionValues.clear();
        this.fSuspendEvents.clear();
        if (condition != null && condition.trim().length() == 0) {
            condition = null;
        }
        this.setAttributes(new String[]{CONDITION}, new Object[]{condition});
        this.recreate();
    }

    protected String getMarkerMessage(boolean conditionEnabled, String condition, int hitCount, int suspendPolicy, int lineNumber) {
        StringBuffer message = new StringBuffer(super.getMarkerMessage(hitCount, suspendPolicy));
        if (lineNumber != -1) {
            message.append(MessageFormat.format((String)JDIDebugBreakpointMessages.JavaLineBreakpoint___line___0___1, (Object[])new Object[]{Integer.toString(lineNumber)}));
        }
        if (conditionEnabled && condition != null) {
            message.append(MessageFormat.format((String)JDIDebugBreakpointMessages.JavaLineBreakpoint___Condition___0___2, (Object[])new Object[]{condition}));
        }
        return message.toString();
    }

    public boolean isConditionEnabled() throws CoreException {
        return this.ensureMarker().getAttribute(CONDITION_ENABLED, false);
    }

    public void setConditionEnabled(boolean conditionEnabled) throws CoreException {
        this.setAttributes(new String[]{CONDITION_ENABLED}, new Object[]{conditionEnabled});
        this.recreate();
    }

    protected void cleanupForThreadTermination(JDIThread thread) {
        this.fSuspendEvents.remove(thread);
        this.fCompiledExpressions.remove(thread);
        super.cleanupForThreadTermination(thread);
    }

    protected void addInstanceFilter(EventRequest request, ObjectReference object) {
        if (request instanceof BreakpointRequest) {
            ((BreakpointRequest)request).addInstanceFilter(object);
        }
    }

    public boolean isConditionSuspendOnTrue() throws DebugException {
        return this.ensureMarker().getAttribute(CONDITION_SUSPEND_ON_TRUE, true);
    }

    public void setConditionSuspendOnTrue(boolean suspendOnTrue) throws CoreException {
        if (this.isConditionSuspendOnTrue() != suspendOnTrue) {
            this.setAttributes(new String[]{CONDITION_SUSPEND_ON_TRUE}, new Object[]{suspendOnTrue});
            this.fConditionValues.clear();
            this.recreate();
        }
    }

    protected ICompiledExpression getExpression(IJavaThread thread) {
        return (ICompiledExpression)this.fCompiledExpressions.get(thread);
    }

    protected void setExpression(IJavaThread thread, ICompiledExpression expression) {
        this.fCompiledExpressions.put(thread, expression);
    }

    protected IValue setCurrentConditionValue(IDebugTarget target, IValue value) {
        IValue prev = (IValue)this.fConditionValues.get(target);
        this.fConditionValues.put(target, value);
        return prev;
    }
}

