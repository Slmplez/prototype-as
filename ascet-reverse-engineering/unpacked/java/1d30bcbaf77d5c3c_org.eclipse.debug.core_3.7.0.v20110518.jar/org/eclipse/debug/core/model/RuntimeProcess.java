/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.core.model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.NullStreamsProxy;
import org.eclipse.debug.internal.core.StreamsProxy;

public class RuntimeProcess
extends PlatformObject
implements IProcess {
    private static final int MAX_WAIT_FOR_DEATH_ATTEMPTS = 10;
    private static final int TIME_TO_WAIT_FOR_THREAD_DEATH = 500;
    private ILaunch fLaunch;
    private Process fProcess;
    private int fExitValue;
    private ProcessMonitorThread fMonitor;
    private IStreamsProxy fStreamsProxy;
    private String fName;
    private boolean fTerminated;
    private Map fAttributes;
    private boolean fCaptureOutput = true;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    public RuntimeProcess(ILaunch launch, Process process, String name, Map attributes) {
        this.setLaunch(launch);
        this.initializeAttributes(attributes);
        this.fProcess = process;
        this.fName = name;
        this.fTerminated = true;
        try {
            this.fExitValue = process.exitValue();
        }
        catch (IllegalThreadStateException illegalThreadStateException) {
            this.fTerminated = false;
        }
        String captureOutput = launch.getAttribute("org.eclipse.debug.core.capture_output");
        this.fCaptureOutput = !"false".equals(captureOutput);
        this.fStreamsProxy = this.createStreamsProxy();
        this.fMonitor = new ProcessMonitorThread(this);
        this.fMonitor.start();
        launch.addProcess(this);
        this.fireCreationEvent();
    }

    private void initializeAttributes(Map attributes) {
        if (attributes != null) {
            Iterator keys = attributes.keySet().iterator();
            while (keys.hasNext()) {
                String key = (String)keys.next();
                this.setAttribute(key, (String)attributes.get(key));
            }
        }
    }

    public synchronized boolean canTerminate() {
        return !this.fTerminated;
    }

    public String getLabel() {
        return this.fName;
    }

    protected void setLaunch(ILaunch launch) {
        this.fLaunch = launch;
    }

    public ILaunch getLaunch() {
        return this.fLaunch;
    }

    protected Process getSystemProcess() {
        return this.fProcess;
    }

    public synchronized boolean isTerminated() {
        return this.fTerminated;
    }

    public void terminate() throws DebugException {
        if (!this.isTerminated()) {
            Process process;
            if (this.fStreamsProxy instanceof StreamsProxy) {
                ((StreamsProxy)this.fStreamsProxy).kill();
            }
            if ((process = this.getSystemProcess()) != null) {
                process.destroy();
            }
            int attempts = 0;
            while (attempts < 10) {
                try {
                    process = this.getSystemProcess();
                    if (process != null) {
                        this.fExitValue = process.exitValue();
                    }
                    return;
                }
                catch (IllegalThreadStateException illegalThreadStateException) {
                    try {
                        Thread.sleep(500L);
                    }
                    catch (InterruptedException interruptedException) {}
                    ++attempts;
                }
            }
            if (this.fMonitor != null) {
                this.fMonitor.killThread();
                this.fMonitor = null;
            }
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 5010, DebugCoreMessages.RuntimeProcess_terminate_failed, null);
            throw new DebugException((IStatus)status);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void terminated() {
        if (this.fStreamsProxy instanceof StreamsProxy) {
            ((StreamsProxy)this.fStreamsProxy).close();
        }
        int exitValue = -1;
        boolean running = false;
        try {
            exitValue = this.fProcess.exitValue();
        }
        catch (IllegalThreadStateException illegalThreadStateException) {
            running = true;
        }
        RuntimeProcess runtimeProcess = this;
        synchronized (runtimeProcess) {
            this.fTerminated = true;
            if (!running) {
                this.fExitValue = exitValue;
            }
            this.fProcess = null;
        }
        this.fireTerminateEvent();
    }

    public IStreamsProxy getStreamsProxy() {
        if (!this.fCaptureOutput) {
            return null;
        }
        return this.fStreamsProxy;
    }

    protected IStreamsProxy createStreamsProxy() {
        if (!this.fCaptureOutput) {
            return new NullStreamsProxy(this.getSystemProcess());
        }
        String encoding = this.getLaunch().getAttribute("org.eclipse.debug.ui.ATTR_CONSOLE_ENCODING");
        return new StreamsProxy(this.getSystemProcess(), encoding);
    }

    protected void fireCreationEvent() {
        this.fireEvent(new DebugEvent(this, 4));
    }

    protected void fireEvent(DebugEvent event) {
        DebugPlugin manager = DebugPlugin.getDefault();
        if (manager != null) {
            manager.fireDebugEventSet(new DebugEvent[]{event});
        }
    }

    protected void fireTerminateEvent() {
        this.fireEvent(new DebugEvent(this, 8));
    }

    protected void fireChangeEvent() {
        this.fireEvent(new DebugEvent(this, 16));
    }

    public void setAttribute(String key, String value) {
        Object origVal;
        if (this.fAttributes == null) {
            this.fAttributes = new HashMap(5);
        }
        if ((origVal = this.fAttributes.get(key)) != null && origVal.equals(value)) {
            return;
        }
        this.fAttributes.put(key, value);
        this.fireChangeEvent();
    }

    public String getAttribute(String key) {
        if (this.fAttributes == null) {
            return null;
        }
        return (String)this.fAttributes.get(key);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.model.IProcess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz)) {
            return this;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.debug.core.model.IDebugTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz2)) {
            ILaunch launch = this.getLaunch();
            IDebugTarget[] targets = launch.getDebugTargets();
            int i = 0;
            while (i < targets.length) {
                if (this.equals(targets[i].getProcess())) {
                    return targets[i];
                }
                ++i;
            }
            return null;
        }
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.debug.core.ILaunch");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz3)) {
            return this.getLaunch();
        }
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.debug.core.ILaunchConfiguration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz4)) {
            return this.getLaunch().getLaunchConfiguration();
        }
        return super.getAdapter(adapter);
    }

    public synchronized int getExitValue() throws DebugException {
        if (this.isTerminated()) {
            return this.fExitValue;
        }
        throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5010, DebugCoreMessages.RuntimeProcess_Exit_value_not_available_until_process_terminates__1, null));
    }

    class ProcessMonitorThread
    extends Thread {
        protected boolean fExit;
        protected Process fOSProcess;
        protected RuntimeProcess fRuntimeProcess;
        protected Thread fThread;
        private final Object fThreadLock = new Object();

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         * Unable to fully structure code
         */
        public void run() {
            var1_1 = this.fThreadLock;
            synchronized (var1_1) {
                if (this.fExit) {
                    return;
                }
                this.fThread = Thread.currentThread();
                // MONITOREXIT @DISABLED, blocks:[0, 3] lbl8 : MonitorExitStatement: MONITOREXIT : var1_1
                if (true) ** GOTO lbl30
            }
            do {
                try {
                    try {
                        this.fOSProcess.waitFor();
                    }
                    catch (InterruptedException v1) {
                        Thread.interrupted();
                        this.fOSProcess = null;
                        this.fRuntimeProcess.terminated();
                        continue;
                    }
                }
                catch (Throwable var1_2) {
                    this.fOSProcess = null;
                    this.fRuntimeProcess.terminated();
                    throw var1_2;
                }
                this.fOSProcess = null;
                this.fRuntimeProcess.terminated();
lbl30:
                // 3 sources

            } while (this.fOSProcess != null);
            this.fThread = null;
        }

        public ProcessMonitorThread(RuntimeProcess process) {
            super(DebugCoreMessages.ProcessMonitorJob_0);
            this.setDaemon(true);
            this.fRuntimeProcess = process;
            this.fOSProcess = process.getSystemProcess();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected void killThread() {
            Object object = this.fThreadLock;
            synchronized (object) {
                if (this.fThread == null) {
                    this.fExit = true;
                } else {
                    this.fThread.interrupt();
                }
            }
        }
    }
}

