/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.Type
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.event.ClassPrepareEvent
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.event.LocatableEvent
 *  com.sun.jdi.request.ClassPrepareRequest
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IDebugEventSetListener
 *  org.eclipse.debug.core.model.Breakpoint
 *  org.eclipse.debug.core.model.IBreakpoint
 *  org.eclipse.debug.core.model.IDebugTarget
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Type;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.event.ClassPrepareEvent;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.event.LocatableEvent;
import com.sun.jdi.request.ClassPrepareRequest;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.model.Breakpoint;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.IJDIEventListener;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIType;

public abstract class JavaBreakpoint
extends Breakpoint
implements IJavaBreakpoint,
IJDIEventListener,
IDebugEventSetListener {
    protected static final String EXPIRED = "org.eclipse.jdt.debug.core.expired";
    protected static final String HIT_COUNT = "org.eclipse.jdt.debug.core.hitCount";
    protected static final String INSTALL_COUNT = "org.eclipse.jdt.debug.core.installCount";
    protected static final String TYPE_NAME = "org.eclipse.jdt.debug.core.typeName";
    protected static final String SUSPEND_POLICY = "org.eclipse.jdt.debug.core.suspendPolicy";
    public static final String BREAKPOINT_LISTENERS = "breakpointListeners";
    protected HashMap fRequestsByTarget = new HashMap(1);
    protected Map fFilteredThreadsByTarget = new HashMap(1);
    protected String fInstalledTypeName = null;
    protected Set fInstalledTargets = null;
    protected List fInstanceFilters = null;
    private List fBreakpointListenerIds = null;
    protected static final IJavaObject[] fgEmptyInstanceFilters = new IJavaObject[0];
    public static final String JAVA_BREAKPOINT_PROPERTY = "org.eclipse.jdt.debug.breakpoint";
    protected static final String[] fgExpiredEnabledAttributes = new String[]{"org.eclipse.jdt.debug.core.expired", "org.eclipse.debug.core.enabled"};
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public String getModelIdentifier() {
        return JDIDebugModel.getPluginIdentifier();
    }

    public void setMarker(IMarker marker) throws CoreException {
        super.setMarker(marker);
        this.configureAtStartup();
    }

    protected void register(boolean register) throws CoreException {
        DebugPlugin plugin = DebugPlugin.getDefault();
        if (plugin != null && register) {
            plugin.getBreakpointManager().addBreakpoint((IBreakpoint)this);
        } else {
            this.setRegistered(false);
        }
    }

    protected void registerRequest(EventRequest request, JDIDebugTarget target) throws CoreException {
        if (request == null) {
            return;
        }
        ArrayList reqs = this.getRequests(target);
        if (reqs.isEmpty()) {
            this.fRequestsByTarget.put(target, reqs);
        }
        reqs.add(request);
        target.addJDIEventListener(this, request);
        if (!(request instanceof ClassPrepareRequest)) {
            this.incrementInstallCount();
            this.fireInstalled(target);
        }
    }

    protected String getEnclosingReferenceTypeName() throws CoreException {
        String name = this.getTypeName();
        int index = name.indexOf(36);
        if (index == -1) {
            return name;
        }
        return name.substring(0, index);
    }

    protected ArrayList getRequests(JDIDebugTarget target) {
        ArrayList list = (ArrayList)this.fRequestsByTarget.get(target);
        if (list == null) {
            list = new ArrayList(2);
        }
        return list;
    }

    protected void deregisterRequest(EventRequest request, JDIDebugTarget target) throws CoreException {
        target.removeJDIEventListener(this, request);
        if (!(request instanceof ClassPrepareRequest) && this.getMarker().exists()) {
            this.decrementInstallCount();
        }
    }

    public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
        if (event instanceof ClassPrepareEvent) {
            return this.handleClassPrepareEvent((ClassPrepareEvent)event, target, suspendVote);
        }
        ThreadReference threadRef = ((LocatableEvent)event).thread();
        JDIThread thread = target.findThread(threadRef);
        if (thread == null) {
            try {
                IJobManager iJobManager = Job.getJobManager();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("com.sun.jdi.event.ThreadStartEvent");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                iJobManager.join((Object)clazz, null);
            }
            catch (OperationCanceledException operationCanceledException) {
            }
            catch (InterruptedException interruptedException) {}
            thread = target.findThread(threadRef);
        }
        if (thread == null || thread.isIgnoringBreakpoints()) {
            return true;
        }
        return this.handleBreakpointEvent(event, thread, suspendVote);
    }

    public void eventSetComplete(Event event, JDIDebugTarget target, boolean suspend, EventSet eventSet) {
        ThreadReference threadRef = null;
        if (event instanceof ClassPrepareEvent) {
            threadRef = ((ClassPrepareEvent)event).thread();
        } else if (event instanceof LocatableEvent) {
            threadRef = ((LocatableEvent)event).thread();
        }
        if (threadRef == null) {
            return;
        }
        JDIThread thread = target.findThread(threadRef);
        if (thread == null || thread.isIgnoringBreakpoints()) {
            return;
        }
        if (event instanceof ClassPrepareEvent) {
            this.classPrepareComplete(event, thread, suspend, eventSet);
        } else {
            thread.completeBreakpointHandling(this, suspend, true, eventSet);
        }
    }

    protected void classPrepareComplete(Event event, JDIThread thread, boolean suspend, EventSet eventSet) {
        if (thread != null && !suspend) {
            thread.resumedFromClassPrepare();
        }
    }

    public boolean handleClassPrepareEvent(ClassPrepareEvent event, JDIDebugTarget target, boolean suspendVote) {
        block3: {
            if (this.installableReferenceType(event.referenceType(), target)) break block3;
            return true;
        }
        try {
            this.createRequest(target, event.referenceType());
        }
        catch (CoreException e) {
            JDIDebugPlugin.log(e);
        }
        return true;
    }

    public boolean handleBreakpointEvent(Event event, JDIThread thread, boolean suspendVote) {
        this.expireHitCount(event);
        return !this.suspend(thread, suspendVote);
    }

    protected boolean suspend(JDIThread thread, boolean suspendVote) {
        return thread.handleSuspendForBreakpoint(this, suspendVote);
    }

    protected boolean installableReferenceType(ReferenceType type, JDIDebugTarget target) throws CoreException {
        String installableType = this.getTypeName();
        String queriedType = type.name();
        if (installableType == null || queriedType == null) {
            return false;
        }
        int index = queriedType.indexOf(60);
        if (index != -1) {
            queriedType = queriedType.substring(0, index);
        }
        if (installableType.equals(queriedType)) {
            return this.queryInstallListeners(target, type);
        }
        index = queriedType.indexOf(36, 0);
        if (index == -1) {
            return false;
        }
        if (installableType.regionMatches(0, queriedType, 0, index)) {
            return this.queryInstallListeners(target, type);
        }
        return false;
    }

    protected void expireHitCount(Event event) {
        Integer requestCount = null;
        EventRequest request = null;
        if (event != null) {
            request = event.request();
            requestCount = (Integer)request.getProperty((Object)HIT_COUNT);
        }
        if (requestCount != null) {
            if (request != null) {
                request.putProperty((Object)EXPIRED, (Object)Boolean.TRUE);
            }
            try {
                this.setAttributes(fgExpiredEnabledAttributes, new Object[]{Boolean.TRUE, Boolean.FALSE});
            }
            catch (CoreException ce) {
                JDIDebugPlugin.log(ce);
            }
        }
    }

    public boolean shouldSkipBreakpoint() throws CoreException {
        DebugPlugin plugin = DebugPlugin.getDefault();
        return plugin != null && this.isRegistered() && !plugin.getBreakpointManager().isEnabled();
    }

    protected boolean createRequest(JDIDebugTarget target, ReferenceType type) throws CoreException {
        if (this.shouldSkipBreakpoint()) {
            return false;
        }
        EventRequest[] requests = this.newRequests(target, type);
        if (requests == null) {
            return false;
        }
        this.fInstalledTypeName = type.name();
        int i = 0;
        while (i < requests.length) {
            EventRequest request = requests[i];
            this.registerRequest(request, target);
            ++i;
        }
        return true;
    }

    protected void configureRequest(EventRequest request, JDIDebugTarget target) throws CoreException {
        request.setSuspendPolicy(this.getJDISuspendPolicy());
        request.putProperty((Object)JAVA_BREAKPOINT_PROPERTY, (Object)this);
        this.configureRequestThreadFilter(request, target);
        this.configureRequestHitCount(request);
        this.configureInstanceFilters(request, target);
        this.updateEnabledState(request, target);
    }

    protected abstract void addInstanceFilter(EventRequest var1, ObjectReference var2);

    protected void configureRequestThreadFilter(EventRequest request, JDIDebugTarget target) {
        IJavaThread thread = (IJavaThread)this.fFilteredThreadsByTarget.get(target);
        if (thread == null || !(thread instanceof JDIThread)) {
            return;
        }
        this.setRequestThreadFilter(request, ((JDIThread)thread).getUnderlyingThread());
    }

    protected void configureRequestHitCount(EventRequest request) throws CoreException {
        int hitCount = this.getHitCount();
        if (hitCount > 0) {
            request.addCountFilter(hitCount);
            request.putProperty((Object)HIT_COUNT, (Object)new Integer(hitCount));
        }
    }

    protected void configureInstanceFilters(EventRequest request, JDIDebugTarget target) {
        if (this.fInstanceFilters != null && !this.fInstanceFilters.isEmpty()) {
            Iterator iter = this.fInstanceFilters.iterator();
            while (iter.hasNext()) {
                IJavaObject object = (IJavaObject)iter.next();
                if (!object.getDebugTarget().equals(target)) continue;
                this.addInstanceFilter(request, ((JDIObjectValue)object).getUnderlyingObject());
            }
        }
    }

    protected abstract EventRequest[] newRequests(JDIDebugTarget var1, ReferenceType var2) throws CoreException;

    public void addToTarget(JDIDebugTarget target) throws CoreException {
        this.fireAdding(target);
        this.createRequests(target);
    }

    protected void createRequests(JDIDebugTarget target) throws CoreException {
        if (target.isTerminated() || this.shouldSkipBreakpoint()) {
            return;
        }
        String referenceTypeName = this.getTypeName();
        String enclosingTypeName = this.getEnclosingReferenceTypeName();
        if (referenceTypeName == null || enclosingTypeName == null) {
            return;
        }
        if (referenceTypeName.indexOf(36) == -1) {
            this.registerRequest((EventRequest)target.createClassPrepareRequest(enclosingTypeName), target);
            this.registerRequest((EventRequest)target.createClassPrepareRequest(String.valueOf(enclosingTypeName) + "$*"), target);
        } else {
            this.registerRequest((EventRequest)target.createClassPrepareRequest(referenceTypeName), target);
            this.registerRequest((EventRequest)target.createClassPrepareRequest(String.valueOf(enclosingTypeName) + "$*", referenceTypeName), target);
        }
        List classes = target.jdiClassesByName(referenceTypeName);
        if (classes.isEmpty() && enclosingTypeName.equals(referenceTypeName)) {
            return;
        }
        boolean success = false;
        Iterator iter = classes.iterator();
        while (iter.hasNext()) {
            ReferenceType type = (ReferenceType)iter.next();
            if (!this.createRequest(target, type)) continue;
            success = true;
        }
        if (!success) {
            this.addToTargetForLocalType(target, enclosingTypeName);
        }
    }

    protected void addToTargetForLocalType(JDIDebugTarget target, String enclosingTypeName) throws CoreException {
        List classes = target.jdiClassesByName(enclosingTypeName);
        if (!classes.isEmpty()) {
            Iterator iter = classes.iterator();
            block0: while (iter.hasNext()) {
                ReferenceType type = (ReferenceType)iter.next();
                Iterator nestedTypes = type.nestedTypes().iterator();
                while (nestedTypes.hasNext()) {
                    ReferenceType nestedType = (ReferenceType)nestedTypes.next();
                    if (this.createRequest(target, nestedType)) continue block0;
                }
            }
        }
    }

    protected int getJDISuspendPolicy() throws CoreException {
        int breakpointPolicy = this.getSuspendPolicy();
        if (breakpointPolicy == 2) {
            return 1;
        }
        return 2;
    }

    protected int getDefaultSuspendPolicy() {
        Preferences store = JDIDebugModel.getPreferences();
        return store.getInt(JDIDebugPlugin.PREF_DEFAULT_BREAKPOINT_SUSPEND_POLICY);
    }

    protected boolean hasHitCountChanged(EventRequest request) throws CoreException {
        int hitCount = this.getHitCount();
        Integer requestCount = (Integer)request.getProperty((Object)HIT_COUNT);
        int oldCount = -1;
        if (requestCount != null) {
            oldCount = requestCount;
        }
        return hitCount != oldCount;
    }

    public void removeFromTarget(JDIDebugTarget target) throws CoreException {
        this.removeRequests(target);
        Object removed = this.fFilteredThreadsByTarget.remove(target);
        boolean changed = removed != null;
        boolean markerExists = this.markerExists();
        if (!markerExists || markerExists && this.getInstallCount() == 0) {
            this.fInstalledTypeName = null;
        }
        if (this.fInstanceFilters != null && !this.fInstanceFilters.isEmpty()) {
            int i = 0;
            while (i < this.fInstanceFilters.size()) {
                IJavaObject object = (IJavaObject)this.fInstanceFilters.get(i);
                if (object.getDebugTarget().equals(target)) {
                    this.fInstanceFilters.remove(i);
                    changed = true;
                }
                ++i;
            }
        }
        if (changed) {
            this.fireChanged();
        }
        this.fireRemoved(target);
    }

    protected void removeRequests(JDIDebugTarget target) throws CoreException {
        ArrayList requests = (ArrayList)this.getRequests(target).clone();
        Iterator iter = requests.iterator();
        while (iter.hasNext()) {
            EventRequest req = (EventRequest)iter.next();
            try {
                EventRequestManager manager;
                if (target.isAvailable() && !this.isExpired(req) && (manager = target.getEventRequestManager()) != null) {
                    manager.deleteEventRequest(req);
                }
            }
            catch (VMDisconnectedException e) {
                if (target.isAvailable()) {
                    JDIDebugPlugin.log(e);
                }
                this.deregisterRequest(req, target);
                continue;
            }
            catch (RuntimeException e) {
                try {
                    target.internalError(e);
                    continue;
                }
                catch (Throwable throwable) {
                    throw throwable;
                }
                finally {
                    this.deregisterRequest(req, target);
                }
            }
            this.deregisterRequest(req, target);
        }
        this.fRequestsByTarget.remove(target);
    }

    protected void updateEnabledState(EventRequest request, JDIDebugTarget target) throws CoreException {
        this.internalUpdateEnabledState(request, this.isEnabled(), target);
    }

    protected void internalUpdateEnabledState(EventRequest request, boolean enabled, JDIDebugTarget target) {
        if (request.isEnabled() != enabled) {
            try {
                if (!this.isExpired(request)) {
                    request.setEnabled(enabled);
                }
            }
            catch (VMDisconnectedException vMDisconnectedException) {
            }
            catch (RuntimeException e) {
                target.internalError(e);
            }
        }
    }

    public boolean isExpired() throws CoreException {
        return this.ensureMarker().getAttribute(EXPIRED, false);
    }

    protected boolean isExpired(EventRequest request) {
        Boolean requestExpired = (Boolean)request.getProperty((Object)EXPIRED);
        if (requestExpired == null) {
            return false;
        }
        return requestExpired;
    }

    public boolean isInstalled() throws CoreException {
        return this.ensureMarker().getAttribute(INSTALL_COUNT, 0) > 0;
    }

    protected void incrementInstallCount() throws CoreException {
        int count = this.getInstallCount();
        this.setAttribute(INSTALL_COUNT, count + 1);
    }

    public int getInstallCount() throws CoreException {
        return this.ensureMarker().getAttribute(INSTALL_COUNT, 0);
    }

    protected void decrementInstallCount() throws CoreException {
        int count = this.getInstallCount();
        if (count > 0) {
            this.setAttribute(INSTALL_COUNT, count - 1);
        }
        if (count == 1 && this.isExpired()) {
            this.setAttributes(fgExpiredEnabledAttributes, new Object[]{Boolean.FALSE, Boolean.TRUE});
        }
    }

    protected void setTypeName(String typeName) throws CoreException {
        this.setAttribute(TYPE_NAME, typeName);
    }

    public String getTypeName() throws CoreException {
        if (this.fInstalledTypeName == null) {
            return this.ensureMarker().getAttribute(TYPE_NAME, null);
        }
        return this.fInstalledTypeName;
    }

    private void configureAtStartup() throws CoreException {
        String[] listeners;
        ArrayList<String> attributes = null;
        ArrayList<Comparable<Integer>> values = new ArrayList<Comparable<Integer>>(3);
        if (this.isInstalled()) {
            attributes = new ArrayList<String>(3);
            attributes.add(INSTALL_COUNT);
            values.add(new Integer(0));
        }
        if (this.isExpired()) {
            if (attributes == null) {
                attributes = new ArrayList(3);
            }
            attributes.add(EXPIRED);
            values.add(Boolean.FALSE);
            attributes.add("org.eclipse.debug.core.enabled");
            values.add(Boolean.TRUE);
        }
        if (attributes != null) {
            String[] strAttributes = new String[attributes.size()];
            this.setAttributes(attributes.toArray(strAttributes), values.toArray());
        }
        if ((listeners = this.readBreakpointListeners()).length > 0) {
            this.fBreakpointListenerIds = new ArrayList();
            int i = 0;
            while (i < listeners.length) {
                this.fBreakpointListenerIds.add(listeners[i]);
                ++i;
            }
        }
    }

    public int getHitCount() throws CoreException {
        return this.ensureMarker().getAttribute(HIT_COUNT, -1);
    }

    public void setHitCount(int count) throws CoreException {
        if (this.getHitCount() != count) {
            if (!this.isEnabled() && count > -1) {
                this.setAttributes(new String[]{"org.eclipse.debug.core.enabled", HIT_COUNT, EXPIRED}, new Object[]{Boolean.TRUE, new Integer(count), Boolean.FALSE});
            } else {
                this.setAttributes(new String[]{HIT_COUNT, EXPIRED}, new Object[]{new Integer(count), Boolean.FALSE});
            }
            this.recreate();
        }
    }

    protected String getMarkerMessage(int hitCount, int suspendPolicy) {
        StringBuffer buff = new StringBuffer();
        if (hitCount > 0) {
            buff.append(MessageFormat.format((String)JDIDebugBreakpointMessages.JavaBreakpoint___Hit_Count___0___1, (Object[])new Object[]{Integer.toString(hitCount)}));
            buff.append(' ');
        }
        String suspendPolicyString = suspendPolicy == 2 ? JDIDebugBreakpointMessages.JavaBreakpoint__suspend_policy__thread__1 : JDIDebugBreakpointMessages.JavaBreakpoint__suspend_policy__VM__2;
        buff.append(suspendPolicyString);
        return buff.toString();
    }

    public void setExpired(boolean expired) throws CoreException {
        this.setAttribute(EXPIRED, expired);
    }

    public int getSuspendPolicy() throws CoreException {
        return this.ensureMarker().getAttribute(SUSPEND_POLICY, 2);
    }

    public void setSuspendPolicy(int suspendPolicy) throws CoreException {
        if (this.getSuspendPolicy() != suspendPolicy) {
            this.setAttribute(SUSPEND_POLICY, suspendPolicy);
            this.recreate();
        }
    }

    protected void fireAdding(IJavaDebugTarget target) {
        JDIDebugPlugin plugin = JDIDebugPlugin.getDefault();
        if (plugin != null) {
            plugin.fireBreakpointAdding(target, this);
        }
    }

    protected void fireRemoved(IJavaDebugTarget target) {
        JDIDebugPlugin plugin = JDIDebugPlugin.getDefault();
        if (plugin != null) {
            plugin.fireBreakpointRemoved(target, this);
            this.setInstalledIn(target, false);
        }
    }

    protected void fireInstalled(IJavaDebugTarget target) {
        JDIDebugPlugin plugin = JDIDebugPlugin.getDefault();
        if (plugin != null && !this.isInstalledIn(target)) {
            plugin.fireBreakpointInstalled(target, this);
            this.setInstalledIn(target, true);
        }
    }

    protected boolean isInstalledIn(IJavaDebugTarget target) {
        return this.fInstalledTargets != null && this.fInstalledTargets.contains(target);
    }

    protected void setInstalledIn(IJavaDebugTarget target, boolean installed) {
        if (installed) {
            if (this.fInstalledTargets == null) {
                this.fInstalledTargets = new HashSet();
            }
            this.fInstalledTargets.add(target);
        } else if (this.fInstalledTargets != null) {
            this.fInstalledTargets.remove(target);
        }
    }

    public void setThreadFilter(IJavaThread thread) throws CoreException {
        if (!(thread.getDebugTarget() instanceof JDIDebugTarget) || !(thread instanceof JDIThread)) {
            return;
        }
        JDIDebugTarget target = (JDIDebugTarget)thread.getDebugTarget();
        if (thread != this.fFilteredThreadsByTarget.put(target, thread)) {
            this.recreate(target);
            this.fireChanged();
        }
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            DebugEvent event = events[i];
            if (event.getKind() == 8) {
                Object source = event.getSource();
                if (!(source instanceof JDIThread)) {
                    return;
                }
                try {
                    this.cleanupForThreadTermination((JDIThread)source);
                }
                catch (VMDisconnectedException vMDisconnectedException) {}
            }
            ++i;
        }
    }

    protected void cleanupForThreadTermination(JDIThread thread) {
        JDIDebugTarget target = (JDIDebugTarget)thread.getDebugTarget();
        try {
            if (thread == this.getThreadFilter(target)) {
                this.removeThreadFilter(target);
            }
        }
        catch (CoreException exception) {
            JDIDebugPlugin.log(exception);
        }
    }

    protected abstract void setRequestThreadFilter(EventRequest var1, ThreadReference var2);

    public IJavaThread getThreadFilter(IJavaDebugTarget target) {
        return (IJavaThread)this.fFilteredThreadsByTarget.get(target);
    }

    public IJavaThread[] getThreadFilters() {
        IJavaThread[] threads = null;
        Collection values = this.fFilteredThreadsByTarget.values();
        threads = new IJavaThread[values.size()];
        values.toArray(threads);
        return threads;
    }

    public void removeThreadFilter(IJavaDebugTarget javaTarget) throws CoreException {
        if (!(javaTarget instanceof JDIDebugTarget)) {
            return;
        }
        JDIDebugTarget target = (JDIDebugTarget)javaTarget;
        if (this.fFilteredThreadsByTarget.remove(target) != null) {
            this.recreate(target);
            this.fireChanged();
        }
    }

    protected boolean queryInstallListeners(JDIDebugTarget target, ReferenceType type) {
        JDIDebugPlugin plugin = JDIDebugPlugin.getDefault();
        if (plugin != null) {
            JDIType jt = null;
            if (type != null) {
                jt = JDIType.createType(target, (Type)type);
            }
            return plugin.fireInstalling(target, this, jt);
        }
        return false;
    }

    public void addInstanceFilter(IJavaObject object) throws CoreException {
        if (this.fInstanceFilters == null) {
            this.fInstanceFilters = new ArrayList();
        }
        if (!this.fInstanceFilters.contains(object)) {
            this.fInstanceFilters.add(object);
            this.recreate((JDIDebugTarget)object.getDebugTarget());
            this.fireChanged();
        }
    }

    protected void fireChanged() {
        DebugPlugin plugin = DebugPlugin.getDefault();
        if (plugin != null && this.markerExists()) {
            plugin.getBreakpointManager().fireBreakpointChanged((IBreakpoint)this);
        }
    }

    public IJavaObject[] getInstanceFilters() {
        if (this.fInstanceFilters == null || this.fInstanceFilters.isEmpty()) {
            return fgEmptyInstanceFilters;
        }
        return this.fInstanceFilters.toArray(new IJavaObject[this.fInstanceFilters.size()]);
    }

    public void removeInstanceFilter(IJavaObject object) throws CoreException {
        if (this.fInstanceFilters == null) {
            return;
        }
        if (this.fInstanceFilters.remove(object)) {
            this.recreate((JDIDebugTarget)object.getDebugTarget());
            this.fireChanged();
        }
    }

    protected void recreate() throws CoreException {
        DebugPlugin plugin = DebugPlugin.getDefault();
        if (plugin != null) {
            IDebugTarget[] targets = plugin.getLaunchManager().getDebugTargets();
            int i = 0;
            while (i < targets.length) {
                IJavaDebugTarget jdiTarget;
                IDebugTarget target = targets[i];
                MultiStatus multiStatus = new MultiStatus(JDIDebugPlugin.getUniqueIdentifier(), 120, JDIDebugBreakpointMessages.JavaBreakpoint_Exception, null);
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((jdiTarget = (IJavaDebugTarget)target.getAdapter((Class)clazz)) instanceof JDIDebugTarget) {
                    try {
                        this.recreate((JDIDebugTarget)jdiTarget);
                    }
                    catch (CoreException e) {
                        multiStatus.add(e.getStatus());
                    }
                }
                if (!multiStatus.isOK()) {
                    throw new CoreException((IStatus)multiStatus);
                }
                ++i;
            }
        }
    }

    protected void recreate(JDIDebugTarget target) throws CoreException {
        if (target.isAvailable() && target.getBreakpoints().contains(this)) {
            this.removeRequests(target);
            this.createRequests(target);
        }
    }

    public void setEnabled(boolean enabled) throws CoreException {
        super.setEnabled(enabled);
        this.recreate();
    }

    public boolean supportsInstanceFilters() {
        return true;
    }

    public boolean supportsThreadFilters() {
        return true;
    }

    public synchronized void addBreakpointListener(String identifier) throws CoreException {
        if (this.fBreakpointListenerIds == null) {
            this.fBreakpointListenerIds = new ArrayList();
        }
        if (!this.fBreakpointListenerIds.contains(identifier)) {
            this.fBreakpointListenerIds.add(identifier);
            this.writeBreakpointListeners();
        }
    }

    private void writeBreakpointListeners() throws CoreException {
        StringBuffer buf = new StringBuffer();
        Iterator iterator = this.fBreakpointListenerIds.iterator();
        while (iterator.hasNext()) {
            buf.append((String)iterator.next());
            if (!iterator.hasNext()) continue;
            buf.append(",");
        }
        this.setAttribute(BREAKPOINT_LISTENERS, buf.toString());
    }

    public synchronized boolean removeBreakpointListener(String identifier) throws CoreException {
        if (this.fBreakpointListenerIds != null && this.fBreakpointListenerIds.remove(identifier)) {
            this.writeBreakpointListeners();
            return true;
        }
        return false;
    }

    public synchronized String[] getBreakpointListeners() throws CoreException {
        if (this.fBreakpointListenerIds == null) {
            return new String[0];
        }
        return this.fBreakpointListenerIds.toArray(new String[this.fBreakpointListenerIds.size()]);
    }

    private String[] readBreakpointListeners() throws CoreException {
        String value = this.ensureMarker().getAttribute(BREAKPOINT_LISTENERS, null);
        if (value == null) {
            return new String[0];
        }
        return value.split(",");
    }
}

