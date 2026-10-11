/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class DupX1
extends SimpleInstruction {
    public void execute() throws CoreException {
        Object element1 = this.pop();
        Object element2 = this.pop();
        this.push(element1);
        this.push(element2);
        this.push(element1);
    }
}

