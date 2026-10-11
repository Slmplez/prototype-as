/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class Dup
extends SimpleInstruction {
    public void execute() throws CoreException {
        Object element = this.pop();
        this.push(element);
        this.push(element);
    }

    public String toString() {
        return "Dup";
    }
}

