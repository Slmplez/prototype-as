/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class PushPrimitiveType
extends SimpleInstruction {
    private String fName;

    public PushPrimitiveType(String name) {
        this.fName = name;
    }

    public void execute() throws CoreException {
        this.push(this.getPrimitiveType(this.fName));
    }

    public String toString() {
        return "Push Primitive Type: " + this.fName;
    }
}

