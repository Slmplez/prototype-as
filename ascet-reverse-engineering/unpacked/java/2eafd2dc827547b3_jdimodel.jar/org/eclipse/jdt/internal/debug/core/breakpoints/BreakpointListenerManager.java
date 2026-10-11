/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;
import org.eclipse.jdt.debug.core.IJavaBreakpointListener;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;

public class BreakpointListenerManager {
    private static Map fgJavaBreakpointListenersMap;
    private static IJavaBreakpointListener[] fgGlobalListeners;
    private static final String VALUE_GLOBAL = "*";
    private static final String ATTR_ID = "id";
    private static final String ATTR_CLASS = "class";
    private static final String ATTR_FILTER = "filter";

    private synchronized void init() {
        if (fgJavaBreakpointListenersMap == null) {
            fgJavaBreakpointListenersMap = new HashMap();
            ArrayList<JavaBreakpointListenerProxy> global = new ArrayList<JavaBreakpointListenerProxy>();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JDIDebugPlugin.getUniqueIdentifier(), "breakpointListeners");
            IConfigurationElement[] actionDelegateElements = extensionPoint.getConfigurationElements();
            int i = 0;
            while (i < actionDelegateElements.length) {
                try {
                    String id = actionDelegateElements[i].getAttribute(ATTR_ID);
                    if (id == null) {
                        throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), "Java breakpoint listener requires an  identifier attribute."));
                    }
                    JavaBreakpointListenerProxy listener = new JavaBreakpointListenerProxy(actionDelegateElements[i]);
                    fgJavaBreakpointListenersMap.put(id, listener);
                    if (listener.isGlobal()) {
                        global.add(listener);
                    }
                }
                catch (CoreException e) {
                    JDIDebugPlugin.log(e);
                }
                ++i;
            }
            fgGlobalListeners = global.toArray(new IJavaBreakpointListener[global.size()]);
        }
    }

    public IJavaBreakpointListener getBreakpointListener(String id) {
        this.init();
        return (IJavaBreakpointListener)fgJavaBreakpointListenersMap.get(id);
    }

    public IJavaBreakpointListener[] getGlobalListeners() {
        this.init();
        return fgGlobalListeners;
    }

    private class JavaBreakpointListenerProxy
    implements IJavaBreakpointListener {
        private IConfigurationElement fConfigElement;
        private IJavaBreakpointListener fDelegate;

        public JavaBreakpointListenerProxy(IConfigurationElement element) {
            this.fConfigElement = element;
        }

        private synchronized IJavaBreakpointListener getDelegate() {
            if (this.fDelegate == null) {
                try {
                    this.fDelegate = (IJavaBreakpointListener)this.fConfigElement.createExecutableExtension(BreakpointListenerManager.ATTR_CLASS);
                }
                catch (CoreException e) {
                    JDIDebugPlugin.log(e);
                }
            }
            return this.fDelegate;
        }

        public void addingBreakpoint(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                delegate.addingBreakpoint(target, breakpoint);
            }
        }

        boolean isGlobal() {
            String filter = this.fConfigElement.getAttribute(BreakpointListenerManager.ATTR_FILTER);
            return filter != null && filter.equals(BreakpointListenerManager.VALUE_GLOBAL);
        }

        public void breakpointHasCompilationErrors(IJavaLineBreakpoint breakpoint, Message[] errors) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                delegate.breakpointHasCompilationErrors(breakpoint, errors);
            }
        }

        public void breakpointHasRuntimeException(IJavaLineBreakpoint breakpoint, DebugException exception) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                delegate.breakpointHasRuntimeException(breakpoint, exception);
            }
        }

        public int breakpointHit(IJavaThread thread, IJavaBreakpoint breakpoint) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                return delegate.breakpointHit(thread, breakpoint);
            }
            return 4;
        }

        public void breakpointInstalled(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                delegate.breakpointInstalled(target, breakpoint);
            }
        }

        public void breakpointRemoved(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                delegate.breakpointRemoved(target, breakpoint);
            }
        }

        public int installingBreakpoint(IJavaDebugTarget target, IJavaBreakpoint breakpoint, IJavaType type) {
            IJavaBreakpointListener delegate = this.getDelegate();
            if (delegate != null) {
                return delegate.installingBreakpoint(target, breakpoint, type);
            }
            return 4;
        }
    }
}

