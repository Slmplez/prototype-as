/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Location
 *  com.sun.jdi.Method
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.request.BreakpointRequest
 *  com.sun.jdi.request.EventRequest
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.sun.jdi.ClassType;
import com.sun.jdi.Location;
import com.sun.jdi.Method;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.request.BreakpointRequest;
import com.sun.jdi.request.EventRequest;
import java.util.Map;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.debug.core.IJavaMethodEntryBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class JavaMethodEntryBreakpoint
extends JavaLineBreakpoint
implements IJavaMethodEntryBreakpoint {
    protected static final String JAVA_METHOD_ENTRY_BREAKPOINT = "org.eclipse.jdt.debug.javaMethodEntryBreakpointMarker";
    private static final String METHOD_NAME = "org.eclipse.jdt.debug.core.methodName";
    private static final String METHOD_SIGNATURE = "org.eclipse.jdt.debug.core.methodSignature";
    private String fMethodName = null;
    private String fMethodSignature = null;

    public JavaMethodEntryBreakpoint() {
    }

    public JavaMethodEntryBreakpoint(final IResource resource, final String typeName, final String methodName, final String methodSignature, final int lineNumber, final int charStart, final int charEnd, final int hitCount, final boolean register, final Map attributes) throws CoreException {
        IWorkspaceRunnable wr = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                JavaMethodEntryBreakpoint.this.setMarker(resource.createMarker(JavaMethodEntryBreakpoint.JAVA_METHOD_ENTRY_BREAKPOINT));
                JavaMethodEntryBreakpoint.this.addLineBreakpointAttributes(attributes, JavaMethodEntryBreakpoint.this.getModelIdentifier(), true, lineNumber, charStart, charEnd);
                JavaMethodEntryBreakpoint.this.addMethodNameAndSignature(attributes, methodName, methodSignature);
                JavaMethodEntryBreakpoint.this.addTypeNameAndHitCount(attributes, typeName, hitCount);
                attributes.put("org.eclipse.jdt.debug.core.suspendPolicy", new Integer(JavaMethodEntryBreakpoint.this.getDefaultSuspendPolicy()));
                JavaMethodEntryBreakpoint.this.ensureMarker().setAttributes(attributes);
                JavaMethodEntryBreakpoint.this.register(register);
            }
        };
        this.run(this.getMarkerRule(resource), wr);
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

    public String getMethodName() {
        return this.fMethodName;
    }

    public String getMethodSignature() {
        return this.fMethodSignature;
    }

    public void setMarker(IMarker marker) throws CoreException {
        super.setMarker(marker);
        this.fMethodName = marker.getAttribute(METHOD_NAME, null);
        this.fMethodSignature = marker.getAttribute(METHOD_SIGNATURE, null);
    }

    public boolean supportsCondition() {
        return false;
    }

    protected EventRequest[] newRequests(JDIDebugTarget target, ReferenceType type) throws CoreException {
        block4: {
            Location location;
            block6: {
                Method method;
                block5: {
                    try {
                        if (!(type instanceof ClassType)) break block4;
                        ClassType clazz = (ClassType)type;
                        method = clazz.concreteMethodByName(this.getMethodName(), this.getMethodSignature());
                        if (method != null) break block5;
                        return null;
                    }
                    catch (RuntimeException e) {
                        target.internalError(e);
                        return null;
                    }
                }
                location = method.location();
                if (location != null && location.codeIndex() != -1L) break block6;
                return null;
            }
            BreakpointRequest req = type.virtualMachine().eventRequestManager().createBreakpointRequest(location);
            this.configureRequest((EventRequest)req, target);
            return new EventRequest[]{req};
        }
        return null;
    }
}

