/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VMDisconnectedException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IValue
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.VMDisconnectedException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;
import org.eclipse.jdt.debug.core.IJavaBreakpointListener;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.eval.IAstEvaluationEngine;
import org.eclipse.jdt.debug.eval.ICompiledExpression;
import org.eclipse.jdt.debug.eval.IEvaluationListener;
import org.eclipse.jdt.debug.eval.IEvaluationResult;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;

public class ConditionalBreakpointHandler
implements IJavaBreakpointListener {
    private boolean fHasErrors = false;

    public void addingBreakpoint(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
    }

    public void breakpointHasCompilationErrors(IJavaLineBreakpoint breakpoint, Message[] errors) {
    }

    public void breakpointHasRuntimeException(IJavaLineBreakpoint breakpoint, DebugException exception) {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int breakpointHit(IJavaThread thread, IJavaBreakpoint breakpoint) {
        if (!(breakpoint instanceof IJavaLineBreakpoint)) return 1;
        JavaLineBreakpoint lineBreakpoint = (JavaLineBreakpoint)breakpoint;
        try {
            Object lock;
            String condition = lineBreakpoint.getCondition();
            if (condition == null) {
                return 1;
            }
            EvaluationListener listener = new EvaluationListener(lineBreakpoint);
            IJavaStackFrame frame = (IJavaStackFrame)thread.getTopStackFrame();
            IJavaProject project = lineBreakpoint.getJavaProject(frame);
            if (project == null) {
                this.fireConditionHasErrors(lineBreakpoint, new Message[]{new Message(JDIDebugBreakpointMessages.JavaLineBreakpoint_Unable_to_compile_conditional_breakpoint___missing_Java_project_context__1, -1)});
                return 1;
            }
            IJavaDebugTarget target = (IJavaDebugTarget)thread.getDebugTarget();
            IAstEvaluationEngine engine = this.getEvaluationEngine(target, project);
            if (engine == null) {
                return 1;
            }
            ICompiledExpression expression = lineBreakpoint.getExpression(thread);
            if (expression == null) {
                expression = engine.getCompiledExpression(condition, frame);
                lineBreakpoint.setExpression(thread, expression);
            }
            if (expression.hasErrors()) {
                this.fireConditionHasErrors(lineBreakpoint, this.getMessages(expression));
                return 1;
            }
            Object object = lock = listener.getLock();
            synchronized (object) {
                engine.evaluateExpression(expression, frame, listener, 128, false);
                try {
                    lock.wait();
                }
                catch (InterruptedException e) {
                    this.fireConditionHasRuntimeErrors(lineBreakpoint, new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), JDIDebugBreakpointMessages.ConditionalBreakpointHandler_0, (Throwable)e)));
                    return 1;
                }
                return listener.getVote();
            }
        }
        catch (CoreException e) {
            DebugException de = null;
            de = e instanceof DebugException ? (DebugException)((Object)e) : new DebugException(e.getStatus());
            this.fireConditionHasRuntimeErrors(lineBreakpoint, de);
        }
        return 1;
    }

    public void breakpointInstalled(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
    }

    public void breakpointRemoved(IJavaDebugTarget target, IJavaBreakpoint breakpoint) {
    }

    public int installingBreakpoint(IJavaDebugTarget target, IJavaBreakpoint breakpoint, IJavaType type) {
        return 0;
    }

    private IAstEvaluationEngine getEvaluationEngine(IJavaDebugTarget vm, IJavaProject project) {
        return ((JDIDebugTarget)vm).getEvaluationEngine(project);
    }

    private void fireConditionHasRuntimeErrors(IJavaLineBreakpoint breakpoint, DebugException exception) {
        this.fHasErrors = true;
        JDIDebugPlugin.getDefault().fireBreakpointHasRuntimeException(breakpoint, exception);
    }

    private void fireConditionHasErrors(IJavaLineBreakpoint breakpoint, Message[] messages) {
        this.fHasErrors = true;
        JDIDebugPlugin.getDefault().fireBreakpointHasCompilationErrors(breakpoint, messages);
    }

    private Message[] getMessages(ICompiledExpression expression) {
        String[] errorMessages = expression.getErrorMessages();
        Message[] messages = new Message[errorMessages.length];
        int i = 0;
        while (i < messages.length) {
            messages[i] = new Message(errorMessages[i], -1);
            ++i;
        }
        return messages;
    }

    public boolean hasErrors() {
        return this.fHasErrors;
    }

    class EvaluationListener
    implements IEvaluationListener {
        private Object fLock = new Object();
        private JavaLineBreakpoint fBreakpoint;
        private int fVote;

        EvaluationListener(JavaLineBreakpoint breakpoint) {
            this.fBreakpoint = breakpoint;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void evaluationComplete(IEvaluationResult result) {
            this.fVote = this.determineVote(result);
            Object object = this.fLock;
            synchronized (object) {
                this.fLock.notifyAll();
            }
        }

        private int determineVote(IEvaluationResult result) {
            IJavaValue value;
            JDIThread thread;
            block9: {
                block10: {
                    if (result.isTerminated()) {
                        return 1;
                    }
                    thread = (JDIThread)result.getThread();
                    if (result.hasErrors()) {
                        DebugException exception = result.getException();
                        Throwable wrappedException = exception.getStatus().getException();
                        if (wrappedException instanceof VMDisconnectedException) {
                            return 2;
                        }
                        ConditionalBreakpointHandler.this.fireConditionHasRuntimeErrors(this.fBreakpoint, exception);
                        return 1;
                    }
                    try {
                        IJavaPrimitiveValue javaValue;
                        value = result.getValue();
                        if (!this.fBreakpoint.isConditionSuspendOnTrue()) break block9;
                        if (!(value instanceof IJavaPrimitiveValue) || !(javaValue = (IJavaPrimitiveValue)value).getJavaType().getName().equals("boolean")) break block10;
                        if (javaValue.getBooleanValue()) {
                            return 1;
                        }
                        return 2;
                    }
                    catch (DebugException e) {
                        JDIDebugPlugin.log(e);
                        return 1;
                    }
                }
                ConditionalBreakpointHandler.this.fireConditionHasRuntimeErrors(this.fBreakpoint, new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), MessageFormat.format((String)JDIDebugBreakpointMessages.ConditionalBreakpointHandler_1, (Object[])new String[]{value.getReferenceTypeName()}))));
                return 1;
            }
            IDebugTarget debugTarget = thread.getDebugTarget();
            IValue lastValue = this.fBreakpoint.setCurrentConditionValue(debugTarget, value);
            if (!value.equals(lastValue)) {
                return 1;
            }
            return 2;
        }

        int getVote() {
            return this.fVote;
        }

        Object getLock() {
            return this.fLock;
        }
    }
}

