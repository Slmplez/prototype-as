/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VMDisconnectedException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import com.sun.jdi.VMDisconnectedException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.engine.IRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.InterpreterVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Instruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionSequence;

public class Interpreter {
    private Instruction[] fInstructions;
    private int fInstructionCounter;
    private IRuntimeContext fContext;
    private Stack fStack;
    private IJavaValue fLastValue;
    private Map fInternalVariables;
    private List fPermStorage = null;
    private boolean fStopped = false;

    public Interpreter(InstructionSequence instructions, IRuntimeContext context) {
        this.fInstructions = instructions.getInstructions();
        this.fContext = context;
        this.fInternalVariables = new HashMap();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void execute() throws CoreException {
        try {
            try {
                this.reset();
                while (this.fInstructionCounter < this.fInstructions.length) {
                    if (this.fStopped) {
                        return;
                    }
                    Instruction instruction = this.fInstructions[this.fInstructionCounter++];
                    instruction.setInterpreter(this);
                    instruction.execute();
                    instruction.setInterpreter(null);
                }
                return;
            }
            catch (VMDisconnectedException e) {
                throw new CoreException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), e.getMessage(), (Throwable)e));
            }
        }
        finally {
            this.releaseObjects();
        }
    }

    public void stop() {
        this.fStopped = true;
    }

    private void reset() {
        this.fStack = new Stack();
        this.fInstructionCounter = 0;
    }

    public void jump(int offset) {
        this.fInstructionCounter += offset;
    }

    public void push(Object object) {
        this.fStack.push(object);
        if (object instanceof IJavaObject) {
            this.disableCollection((IJavaObject)object);
        }
    }

    private void disableCollection(IJavaObject value) {
        if (this.fPermStorage == null) {
            this.fPermStorage = new ArrayList(5);
        }
        try {
            value.disableCollection();
            this.fPermStorage.add(value);
        }
        catch (CoreException e) {
            JDIDebugPlugin.log(e);
        }
    }

    private void releaseObjects() {
        if (this.fPermStorage != null) {
            Iterator iterator = this.fPermStorage.iterator();
            while (iterator.hasNext()) {
                IJavaObject object = (IJavaObject)iterator.next();
                try {
                    object.enableCollection();
                }
                catch (CoreException e) {
                    if (e.getStatus().getException() instanceof VMDisconnectedException) break;
                    JDIDebugPlugin.log(e);
                }
            }
            this.fPermStorage = null;
        }
    }

    public Object peek() {
        return this.fStack.peek();
    }

    public Object pop() {
        return this.fStack.pop();
    }

    public IRuntimeContext getContext() {
        return this.fContext;
    }

    public IJavaValue getResult() {
        if (this.fStack == null || this.fStack.isEmpty()) {
            if (this.fLastValue == null) {
                return this.getContext().getVM().voidValue();
            }
            return this.fLastValue;
        }
        Object top = this.fStack.peek();
        if (top instanceof IJavaVariable) {
            try {
                return (IJavaValue)((IJavaVariable)top).getValue();
            }
            catch (CoreException exception) {
                return this.getContext().getVM().newValue(exception.getStatus().getMessage());
            }
        }
        if (top instanceof IJavaValue) {
            return (IJavaValue)top;
        }
        return null;
    }

    public void setLastValue(IJavaValue value) {
        this.fLastValue = value;
    }

    public IVariable createInternalVariable(String name, IJavaType referencType) {
        InterpreterVariable var = new InterpreterVariable(name, referencType, this.fContext.getVM());
        this.fInternalVariables.put(name, var);
        return var;
    }

    public IVariable getInternalVariable(String name) {
        return (IVariable)this.fInternalVariables.get(name);
    }
}

