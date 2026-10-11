/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.ISourceType;

public class NameEnvironmentAnswer {
    IBinaryType binaryType;
    ICompilationUnit compilationUnit;
    ISourceType[] sourceTypes;
    AccessRestriction accessRestriction;

    public NameEnvironmentAnswer(IBinaryType binaryType, AccessRestriction accessRestriction) {
        this.binaryType = binaryType;
        this.accessRestriction = accessRestriction;
    }

    public NameEnvironmentAnswer(ICompilationUnit compilationUnit, AccessRestriction accessRestriction) {
        this.compilationUnit = compilationUnit;
        this.accessRestriction = accessRestriction;
    }

    public NameEnvironmentAnswer(ISourceType[] sourceTypes, AccessRestriction accessRestriction) {
        this.sourceTypes = sourceTypes;
        this.accessRestriction = accessRestriction;
    }

    public AccessRestriction getAccessRestriction() {
        return this.accessRestriction;
    }

    public IBinaryType getBinaryType() {
        return this.binaryType;
    }

    public ICompilationUnit getCompilationUnit() {
        return this.compilationUnit;
    }

    public ISourceType[] getSourceTypes() {
        return this.sourceTypes;
    }

    public boolean isBinaryType() {
        return this.binaryType != null;
    }

    public boolean isCompilationUnit() {
        return this.compilationUnit != null;
    }

    public boolean isSourceType() {
        return this.sourceTypes != null;
    }

    public boolean ignoreIfBetter() {
        return this.accessRestriction != null && this.accessRestriction.ignoreIfBetter();
    }

    public boolean isBetter(NameEnvironmentAnswer otherAnswer) {
        if (otherAnswer == null) {
            return true;
        }
        if (this.accessRestriction == null) {
            return true;
        }
        return otherAnswer.accessRestriction != null && this.accessRestriction.getProblemId() < otherAnswer.accessRestriction.getProblemId();
    }
}

