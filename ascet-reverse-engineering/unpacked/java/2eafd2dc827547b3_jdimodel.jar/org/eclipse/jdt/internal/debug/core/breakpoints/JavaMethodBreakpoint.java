/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Location
 *  com.sun.jdi.Method
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.event.BreakpointEvent
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.LocatableEvent
 *  com.sun.jdi.event.MethodEntryEvent
 *  com.sun.jdi.event.MethodExitEvent
 *  com.sun.jdi.request.BreakpointRequest
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  com.sun.jdi.request.MethodEntryRequest
 *  com.sun.jdi.request.MethodExitRequest
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.model.IDebugTarget
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.sun.jdi.ClassType;
import com.sun.jdi.Location;
import com.sun.jdi.Method;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.event.BreakpointEvent;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.LocatableEvent;
import com.sun.jdi.event.MethodEntryEvent;
import com.sun.jdi.event.MethodExitEvent;
import com.sun.jdi.request.BreakpointRequest;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import com.sun.jdi.request.MethodEntryRequest;
import com.sun.jdi.request.MethodExitRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdt.debug.core.IJavaMethodBreakpoint;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;

public class JavaMethodBreakpoint
extends JavaLineBreakpoint
implements IJavaMethodBreakpoint {
    public static final String JAVA_METHOD_BREAKPOINT = "org.eclipse.jdt.debug.javaMethodBreakpointMarker";
    protected static final String METHOD_NAME = "org.eclipse.jdt.debug.core.methodName";
    protected static final String METHOD_SIGNATURE = "org.eclipse.jdt.debug.core.methodSignature";
    protected static final String ENTRY = "org.eclipse.jdt.debug.core.entry";
    protected static final String EXIT = "org.eclipse.jdt.debug.core.exit";
    protected static final String NATIVE = "org.eclipse.jdt.debug.core.native";
    private String fMethodName = null;
    private String fMethodSignature = null;
    protected static final Integer ENTRY_EVENT = new Integer(0);
    protected static final Integer EXIT_EVENT = new Integer(1);
    private Map fLastEventTypes = new HashMap(10);
    private Pattern fPattern;
    private Boolean fUsesTypePattern = null;

    public JavaMethodBreakpoint() {
    }

    public JavaMethodBreakpoint(final IResource resource, final String typePattern, final String methodName, final String methodSignature, final boolean entry, final boolean exit, final boolean nativeOnly, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean register, final Map attributes) throws CoreException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaMethodBreakpoint.this.setMarker(resource.createMarker(JavaMethodBreakpoint.JAVA_METHOD_BREAKPOINT));
                JavaMethodBreakpoint.this.addLineBreakpointAttributes(attributes, JavaMethodBreakpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaMethodBreakpoint.this.addMethodNameAndSignature(attributes, methodName, methodSignature);
                JavaMethodBreakpoint.this.addTypeNameAndHitCount(attributes, typePattern, hitCount);
                attributes.put(JavaMethodBreakpoint.ENTRY, entry);
                attributes.put(JavaMethodBreakpoint.EXIT, exit);
                attributes.put(JavaMethodBreakpoint.NATIVE, nativeOnly);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaMethodBreakpoint.this.getDefaultSuspendPolicy()));
                JavaMethodBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaMethodBreakpoint.this.register(register);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
        String type = this.convertToRegularExpression(typePattern);
        this.fPattern = Pattern.compile(type);
    }

    protected void createRequest(JDIDebugTarget target, String typePattern) throws CoreException {
        MethodEntryRequest entryRequest = this.createMethodEntryRequest(target, typePattern);
        MethodExitRequest exitRequest = this.createMethodExitRequest(target, typePattern);
        this.registerRequest((EventRequest)entryRequest, target);
        this.registerRequest((EventRequest)exitRequest, target);
    }

    protected MethodEntryRequest createMethodEntryRequest(JDIDebugTarget target, String typePattern) throws CoreException {
        return (MethodEntryRequest)this.createMethodRequest(target, typePattern, true);
    }

    protected MethodExitRequest createMethodExitRequest(JDIDebugTarget target, String typePattern) throws CoreException {
        return (MethodExitRequest)this.createMethodRequest(target, typePattern, false);
    }

    protected EventRequest createMethodEntryRequest(JDIDebugTarget target, ReferenceType type) throws CoreException {
        return this.createMethodRequest(target, type, true);
    }

    protected EventRequest createMethodExitRequest(JDIDebugTarget target, ReferenceType type) throws CoreException {
        return this.createMethodRequest(target, type, false);
    }

    private EventRequest createMethodRequest(JDIDebugTarget target, Object classFilter, boolean entry) throws CoreException {
        MethodExitRequest request = null;
        EventRequestManager manager = target.getEventRequestManager();
        if (manager == null) {
            target.requestFailed(JDIDebugBreakpointMessages.JavaMethodBreakpoint_Unable_to_create_breakpoint_request___VM_disconnected__1, null);
        }
        try {
            if (entry) {
                Location location;
                Method method;
                ClassType clazz;
                if (classFilter instanceof ClassType && this.getMethodName() != null && this.getMethodSignature() != null && (clazz = (ClassType)classFilter).name().equals(this.getTypeName()) && (method = clazz.concreteMethodByName(this.getMethodName(), this.getMethodSignature())) != null && !method.isNative() && (location = method.location()) != null && location.codeIndex() != -1L) {
                    request = manager.createBreakpointRequest(location);
                }
                if (request == null) {
                    request = manager.createMethodEntryRequest();
                    if (classFilter instanceof String) {
                        ((MethodEntryRequest)request).addClassFilter((String)classFilter);
                    } else if (classFilter instanceof ReferenceType) {
                        ((MethodEntryRequest)request).addClassFilter((ReferenceType)classFilter);
                    }
                }
            } else {
                request = manager.createMethodExitRequest();
                if (classFilter instanceof String) {
                    request.addClassFilter((String)classFilter);
                } else if (classFilter instanceof ReferenceType) {
                    request.addClassFilter((ReferenceType)classFilter);
                }
            }
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
        }
        return request;
    }

    protected void setRequestThreadFilter(EventRequest request, ThreadReference thread) {
        if (request instanceof MethodEntryRequest) {
            ((MethodEntryRequest)request).addThreadFilter(thread);
        } else if (request instanceof MethodExitRequest) {
            ((MethodExitRequest)request).addThreadFilter(thread);
        } else if (request instanceof BreakpointRequest) {
            ((BreakpointRequest)request).addThreadFilter(thread);
        }
    }

    protected void configureRequestHitCount(EventRequest request) throws CoreException {
        if (request instanceof BreakpointRequest) {
            super.configureRequestHitCount(request);
        } else {
            int hitCount = this.getHitCount();
            if (hitCount > 0) {
                request.putProperty((Object)"org.eclipse.jdt.debug.core.hitCount", (Object)new Integer(hitCount));
            }
        }
    }

    protected void updateEnabledState(EventRequest request, JDIDebugTarget target) throws CoreException {
        boolean enabled = this.isEnabled();
        if (request instanceof MethodEntryRequest || request instanceof BreakpointRequest) {
            enabled = enabled && this.isEntry();
        } else if (request instanceof MethodExitRequest) {
            boolean bl = enabled = enabled && this.isExit();
        }
        if (enabled != request.isEnabled()) {
            this.internalUpdateEnabledState(request, enabled, target);
        }
    }

    private void addMethodNameAndSignature(Map attributes, String methodName, String methodSignature) {
        if (methodName != null) {
            attributes.put(METHOD_NAME, methodName);
        }
        if (methodSignature != null) {
            attributes.put(METHOD_SIGNATURE, methodSignature);
        }
        this.fMethodName = methodName;
        this.fMethodSignature = methodSignature;
    }

    public boolean isEntrySuspend(IDebugTarget target) {
        Integer lastEventType = (Integer)this.fLastEventTypes.get(target);
        if (lastEventType == null) {
            return false;
        }
        return lastEventType.equals(ENTRY_EVENT);
    }

    public boolean handleBreakpointEvent(Event event, JDIThread thread, boolean suspendVote) {
        if (event instanceof MethodEntryEvent) {
            MethodEntryEvent entryEvent = (MethodEntryEvent)event;
            this.fLastEventTypes.put(thread.getDebugTarget(), ENTRY_EVENT);
            return this.handleMethodEvent((LocatableEvent)entryEvent, entryEvent.method(), thread, suspendVote);
        }
        if (event instanceof MethodExitEvent) {
            MethodExitEvent exitEvent = (MethodExitEvent)event;
            this.fLastEventTypes.put(thread.getDebugTarget(), EXIT_EVENT);
            return this.handleMethodEvent((LocatableEvent)exitEvent, exitEvent.method(), thread, suspendVote);
        }
        if (event instanceof BreakpointEvent) {
            this.fLastEventTypes.put(thread.getDebugTarget(), ENTRY_EVENT);
            return super.handleBreakpointEvent(event, thread, suspendVote);
        }
        return true;
    }

    protected boolean handleMethodEvent(LocatableEvent event, Method method, JDIThread thread, boolean suspendVote) {
        block12: {
            block11: {
                block10: {
                    block9: {
                        block8: {
                            try {
                                if (!this.isNativeOnly() || method.isNative()) break block8;
                                return true;
                            }
                            catch (CoreException e) {
                                JDIDebugPlugin.log(e);
                                return true;
                            }
                        }
                        if (this.getMethodName() == null || method.name().equals(this.getMethodName())) break block9;
                        return true;
                    }
                    if (this.getMethodSignature() == null) break block10;
                    String sig = method.signature();
                    if (sig.indexOf(36) > -1) {
                        sig = sig.replace('$', '.');
                    }
                    if (sig.equals(this.getMethodSignature())) break block10;
                    return true;
                }
                if (this.fPattern == null || this.fPattern.matcher(method.declaringType().name()).find()) break block11;
                return true;
            }
            Integer count = (Integer)event.request().getProperty((Object)"org.eclipse.jdt.debug.core.hitCount");
            if (count == null || !this.handleHitCount(event, count)) break block12;
            return true;
        }
        return !this.suspendForEvent((Event)event, thread, suspendVote);
    }

    private boolean handleHitCount(LocatableEvent event, Integer count) {
        int hitCount = count;
        if (hitCount > 0) {
            count = new Integer(--hitCount);
            event.request().putProperty((Object)"org.eclipse.jdt.debug.core.hitCount", (Object)count);
            if (hitCount == 0) {
                try {
                    this.setExpired(true);
                    this.setEnabled(false);
                }
                catch (CoreException e) {
                    JDIDebugPlugin.log(e);
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public String getMethodName() {
        return this.fMethodName;
    }

    public String getMethodSignature() {
        return this.fMethodSignature;
    }

    public boolean isEntry() throws CoreException {
        return this.ensureMarker().getAttribute(ENTRY, false);
    }

    public boolean isExit() throws CoreException {
        return this.ensureMarker().getAttribute(EXIT, false);
    }

    public boolean isNativeOnly() throws CoreException {
        return this.ensureMarker().getAttribute(NATIVE, false);
    }

    public void setEntry(boolean entry) throws CoreException {
        if (this.isEntry() != entry) {
            this.setAttribute(ENTRY, entry);
            if (entry && !this.isEnabled()) {
                this.setEnabled(true);
            } else if (!entry && !this.isExit()) {
                this.setEnabled(false);
            }
            this.recreate();
        }
    }

    public void setExit(boolean exit) throws CoreException {
        if (this.isExit() != exit) {
            this.setAttribute(EXIT, exit);
            if (exit && !this.isEnabled()) {
                this.setEnabled(true);
            } else if (!exit && !this.isEntry()) {
                this.setEnabled(false);
            }
            this.recreate();
        }
    }

    public void setNativeOnly(boolean nativeOnly) throws CoreException {
        if (this.isNativeOnly() != nativeOnly) {
            this.setAttribute(NATIVE, nativeOnly);
            this.recreate();
        }
    }

    public void setMarker(IMarker marker) throws CoreException {
        super.setMarker(marker);
        this.fMethodName = marker.getAttribute(METHOD_NAME, null);
        this.fMethodSignature = marker.getAttribute(METHOD_SIGNATURE, null);
        String typePattern = marker.getAttribute("org.eclipse.jdt.debug.core.typeName", "");
        if (typePattern != null) {
            try {
                this.fPattern = Pattern.compile(this.convertToRegularExpression(typePattern));
            }
            catch (PatternSyntaxException e) {
                throw new CoreException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), JDIDebugBreakpointMessages.JavaMethodBreakpoint_0, (Throwable)e));
            }
        }
    }

    private String convertToRegularExpression(String stringMatcherPattern) {
        String regex = stringMatcherPattern.replaceAll("\\.", "\\\\.");
        regex = regex.replaceAll("\\*", "\\.\\*");
        regex = regex.replaceAll("\\$", "\\\\\\$");
        return regex;
    }

    public void setEnabled(boolean enabled) throws CoreException {
        if (enabled && !this.isEntry() && !this.isExit()) {
            this.setDefaultEntryAndExit();
        }
        super.setEnabled(enabled);
    }

    protected void setDefaultEntryAndExit() throws CoreException {
        Object[] values = new Object[]{Boolean.TRUE, Boolean.FALSE};
        String[] attributes = new String[]{ENTRY, EXIT};
        this.setAttributes(attributes, values);
    }

    public boolean supportsCondition() {
        return true;
    }

    public void addToTarget(JDIDebugTarget target) throws CoreException {
        if (this.usesTypePattern()) {
            this.fireAdding(target);
            String referenceTypeNamePattern = this.getTypeName();
            if (referenceTypeNamePattern == null) {
                return;
            }
            this.createRequest(target, referenceTypeNamePattern);
        } else {
            super.addToTarget(target);
        }
    }

    public void removeFromTarget(JDIDebugTarget target) throws CoreException {
        this.fLastEventTypes.remove(target);
        super.removeFromTarget(target);
    }

    protected boolean usesTypePattern() throws CoreException {
        if (this.fUsesTypePattern == null) {
            String name = this.getTypeName();
            this.fUsesTypePattern = name != null && (name.startsWith("*") || name.endsWith("*"));
        }
        return this.fUsesTypePattern;
    }

    protected boolean createRequest(JDIDebugTarget target, ReferenceType type) throws CoreException {
        if (!type.name().equals(this.getTypeName()) || this.shouldSkipBreakpoint()) {
            return false;
        }
        EventRequest entryRequest = this.createMethodEntryRequest(target, type);
        EventRequest exitRequest = this.createMethodExitRequest(target, type);
        this.registerRequest(entryRequest, target);
        this.registerRequest(exitRequest, target);
        return true;
    }

    protected void setTypeName(String typeName) throws CoreException {
        this.fUsesTypePattern = null;
        super.setTypeName(typeName);
    }

    protected void addInstanceFilter(EventRequest request, ObjectReference object) {
        if (request instanceof MethodEntryRequest) {
            ((MethodEntryRequest)request).addInstanceFilter(object);
        } else if (request instanceof MethodExitRequest) {
            ((MethodExitRequest)request).addInstanceFilter(object);
        } else {
            super.addInstanceFilter(request, object);
        }
    }
}

