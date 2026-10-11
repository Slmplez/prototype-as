/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachineManager
 *  org.eclipse.core.resources.ISaveContext
 *  org.eclipse.core.resources.ISaveParticipant
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunchManager
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.dom.Message
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.jdt.internal.debug.core;

import com.sun.jdi.VirtualMachineManager;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;
import org.eclipse.jdt.debug.core.IJavaBreakpointListener;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaHotCodeReplaceListener;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.debug.eval.IAstEvaluationEngine;
import org.eclipse.jdt.internal.debug.core.JDIDebugOptions;
import org.eclipse.jdt.internal.debug.core.breakpoints.BreakpointListenerManager;
import org.eclipse.jdt.internal.debug.core.hcr.JavaHotCodeReplaceManager;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.osgi.framework.BundleContext;

public class JDIDebugPlugin
extends Plugin
implements Preferences.IPropertyChangeListener {
    public static final String PREF_DEFAULT_BREAKPOINT_SUSPEND_POLICY = String.valueOf(JDIDebugPlugin.getUniqueIdentifier()) + ".default_breakpoint_suspend_policy";
    public static final String PREF_DEFAULT_WATCHPOINT_SUSPEND_POLICY = String.valueOf(JDIDebugPlugin.getUniqueIdentifier()) + "default_watchpoint_suspend_policy";
    public static final String PREF_SHOW_REFERENCES_IN_VAR_VIEW = String.valueOf(JDIDebugPlugin.getUniqueIdentifier()) + ".show_references_in_var_view";
    public static final String PREF_ALL_REFERENCES_MAX_COUNT = String.valueOf(JDIDebugPlugin.getUniqueIdentifier()) + "._all_references_max_count";
    public static final String PREF_ALL_INSTANCES_MAX_COUNT = String.valueOf(JDIDebugPlugin.getUniqueIdentifier()) + ".all_instances_max_count";
    public static final String EXTENSION_POINT_JAVA_LOGICAL_STRUCTURES = "javaLogicalStructures";
    public static final String EXTENSION_POINT_JAVA_BREAKPOINT_LISTENERS = "breakpointListeners";
    public static final int ERROR = 120;
    public static final int INTERNAL_ERROR = 125;
    private static JDIDebugPlugin fgPlugin;
    private ListenerList fBreakpointListeners = null;
    private static final int ADDING = 1;
    private static final int INSTALLED = 2;
    private static final int REMOVED = 3;
    private static final int COMPILATION_ERRORS = 4;
    private static final int RUNTIME_EXCEPTION = 5;
    private boolean fTrace = false;
    private static int[] fJDIVersion;
    public static final int INFO_EVALUATION_THREAD = 110;
    public static final IStatus STATUS_GET_EVALUATION_THREAD;
    public static final int INFO_EVALUATION_STACK_FRAME = 111;
    public static IStatus STATUS_GET_EVALUATION_FRAME;
    private BreakpointListenerManager fJavaBreakpointManager;
    static /* synthetic */ Class class$0;

    static {
        fJDIVersion = null;
        STATUS_GET_EVALUATION_THREAD = new Status(1, JDIDebugPlugin.getUniqueIdentifier(), 110, "Provides thread context for an evaluation", null);
        STATUS_GET_EVALUATION_FRAME = new Status(1, JDIDebugPlugin.getUniqueIdentifier(), 111, "Provides thread context for an evaluation", null);
    }

    public boolean isTraceMode() {
        return this.fTrace;
    }

    public static void logTraceMessage(String message) {
        if (JDIDebugPlugin.getDefault().isTraceMode()) {
            Status s = new Status(2, JDIDebugPlugin.getUniqueIdentifier(), 125, message, null);
            JDIDebugPlugin.getDefault().getLog().log((IStatus)s);
        }
    }

    public static JDIDebugPlugin getDefault() {
        return fgPlugin;
    }

    public static String getUniqueIdentifier() {
        return "org.eclipse.jdt.debug";
    }

    public static int[] getJDIVersion() {
        if (fJDIVersion == null) {
            fJDIVersion = new int[2];
            VirtualMachineManager mgr = Bootstrap.virtualMachineManager();
            JDIDebugPlugin.fJDIVersion[0] = mgr.majorInterfaceVersion();
            JDIDebugPlugin.fJDIVersion[1] = mgr.minorInterfaceVersion();
        }
        return fJDIVersion;
    }

    public static boolean isJdiVersionGreaterThanOrEqual(int[] version) {
        int[] runningVersion = JDIDebugPlugin.getJDIVersion();
        return runningVersion[0] > version[0] || runningVersion[0] == version[0] && runningVersion[1] >= version[1];
    }

    public JDIDebugPlugin() {
        fgPlugin = this;
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        JDIDebugOptions.initDebugOptions();
        ResourcesPlugin.getWorkspace().addSaveParticipant((Plugin)this, new ISaveParticipant(){

            public void doneSaving(ISaveContext c) {
            }

            public void prepareToSave(ISaveContext c) throws CoreException {
            }

            public void rollback(ISaveContext c) {
            }

            public void saving(ISaveContext c) throws CoreException {
                JDIDebugPlugin.this.savePluginPreferences();
            }
        });
        JavaHotCodeReplaceManager.getDefault().startup();
        this.fBreakpointListeners = new ListenerList();
        this.fJavaBreakpointManager = new BreakpointListenerManager();
    }

    public void addHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        JavaHotCodeReplaceManager.getDefault().addHotCodeReplaceListener(listener);
    }

    public void removeHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        JavaHotCodeReplaceManager.getDefault().removeHotCodeReplaceListener(listener);
    }

    public void stop(BundleContext context) throws Exception {
        try {
            this.getPluginPreferences().removePropertyChangeListener((Preferences.IPropertyChangeListener)this);
            JavaHotCodeReplaceManager.getDefault().shutdown();
            ILaunchManager launchManager = DebugPlugin.getDefault().getLaunchManager();
            IDebugTarget[] targets = launchManager.getDebugTargets();
            int i = 0;
            while (i < targets.length) {
                IDebugTarget target = targets[i];
                if (target instanceof JDIDebugTarget) {
                    ((JDIDebugTarget)target).shutdown();
                }
                ++i;
            }
            this.fBreakpointListeners = null;
            ResourcesPlugin.getWorkspace().removeSaveParticipant((Plugin)this);
        }
        finally {
            fgPlugin = null;
            super.stop(context);
        }
    }

    public static void log(Throwable t) {
        CoreException de;
        IStatus status;
        Throwable top = t;
        if (t instanceof CoreException && (status = (de = (CoreException)t).getStatus()).getException() != null) {
            top = status.getException();
        }
        JDIDebugPlugin.log((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 125, "Internal error logged from JDI Debug: ", top));
    }

    public static void log(IStatus status) {
        JDIDebugPlugin.getDefault().getLog().log(status);
    }

    public void fireBreakpointHasCompilationErrors(IJavaLineBreakpoint breakpoint, Message[] errors) {
        this.getBreakpointNotifier().notify(null, breakpoint, 4, errors, null);
    }

    public void fireBreakpointHasRuntimeException(IJavaLineBreakpoint breakpoint, DebugException exception) {
        this.getBreakpointNotifier().notify(null, breakpoint, 5, null, exception);
    }

    public void addJavaBreakpointListener(IJavaBreakpointListener listener) {
        this.fBreakpointListeners.add((Object)listener);
    }

    public void removeJavaBreakpointListener(IJavaBreakpointListener listener) {
        this.fBreakpointListeners.remove((Object)listener);
    }

    public void fireBreakpointAdding(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
        this.getBreakpointNotifier().notify(target, breakpoint, 1, null, null);
    }

    public void fireBreakpointInstalled(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
        this.getBreakpointNotifier().notify(target, breakpoint, 2, null, null);
    }

    public void fireBreakpointRemoved(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
        this.getBreakpointNotifier().notify(target, breakpoint, 3, null, null);
    }

    public boolean fireBreakpointHit(IJavaThread thread, IJavaBreakpoint breakpoint) {
        return this.getHitNotifier().notifyHit(thread, breakpoint);
    }

    public boolean fireInstalling(IJavaDebugTarget target, IJavaBreakpoint breakpoint, IJavaType type) {
        return this.getInstallingNotifier().notifyInstalling(target, breakpoint, type);
    }

    public void propertyChange(Preferences.PropertyChangeEvent event) {
        if (event.getProperty().equals(JDIDebugModel.PREF_REQUEST_TIMEOUT)) {
            int value = this.getPluginPreferences().getInt(JDIDebugModel.PREF_REQUEST_TIMEOUT);
            IDebugTarget[] targets = DebugPlugin.getDefault().getLaunchManager().getDebugTargets();
            int i = 0;
            while (i < targets.length) {
                if (targets[i] instanceof IJavaDebugTarget) {
                    ((IJavaDebugTarget)targets[i]).setRequestTimeout(value);
                }
                ++i;
            }
        }
    }

    private BreakpointNotifier getBreakpointNotifier() {
        return new BreakpointNotifier();
    }

    private InstallingNotifier getInstallingNotifier() {
        return new InstallingNotifier();
    }

    private HitNotifier getHitNotifier() {
        return new HitNotifier();
    }

    public IAstEvaluationEngine getEvaluationEngine(IJavaProject project, IJavaDebugTarget target) {
        IJavaDebugTarget javaTarget;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((javaTarget = (IJavaDebugTarget)target.getAdapter(clazz)) instanceof JDIDebugTarget) {
            return ((JDIDebugTarget)javaTarget).getEvaluationEngine(project);
        }
        return null;
    }

    abstract class AbstractNotifier
    implements ISafeRunnable {
        private IJavaBreakpoint fBreakpoint;
        private IJavaBreakpointListener fListener;

        AbstractNotifier() {
        }

        protected void notifyListeners(IJavaBreakpoint breakpoint) {
            IJavaBreakpointListener[] global;
            this.fBreakpoint = breakpoint;
            String[] ids = null;
            try {
                ids = breakpoint.getBreakpointListeners();
            }
            catch (CoreException e) {
                JDIDebugPlugin.log(e);
            }
            if (ids != null && ids.length > 0) {
                int i = 0;
                while (i < ids.length) {
                    this.fListener = JDIDebugPlugin.this.fJavaBreakpointManager.getBreakpointListener(ids[i]);
                    if (this.fListener != null) {
                        SafeRunner.run((ISafeRunnable)this);
                    }
                    ++i;
                }
            }
            if ((global = JDIDebugPlugin.this.fJavaBreakpointManager.getGlobalListeners()).length > 0) {
                int i = 0;
                while (i < global.length) {
                    this.fListener = global[i];
                    SafeRunner.run((ISafeRunnable)this);
                    ++i;
                }
            }
            Object[] listeners = JDIDebugPlugin.this.fBreakpointListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                this.fListener = (IJavaBreakpointListener)listeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fBreakpoint = null;
            this.fListener = null;
        }

        protected IJavaBreakpoint getBreakpoint() {
            return this.fBreakpoint;
        }

        protected IJavaBreakpointListener getListener() {
            return this.fListener;
        }
    }

    class BreakpointNotifier
    extends AbstractNotifier {
        private IJavaDebugTarget fTarget;
        private int fKind;
        private Message[] fErrors;
        private DebugException fException;

        BreakpointNotifier() {
        }

        public void handleException(Throwable exception) {
        }

        public void run() throws Exception {
            switch (this.fKind) {
                case 1: {
                    this.getListener().addingBreakpoint(this.fTarget, this.getBreakpoint());
                    break;
                }
                case 2: {
                    this.getListener().breakpointInstalled(this.fTarget, this.getBreakpoint());
                    break;
                }
                case 3: {
                    this.getListener().breakpointRemoved(this.fTarget, this.getBreakpoint());
                    break;
                }
                case 4: {
                    this.getListener().breakpointHasCompilationErrors((IJavaLineBreakpoint)this.getBreakpoint(), this.fErrors);
                    break;
                }
                case 5: {
                    this.getListener().breakpointHasRuntimeException((IJavaLineBreakpoint)this.getBreakpoint(), this.fException);
                }
            }
        }

        public void notify(IJavaDebugTarget target, IJavaBreakpoint breakpoint, int kind, Message[] errors, DebugException exception) {
            this.fTarget = target;
            this.fKind = kind;
            this.fErrors = errors;
            this.fException = exception;
            this.notifyListeners(breakpoint);
            this.fTarget = null;
            this.fErrors = null;
            this.fException = null;
        }
    }

    class HitNotifier
    extends AbstractNotifier {
        private IJavaThread fThread;
        private int fSuspend;

        HitNotifier() {
        }

        public void handleException(Throwable exception) {
        }

        public void run() throws Exception {
            if (this.fThread instanceof JDIThread && ((JDIThread)this.fThread).hasClientRequestedSuspend()) {
                this.fSuspend |= 1;
                return;
            }
            this.fSuspend |= this.getListener().breakpointHit(this.fThread, this.getBreakpoint());
        }

        public boolean notifyHit(IJavaThread thread, IJavaBreakpoint breakpoint) {
            this.fThread = thread;
            this.fSuspend = 4;
            this.notifyListeners(breakpoint);
            this.fThread = null;
            return (this.fSuspend & 1) > 0 || (this.fSuspend & 2) == 0;
        }
    }

    class InstallingNotifier
    extends AbstractNotifier {
        private IJavaDebugTarget fTarget;
        private IJavaType fType;
        private int fInstall;

        InstallingNotifier() {
        }

        public void handleException(Throwable exception) {
        }

        public void run() throws Exception {
            this.fInstall |= this.getListener().installingBreakpoint(this.fTarget, this.getBreakpoint(), this.fType);
        }

        private void dispose() {
            this.fTarget = null;
            this.fType = null;
        }

        public boolean notifyInstalling(IJavaDebugTarget target, IJavaBreakpoint breakpoint, IJavaType type) {
            this.fTarget = target;
            this.fType = type;
            this.fInstall = 4;
            this.notifyListeners(breakpoint);
            this.dispose();
            return (this.fInstall & 1) > 0 || (this.fInstall & 2) == 0;
        }
    }
}

