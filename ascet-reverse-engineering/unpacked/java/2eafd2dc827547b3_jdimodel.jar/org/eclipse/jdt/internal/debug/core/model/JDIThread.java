/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.BooleanValue
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.IntegerValue
 *  com.sun.jdi.InvalidStackFrameException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.InvocationException
 *  com.sun.jdi.Location
 *  com.sun.jdi.Method
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.StackFrame
 *  com.sun.jdi.ThreadGroupReference
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.event.StepEvent
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  com.sun.jdi.request.StepRequest
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IStatusHandler
 *  org.eclipse.debug.core.model.IBreakpoint
 *  org.eclipse.debug.core.model.IStackFrame
 *  org.eclipse.debug.core.model.ITerminate
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.BooleanValue;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassType;
import com.sun.jdi.Field;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.IntegerValue;
import com.sun.jdi.InvalidStackFrameException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.InvocationException;
import com.sun.jdi.Location;
import com.sun.jdi.Method;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.StackFrame;
import com.sun.jdi.ThreadGroupReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.event.StepEvent;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.StepRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.ITerminate;
import org.eclipse.jdi.hcr.EventRequestManager;
import org.eclipse.jdi.hcr.ReenterStepRequest;
import org.eclipse.jdi.hcr.ThreadReference;
import org.eclipse.jdt.debug.core.IEvaluationRunnable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaThreadGroup;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.IJDIEventListener;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.ConditionalBreakpointHandler;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIMethod;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIStackFrame;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIThread
extends JDIDebugElement
implements IJavaThread {
    private static final String JAVA_STRATUM_CONSTANT = "Java";
    private static final String MAIN_THREAD_GROUP = "main";
    public static final int RESUME_QUIET = 500;
    public static final int SUSPEND_QUIET = 501;
    public static final int SUSPEND_TIMEOUT = 161;
    private com.sun.jdi.ThreadReference fThread;
    private String fPreviousName;
    private List fStackFrames;
    private ThreadGroupReference fThreadGroup;
    private String fThreadGroupName;
    private boolean fRefreshChildren = true;
    private StepHandler fStepHandler = null;
    private boolean fRunning;
    private boolean fTerminated;
    private boolean fIsSystemThread;
    private boolean fIsDaemon = false;
    private List fCurrentBreakpoints = new ArrayList(2);
    private IEvaluationRunnable fEvaluationRunnable = null;
    private boolean fEvaluationInterrupted = false;
    private boolean fClientSuspendRequest = false;
    private boolean fIsInvokingMethod = false;
    private Object fInvocationLock = new Object();
    private Object fEvaluationLock = new Object();
    private boolean fHonorBreakpoints = true;
    private boolean fSuspendVoteInProgress = false;
    private int fOriginalStepKind;
    private Location fOriginalStepLocation;
    private int fOriginalStepStackDepth;
    private boolean fIsSuspending = false;
    private ThreadJob fAsyncJob;
    private ThreadJob fRunningAsyncJob;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public JDIThread(JDIDebugTarget target, com.sun.jdi.ThreadReference thread) throws ObjectCollectedException {
        super(target);
        this.setUnderlyingThread(thread);
        this.initialize();
    }

    protected void initialize() throws ObjectCollectedException {
        Throwable underlyingException;
        this.fStackFrames = new ArrayList();
        try {
            this.determineIfSystemThread();
        }
        catch (DebugException e) {
            underlyingException = e.getStatus().getException();
            if (underlyingException instanceof VMDisconnectedException) {
                this.disconnected();
                return;
            }
            if (underlyingException instanceof ObjectCollectedException) {
                throw (ObjectCollectedException)underlyingException;
            }
            this.logError((Exception)((Object)e));
        }
        try {
            this.determineIfDaemonThread();
        }
        catch (DebugException e) {
            underlyingException = e.getStatus().getException();
            if (underlyingException instanceof VMDisconnectedException) {
                this.disconnected();
                return;
            }
            this.logError((Exception)((Object)e));
        }
        try {
            ThreadGroupReference group = this.getUnderlyingThreadGroup();
            if (group != null) {
                this.getJavaDebugTarget().addThreadGroup(group);
            }
        }
        catch (DebugException debugException) {}
        this.setTerminated(false);
        this.setRunning(false);
        try {
            if (this.fThread.status() == -1) {
                this.setRunning(true);
                return;
            }
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
            return;
        }
        catch (ObjectCollectedException e) {
            throw e;
        }
        catch (RuntimeException e) {
            this.logError(e);
        }
        try {
            this.setRunning(!this.fThread.isSuspended());
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
            return;
        }
        catch (ObjectCollectedException e) {
            throw e;
        }
        catch (RuntimeException e) {
            this.logError(e);
        }
    }

    protected void addCurrentBreakpoint(IBreakpoint bp) {
        this.fCurrentBreakpoints.add(bp);
    }

    protected void removeCurrentBreakpoint(IBreakpoint bp) {
        this.fCurrentBreakpoints.remove(bp);
    }

    public synchronized IBreakpoint[] getBreakpoints() {
        return this.fCurrentBreakpoints.toArray(new IBreakpoint[this.fCurrentBreakpoints.size()]);
    }

    public boolean canResume() {
        return this.isSuspended() && (!this.isPerformingEvaluation() || this.isInvokingMethod()) && !this.isSuspendVoteInProgress();
    }

    public boolean canSuspend() {
        return !this.isSuspended() || this.isPerformingEvaluation() && !this.isInvokingMethod() || this.isSuspendVoteInProgress();
    }

    public boolean canTerminate() {
        return this.getDebugTarget().canTerminate();
    }

    public boolean canStepInto() {
        return this.canStep();
    }

    public boolean canStepOver() {
        return this.canStep();
    }

    public boolean canStepReturn() {
        return this.canStep();
    }

    protected boolean canStep() {
        try {
            return this.isSuspended() && (!this.isPerformingEvaluation() || this.isInvokingMethod()) && !this.isSuspendVoteInProgress() && !this.isStepping() && this.getTopStackFrame() != null && !this.getJavaDebugTarget().isPerformingHotCodeReplace();
        }
        catch (DebugException debugException) {
            return false;
        }
    }

    protected void determineIfSystemThread() throws DebugException {
        this.fIsSystemThread = false;
        ThreadGroupReference tgr = this.getUnderlyingThreadGroup();
        this.fIsSystemThread = tgr != null;
        while (tgr != null) {
            String tgn = null;
            try {
                tgn = tgr.name();
                tgr = tgr.parent();
            }
            catch (UnsupportedOperationException unsupportedOperationException) {
                this.fIsSystemThread = false;
                break;
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_determining_if_system_thread, (Object[])new String[]{e.toString()}), e);
                return;
            }
            if (tgn == null || !tgn.equals(MAIN_THREAD_GROUP)) continue;
            this.fIsSystemThread = false;
            break;
        }
    }

    protected void determineIfDaemonThread() throws DebugException {
        this.fIsDaemon = false;
        try {
            Value value;
            ReferenceType referenceType = this.getUnderlyingThread().referenceType();
            Field field = referenceType.fieldByName("daemon");
            if (field == null) {
                field = referenceType.fieldByName("isDaemon");
            }
            if (field != null && field.signature().equals("Z") && (value = this.getUnderlyingThread().getValue(field)) instanceof BooleanValue) {
                this.fIsDaemon = ((BooleanValue)value).booleanValue();
            }
        }
        catch (ObjectCollectedException objectCollectedException) {
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_47, e);
        }
    }

    public synchronized IStackFrame[] getStackFrames() throws DebugException {
        List list = this.computeStackFrames();
        return list.toArray(new IStackFrame[list.size()]);
    }

    protected synchronized List computeStackFrames(boolean refreshChildren) throws DebugException {
        if (this.isSuspended()) {
            if (this.isTerminated()) {
                this.fStackFrames.clear();
            } else if (refreshChildren) {
                List frames = this.getUnderlyingFrames();
                int oldSize = this.fStackFrames.size();
                int newSize = frames.size();
                int discard = oldSize - newSize;
                int i = 0;
                while (i < discard) {
                    JDIStackFrame invalid = (JDIStackFrame)this.fStackFrames.remove(0);
                    invalid.bind(null, -1);
                    ++i;
                }
                int newFrames = newSize - oldSize;
                int depth = oldSize;
                int i2 = newFrames - 1;
                while (i2 >= 0) {
                    this.fStackFrames.add(0, new JDIStackFrame(this, (StackFrame)frames.get(i2), depth));
                    ++depth;
                    --i2;
                }
                int numToRebind = Math.min(newSize, oldSize);
                int offset = newSize - 1;
                depth = 0;
                while (depth < numToRebind) {
                    StackFrame frame;
                    JDIStackFrame oldFrame = (JDIStackFrame)this.fStackFrames.get(offset);
                    JDIStackFrame newFrame = oldFrame.bind(frame = (StackFrame)frames.get(offset), depth);
                    if (newFrame != oldFrame) {
                        this.fStackFrames.set(offset, newFrame);
                    }
                    --offset;
                    ++depth;
                }
            }
        } else {
            return Collections.EMPTY_LIST;
        }
        this.fRefreshChildren = false;
        return this.fStackFrames;
    }

    public synchronized List computeStackFrames() throws DebugException {
        return this.computeStackFrames(this.fRefreshChildren);
    }

    public List computeNewStackFrames() throws DebugException {
        return this.computeStackFrames(true);
    }

    private List getUnderlyingFrames() throws DebugException {
        if (!this.isSuspended()) {
            this.requestFailed(JDIDebugModelMessages.JDIThread_Unable_to_retrieve_stack_frame___thread_not_suspended__1, null, 100);
        }
        try {
            return this.fThread.frames();
        }
        catch (IncompatibleThreadStateException e) {
            this.requestFailed(JDIDebugModelMessages.JDIThread_Unable_to_retrieve_stack_frame___thread_not_suspended__1, e, 100);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_stack_frames_2, (Object[])new String[]{e.toString()}), e);
        }
        catch (InternalError e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_stack_frames_2, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    protected int getUnderlyingFrameCount() throws DebugException {
        try {
            return this.fThread.frameCount();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_frame_count, (Object[])new String[]{e.toString()}), e);
        }
        catch (IncompatibleThreadStateException e) {
            this.requestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_frame_count, (Object[])new String[]{e.toString()}), e, 100);
        }
        return -1;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     */
    public void runEvaluation(IEvaluationRunnable evaluation, IProgressMonitor monitor, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        block31: {
            block32: {
                if (this.isPerformingEvaluation()) {
                    this.requestFailed(JDIDebugModelMessages.JDIThread_Cannot_perform_nested_evaluations, null, 101);
                }
                if (!this.canRunEvaluation()) {
                    this.requestFailed(JDIDebugModelMessages.JDIThread_Evaluation_failed___thread_not_suspended, null, 100);
                }
                var5_5 = this.fEvaluationLock;
                synchronized (var5_5) {
                    this.fEvaluationRunnable = evaluation;
                    this.fHonorBreakpoints = hitBreakpoints;
                }
                quiet = this.isSuspendVoteInProgress();
                if (quiet) {
                    this.fireEvent(new DebugEvent((Object)this, 32, 500));
                } else {
                    this.fireResumeEvent(evaluationDetail);
                }
                breakpoints = this.getBreakpoints();
                rule = null;
                if (evaluationDetail == 128) {
                    rule = this.getThreadRule();
                }
                try {
                    if (rule != null) {
                        Job.getJobManager().beginRule(rule, monitor);
                    }
                    if (monitor == null || !monitor.isCanceled()) {
                        evaluation.run(this, monitor);
                    }
                    break block31;
                }
                catch (Throwable var9_10) {
                    if (rule != null) {
                        Job.getJobManager().endRule(rule);
                    }
                    var10_11 = this.fEvaluationLock;
                    synchronized (var10_11) {
                        this.fEvaluationRunnable = null;
                        this.fHonorBreakpoints = true;
                        this.fEvaluationLock.notifyAll();
                    }
                    if (this.getBreakpoints().length != 0 || breakpoints.length <= 0) break block32;
                    i = 0;
                    ** while (i < breakpoints.length)
                }
lbl-1000:
                // 1 sources

                {
                    this.addCurrentBreakpoint(breakpoints[i]);
                    ++i;
                    continue;
                }
            }
            if (quiet) {
                this.fireEvent(new DebugEvent((Object)this, 32, 501));
            } else {
                this.fireSuspendEvent(evaluationDetail);
            }
            if (this.fEvaluationInterrupted && (this.fAsyncJob == null || this.fAsyncJob.isEmpty()) && (this.fRunningAsyncJob == null || this.fRunningAsyncJob.isEmpty())) {
                this.fEvaluationInterrupted = false;
                this.fireChangeEvent(512);
            }
            throw var9_10;
        }
        if (rule != null) {
            Job.getJobManager().endRule(rule);
        }
        i = this.fEvaluationLock;
        synchronized (i) {
            this.fEvaluationRunnable = null;
            this.fHonorBreakpoints = true;
            this.fEvaluationLock.notifyAll();
        }
        if (this.getBreakpoints().length == 0 && breakpoints.length > 0) {
            i = 0;
            while (i < breakpoints.length) {
                this.addCurrentBreakpoint(breakpoints[i]);
                ++i;
            }
        }
        if (quiet) {
            this.fireEvent(new DebugEvent((Object)this, 32, 501));
        } else {
            this.fireSuspendEvent(evaluationDetail);
        }
        if (this.fEvaluationInterrupted && (this.fAsyncJob == null || this.fAsyncJob.isEmpty()) && (this.fRunningAsyncJob == null || this.fRunningAsyncJob.isEmpty())) {
            this.fEvaluationInterrupted = false;
            this.fireChangeEvent(512);
        }
    }

    protected boolean canRunEvaluation() {
        try {
            return this.isSuspended() && !this.isPerformingEvaluation() && !this.isInvokingMethod() && this.getTopStackFrame() != null && !this.getJavaDebugTarget().isPerformingHotCodeReplace();
        }
        catch (DebugException debugException) {
            return false;
        }
    }

    public void queueRunnable(Runnable evaluation) {
        if (this.fAsyncJob == null) {
            this.fAsyncJob = new ThreadJob(this);
        }
        this.fAsyncJob.addRunnable(evaluation);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void terminateEvaluation() throws DebugException {
        Object object = this.fEvaluationLock;
        synchronized (object) {
            if (this.canTerminateEvaluation()) {
                this.fEvaluationInterrupted = true;
                ((ITerminate)this.fEvaluationRunnable).terminate();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean canTerminateEvaluation() {
        Object object = this.fEvaluationLock;
        synchronized (object) {
            return this.fEvaluationRunnable instanceof ITerminate;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected Value invokeMethod(ClassType receiverClass, ObjectReference receiverObject, Method method, List args, boolean invokeNonvirtual) throws DebugException {
        if (receiverClass != null && receiverObject != null) {
            throw new IllegalArgumentException(JDIDebugModelMessages.JDIThread_can_only_specify_one_receiver_for_a_method_invocation);
        }
        Value result = null;
        int timeout = this.getRequestTimeout();
        try {
            JDIThread jDIThread = this;
            synchronized (jDIThread) {
                if (!this.isSuspended()) {
                    this.requestFailed(JDIDebugModelMessages.JDIThread_Evaluation_failed___thread_not_suspended, null, 100);
                }
                if (this.isInvokingMethod()) {
                    this.requestFailed(JDIDebugModelMessages.JDIThread_Cannot_perform_nested_evaluations, null, 101);
                }
                this.setRequestTimeout(Integer.MAX_VALUE);
                this.setRunning(true);
                this.setInvokingMethod(true);
            }
            this.preserveStackFrames();
            int flags = 1;
            if (invokeNonvirtual) {
                flags |= 2;
            }
            result = receiverClass == null ? receiverObject.invokeMethod(this.fThread, method, args, flags) : receiverClass.invokeMethod(this.fThread, method, args, flags);
        }
        catch (InvalidTypeException e) {
            this.invokeFailed(e, timeout);
        }
        catch (ClassNotLoadedException e) {
            this.invokeFailed(e, timeout);
        }
        catch (IncompatibleThreadStateException e) {
            this.invokeFailed(JDIDebugModelMessages.JDIThread_Thread_must_be_suspended_by_step_or_breakpoint_to_perform_method_invocation_1, 102, e, timeout);
        }
        catch (InvocationException e) {
            this.invokeFailed(e, timeout);
        }
        catch (RuntimeException e) {
            this.invokeFailed(e, timeout);
        }
        this.invokeComplete(timeout);
        return result;
    }

    protected ObjectReference newInstance(ClassType receiverClass, Method constructor, List args) throws DebugException {
        if (this.isInvokingMethod()) {
            this.requestFailed(JDIDebugModelMessages.JDIThread_Cannot_perform_nested_evaluations_2, null);
        }
        ObjectReference result = null;
        int timeout = this.getRequestTimeout();
        try {
            this.setRequestTimeout(Integer.MAX_VALUE);
            this.setRunning(true);
            this.setInvokingMethod(true);
            this.preserveStackFrames();
            result = receiverClass.newInstance(this.fThread, constructor, args, 1);
        }
        catch (InvalidTypeException e) {
            this.invokeFailed(e, timeout);
        }
        catch (ClassNotLoadedException e) {
            this.invokeFailed(e, timeout);
        }
        catch (IncompatibleThreadStateException e) {
            this.invokeFailed(e, timeout);
        }
        catch (InvocationException e) {
            this.invokeFailed(e, timeout);
        }
        catch (RuntimeException e) {
            this.invokeFailed(e, timeout);
        }
        this.invokeComplete(timeout);
        return result;
    }

    protected void invokeFailed(Throwable e, int restoreTimeout) throws DebugException {
        this.invokeFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_invoking_method, (Object[])new String[]{e.toString()}), 5010, e, restoreTimeout);
    }

    protected void invokeFailed(String message, int code, Throwable e, int restoreTimeout) throws DebugException {
        this.invokeComplete(restoreTimeout);
        this.requestFailed(message, e, code);
    }

    protected synchronized void invokeComplete(int restoreTimeout) {
        this.setInvokingMethod(false);
        this.setRunning(false);
        this.setRequestTimeout(restoreTimeout);
        try {
            this.computeStackFrames();
        }
        catch (DebugException e) {
            this.logError((Exception)((Object)e));
        }
    }

    public String getName() throws DebugException {
        try {
            this.fPreviousName = this.fThread.name();
        }
        catch (RuntimeException e) {
            if (e instanceof ObjectCollectedException) {
                if (this.fPreviousName == null) {
                    this.fPreviousName = JDIDebugModelMessages.JDIThread_garbage_collected_1;
                }
            }
            if (e instanceof VMDisconnectedException) {
                if (this.fPreviousName == null) {
                    this.fPreviousName = JDIDebugModelMessages.JDIThread_42;
                }
            }
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_thread_name, (Object[])new String[]{e.toString()}), e);
        }
        return this.fPreviousName;
    }

    public int getPriority() throws DebugException {
        Field p = null;
        try {
            Value v;
            p = this.fThread.referenceType().fieldByName("priority");
            if (p == null) {
                this.requestFailed(JDIDebugModelMessages.JDIThread_no_priority_field, null);
            }
            if ((v = this.fThread.getValue(p)) instanceof IntegerValue) {
                return ((IntegerValue)v).value();
            }
            this.requestFailed(JDIDebugModelMessages.JDIThread_priority_not_an_integer, null);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_thread_priority, (Object[])new String[]{e.toString()}), e);
        }
        return -1;
    }

    public synchronized IStackFrame getTopStackFrame() throws DebugException {
        List c = this.computeStackFrames();
        if (c.isEmpty()) {
            return null;
        }
        return (IStackFrame)c.get(0);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean handleSuspendForBreakpoint(JavaBreakpoint breakpoint, boolean suspendVote) {
        JavaLineBreakpoint lbp;
        int policy = 2;
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            block28: {
                if (!this.fClientSuspendRequest) break block28;
                return true;
            }
            this.fSuspendVoteInProgress = true;
            this.addCurrentBreakpoint(breakpoint);
            try {
                policy = breakpoint.getSuspendPolicy();
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
                this.setRunning(true);
                return false;
            }
            if (policy == 1) {
                ((JDIDebugTarget)this.getDebugTarget()).prepareToSuspendByBreakpoint(breakpoint);
            } else {
                this.setRunning(false);
            }
        }
        if (breakpoint instanceof JavaLineBreakpoint && (lbp = (JavaLineBreakpoint)breakpoint).hasCondition() && !this.isPerformingEvaluation()) {
            ConditionalBreakpointHandler handler = new ConditionalBreakpointHandler();
            int vote = handler.breakpointHit(this, breakpoint);
            if (vote == 2) {
                JDIThread jDIThread2 = this;
                synchronized (jDIThread2) {
                    this.fSuspendVoteInProgress = false;
                    return false;
                }
            }
            if (handler.hasErrors()) {
                JDIThread jDIThread3 = this;
                synchronized (jDIThread3) {
                    this.fSuspendVoteInProgress = false;
                    return true;
                }
            }
        }
        boolean suspend = true;
        try {
            suspend = JDIDebugPlugin.getDefault().fireBreakpointHit(this, breakpoint);
        }
        catch (Throwable throwable) {
            JDIThread jDIThread4 = this;
            synchronized (jDIThread4) {
                this.fSuspendVoteInProgress = false;
                if (this.fClientSuspendRequest) {
                    suspend = true;
                }
            }
            throw throwable;
        }
        JDIThread jDIThread5 = this;
        synchronized (jDIThread5) {
            this.fSuspendVoteInProgress = false;
            if (this.fClientSuspendRequest) {
                suspend = true;
            }
        }
        return suspend;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void completeBreakpointHandling(JavaBreakpoint breakpoint, boolean suspend, boolean queue, EventSet set) {
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            try {
                int policy = breakpoint.getSuspendPolicy();
                if (suspend) {
                    if (policy == 1) {
                        ((JDIDebugTarget)this.getDebugTarget()).suspendedByBreakpoint(breakpoint, false, set);
                    }
                    this.abortStep();
                    if (queue) {
                        this.queueSuspendEvent(16, set);
                    } else {
                        this.fireSuspendEvent(16);
                    }
                } else if (policy == 1) {
                    ((JDIDebugTarget)this.getDebugTarget()).cancelSuspendByBreakpoint(breakpoint);
                } else {
                    this.setRunning(true);
                    this.preserveStackFrames();
                }
            }
            catch (CoreException e) {
                this.logError((Exception)((Object)e));
                this.setRunning(true);
            }
        }
    }

    public boolean isStepping() {
        return this.getPendingStepHandler() != null;
    }

    public boolean isSuspended() {
        return !this.fRunning && !this.fTerminated;
    }

    public boolean isSystemThread() {
        return this.fIsSystemThread;
    }

    public boolean isDaemon() throws DebugException {
        return this.fIsDaemon;
    }

    public String getThreadGroupName() throws DebugException {
        if (this.fThreadGroupName == null) {
            ThreadGroupReference tgr = this.getUnderlyingThreadGroup();
            if (tgr == null) {
                return null;
            }
            try {
                this.fThreadGroupName = tgr.name();
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_thread_group_name, (Object[])new String[]{e.toString()}), e);
                return null;
            }
        }
        return this.fThreadGroupName;
    }

    public boolean isTerminated() {
        return this.fTerminated;
    }

    public synchronized boolean isOutOfSynch() throws DebugException {
        if (this.isSuspended() && ((JDIDebugTarget)this.getDebugTarget()).hasHCRFailed()) {
            List frames = this.computeStackFrames();
            Iterator iter = frames.iterator();
            while (iter.hasNext()) {
                if (!((JDIStackFrame)iter.next()).isOutOfSynch()) continue;
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean mayBeOutOfSynch() {
        if (!this.isSuspended()) {
            return ((JDIDebugTarget)this.getDebugTarget()).hasHCRFailed();
        }
        return false;
    }

    protected void setTerminated(boolean terminated) {
        this.fTerminated = terminated;
    }

    public synchronized void resume() throws DebugException {
        if (this.getDebugTarget().isSuspended()) {
            this.getDebugTarget().resume();
        } else {
            this.fClientSuspendRequest = false;
            this.resumeThread(true);
        }
    }

    private synchronized void resumeThread(boolean fireNotification) throws DebugException {
        if (!this.isSuspended() || this.isPerformingEvaluation() && !this.isInvokingMethod()) {
            return;
        }
        try {
            this.setRunning(true);
            if (fireNotification) {
                this.fireResumeEvent(32);
            }
            this.preserveStackFrames();
            this.fThread.resume();
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
        }
        catch (RuntimeException e) {
            this.setRunning(false);
            this.fireSuspendEvent(32);
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_resuming, (Object[])new String[]{e.toString()}), e);
        }
    }

    protected void setRunning(boolean running) {
        this.fRunning = running;
        if (running) {
            this.fCurrentBreakpoints.clear();
        }
    }

    protected synchronized void preserveStackFrames() {
        this.fRefreshChildren = true;
        Iterator frames = this.fStackFrames.iterator();
        while (frames.hasNext()) {
            ((JDIStackFrame)frames.next()).setUnderlyingStackFrame(null);
        }
    }

    protected synchronized void disposeStackFrames() {
        this.fStackFrames.clear();
        this.fRefreshChildren = true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stepInto() throws DebugException {
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            if (!this.canStepInto()) {
                return;
            }
        }
        StepIntoHandler handler = new StepIntoHandler();
        handler.step();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stepOver() throws DebugException {
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            if (!this.canStepOver()) {
                return;
            }
        }
        StepOverHandler handler = new StepOverHandler();
        handler.step();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stepReturn() throws DebugException {
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            if (!this.canStepReturn()) {
                return;
            }
        }
        StepReturnHandler handler = new StepReturnHandler();
        handler.step();
    }

    protected void setOriginalStepKind(int stepKind) {
        this.fOriginalStepKind = stepKind;
    }

    protected int getOriginalStepKind() {
        return this.fOriginalStepKind;
    }

    protected void setOriginalStepLocation(Location location) {
        this.fOriginalStepLocation = location;
    }

    protected Location getOriginalStepLocation() {
        return this.fOriginalStepLocation;
    }

    protected void setOriginalStepStackDepth(int depth) {
        this.fOriginalStepStackDepth = depth;
    }

    protected int getOriginalStepStackDepth() {
        return this.fOriginalStepStackDepth;
    }

    protected boolean shouldDoExtraStepInto(Location location) throws DebugException {
        Method currMethod;
        if (this.getOriginalStepKind() != 1) {
            return false;
        }
        if (this.getOriginalStepStackDepth() != this.getUnderlyingFrameCount()) {
            return false;
        }
        Location origLocation = this.getOriginalStepLocation();
        if (origLocation == null) {
            return false;
        }
        Method origMethod = origLocation.method();
        if (!origMethod.equals((Object)(currMethod = location.method()))) {
            return false;
        }
        return origLocation.lineNumber() == location.lineNumber();
    }

    protected boolean shouldDoStepReturn() throws DebugException {
        return this.getOriginalStepKind() == 1 && this.getOriginalStepStackDepth() + 1 < this.getUnderlyingFrameCount();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void suspend() throws DebugException {
        this.prepareForClientSuspend();
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            try {
                this.abortStep();
                this.suspendUnderlyingThread();
            }
            catch (RuntimeException e) {
                this.fClientSuspendRequest = false;
                this.setRunning(true);
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_suspending, (Object[])new String[]{e.toString()}), e);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void prepareForClientSuspend() throws DebugException {
        int timeout;
        Object object = this;
        synchronized (object) {
            this.fClientSuspendRequest = true;
        }
        object = this.fEvaluationLock;
        synchronized (object) {
            if (this.fEvaluationRunnable != null) {
                if (this.canTerminateEvaluation()) {
                    this.fEvaluationInterrupted = true;
                    ((ITerminate)this.fEvaluationRunnable).terminate();
                }
                timeout = JDIDebugModel.getPreferences().getInt(JDIDebugModel.PREF_REQUEST_TIMEOUT);
                try {
                    this.fEvaluationLock.wait(timeout);
                }
                catch (InterruptedException interruptedException) {}
                if (this.fEvaluationRunnable != null) {
                    this.fClientSuspendRequest = false;
                    this.targetRequestFailed(JDIDebugModelMessages.JDIThread_1, null);
                }
            }
        }
        object = this.fInvocationLock;
        synchronized (object) {
            if (this.isInvokingMethod()) {
                timeout = JDIDebugModel.getPreferences().getInt(JDIDebugModel.PREF_REQUEST_TIMEOUT);
                try {
                    this.fInvocationLock.wait(timeout);
                }
                catch (InterruptedException interruptedException) {}
                if (this.isInvokingMethod()) {
                    this.fClientSuspendRequest = false;
                    this.targetRequestFailed(JDIDebugModelMessages.JDIThread_1, null);
                }
            }
        }
    }

    protected synchronized void suspendUnderlyingThread() {
        if (this.fIsSuspending) {
            return;
        }
        if (this.isSuspended()) {
            this.fireSuspendEvent(32);
            return;
        }
        this.fIsSuspending = true;
        Thread thread = new Thread(new Runnable(){

            public void run() {
                try {
                    try {
                        JDIThread.this.fThread.suspend();
                        int timeout = JDIDebugModel.getPreferences().getInt(JDIDebugModel.PREF_REQUEST_TIMEOUT);
                        long stop = System.currentTimeMillis() + (long)timeout;
                        boolean suspended = JDIThread.this.isUnderlyingThreadSuspended();
                        while (System.currentTimeMillis() < stop && !suspended) {
                            try {
                                Thread.sleep(50L);
                            }
                            catch (InterruptedException interruptedException) {}
                            suspended = JDIThread.this.isUnderlyingThreadSuspended();
                            if (suspended) break;
                        }
                        if (!suspended) {
                            Status status = new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 161, MessageFormat.format((String)JDIDebugModelMessages.JDIThread_suspend_timeout, (Object[])new String[]{new Integer(timeout).toString()}), null);
                            IStatusHandler handler = DebugPlugin.getDefault().getStatusHandler((IStatus)status);
                            if (handler != null) {
                                try {
                                    handler.handleStatus((IStatus)status, (Object)JDIThread.this);
                                }
                                catch (CoreException coreException) {}
                            }
                        }
                        JDIThread.this.setRunning(false);
                        JDIThread.this.fireSuspendEvent(32);
                    }
                    catch (RuntimeException runtimeException) {
                        JDIThread.this.fIsSuspending = false;
                    }
                }
                finally {
                    JDIThread.this.fIsSuspending = false;
                }
            }
        });
        thread.setDaemon(true);
        thread.start();
    }

    public boolean isUnderlyingThreadSuspended() {
        return this.fThread.isSuspended();
    }

    protected synchronized void suspendedByVM() {
        this.setRunning(false);
    }

    protected synchronized void resumedByVM() throws DebugException {
        this.fClientSuspendRequest = false;
        this.setRunning(true);
        this.preserveStackFrames();
        com.sun.jdi.ThreadReference thread = this.fThread;
        try {
            while (thread.suspendCount() > 1) {
                thread.resume();
            }
        }
        catch (ObjectCollectedException objectCollectedException) {
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
        }
        catch (RuntimeException e) {
            this.setRunning(false);
            this.fireSuspendEvent(32);
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_resuming, (Object[])new String[]{e.toString()}), e);
        }
    }

    public void terminate() throws DebugException {
        this.terminateEvaluation();
        this.getDebugTarget().terminate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void dropToFrame(IStackFrame frame) throws DebugException {
        JDIDebugTarget target = (JDIDebugTarget)this.getDebugTarget();
        if (target.canPopFrames()) {
            try {
                this.popFrame(frame);
                this.stepInto();
            }
            catch (RuntimeException exception) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_dropping_to_frame, (Object[])new String[]{exception.toString()}), exception);
            }
        } else {
            JDIThread jDIThread = this;
            synchronized (jDIThread) {
                DropToFrameHandler handler = new DropToFrameHandler(frame);
                handler.step();
            }
        }
    }

    protected void popFrame(IStackFrame frame) throws DebugException {
        JDIDebugTarget target = (JDIDebugTarget)this.getDebugTarget();
        if (target.canPopFrames()) {
            try {
                StackFrame jdiFrame = null;
                int desiredSize = this.fStackFrames.size() - this.fStackFrames.indexOf(frame) - 1;
                int lastSize = this.fStackFrames.size() + 1;
                int size = this.fStackFrames.size();
                while (size < lastSize && size > desiredSize) {
                    jdiFrame = ((JDIStackFrame)frame).getUnderlyingStackFrame();
                    this.preserveStackFrames();
                    this.fThread.popFrames(jdiFrame);
                    lastSize = size;
                    size = this.computeStackFrames().size();
                }
            }
            catch (IncompatibleThreadStateException exception) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_popping, (Object[])new String[]{exception.toString()}), exception);
            }
            catch (InvalidStackFrameException exception) {
                this.fireChangeEvent(512);
                this.targetRequestFailed(exception.toString(), (RuntimeException)((Object)exception));
            }
            catch (RuntimeException exception) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_popping, (Object[])new String[]{exception.toString()}), exception);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void stepToFrame(IStackFrame frame) throws DebugException {
        JDIThread jDIThread = this;
        synchronized (jDIThread) {
            if (!this.canStepReturn()) {
                return;
            }
        }
        StepToFrameHandler handler = new StepToFrameHandler(frame);
        handler.step();
    }

    protected void abortStep() {
        StepHandler handler = this.getPendingStepHandler();
        if (handler != null) {
            handler.abort();
        }
    }

    public IJavaVariable findVariable(String varName) throws DebugException {
        block5: {
            if (this.isSuspended()) {
                try {
                    IStackFrame[] stackFrames = this.getStackFrames();
                    int i = 0;
                    while (i < stackFrames.length) {
                        IJavaStackFrame sf = (IJavaStackFrame)stackFrames[i];
                        IJavaVariable var = sf.findVariable(varName);
                        if (var != null) {
                            return var;
                        }
                        ++i;
                    }
                }
                catch (DebugException e) {
                    if (e.getStatus().getCode() == 100) break block5;
                    throw e;
                }
            }
        }
        return null;
    }

    protected void terminated() {
        this.setTerminated(true);
        this.setRunning(false);
        this.fireTerminateEvent();
    }

    public com.sun.jdi.ThreadReference getUnderlyingThread() {
        return this.fThread;
    }

    protected void setUnderlyingThread(com.sun.jdi.ThreadReference thread) {
        this.fThread = thread;
    }

    protected ThreadGroupReference getUnderlyingThreadGroup() throws DebugException {
        if (this.fThreadGroup == null) {
            try {
                this.fThreadGroup = this.fThread.threadGroup();
            }
            catch (UnsupportedOperationException e) {
                this.requestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_thread_group, (Object[])new String[]{e.toString()}), e);
                return null;
            }
            catch (VMDisconnectedException vMDisconnectedException) {
                return null;
            }
            catch (ObjectCollectedException objectCollectedException) {
                return null;
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_retrieving_thread_group, (Object[])new String[]{e.toString()}), e);
                return null;
            }
        }
        return this.fThreadGroup;
    }

    public boolean isPerformingEvaluation() {
        return this.fEvaluationRunnable != null;
    }

    public boolean isInvokingMethod() {
        return this.fIsInvokingMethod;
    }

    public boolean isIgnoringBreakpoints() {
        return !this.fHonorBreakpoints || this.fSuspendVoteInProgress || this.hasClientRequestedSuspend();
    }

    public boolean hasClientRequestedSuspend() {
        return this.fClientSuspendRequest;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setInvokingMethod(boolean invoking) {
        Object object = this.fInvocationLock;
        synchronized (object) {
            this.fIsInvokingMethod = invoking;
            if (!invoking) {
                this.fInvocationLock.notifyAll();
            }
        }
    }

    protected void setPendingStepHandler(StepHandler handler) {
        this.fStepHandler = handler;
    }

    protected StepHandler getPendingStepHandler() {
        return this.fStepHandler;
    }

    public boolean hasStackFrames() throws DebugException {
        return this.isSuspended();
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaThread");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.debug.core.IJavaStackFrame");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz2) {
            try {
                return this.getTopStackFrame();
            }
            catch (DebugException debugException) {}
        }
        return super.getAdapter(adapter);
    }

    public boolean hasOwnedMonitors() throws DebugException {
        return this.isSuspended() && this.getOwnedMonitors().length > 0;
    }

    public IJavaObject[] getOwnedMonitors() throws DebugException {
        try {
            JDIDebugTarget target = (JDIDebugTarget)this.getDebugTarget();
            List ownedMonitors = this.fThread.ownedMonitors();
            IJavaObject[] javaOwnedMonitors = new IJavaObject[ownedMonitors.size()];
            Iterator itr = ownedMonitors.iterator();
            int i = 0;
            while (itr.hasNext()) {
                ObjectReference element = (ObjectReference)itr.next();
                javaOwnedMonitors[i] = new JDIObjectValue(target, element);
                ++i;
            }
            return javaOwnedMonitors;
        }
        catch (IncompatibleThreadStateException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_43, e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_44, e);
        }
        return null;
    }

    public IJavaObject getContendedMonitor() throws DebugException {
        try {
            ObjectReference monitor = this.fThread.currentContendedMonitor();
            if (monitor != null) {
                return new JDIObjectValue((JDIDebugTarget)this.getDebugTarget(), monitor);
            }
        }
        catch (IncompatibleThreadStateException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_45, e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_46, e);
        }
        return null;
    }

    public boolean canStepWithFilters() {
        if (this.canStepInto()) {
            String[] filters = this.getJavaDebugTarget().getStepFilters();
            return filters != null && filters.length > 0;
        }
        return false;
    }

    public void stepWithFilters() throws DebugException {
        if (!this.canStepWithFilters()) {
            return;
        }
        this.stepInto();
    }

    public void stop(IJavaObject exception) throws DebugException {
        try {
            this.fThread.stop(((JDIObjectValue)exception).getUnderlyingObject());
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_stoping_thread, (Object[])new String[]{e.toString()}), e);
        }
    }

    public IJavaThreadGroup getThreadGroup() throws DebugException {
        ThreadGroupReference group = this.getUnderlyingThreadGroup();
        if (group != null) {
            return this.getJavaDebugTarget().findThreadGroup(group);
        }
        return null;
    }

    public int getFrameCount() throws DebugException {
        return this.getUnderlyingFrameCount();
    }

    protected void forceReturn(IJavaValue value) throws DebugException {
        if (!this.isSuspended()) {
            return;
        }
        try {
            this.fThread.forceEarlyReturn(((JDIValue)value).getUnderlyingValue());
            this.stepReturn();
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            this.disconnected();
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_48, e);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_48, e);
        }
        catch (IncompatibleThreadStateException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_48, e);
        }
        catch (UnsupportedOperationException e) {
            this.requestFailed(JDIDebugModelMessages.JDIThread_48, e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThread_48, e);
        }
    }

    public ISchedulingRule getThreadRule() {
        return new SerialPerObjectRule(this);
    }

    public synchronized void resumedFromClassPrepare() {
        if (this.isSuspended()) {
            this.setRunning(true);
            this.fireResumeEvent(32);
        }
    }

    public synchronized boolean isSuspendVoteInProgress() {
        return this.fSuspendVoteInProgress;
    }

    public IJavaObject getThreadObject() throws DebugException {
        return (IJavaObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)this.fThread));
    }

    class DropToFrameHandler
    extends StepReturnHandler {
        private int fFramesToDrop;

        protected DropToFrameHandler(IStackFrame frame) throws DebugException {
            List frames = JDIThread.this.computeStackFrames();
            this.setFramesToDrop(frames.indexOf(frame));
        }

        protected void setFramesToDrop(int num) {
            this.fFramesToDrop = num;
        }

        protected int getFramesToDrop() {
            return this.fFramesToDrop;
        }

        protected void invokeThread() throws DebugException {
            if (this.getFramesToDrop() < 0) {
                super.invokeThread();
            } else {
                try {
                    ThreadReference hcrThread = (ThreadReference)JDIThread.this.fThread;
                    hcrThread.doReturn(null, true);
                }
                catch (RuntimeException e) {
                    this.stepEnd(null);
                    JDIThread.this.fireSuspendEvent(8);
                    JDIThread.this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_while_popping_stack_frame, (Object[])new String[]{e.toString()}), e);
                }
            }
        }

        public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
            this.setFramesToDrop(this.getFramesToDrop() - 1);
            try {
                if (this.getFramesToDrop() >= -1) {
                    this.deleteStepRequest();
                    this.doSecondaryStep();
                } else {
                    this.stepEnd(eventSet);
                }
            }
            catch (DebugException e) {
                this.stepEnd(eventSet);
                JDIThread.this.logError((Exception)((Object)e));
            }
            return false;
        }

        protected void doSecondaryStep() throws DebugException {
            this.setStepRequest(this.createStepRequest());
            JDIThread.this.setPendingStepHandler(this);
            JDIThread.this.addJDIEventListener(this, (EventRequest)this.getStepRequest());
            this.invokeThread();
        }

        protected StepRequest createStepRequest() throws DebugException {
            int num;
            com.sun.jdi.request.EventRequestManager manager = JDIThread.this.getEventRequestManager();
            if (manager == null) {
                JDIThread.this.requestFailed(JDIDebugModelMessages.JDIThread_Unable_to_create_step_request___VM_disconnected__2, null);
            }
            if ((num = this.getFramesToDrop()) > 0) {
                return super.createStepRequest();
            }
            if (num == 0) {
                try {
                    ReenterStepRequest request = ((EventRequestManager)manager).createReenterStepRequest(JDIThread.this.fThread);
                    request.setSuspendPolicy(1);
                    request.addCountFilter(1);
                    request.enable();
                    return request;
                }
                catch (RuntimeException e) {
                    JDIThread.this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_creating_step_request, (Object[])new String[]{e.toString()}), e);
                }
            } else if (num == -1) {
                try {
                    StepRequest request = manager.createStepRequest(JDIThread.this.fThread, -2, 1);
                    request.setSuspendPolicy(1);
                    request.addCountFilter(1);
                    request.enable();
                    return request;
                }
                catch (RuntimeException e) {
                    JDIThread.this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_creating_step_request, (Object[])new String[]{e.toString()}), e);
                }
            }
            return null;
        }
    }

    class SerialPerObjectRule
    implements ISchedulingRule {
        private Object fObject = null;

        public SerialPerObjectRule(Object lock) {
            this.fObject = lock;
        }

        public boolean contains(ISchedulingRule rule) {
            return rule == this;
        }

        public boolean isConflicting(ISchedulingRule rule) {
            if (rule instanceof SerialPerObjectRule) {
                SerialPerObjectRule vup = (SerialPerObjectRule)rule;
                return this.fObject == vup.fObject;
            }
            return false;
        }
    }

    abstract class StepHandler
    implements IJDIEventListener {
        private StepRequest fStepRequest;

        StepHandler() {
        }

        protected void step() throws DebugException {
            ISchedulingRule rule = JDIThread.this.getThreadRule();
            try {
                Job.getJobManager().beginRule(rule, null);
                JDIStackFrame top = (JDIStackFrame)JDIThread.this.getTopStackFrame();
                if (top == null) {
                    return;
                }
                JDIThread.this.setOriginalStepKind(this.getStepKind());
                Location location = top.getUnderlyingStackFrame().location();
                JDIThread.this.setOriginalStepLocation(location);
                JDIThread.this.setOriginalStepStackDepth(JDIThread.this.computeStackFrames().size());
                this.setStepRequest(this.createStepRequest());
                JDIThread.this.setPendingStepHandler(this);
                JDIThread.this.addJDIEventListener(this, (EventRequest)this.getStepRequest());
                JDIThread.this.setRunning(true);
                JDIThread.this.preserveStackFrames();
                JDIThread.this.fireResumeEvent(this.getStepDetail());
                this.invokeThread();
            }
            finally {
                Job.getJobManager().endRule(rule);
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected void invokeThread() throws DebugException {
            try {
                JDIThread jDIThread = JDIThread.this;
                synchronized (jDIThread) {
                    JDIThread.this.fClientSuspendRequest = false;
                }
                JDIThread.this.fThread.resume();
            }
            catch (RuntimeException e) {
                this.stepEnd(null);
                JDIThread.this.fireSuspendEvent(8);
                JDIThread.this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_stepping, (Object[])new String[]{e.toString()}), e);
            }
        }

        protected StepRequest createStepRequest() throws DebugException {
            return this.createStepRequest(this.getStepKind());
        }

        protected StepRequest createStepRequest(int kind) throws DebugException {
            com.sun.jdi.request.EventRequestManager manager = JDIThread.this.getEventRequestManager();
            if (manager == null) {
                JDIThread.this.requestFailed(JDIDebugModelMessages.JDIThread_Unable_to_create_step_request___VM_disconnected__1, null);
            }
            try {
                StepRequest request = manager.createStepRequest(JDIThread.this.fThread, -2, kind);
                request.setSuspendPolicy(1);
                request.addCountFilter(1);
                this.attachFiltersToStepRequest(request);
                request.enable();
                return request;
            }
            catch (RuntimeException e) {
                JDIThread.this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThread_exception_creating_step_request, (Object[])new String[]{e.toString()}), e);
                return null;
            }
        }

        protected abstract int getStepKind();

        protected abstract int getStepDetail();

        protected void setStepRequest(StepRequest request) {
            this.fStepRequest = request;
        }

        protected StepRequest getStepRequest() {
            return this.fStepRequest;
        }

        protected void deleteStepRequest() {
            try {
                try {
                    StepRequest req = this.getStepRequest();
                    if (req != null) {
                        JDIThread.this.removeJDIEventListener(this, (EventRequest)req);
                        com.sun.jdi.request.EventRequestManager manager = JDIThread.this.getEventRequestManager();
                        if (manager != null) {
                            manager.deleteEventRequest((EventRequest)req);
                        }
                    }
                }
                catch (RuntimeException e) {
                    JDIThread.this.logError(e);
                    this.setStepRequest(null);
                }
            }
            finally {
                this.setStepRequest(null);
            }
        }

        protected void attachFiltersToStepRequest(StepRequest request) {
            if (this.applyStepFilters() && JDIThread.this.isStepFiltersEnabled()) {
                Location currentLocation = JDIThread.this.getOriginalStepLocation();
                if (currentLocation == null || !JDIThread.JAVA_STRATUM_CONSTANT.equals(currentLocation.declaringType().defaultStratum())) {
                    return;
                }
                String[] activeFilters = JDIThread.this.getJavaDebugTarget().getStepFilters();
                if (activeFilters != null) {
                    int i = 0;
                    while (i < activeFilters.length) {
                        request.addClassExclusionFilter(activeFilters[i]);
                        ++i;
                    }
                }
            }
        }

        protected boolean applyStepFilters() {
            return true;
        }

        public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
            block5: {
                Location currentLocation;
                block4: {
                    try {
                        StepEvent stepEvent = (StepEvent)event;
                        currentLocation = stepEvent.location();
                        if (target.isStepThruFilters() || !JDIThread.this.shouldDoStepReturn()) break block4;
                        this.deleteStepRequest();
                        this.createSecondaryStepRequest(3);
                        return true;
                    }
                    catch (DebugException e) {
                        JDIThread.this.logError((Exception)((Object)e));
                        this.stepEnd(eventSet);
                        return false;
                    }
                }
                if (!this.locationShouldBeFiltered(currentLocation) && !JDIThread.this.shouldDoExtraStepInto(currentLocation)) break block5;
                JDIThread.this.setRunning(true);
                this.deleteStepRequest();
                this.createSecondaryStepRequest();
                return true;
            }
            this.stepEnd(eventSet);
            return false;
        }

        public void eventSetComplete(Event event, JDIDebugTarget target, boolean suspend, EventSet eventSet) {
        }

        protected boolean locationShouldBeFiltered(Location location) throws DebugException {
            Location origLocation;
            if (this.applyStepFilters() && (origLocation = JDIThread.this.getOriginalStepLocation()) != null) {
                return !this.locationIsFiltered(origLocation.method()) && this.locationIsFiltered(location.method());
            }
            return false;
        }

        protected boolean locationIsFiltered(Method method) {
            if (JDIThread.this.isStepFiltersEnabled()) {
                boolean filterStatics = JDIThread.this.getJavaDebugTarget().isFilterStaticInitializers();
                boolean filterSynthetics = JDIThread.this.getJavaDebugTarget().isFilterSynthetics();
                boolean filterConstructors = JDIThread.this.getJavaDebugTarget().isFilterConstructors();
                boolean filterSetters = JDIThread.this.getJavaDebugTarget().isFilterSetters();
                boolean filterGetters = JDIThread.this.getJavaDebugTarget().isFilterGetters();
                if (!(filterStatics || filterSynthetics || filterConstructors || filterGetters || filterSetters)) {
                    return false;
                }
                if (filterStatics && method.isStaticInitializer() || filterSynthetics && method.isSynthetic() || filterConstructors && method.isConstructor() || filterGetters && JDIMethod.isGetterMethod(method) || filterSetters && JDIMethod.isSetterMethod(method)) {
                    return true;
                }
            }
            return false;
        }

        protected void stepEnd(EventSet set) {
            JDIThread.this.setRunning(false);
            this.deleteStepRequest();
            JDIThread.this.setPendingStepHandler(null);
            if (set != null) {
                JDIThread.this.queueSuspendEvent(8, set);
            }
        }

        protected void createSecondaryStepRequest() throws DebugException {
            this.createSecondaryStepRequest(this.getStepKind());
        }

        protected void createSecondaryStepRequest(int kind) throws DebugException {
            this.setStepRequest(this.createStepRequest(kind));
            JDIThread.this.setPendingStepHandler(this);
            JDIThread.this.addJDIEventListener(this, (EventRequest)this.getStepRequest());
        }

        protected void abort() {
            if (this.getStepRequest() != null) {
                this.deleteStepRequest();
                JDIThread.this.setPendingStepHandler(null);
            }
        }
    }

    class StepIntoHandler
    extends StepHandler {
        StepIntoHandler() {
        }

        protected int getStepKind() {
            return 1;
        }

        protected int getStepDetail() {
            return 1;
        }
    }

    class StepOverHandler
    extends StepHandler {
        StepOverHandler() {
        }

        protected int getStepKind() {
            return 2;
        }

        protected int getStepDetail() {
            return 2;
        }
    }

    class StepReturnHandler
    extends StepHandler {
        StepReturnHandler() {
        }

        protected boolean locationShouldBeFiltered(Location location) throws DebugException {
            if (JDIThread.this.getOriginalStepStackDepth() == JDIThread.this.getUnderlyingFrameCount()) {
                return true;
            }
            return super.locationShouldBeFiltered(location);
        }

        protected int getStepKind() {
            return 3;
        }

        protected int getStepDetail() {
            return 4;
        }
    }

    class StepToFrameHandler
    extends StepReturnHandler {
        private int fRemainingFrames;

        protected StepToFrameHandler(IStackFrame frame) throws DebugException {
            List frames = JDIThread.this.computeStackFrames();
            this.setRemainingFrames(frames.size() - frames.indexOf(frame));
        }

        protected void setRemainingFrames(int num) {
            this.fRemainingFrames = num;
        }

        protected int getRemainingFrames() {
            return this.fRemainingFrames;
        }

        public boolean handleEvent(Event event, JDIDebugTarget target, boolean suspendVote, EventSet eventSet) {
            block3: {
                try {
                    int numFrames = JDIThread.this.getUnderlyingFrameCount();
                    if (numFrames > this.getRemainingFrames()) break block3;
                    this.stepEnd(eventSet);
                    return false;
                }
                catch (DebugException e) {
                    JDIThread.this.logError((Exception)((Object)e));
                    this.stepEnd(eventSet);
                    return false;
                }
            }
            JDIThread.this.setRunning(true);
            this.deleteStepRequest();
            this.createSecondaryStepRequest();
            return true;
        }
    }

    static class ThreadJob
    extends Job {
        private Vector fRunnables;
        private JDIThread fJDIThread;

        public ThreadJob(JDIThread thread) {
            super(JDIDebugModelMessages.JDIThread_39);
            this.fJDIThread = thread;
            this.fRunnables = new Vector(5);
            this.setSystem(true);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void addRunnable(Runnable runnable) {
            Vector vector = this.fRunnables;
            synchronized (vector) {
                this.fRunnables.add(runnable);
            }
            this.schedule();
        }

        public boolean isEmpty() {
            return this.fRunnables.isEmpty();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IStatus run(IProgressMonitor monitor) {
            Object[] runnables;
            this.fJDIThread.fRunningAsyncJob = this;
            Vector vector = this.fRunnables;
            synchronized (vector) {
                runnables = this.fRunnables.toArray();
                this.fRunnables.clear();
            }
            MultiStatus failed = null;
            monitor.beginTask(this.getName(), runnables.length);
            int i = 0;
            while (i < runnables.length && !this.fJDIThread.isTerminated() && !monitor.isCanceled()) {
                try {
                    ((Runnable)runnables[i]).run();
                }
                catch (Exception e) {
                    if (failed == null) {
                        failed = new MultiStatus(JDIDebugPlugin.getUniqueIdentifier(), 120, JDIDebugModelMessages.JDIThread_0, null);
                    }
                    failed.add((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, JDIDebugModelMessages.JDIThread_0, (Throwable)e));
                }
                ++i;
                monitor.worked(1);
            }
            this.fJDIThread.fRunningAsyncJob = null;
            monitor.done();
            if (failed == null) {
                return Status.OK_STATUS;
            }
            return failed;
        }

        public boolean shouldRun() {
            return !this.fJDIThread.isTerminated() && !this.fRunnables.isEmpty();
        }
    }
}

