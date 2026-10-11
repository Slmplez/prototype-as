/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;

public class Value
extends CompoundInstruction {
    public Value(int start) {
        super(start);
    }

    public void execute() throws CoreException {
        this.push(this.popValue());
    }
}

