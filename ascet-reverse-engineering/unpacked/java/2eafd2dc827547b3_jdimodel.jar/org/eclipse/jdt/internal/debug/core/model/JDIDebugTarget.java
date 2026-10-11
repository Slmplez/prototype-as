/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.BooleanValue
 *  com.sun.jdi.ByteValue
 *  com.sun.jdi.CharValue
 *  com.sun.jdi.DoubleValue
 *  com.sun.jdi.FloatValue
 *  com.sun.jdi.IntegerValue
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.LongValue
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ShortValue
 *  com.sun.jdi.StringReference
 *  com.sun.jdi.ThreadGroupReference
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.Type
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.event.ThreadDeathEvent
 *  com.sun.jdi.event.ThreadStartEvent
 *  com.sun.jdi.event.VMDeathEvent
 *  com.sun.jdi.event.VMDisconnectEvent
 *  com.sun.jdi.event.VMStartEvent
 *  com.sun.jdi.request.ClassPrepareRequest
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  com.sun.jdi.request.ThreadDeathRequest
 *  com.sun.jdi.request.ThreadStartRequest
 *  org.eclipse.core.resources.IMarkerDelta
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IBreakpointListener
 *  org.eclipse.debug.core.IBreakpointManager
 *  org.eclipse.debug.core.IBreakpointManagerListener
 *  org.eclipse.debug.core.IDebugEventSetListener
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchListener
 *  org.eclipse.debug.core.model.IBreakpoint
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IMemoryBlock
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.debug.core.model.IThread
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.BooleanValue;
import com.sun.jdi.ByteValue;
import com.sun.jdi.CharValue;
import com.sun.jdi.DoubleValue;
import com.sun.jdi.FloatValue;
import com.sun.jdi.IntegerValue;
import com.sun.jdi.InternalException;
import com.sun.jdi.LongValue;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ShortValue;
import com.sun.jdi.StringReference;
import com.sun.jdi.ThreadGroupReference;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Type;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.event.ThreadDeathEvent;
import com.sun.jdi.event.ThreadStartEvent;
import com.sun.jdi.event.VMDeathEvent;
import com.sun.jdi.event.VMDisconnectEvent;
import com.sun.jdi.event.VMStartEvent;
import com.sun.jdi.request.ClassPrepareRequest;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.EventRequestManager;
import com.sun.jdi.request.ThreadDeathRequest;
import com.sun.jdi.request.ThreadStartRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IBreakpointListener;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.IBreakpointManagerListener;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IMemoryBlock;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdi.hcr.ReferenceType;
import org.eclipse.jdi.hcr.VirtualMachine;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaHotCodeReplaceListener;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaThreadGroup;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.debug.eval.EvaluationManager;
import org.eclipse.jdt.debug.eval.IAstEvaluationEngine;
import org.eclipse.jdt.internal.debug.core.EventDispatcher;
import org.eclipse.jdt.internal.debug.core.IJDIEventListener;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIThreadGroup;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;
import org.eclipse.jdt.internal.debug.core.model.JDIVoidValue;

public class JDIDebugTarget
extends JDIDebugElement
implements IJavaDebugTarget,
ILaunchListener,
IBreakpointManagerListener,
IDebugEventSetListener {
    private ArrayList fThreads;
    private ArrayList fGroups;
    private IProcess fProcess;
    private com.sun.jdi.VirtualMachine fVirtualMachine;
    private boolean fSupportsTerminate;
    private boolean fTerminated;
    private boolean fTerminating;
    private boolean fDisconnected;
    private boolean fSupportsDisconnect;
    private boolean fSupportsDisableGC = false;
    private List fBreakpoints;
    private Set fOutOfSynchTypes;
    private boolean fHasHCROccurred;
    private String fName;
    private EventDispatcher fEventDispatcher = null;
    private ThreadStartHandler fThreadStartHandler = null;
    private boolean fSuspended = true;
    private boolean fResumeOnStartup = false;
    private ILaunch fLaunch;
    private int fSuspendCount = 0;
    private HashMap fEngines;
    private String[] fStepFilters = null;
    private int fStepFilterMask = 0;
    private static final int STEP_FILTERS_ENABLED = 1;
    private static final int FILTER_SYNTHETICS = 2;
    private static final int FILTER_STATIC_INITIALIZERS = 4;
    private static final int FILTER_CONSTRUCTORS = 8;
    private static final int STEP_THRU_FILTERS = 16;
    private static final int FILTER_GETTERS = 32;
    private static final int FILTER_SETTERS = 64;
    private static final int XOR_MASK = 4095;
    private boolean fIsPerformingHotCodeReplace = false;
    private ListenerList fHCRListeners = new ListenerList();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public JDIDebugTarget(ILaunch launch, com.sun.jdi.VirtualMachine jvm, String name, boolean supportTerminate, boolean supportDisconnect, IProcess process, boolean resume) {
        super(null);
        this.setLaunch(launch);
        this.setResumeOnStartup(resume);
        this.setSupportsTerminate(supportTerminate);
        this.setSupportsDisconnect(supportDisconnect);
        this.setVM(jvm);
        jvm.setDebugTraceMode(0);
        this.setProcess(process);
        this.setTerminated(false);
        this.setTerminating(false);
        this.setDisconnected(false);
        this.setName(name);
        this.setBreakpoints(new ArrayList(5));
        this.setThreadList(new ArrayList(5));
        this.fGroups = new ArrayList(5);
        this.setOutOfSynchTypes(new ArrayList(0));
        this.setHCROccurred(false);
        this.initialize();
        DebugPlugin.getDefault().getLaunchManager().addLaunchListener((ILaunchListener)this);
        DebugPlugin.getDefault().getBreakpointManager().addBreakpointManagerListener((IBreakpointManagerListener)this);
    }

    public EventDispatcher getEventDispatcher() {
        return this.fEventDispatcher;
    }

    private void setEventDispatcher(EventDispatcher dispatcher) {
        this.fEventDispatcher = dispatcher;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Iterator getThreadIterator() {
        List threadList;
        ArrayList arrayList = this.fThreads;
        synchronized (arrayList) {
            threadList = (List)this.fThreads.clone();
        }
        return threadList.iterator();
    }

    private void setThreadList(ArrayList threads) {
        this.fThreads = threads;
    }

    public List getBreakpoints() {
        return this.fBreakpoints;
    }

    private void setBreakpoints(List breakpoints) {
        this.fBreakpoints = breakpoints;
    }

    public void handleVMStart(VMStartEvent event) {
        if (this.isResumeOnStartup()) {
            try {
                this.setSuspended(true);
                this.resume();
            }
            catch (DebugException e) {
                this.logError((Exception)((Object)e));
            }
        }
        IThread[] threads = this.getThreads();
        int i = 0;
        while (i < threads.length) {
            JDIThread thread = (JDIThread)threads[i];
            if (thread.isSuspended()) {
                try {
                    boolean suspended = thread.getUnderlyingThread().isSuspended();
                    if (!suspended) {
                        thread.setRunning(true);
                        thread.fireResumeEvent(32);
                    }
                }
                catch (VMDisconnectedException vMDisconnectedException) {
                }
                catch (ObjectCollectedException objectCollectedException) {
                }
                catch (RuntimeException e) {
                    this.logError(e);
                }
            }
            ++i;
        }
    }

    protected synchronized void initialize() {
        this.setEventDispatcher(new EventDispatcher(this));
        this.setRequestTimeout(JDIDebugModel.getPreferences().getInt(JDIDebugModel.PREF_REQUEST_TIMEOUT));
        this.initializeRequests();
        this.initializeState();
        this.initializeBreakpoints();
        this.getLaunch().addDebugTarget((IDebugTarget)this);
        DebugPlugin plugin = DebugPlugin.getDefault();
        plugin.addDebugEventListener((IDebugEventSetListener)this);
        this.fireCreationEvent();
        plugin.asyncExec(new Runnable(){

            public void run() {
                EventDispatcher dispatcher = JDIDebugTarget.this.getEventDispatcher();
                if (dispatcher != null) {
                    Thread t = new Thread((Runnable)dispatcher, String.valueOf(JDIDebugModel.getPluginIdentifier()) + JDIDebugModelMessages.JDIDebugTarget_JDI_Event_Dispatcher);
                    t.setDaemon(true);
                    t.start();
                }
            }
        });
    }

    protected void initializeState() {
        List threads = null;
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            try {
                String name = vm.name();
                this.fSupportsDisableGC = !name.equals("Classic VM");
            }
            catch (RuntimeException e) {
                this.internalError(e);
            }
            try {
                threads = vm.allThreads();
            }
            catch (RuntimeException e) {
                this.internalError(e);
            }
            if (threads != null) {
                Iterator initialThreads = threads.iterator();
                while (initialThreads.hasNext()) {
                    this.createThread((ThreadReference)initialThreads.next());
                }
            }
        }
        if (this.isResumeOnStartup()) {
            this.setSuspended(false);
        }
    }

    protected void initializeRequests() {
        this.setThreadStartHandler(new ThreadStartHandler());
        new ThreadDeathHandler();
    }

    protected void initializeBreakpoints() {
        IBreakpointManager manager = DebugPlugin.getDefault().getBreakpointManager();
        manager.addBreakpointListener((IBreakpointListener)this);
        IBreakpoint[] bps = manager.getBreakpoints(JDIDebugModel.getPluginIdentifier());
        int i = 0;
        while (i < bps.length) {
            if (bps[i] instanceof IJavaBreakpoint) {
                this.breakpointAdded(bps[i]);
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected JDIThread createThread(ThreadReference thread) {
        JDIThread jdiThread = this.newThread(thread);
        if (jdiThread == null) {
            return null;
        }
        if (this.isDisconnected()) {
            return null;
        }
        ArrayList arrayList = this.fThreads;
        synchronized (arrayList) {
            this.fThreads.add(jdiThread);
        }
        jdiThread.fireCreationEvent();
        return jdiThread;
    }

    protected JDIThread newThread(ThreadReference reference) {
        try {
            return new JDIThread(this, reference);
        }
        catch (ObjectCollectedException objectCollectedException) {
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IThread[] getThreads() {
        ArrayList arrayList = this.fThreads;
        synchronized (arrayList) {
            return this.fThreads.toArray(new IThread[0]);
        }
    }

    public boolean canResume() {
        return (this.isSuspended() || this.canResumeThreads()) && this.isAvailable() && !this.isPerformingHotCodeReplace();
    }

    private boolean canResumeThreads() {
        Iterator it = this.getThreadIterator();
        while (it.hasNext()) {
            IThread thread = (IThread)it.next();
            if (!thread.canResume()) continue;
            return true;
        }
        return false;
    }

    public boolean canSuspend() {
        if (!this.isSuspended() && this.isAvailable()) {
            IThread[] threads = this.getThreads();
            int i = 0;
            int numThreads = threads.length;
            while (i < numThreads) {
                if (((JDIThread)threads[i]).canSuspend()) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        return false;
    }

    public boolean canTerminate() {
        return this.supportsTerminate() && this.isAvailable();
    }

    public boolean canDisconnect() {
        return this.supportsDisconnect() && !this.isDisconnected();
    }

    protected boolean supportsDisconnect() {
        return this.fSupportsDisconnect;
    }

    private void setSupportsDisconnect(boolean supported) {
        this.fSupportsDisconnect = supported;
    }

    protected boolean supportsTerminate() {
        return this.fSupportsTerminate;
    }

    private void setSupportsTerminate(boolean supported) {
        this.fSupportsTerminate = supported;
    }

    public boolean supportsHotCodeReplace() {
        return this.supportsJ9HotCodeReplace() || this.supportsJDKHotCodeReplace();
    }

    public boolean supportsInstanceBreakpoints() {
        com.sun.jdi.VirtualMachine vm;
        if (this.isAvailable() && JDIDebugPlugin.isJdiVersionGreaterThanOrEqual(new int[]{1, 4}) && (vm = this.getVM()) != null) {
            return vm.canUseInstanceFilters();
        }
        return false;
    }

    public boolean supportsJ9HotCodeReplace() {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (this.isAvailable() && vm instanceof VirtualMachine) {
            try {
                return ((VirtualMachine)vm).canReloadClasses();
            }
            catch (UnsupportedOperationException unsupportedOperationException) {}
        }
        return false;
    }

    public boolean supportsJDKHotCodeReplace() {
        com.sun.jdi.VirtualMachine vm;
        if (this.isAvailable() && JDIDebugPlugin.isJdiVersionGreaterThanOrEqual(new int[]{1, 4}) && (vm = this.getVM()) != null) {
            return vm.canRedefineClasses();
        }
        return false;
    }

    public boolean canPopFrames() {
        com.sun.jdi.VirtualMachine vm;
        if (this.isAvailable() && JDIDebugPlugin.isJdiVersionGreaterThanOrEqual(new int[]{1, 4}) && (vm = this.getVM()) != null) {
            return vm.canPopFrames();
        }
        return false;
    }

    public void disconnect() throws DebugException {
        if (!this.isAvailable()) {
            return;
        }
        if (!this.canDisconnect()) {
            this.notSupported(JDIDebugModelMessages.JDIDebugTarget_does_not_support_disconnect);
        }
        try {
            this.disposeThreadHandler();
            com.sun.jdi.VirtualMachine vm = this.getVM();
            if (vm != null) {
                vm.dispose();
            }
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIDebugTarget_exception_disconnecting, (Object[])new String[]{e.toString()}), e);
        }
    }

    private void disposeThreadHandler() {
        ThreadStartHandler handler = this.getThreadStartHandler();
        if (handler != null) {
            handler.deleteRequest();
        }
    }

    public com.sun.jdi.VirtualMachine getVM() {
        return this.fVirtualMachine;
    }

    private void setVM(com.sun.jdi.VirtualMachine vm) {
        this.fVirtualMachine = vm;
    }

    public void setHCROccurred(boolean occurred) {
        this.fHasHCROccurred = occurred;
    }

    public void removeOutOfSynchTypes(List qualifiedNames) {
        this.fOutOfSynchTypes.removeAll(qualifiedNames);
    }

    private void setOutOfSynchTypes(List qualifiedNames) {
        this.fOutOfSynchTypes = new HashSet();
        this.fOutOfSynchTypes.addAll(qualifiedNames);
    }

    public void addOutOfSynchTypes(List qualifiedNames) {
        this.fOutOfSynchTypes.addAll(qualifiedNames);
    }

    public boolean isOutOfSynch(String qualifiedName) {
        if (this.fOutOfSynchTypes == null || this.fOutOfSynchTypes.isEmpty()) {
            return false;
        }
        return this.fOutOfSynchTypes.contains(qualifiedName);
    }

    public boolean isOutOfSynch() throws DebugException {
        Iterator threads = this.getThreadIterator();
        while (threads.hasNext()) {
            JDIThread thread = (JDIThread)threads.next();
            if (!thread.isOutOfSynch()) continue;
            return true;
        }
        return false;
    }

    public boolean mayBeOutOfSynch() {
        Iterator threads = this.getThreadIterator();
        while (threads.hasNext()) {
            JDIThread thread = (JDIThread)threads.next();
            if (!thread.mayBeOutOfSynch()) continue;
            return true;
        }
        return false;
    }

    public boolean hasHCRFailed() {
        return this.fOutOfSynchTypes != null && !this.fOutOfSynchTypes.isEmpty();
    }

    public boolean hasHCROccurred() {
        return this.fHasHCROccurred;
    }

    public void reinstallBreakpointsIn(List resources, List classNames) {
        List breakpoints = this.getBreakpoints();
        IJavaBreakpoint[] copy = new IJavaBreakpoint[breakpoints.size()];
        breakpoints.toArray(copy);
        IJavaBreakpoint breakpoint = null;
        String installedType = null;
        int i = 0;
        while (i < copy.length) {
            breakpoint = copy[i];
            if (breakpoint instanceof JavaLineBreakpoint) {
                try {
                    installedType = breakpoint.getTypeName();
                    if (classNames.contains(installedType)) {
                        this.breakpointRemoved(breakpoint, null);
                        this.breakpointAdded(breakpoint);
                    }
                }
                catch (CoreException ce) {
                    this.logError((Exception)((Object)ce));
                }
            }
            ++i;
        }
    }

    public JDIThread findThread(ThreadReference tr) {
        Iterator iter = this.getThreadIterator();
        while (iter.hasNext()) {
            JDIThread thread = (JDIThread)iter.next();
            if (!thread.getUnderlyingThread().equals((Object)tr)) continue;
            return thread;
        }
        return null;
    }

    public String getName() throws DebugException {
        if (this.fName == null) {
            this.setName(this.getVMName());
        }
        return this.fName;
    }

    protected void setName(String name) {
        this.fName = name;
    }

    protected void setProcess(IProcess process) {
        this.fProcess = process;
    }

    public IProcess getProcess() {
        return this.fProcess;
    }

    public void handleVMDeath(VMDeathEvent event) {
        this.terminated();
    }

    public void handleVMDisconnect(VMDisconnectEvent event) {
        if (this.isTerminating()) {
            this.terminated();
        } else {
            this.disconnected();
        }
    }

    public boolean isSuspended() {
        return this.fSuspended;
    }

    private void setSuspended(boolean suspended) {
        this.fSuspended = suspended;
    }

    public boolean isAvailable() {
        return !this.isTerminated() && !this.isTerminating() && !this.isDisconnected();
    }

    public boolean isTerminated() {
        return this.fTerminated;
    }

    protected void setTerminated(boolean terminated) {
        this.fTerminated = terminated;
    }

    protected void setDisconnected(boolean disconnected) {
        this.fDisconnected = disconnected;
    }

    public boolean isDisconnected() {
        return this.fDisconnected;
    }

    public ClassPrepareRequest createClassPrepareRequest(String classPattern) throws CoreException {
        return this.createClassPrepareRequest(classPattern, null);
    }

    public ClassPrepareRequest createClassPrepareRequest(String classPattern, String classExclusionPattern) throws CoreException {
        return this.createClassPrepareRequest(classPattern, classExclusionPattern, true);
    }

    public ClassPrepareRequest createClassPrepareRequest(String classPattern, String classExclusionPattern, boolean enabled) throws CoreException {
        return this.createClassPrepareRequest(classPattern, classExclusionPattern, enabled, null);
    }

    public ClassPrepareRequest createClassPrepareRequest(String classPattern, String classExclusionPattern, boolean enabled, String sourceName) throws CoreException {
        EventRequestManager manager = this.getEventRequestManager();
        if (!this.isAvailable() || manager == null) {
            this.requestFailed(JDIDebugModelMessages.JDIDebugTarget_Unable_to_create_class_prepare_request___VM_disconnected__2, null);
        }
        ClassPrepareRequest req = null;
        try {
            req = manager.createClassPrepareRequest();
            if (classPattern != null) {
                req.addClassFilter(classPattern);
            }
            if (classExclusionPattern != null) {
                req.addClassExclusionFilter(classExclusionPattern);
            }
            req.setSuspendPolicy(1);
            if (sourceName != null) {
                req.addSourceNameFilter(sourceName);
            }
            if (enabled) {
                req.enable();
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIDebugTarget_Unable_to_create_class_prepare_request__3, e);
            return null;
        }
        return req;
    }

    public void resume() throws DebugException {
        this.setResumeOnStartup(true);
        this.resume(true);
    }

    public void resumeQuiet() throws DebugException {
        this.resume(false);
    }

    protected void resume(boolean fireNotification) throws DebugException {
        if (!this.isSuspended() && !this.canResumeThreads() || !this.isAvailable()) {
            return;
        }
        try {
            this.setSuspended(false);
            this.resumeThreads();
            com.sun.jdi.VirtualMachine vm = this.getVM();
            if (vm != null) {
                vm.resume();
            }
            if (fireNotification) {
                this.fireResumeEvent(32);
            }
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
            return;
        }
        catch (RuntimeException e) {
            this.setSuspended(true);
            this.fireSuspendEvent(32);
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIDebugTarget_exception_resume, (Object[])new String[]{e.toString()}), e);
        }
    }

    public boolean supportsBreakpoint(IBreakpoint breakpoint) {
        return breakpoint instanceof IJavaBreakpoint;
    }

    public void breakpointAdded(IBreakpoint breakpoint) {
        if (!this.isAvailable()) {
            return;
        }
        if (this.supportsBreakpoint(breakpoint)) {
            try {
                JavaBreakpoint javaBreakpoint = (JavaBreakpoint)breakpoint;
                if (!this.getBreakpoints().contains(breakpoint)) {
                    if (!javaBreakpoint.shouldSkipBreakpoint()) {
                        javaBreakpoint.addToTarget(this);
                    }
                    this.getBreakpoints().add(breakpoint);
                }
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
            }
        }
    }

    public void breakpointChanged(IBreakpoint breakpoint, IMarkerDelta delta) {
    }

    public void breakpointRemoved(IBreakpoint breakpoint, IMarkerDelta delta) {
        if (!this.isAvailable()) {
            return;
        }
        if (this.supportsBreakpoint(breakpoint)) {
            try {
                ((JavaBreakpoint)breakpoint).removeFromTarget(this);
                this.getBreakpoints().remove(breakpoint);
                Iterator threads = this.getThreadIterator();
                while (threads.hasNext()) {
                    ((JDIThread)threads.next()).removeCurrentBreakpoint(breakpoint);
                }
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
            }
        }
    }

    public void suspend() throws DebugException {
        if (this.isSuspended()) {
            return;
        }
        try {
            com.sun.jdi.VirtualMachine vm = this.getVM();
            this.prepareThreadsForClientSuspend();
            if (vm != null) {
                vm.suspend();
            }
            this.suspendThreads();
            this.setSuspended(true);
            this.fireSuspendEvent(32);
        }
        catch (RuntimeException e) {
            this.setSuspended(false);
            this.resumeThreads();
            this.fireResumeEvent(32);
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIDebugTarget_exception_suspend, (Object[])new String[]{e.toString()}), e);
        }
    }

    protected void prepareThreadsForClientSuspend() throws DebugException {
        Iterator threads = this.getThreadIterator();
        while (threads.hasNext()) {
            ((JDIThread)threads.next()).prepareForClientSuspend();
        }
    }

    protected void suspendThreads() {
        Iterator threads = this.getThreadIterator();
        while (threads.hasNext()) {
            ((JDIThread)threads.next()).suspendedByVM();
        }
    }

    protected void resumeThreads() throws DebugException {
        Iterator threads = this.getThreadIterator();
        while (threads.hasNext()) {
            ((JDIThread)threads.next()).resumedByVM();
        }
    }

    public void prepareToSuspendByBreakpoint(JavaBreakpoint breakpoint) {
        this.setSuspended(true);
        this.suspendThreads();
    }

    protected void suspendedByBreakpoint(JavaBreakpoint breakpoint, boolean queueEvent, EventSet set) {
        if (queueEvent) {
            this.queueSuspendEvent(16, set);
        } else {
            this.fireSuspendEvent(16);
        }
    }

    protected void cancelSuspendByBreakpoint(JavaBreakpoint breakpoint) throws DebugException {
        this.setSuspended(false);
        this.resumeThreads();
    }

    public void terminate() throws DebugException {
        if (!this.isAvailable()) {
            return;
        }
        if (!this.supportsTerminate()) {
            this.notSupported(JDIDebugModelMessages.JDIDebugTarget_does_not_support_termination);
        }
        try {
            IProcess process;
            this.setTerminating(true);
            this.disposeThreadHandler();
            com.sun.jdi.VirtualMachine vm = this.getVM();
            if (vm != null) {
                vm.exit(1);
            }
            if ((process = this.getProcess()) != null) {
                process.terminate();
            }
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.terminated();
        }
        catch (TimeoutException timeoutException) {
            IProcess process = this.getProcess();
            if (process != null && process.isTerminated()) {
                this.terminated();
            } else {
                this.disconnected();
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIDebugTarget_exception_terminating, (Object[])new String[]{e.toString()}), e);
        }
    }

    protected void terminated() {
        this.setTerminating(false);
        if (!this.isTerminated()) {
            this.setTerminated(true);
            this.setDisconnected(true);
            this.cleanup();
            this.fireTerminateEvent();
        }
    }

    protected void disconnected() {
        if (!this.isDisconnected()) {
            this.setDisconnected(true);
            this.cleanup();
            this.fireTerminateEvent();
        }
    }

    protected void cleanup() {
        this.removeAllThreads();
        DebugPlugin plugin = DebugPlugin.getDefault();
        plugin.getBreakpointManager().removeBreakpointListener((IBreakpointListener)this);
        plugin.getLaunchManager().removeLaunchListener((ILaunchListener)this);
        plugin.getBreakpointManager().removeBreakpointManagerListener((IBreakpointManagerListener)this);
        plugin.removeDebugEventListener((IDebugEventSetListener)this);
        this.removeAllBreakpoints();
        this.fOutOfSynchTypes.clear();
        if (this.fEngines != null) {
            Iterator engines = this.fEngines.values().iterator();
            while (engines.hasNext()) {
                IAstEvaluationEngine engine = (IAstEvaluationEngine)engines.next();
                engine.dispose();
            }
            this.fEngines.clear();
        }
        this.fVirtualMachine = null;
        this.setThreadStartHandler(null);
        this.setEventDispatcher(null);
        this.setStepFilters(new String[0]);
        this.fHCRListeners.clear();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeAllThreads() {
        Iterator itr = this.getThreadIterator();
        while (itr.hasNext()) {
            JDIThread child = (JDIThread)itr.next();
            child.terminated();
        }
        ArrayList arrayList = this.fThreads;
        synchronized (arrayList) {
            this.fThreads.clear();
        }
    }

    protected void removeAllBreakpoints() {
        Iterator breakpoints = ((ArrayList)((ArrayList)this.getBreakpoints()).clone()).iterator();
        while (breakpoints.hasNext()) {
            JavaBreakpoint breakpoint = (JavaBreakpoint)breakpoints.next();
            try {
                breakpoint.removeFromTarget(this);
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
            }
        }
        this.getBreakpoints().clear();
    }

    protected void reinstallAllBreakpoints() {
        Iterator breakpoints = ((ArrayList)((ArrayList)this.getBreakpoints()).clone()).iterator();
        while (breakpoints.hasNext()) {
            JavaBreakpoint breakpoint = (JavaBreakpoint)breakpoints.next();
            try {
                breakpoint.addToTarget(this);
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
            }
        }
    }

    public List jdiClassesByName(String className) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            try {
                return vm.classesByName(className);
            }
            catch (VMDisconnectedException e) {
                if (!this.isAvailable()) {
                    return Collections.EMPTY_LIST;
                }
                this.logError((Exception)((Object)e));
            }
            catch (RuntimeException e) {
                this.internalError(e);
            }
        }
        return Collections.EMPTY_LIST;
    }

    public IJavaVariable findVariable(String varName) throws DebugException {
        IThread[] threads = this.getThreads();
        int i = 0;
        while (i < threads.length) {
            IJavaThread thread = (IJavaThread)threads[i];
            IJavaVariable var = thread.findVariable(varName);
            if (var != null) {
                return var;
            }
            ++i;
        }
        return null;
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        return super.getAdapter(adapter);
    }

    public void shutdown() {
        EventDispatcher dispatcher = ((JDIDebugTarget)this.getDebugTarget()).getEventDispatcher();
        if (dispatcher != null) {
            dispatcher.shutdown();
        }
        try {
            if (this.supportsTerminate()) {
                this.terminate();
            } else if (this.supportsDisconnect()) {
                this.disconnect();
            }
        }
        catch (DebugException e) {
            JDIDebugPlugin.log(e);
        }
        this.cleanup();
    }

    protected Integer getCRC(String typeName) throws DebugException {
        com.sun.jdi.ReferenceType type;
        List classes;
        if (this.getVM() instanceof VirtualMachine && !(classes = this.jdiClassesByName(typeName)).isEmpty() && (type = (com.sun.jdi.ReferenceType)classes.get(0)) instanceof ReferenceType) {
            try {
                ReferenceType rt = (ReferenceType)type;
                if (rt.isVersionKnown()) {
                    return new Integer(rt.getClassFileVersion());
                }
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIDebugTarget_exception_retrieving_version_information, (Object[])new String[]{e.toString(), type.name()}), e);
                return null;
            }
        }
        return null;
    }

    public IJavaType[] getJavaTypes(String name) throws DebugException {
        List classes;
        block15: {
            com.sun.jdi.VirtualMachine vm = this.getVM();
            if (vm == null) {
                this.requestFailed(JDIDebugModelMessages.JDIDebugTarget_Unable_to_retrieve_types___VM_disconnected__4, null);
            }
            if ((classes = vm.classesByName(name)).size() != 0) break block15;
            switch (name.charAt(0)) {
                case 'b': {
                    if (name.equals("boolean")) {
                        return new IJavaType[]{this.newValue(true).getJavaType()};
                    }
                    if (!name.equals("byte")) break;
                    return new IJavaType[]{this.newValue((byte)1).getJavaType()};
                }
                case 'i': {
                    if (!name.equals("int")) break;
                    return new IJavaType[]{this.newValue(1).getJavaType()};
                }
                case 'l': {
                    if (!name.equals("long")) break;
                    return new IJavaType[]{this.newValue(1L).getJavaType()};
                }
                case 'c': {
                    if (!name.equals("char")) break;
                    return new IJavaType[]{this.newValue(' ').getJavaType()};
                }
                case 's': {
                    if (!name.equals("short")) break;
                    return new IJavaType[]{this.newValue((short)1).getJavaType()};
                }
                case 'f': {
                    if (!name.equals("float")) break;
                    return new IJavaType[]{this.newValue(1.0f).getJavaType()};
                }
                case 'd': {
                    if (!name.equals("double")) break;
                    return new IJavaType[]{this.newValue(1.0).getJavaType()};
                }
            }
            return null;
        }
        try {
            IJavaType[] types = new IJavaType[classes.size()];
            int i = 0;
            while (i < types.length) {
                types[i] = JDIType.createType(this, (Type)classes.get(i));
                ++i;
            }
            return types;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)"{0} occurred while retrieving class for name {1}", (Object[])new String[]{e.toString(), name}), e);
            return null;
        }
    }

    public IJavaValue newValue(boolean value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            BooleanValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(byte value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            ByteValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(char value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            CharValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(double value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            DoubleValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(float value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            FloatValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(int value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            IntegerValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(long value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            LongValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(short value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            ShortValue v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue newValue(String value) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            StringReference v = vm.mirrorOf(value);
            return JDIValue.createValue(this, (Value)v);
        }
        return null;
    }

    public IJavaValue nullValue() {
        return JDIValue.createValue(this, null);
    }

    public IJavaValue voidValue() {
        return new JDIVoidValue(this);
    }

    protected boolean isTerminating() {
        return this.fTerminating;
    }

    protected void setTerminating(boolean terminating) {
        this.fTerminating = terminating;
    }

    protected ThreadStartHandler getThreadStartHandler() {
        return this.fThreadStartHandler;
    }

    protected void setThreadStartHandler(ThreadStartHandler threadStartHandler) {
        this.fThreadStartHandler = threadStartHandler;
    }

    public boolean supportsStorageRetrieval() {
        return false;
    }

    public IMemoryBlock getMemoryBlock(long startAddress, long length) throws DebugException {
        this.notSupported(JDIDebugModelMessages.JDIDebugTarget_does_not_support_storage_retrieval);
        return null;
    }

    public void launchRemoved(ILaunch launch) {
        if (!this.isAvailable()) {
            return;
        }
        if (launch.equals(this.getLaunch())) {
            this.disconnected();
        }
    }

    public void launchAdded(ILaunch launch) {
    }

    public void launchChanged(ILaunch launch) {
    }

    private synchronized void setResumeOnStartup(boolean resume) {
        this.fResumeOnStartup = resume;
    }

    protected synchronized boolean isResumeOnStartup() {
        return this.fResumeOnStartup;
    }

    public String[] getStepFilters() {
        return this.fStepFilters;
    }

    public boolean isFilterConstructors() {
        return (this.fStepFilterMask & 8) > 0;
    }

    public boolean isFilterStaticInitializers() {
        return (this.fStepFilterMask & 4) > 0;
    }

    public boolean isFilterSynthetics() {
        return (this.fStepFilterMask & 2) > 0;
    }

    public boolean isStepThruFilters() {
        return (this.fStepFilterMask & 0x10) > 0;
    }

    public boolean isStepFiltersEnabled() {
        return (this.fStepFilterMask & 1) > 0;
    }

    public void setFilterConstructors(boolean filter) {
        this.fStepFilterMask = filter ? (this.fStepFilterMask |= 8) : (this.fStepFilterMask &= 0xFF7);
    }

    public void setFilterStaticInitializers(boolean filter) {
        this.fStepFilterMask = filter ? (this.fStepFilterMask |= 4) : (this.fStepFilterMask &= 0xFFB);
    }

    public void setFilterSynthetics(boolean filter) {
        this.fStepFilterMask = filter ? (this.fStepFilterMask |= 2) : (this.fStepFilterMask &= 0xFFD);
    }

    public void setStepThruFilters(boolean thru) {
        this.fStepFilterMask = thru ? (this.fStepFilterMask |= 0x10) : (this.fStepFilterMask &= 0xFEF);
    }

    public boolean isFilterGetters() {
        return (this.fStepFilterMask & 0x20) > 0;
    }

    public void setFilterGetters(boolean filter) {
        this.fStepFilterMask = filter ? (this.fStepFilterMask |= 0x20) : (this.fStepFilterMask &= 0xFDF);
    }

    public boolean isFilterSetters() {
        return (this.fStepFilterMask & 0x40) > 0;
    }

    public void setFilterSetters(boolean filter) {
        this.fStepFilterMask = filter ? (this.fStepFilterMask |= 0x40) : (this.fStepFilterMask &= 0xFBF);
    }

    public void setStepFilters(String[] list) {
        this.fStepFilters = list;
    }

    public void setStepFiltersEnabled(boolean enabled) {
        this.fStepFilterMask = enabled ? (this.fStepFilterMask |= 1) : (this.fStepFilterMask &= 0xFFE);
    }

    public boolean hasThreads() {
        return this.fThreads.size() > 0;
    }

    public ILaunch getLaunch() {
        return this.fLaunch;
    }

    private void setLaunch(ILaunch launch) {
        this.fLaunch = launch;
    }

    protected int getSuspendCount() {
        return this.fSuspendCount;
    }

    protected void incrementSuspendCount(int eventDetail) {
        if (eventDetail != 128) {
            ++this.fSuspendCount;
        }
    }

    public IAstEvaluationEngine getEvaluationEngine(IJavaProject project) {
        IAstEvaluationEngine engine;
        if (this.fEngines == null) {
            this.fEngines = new HashMap(2);
        }
        if ((engine = (IAstEvaluationEngine)this.fEngines.get(project)) == null) {
            engine = EvaluationManager.newAstEvaluationEngine(project, this);
            this.fEngines.put(project, engine);
        }
        return engine;
    }

    public boolean supportsMonitorInformation() {
        if (!this.isAvailable()) {
            return false;
        }
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            return vm.canGetCurrentContendedMonitor() && vm.canGetMonitorInfo() && vm.canGetOwnedMonitorInfo();
        }
        return false;
    }

    public void setIsPerformingHotCodeReplace(boolean isPerformingHotCodeReplace) {
        this.fIsPerformingHotCodeReplace = isPerformingHotCodeReplace;
    }

    public boolean isPerformingHotCodeReplace() {
        return this.fIsPerformingHotCodeReplace;
    }

    public boolean supportsAccessWatchpoints() {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (this.isAvailable() && vm != null) {
            return vm.canWatchFieldAccess();
        }
        return false;
    }

    public boolean supportsModificationWatchpoints() {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (this.isAvailable() && vm != null) {
            return vm.canWatchFieldModification();
        }
        return false;
    }

    public void setDefaultStratum(String stratum) {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            vm.setDefaultStratum(stratum);
        }
    }

    public String getDefaultStratum() {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            return vm.getDefaultStratum();
        }
        return null;
    }

    public boolean supportsStepFilters() {
        return this.isAvailable();
    }

    public void breakpointManagerEnablementChanged(boolean enabled) {
        if (!this.isAvailable()) {
            return;
        }
        Iterator breakpoints = ((ArrayList)((ArrayList)this.getBreakpoints()).clone()).iterator();
        while (breakpoints.hasNext()) {
            JavaBreakpoint breakpoint = (JavaBreakpoint)breakpoints.next();
            try {
                if (enabled) {
                    breakpoint.addToTarget(this);
                    continue;
                }
                if (!breakpoint.shouldSkipBreakpoint()) continue;
                breakpoint.removeFromTarget(this);
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
            }
        }
    }

    public void handleDebugEvents(DebugEvent[] events) {
        DebugEvent event;
        if (events.length == 1 && (event = events[0]).getSource().equals(this.getProcess()) && event.getKind() == 8) {
            int timeout = this.getRequestTimeout();
            if (timeout < 0) {
                timeout = 3000;
            }
            new CleanUpJob().schedule(timeout);
        }
    }

    public IDebugTarget getDebugTarget() {
        return this;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addThreadGroup(ThreadGroupReference group) {
        ThreadGroupReference currentGroup = group;
        while (currentGroup != null) {
            ArrayList arrayList = this.fGroups;
            synchronized (arrayList) {
                if (this.findThreadGroup(currentGroup) == null) {
                    JDIThreadGroup modelGroup = new JDIThreadGroup(this, currentGroup);
                    this.fGroups.add(modelGroup);
                    currentGroup = currentGroup.parent();
                } else {
                    currentGroup = null;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    JDIThreadGroup findThreadGroup(ThreadGroupReference group) {
        ArrayList arrayList = this.fGroups;
        synchronized (arrayList) {
            Iterator groups = this.fGroups.iterator();
            while (groups.hasNext()) {
                JDIThreadGroup modelGroup = (JDIThreadGroup)groups.next();
                if (!modelGroup.getUnderlyingThreadGroup().equals((Object)group)) continue;
                return modelGroup;
            }
        }
        return null;
    }

    public IJavaThreadGroup[] getRootThreadGroups() throws DebugException {
        try {
            com.sun.jdi.VirtualMachine vm = this.getVM();
            if (vm == null) {
                return new IJavaThreadGroup[0];
            }
            List groups = vm.topLevelThreadGroups();
            ArrayList<JDIThreadGroup> modelGroups = new ArrayList<JDIThreadGroup>(groups.size());
            Iterator iterator = groups.iterator();
            while (iterator.hasNext()) {
                ThreadGroupReference ref = (ThreadGroupReference)iterator.next();
                JDIThreadGroup group = this.findThreadGroup(ref);
                if (group == null) continue;
                modelGroups.add(group);
            }
            return modelGroups.toArray(new IJavaThreadGroup[modelGroups.size()]);
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            return new IJavaThreadGroup[0];
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIDebugTarget_1, e);
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IJavaThreadGroup[] getAllThreadGroups() throws DebugException {
        ArrayList arrayList = this.fGroups;
        synchronized (arrayList) {
            return this.fGroups.toArray(new IJavaThreadGroup[this.fGroups.size()]);
        }
    }

    public boolean supportsInstanceRetrieval() {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm != null) {
            return vm.canGetInstanceInfo();
        }
        return false;
    }

    public byte[] sendJDWPCommand(byte commandSet, byte commandId, byte[] data) throws IOException {
        int command = 256 * commandSet + commandId;
        JdwpReplyPacket reply = ((VirtualMachineImpl)this.getVM()).requestVM(command, data);
        return reply.getPacketAsBytes();
    }

    public boolean supportsForceReturn() {
        com.sun.jdi.VirtualMachine machine = this.getVM();
        if (machine == null) {
            return false;
        }
        return machine.canForceEarlyReturn();
    }

    public boolean supportsSelectiveGarbageCollection() {
        return this.fSupportsDisableGC;
    }

    void setSupportsSelectiveGarbageCollection(boolean enableGC) {
        this.fSupportsDisableGC = enableGC;
    }

    public String getVMName() throws DebugException {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm == null) {
            this.requestFailed(JDIDebugModelMessages.JDIDebugTarget_2, (Exception)((Object)new VMDisconnectedException()));
        }
        try {
            return vm.name();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIDebugTarget_2, e);
            return null;
        }
    }

    public String getVersion() throws DebugException {
        com.sun.jdi.VirtualMachine vm = this.getVM();
        if (vm == null) {
            this.requestFailed(JDIDebugModelMessages.JDIDebugTarget_4, (Exception)((Object)new VMDisconnectedException()));
        }
        try {
            return vm.version();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIDebugTarget_4, e);
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void refreshState() throws DebugException {
        if (this.isTerminated() || this.isDisconnected()) {
            return;
        }
        boolean prevSuspend = this.isSuspended();
        int running = 0;
        ArrayList<JDIThread> toSuspend = new ArrayList<JDIThread>();
        ArrayList<JDIThread> toResume = new ArrayList<JDIThread>();
        ArrayList<JDIThread> toRefresh = new ArrayList<JDIThread>();
        Iterator iterator = this.getThreadIterator();
        while (iterator.hasNext()) {
            JDIThread thread = (JDIThread)iterator.next();
            boolean modelSuspended = thread.isSuspended();
            ThreadReference reference = thread.getUnderlyingThread();
            try {
                boolean realSuspended = reference.isSuspended();
                if (realSuspended) {
                    if (modelSuspended) {
                        toRefresh.add(thread);
                        continue;
                    }
                    toSuspend.add(thread);
                    continue;
                }
                ++running;
                if (!modelSuspended) continue;
                toResume.add(thread);
            }
            catch (InternalException e) {
                this.requestFailed(e.getMessage(), (Exception)((Object)e));
            }
        }
        boolean targetLevelEvent = false;
        if (prevSuspend) {
            if (running > 0) {
                targetLevelEvent = true;
            }
        } else if (running == 0) {
            targetLevelEvent = true;
        }
        if (targetLevelEvent) {
            iterator = toSuspend.iterator();
            while (iterator.hasNext()) {
                JDIThread thread = (JDIThread)iterator.next();
                thread.suspendedByVM();
            }
            iterator = toResume.iterator();
            while (iterator.hasNext()) {
                JDIThread thread = (JDIThread)iterator.next();
                thread.resumedByVM();
            }
            iterator = toRefresh.iterator();
            while (iterator.hasNext()) {
                JDIThread thread = (JDIThread)iterator.next();
                thread.preserveStackFrames();
            }
            if (running == 0) {
                JDIDebugTarget thread = this;
                synchronized (thread) {
                    this.setSuspended(true);
                }
                this.fireSuspendEvent(32);
            } else {
                JDIDebugTarget thread = this;
                synchronized (thread) {
                    this.setSuspended(false);
                }
                this.fireResumeEvent(32);
            }
        } else {
            iterator = toSuspend.iterator();
            while (iterator.hasNext()) {
                JDIThread thread = (JDIThread)iterator.next();
                thread.preserveStackFrames();
                thread.setRunning(false);
                thread.fireSuspendEvent(32);
            }
            iterator = toResume.iterator();
            while (iterator.hasNext()) {
                JDIThread thread = (JDIThread)iterator.next();
                thread.setRunning(true);
                thread.fireResumeEvent(32);
            }
            iterator = toRefresh.iterator();
            while (iterator.hasNext()) {
                JDIThread thread = (JDIThread)iterator.next();
                thread.preserveStackFrames();
                thread.fireSuspendEvent(32);
            }
        }
    }

    public byte[] sendCommand(byte commandSet, byte commandId, byte[] data) throws DebugException {
        try {
            return this.sendJDWPCommand(commandSet, commandId, data);
        }
        catch (IOException e) {
            this.requestFailed(e.getMessage(), e);
            return null;
        }
    }

    public void addHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        this.fHCRListeners.add((Object)listener);
    }

    public void removeHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        this.fHCRListeners.remove((Object)listener);
    }

    public Object[] getHotCodeReplaceListeners() {
        return this.fHCRListeners.getListeners();
    }

    class CleanUpJob
    extends Job {
        public CleanUpJob() {
            super(JDIDebugModelMessages.JDIDebugTarget_0);
            this.setSystem(true);
        }

        protected IStatus run(IProgressMonitor monitor) {
            if (JDIDebugTarget.this.isAvailable()) {
                if (JDIDebugTarget.this.fEventDispatcher != null) {
                    JDIDebugTarget.this.fEventDispatcher.shutdown();
                }
                JDIDebugTarget.this.disconnected();
            }
            return Status.OK_STATUS;
        }

        public boolean shouldRun() {
            return JDIDebugTarget.this.isAvailable();
        }

        public boolean shouldSchedule() {
            return JDIDebugTarget.this.isAvailable();
        }
    }

    class ThreadDeathHandler
    implements IJDIEventListener {
        protected ThreadDeathHandler() {
            this.createRequest();
        }

        protected void createRequest() {
            EventRequestManager manager = JDIDebugTarget.this.getEventRequestManager();
            if (manager != null) {
                try {
                    ThreadDeathRequest req = manager.createThreadDeathRequest();
                    req.setSuspendPolicy(0);
                    req.enable();
                    JDIDebugTarget.this.addJDIEventListener(this, (EventRequest)req);
                }
                catch (RuntimeException e) {
                    JDIDebugTarget.this.logError(e);
                }
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
            ThreadReference ref = ((ThreadDeathEvent)event).thread();
            JDIThread thread = JDIDebugTarget.this.findThread(ref);
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
                thread = target.findThread(ref);
            }
            if (thread != null) {
                ArrayList arrayList = JDIDebugTarget.this.fThreads;
                synchronized (arrayList) {
                    JDIDebugTarget.this.fThreads.remove(thread);
                }
                thread.terminated();
            }
            return true;
        }

        public void eventSetComplete(Event event, JDIDebugTarget target, boolean suspend, EventSet eventSet) {
        }
    }

    class ThreadStartHandler
    implements IJDIEventListener {
        protected EventRequest fRequest;

        protected ThreadStartHandler() {
            this.createRequest();
        }

        protected void createRequest() {
            EventRequestManager manager = JDIDebugTarget.this.getEventRequestManager();
            if (manager != null) {
                try {
                    ThreadStartRequest req = manager.createThreadStartRequest();
                    req.setSuspendPolicy(0);
                    req.enable();
                    JDIDebugTarget.this.addJDIEventListener(this, (EventRequest)req);
                    this.setRequest((EventRequest)req);
                }
                catch (RuntimeException e) {
                    JDIDebugTarget.this.logError(e);
                }
            }
        }

        public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
            JDIThread jdiThread;
            ThreadReference thread = ((ThreadStartEvent)event).thread();
            try {
                if (thread.isCollected()) {
                    return false;
                }
            }
            catch (VMDisconnectedException vMDisconnectedException) {
                return false;
            }
            catch (ObjectCollectedException objectCollectedException) {
                return false;
            }
            catch (TimeoutException timeoutException) {}
            if ((jdiThread = JDIDebugTarget.this.findThread(thread)) == null) {
                jdiThread = JDIDebugTarget.this.createThread(thread);
                if (jdiThread == null) {
                    return false;
                }
            } else {
                jdiThread.disposeStackFrames();
                jdiThread.fireChangeEvent(512);
            }
            return !jdiThread.isSuspended();
        }

        public void eventSetComplete(Event event, JDIDebugTarget target, boolean suspend, EventSet eventSet) {
        }

        protected void deleteRequest() {
            if (this.getRequest() != null) {
                JDIDebugTarget.this.removeJDIEventListener(this, this.getRequest());
                this.setRequest(null);
            }
        }

        protected EventRequest getRequest() {
            return this.fRequest;
        }

        protected void setRequest(EventRequest request) {
            this.fRequest = request;
        }
    }
}

