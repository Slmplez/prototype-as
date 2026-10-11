/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayInstruction;

public class PushArrayType
extends ArrayInstruction {
    private String fTypeSignature;
    private int fDimension;

    public PushArrayType(String typeSignature, int dimension, int start) {
        super(start);
        this.fTypeSignature = typeSignature;
        this.fDimension = dimension;
    }

    public void execute() throws CoreException {
        this.push(this.getArrayType(this.fTypeSignature.replace('/', '.'), this.fDimension));
    }
}

