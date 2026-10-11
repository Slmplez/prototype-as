/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;

public class ProblemPackageBinding
extends PackageBinding {
    private int problemId;

    ProblemPackageBinding(char[][] compoundName, int problemId) {
        this.compoundName = compoundName;
        this.problemId = problemId;
    }

    ProblemPackageBinding(char[] name, int problemId) {
        this(new char[][]{name}, problemId);
    }

    public final int problemId() {
        return this.problemId;
    }
}

