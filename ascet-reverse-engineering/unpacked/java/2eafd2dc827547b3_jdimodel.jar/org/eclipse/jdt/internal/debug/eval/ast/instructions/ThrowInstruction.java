/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;

public class ThrowInstruction
extends CompoundInstruction {
    public ThrowInstruction(int start) {
        super(start);
    }

    public void execute() throws CoreException {
        IJavaObject exception = (IJavaObject)this.popValue();
        final IJavaThread javaThread = this.getContext().getThread();
        javaThread.stop(exception);
        javaThread.queueRunnable(new Runnable(){

            public void run() {
                try {
                    javaThread.resume();
                }
                catch (DebugException e) {
                    e.printStackTrace();
                }
            }
        });
        this.stop();
    }
}

