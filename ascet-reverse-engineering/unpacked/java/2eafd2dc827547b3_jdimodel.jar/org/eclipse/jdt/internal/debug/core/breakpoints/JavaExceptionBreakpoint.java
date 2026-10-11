/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Location
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.ExceptionEvent
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  com.sun.jdi.request.ExceptionRequest
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.sun.jdi.ClassType;
import com.sun.jdi.Location;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.ExceptionEvent;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import com.sun.jdi.request.ExceptionRequest;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.regex.Pattern;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaExceptionBreakpoint;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JavaExceptionBreakpoint
extends JavaBreakpoint
implements IJavaExceptionBreakpoint {
    public static final String JAVA_EXCEPTION_BREAKPOINT = "org.eclipse.jdt.debug.javaExceptionBreakpointMarker";
    protected static final String CAUGHT = "org.eclipse.jdt.debug.core.caught";
    protected static final String UNCAUGHT = "org.eclipse.jdt.debug.core.uncaught";
    protected static final String CHECKED = "org.eclipse.jdt.debug.core.checked";
    protected static final String INCLUSION_FILTERS = "org.eclipse.jdt.debug.core.inclusion_filters";
    protected static final String EXCLUSION_FILTERS = "org.eclipse.jdt.debug.core.exclusion_filters";
    protected static final String SUSPEND_ON_SUBCLASSES = "org.eclipse.jdt.debug.core.suspend_on_subclasses";
    protected String fExceptionName = null;
    protected String[] fInclusionClassFilters = null;
    protected String[] fExclusionClassFilters = null;
    private ObjectReference fLastException;
    private JDIDebugTarget fLastTarget;

    public JavaExceptionBreakpoint() {
    }

    public JavaExceptionBreakpoint(final IResource resource, final String exceptionName, final boolean caught, final boolean uncaught, final boolean checked, final boolean add, final Map attributes) throws DebugException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaExceptionBreakpoint.this.setMarker(resource.createMarker(JavaExceptionBreakpoint.JAVA_EXCEPTION_BREAKPOINT));
                attributes.put("org.eclipse.debug.core.id", JavaExceptionBreakpoint.this.getModelIdentifier());
                attributes.put("org.eclipse.jdt.debug.core.typeName", exceptionName);
                attributes.put("org.eclipse.debug.core.enabled", Boolean.TRUE);
                attributes.put(JavaExceptionBreakpoint.CAUGHT, caught);
                attributes.put(JavaExceptionBreakpoint.UNCAUGHT, uncaught);
                attributes.put(JavaExceptionBreakpoint.CHECKED, checked);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaExceptionBreakpoint.this.getDefaultSuspendPolicy()));
                JavaExceptionBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaExceptionBreakpoint.this.register(add);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
    }

    protected EventRequest[] newRequests(JDIDebugTarget target, ReferenceType type) throws CoreException {
        if (!this.isCaught() && !this.isUncaught()) {
            return null;
        }
        ExceptionRequest request = null;
        EventRequestManager manager = target.getEventRequestManager();
        if (manager == null) {
            target.requestFailed(JDIDebugBreakpointMessages.JavaExceptionBreakpoint_Unable_to_create_breakpoint_request___VM_disconnected__1, null);
            return null;
        }
        try {
            request = manager.createExceptionRequest(type, this.isCaught(), this.isUncaught());
            this.configureRequest((EventRequest)request, target);
        }
        catch (VMDisconnectedException e) {
            if (target.isAvailable()) {
                JDIDebugPlugin.log(e);
            }
            return null;
        }
        catch (RuntimeException e) {
            target.internalError(e);
            return null;
        }
        return new EventRequest[]{request};
    }

    public void setEnabled(boolean enabled) throws CoreException {
        if (enabled && !this.isCaught() && !this.isUncaught()) {
            this.setAttributes(new String[]{CAUGHT, UNCAUGHT}, new Object[]{Boolean.TRUE, Boolean.TRUE});
        }
        super.setEnabled(enabled);
    }

    protected void setCaughtAndUncaught(boolean caught, boolean uncaught) throws CoreException {
        Object[] values = new Object[]{caught, uncaught};
        String[] attributes = new String[]{CAUGHT, UNCAUGHT};
        this.setAttributes(attributes, values);
    }

    public boolean isCaught() throws CoreException {
        return this.ensureMarker().getAttribute(CAUGHT, false);
    }

    public void setCaught(boolean caught) throws CoreException {
        if (caught == this.isCaught()) {
            return;
        }
        this.setAttribute(CAUGHT, caught);
        if (caught && !this.isEnabled()) {
            this.setEnabled(true);
        } else if (!caught && !this.isUncaught()) {
            this.setEnabled(false);
        }
        this.recreate();
    }

    public void setSuspendOnSubclasses(boolean suspend) throws CoreException {
        if (suspend != this.isSuspendOnSubclasses()) {
            this.setAttribute(SUSPEND_ON_SUBCLASSES, suspend);
            this.recreate();
        }
    }

    public boolean isSuspendOnSubclasses() throws CoreException {
        return this.ensureMarker().getAttribute(SUSPEND_ON_SUBCLASSES, false);
    }

    public boolean isUncaught() throws CoreException {
        return this.ensureMarker().getAttribute(UNCAUGHT, false);
    }

    public void setUncaught(boolean uncaught) throws CoreException {
        if (uncaught == this.isUncaught()) {
            return;
        }
        this.setAttribute(UNCAUGHT, uncaught);
        if (uncaught && !this.isEnabled()) {
            this.setEnabled(true);
        } else if (!uncaught && !this.isCaught()) {
            this.setEnabled(false);
        }
        this.recreate();
    }

    public boolean isChecked() throws CoreException {
        return this.ensureMarker().getAttribute(CHECKED, false);
    }

    protected void setRequestThreadFilter(EventRequest request, ThreadReference thread) {
        ((ExceptionRequest)request).addThreadFilter(thread);
    }

    public boolean handleBreakpointEvent(Event event, JDIThread thread, boolean suspendVote) {
        if (event instanceof ExceptionEvent) {
            ObjectReference ex = ((ExceptionEvent)event).exception();
            this.fLastTarget = thread.getJavaDebugTarget();
            this.fLastException = ex;
            String name = null;
            try {
                name = ex.type().name();
                if (!name.equals(this.getTypeName()) && !this.isSuspendOnSubclasses() & this.isSubclass((ClassType)ex.type(), this.getTypeName())) {
                    return true;
                }
            }
            catch (VMDisconnectedException vMDisconnectedException) {
                return true;
            }
            catch (CoreException e) {
                JDIDebugPlugin.log(e);
            }
            catch (RuntimeException e) {
                try {
                    thread.targetRequestFailed(e.getMessage(), e);
                }
                catch (DebugException debugException) {
                    JDIDebugPlugin.log(e);
                    return false;
                }
            }
            this.setExceptionName(name);
            if (this.getExclusionClassFilters().length >= 1 || this.getInclusionClassFilters().length >= 1 || this.filtersIncludeDefaultPackage(this.fInclusionClassFilters) || this.filtersIncludeDefaultPackage(this.fExclusionClassFilters)) {
                Location location = ((ExceptionEvent)event).location();
                String typeName = location.declaringType().name();
                boolean defaultPackage = typeName.indexOf(46) == -1;
                boolean included = true;
                String[] filters = this.getInclusionClassFilters();
                if (filters.length > 0) {
                    included = this.matchesFilters(filters, typeName, defaultPackage);
                }
                boolean excluded = false;
                filters = this.getExclusionClassFilters();
                if (filters.length > 0) {
                    excluded = this.matchesFilters(filters, typeName, defaultPackage);
                }
                if (included && !excluded) {
                    return !this.suspend(thread, suspendVote);
                }
                return true;
            }
            return !this.suspend(thread, suspendVote);
        }
        return true;
    }

    private boolean isSubclass(ClassType type, String typeName) {
        type = type.superclass();
        while (type != null) {
            if (type.name().equals(typeName)) {
                return true;
            }
            type = type.superclass();
        }
        return false;
    }

    protected void setInstalledIn(IJavaDebugTarget target, boolean installed) {
        this.fLastException = null;
        this.fLastTarget = null;
        super.setInstalledIn(target, installed);
    }

    protected boolean filtersIncludeDefaultPackage(String[] filters) {
        int i = 0;
        while (i < filters.length) {
            if (filters[i].length() == 0 || filters[i].indexOf(46) == -1) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected boolean matchesFilters(String[] filters, String typeName, boolean defaultPackage) {
        int i = 0;
        while (i < filters.length) {
            String filter = filters[i];
            if (defaultPackage && filter.length() == 0) {
                return true;
            }
            filter = filter.replaceAll("\\.", "\\\\.");
            Pattern pattern = Pattern.compile(filter = filter.replaceAll("\\*", "\\.\\*"));
            if (pattern.matcher(typeName).find()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected void setExceptionName(String name) {
        this.fExceptionName = name;
    }

    public String getExceptionTypeName() {
        return this.fExceptionName;
    }

    public String[] getFilters() {
        String[] iFilters = this.getInclusionFilters();
        String[] eFilters = this.getExclusionFilters();
        String[] filters = new String[iFilters.length + eFilters.length];
        System.arraycopy(iFilters, 0, filters, 0, iFilters.length);
        System.arraycopy(eFilters, 0, filters, iFilters.length, eFilters.length);
        return filters;
    }

    public void setFilters(String[] filters, boolean inclusive) throws CoreException {
        if (inclusive) {
            this.setInclusionFilters(filters);
        } else {
            this.setExclusionFilters(filters);
        }
        this.recreate();
    }

    protected void configureRequest(EventRequest eRequest, JDIDebugTarget target) throws CoreException {
        String[] iFilters = this.getInclusionClassFilters();
        String[] eFilters = this.getExclusionClassFilters();
        ExceptionRequest request = (ExceptionRequest)eRequest;
        if (iFilters.length == 1) {
            if (eFilters.length == 0) {
                request.addClassFilter(iFilters[0]);
            }
        } else if (eFilters.length == 1 && iFilters.length == 0) {
            request.addClassExclusionFilter(eFilters[0]);
        }
        super.configureRequest(eRequest, target);
    }

    protected String serializeList(String[] list) {
        if (list == null) {
            return "";
        }
        HashSet set = new HashSet(list.length);
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < list.length) {
            String pattern;
            if (i > 0) {
                buffer.append(',');
            }
            if (!set.contains(pattern = list[i])) {
                if (pattern.length() == 0) {
                    pattern = ".";
                }
                buffer.append(pattern);
            }
            ++i;
        }
        return buffer.toString();
    }

    protected String[] parseList(String listString) {
        ArrayList<String> list = new ArrayList<String>(10);
        StringTokenizer tokenizer = new StringTokenizer(listString, ",");
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            if (token.equals(".")) {
                token = "";
            }
            list.add(token);
        }
        return list.toArray(new String[list.size()]);
    }

    public boolean isInclusiveFiltered() throws CoreException {
        return this.ensureMarker().getAttribute(INCLUSION_FILTERS, "").length() > 0;
    }

    protected String[] getInclusionClassFilters() {
        if (this.fInclusionClassFilters == null) {
            try {
                this.fInclusionClassFilters = this.parseList(this.ensureMarker().getAttribute(INCLUSION_FILTERS, ""));
            }
            catch (CoreException coreException) {
                this.fInclusionClassFilters = new String[0];
            }
        }
        return this.fInclusionClassFilters;
    }

    protected void setInclusionClassFilters(String[] filters) {
        this.fInclusionClassFilters = filters;
    }

    protected String[] getExclusionClassFilters() {
        if (this.fExclusionClassFilters == null) {
            try {
                this.fExclusionClassFilters = this.parseList(this.ensureMarker().getAttribute(EXCLUSION_FILTERS, ""));
            }
            catch (CoreException coreException) {
                this.fExclusionClassFilters = new String[0];
            }
        }
        return this.fExclusionClassFilters;
    }

    protected void setExclusionClassFilters(String[] filters) {
        this.fExclusionClassFilters = filters;
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

    public String[] getExclusionFilters() {
        return this.getExclusionClassFilters();
    }

    public String[] getInclusionFilters() {
        return this.getInclusionClassFilters();
    }

    public void setExclusionFilters(String[] filters) throws CoreException {
        String serializedFilters = this.serializeList(filters);
        if (serializedFilters.equals(this.ensureMarker().getAttribute(EXCLUSION_FILTERS, ""))) {
            return;
        }
        this.setExclusionClassFilters(filters);
        this.setAttribute(EXCLUSION_FILTERS, serializedFilters);
        this.recreate();
    }

    public void setInclusionFilters(String[] filters) throws CoreException {
        String serializedFilters = this.serializeList(filters);
        if (serializedFilters.equals(this.ensureMarker().getAttribute(INCLUSION_FILTERS, ""))) {
            return;
        }
        this.setInclusionClassFilters(filters);
        this.setAttribute(INCLUSION_FILTERS, serializedFilters);
        this.recreate();
    }

    protected void addInstanceFilter(EventRequest request, ObjectReference object) {
        if (request instanceof ExceptionRequest) {
            ((ExceptionRequest)request).addInstanceFilter(object);
        }
    }

    public IJavaObject getLastException() {
        if (this.fLastException != null) {
            return (IJavaObject)((Object)JDIValue.createValue(this.fLastTarget, (Value)this.fLastException));
        }
        return null;
    }
}

