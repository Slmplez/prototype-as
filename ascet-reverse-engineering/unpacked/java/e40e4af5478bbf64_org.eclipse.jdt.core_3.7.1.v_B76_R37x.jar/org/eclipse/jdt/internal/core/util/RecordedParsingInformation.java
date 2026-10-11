/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;

public class RecordedParsingInformation {
    public CategorizedProblem[] problems;
    public int problemsCount;
    public int[] lineEnds;
    public int[][] commentPositions;

    public RecordedParsingInformation(CategorizedProblem[] problems, int[] lineEnds, int[][] commentPositions) {
        this.problems = problems;
        this.lineEnds = lineEnds;
        this.commentPositions = commentPositions;
        this.problemsCount = problems != null ? problems.length : 0;
    }

    void updateRecordedParsingInformation(CompilationResult compilationResult) {
        if (compilationResult.problems != null) {
            this.problems = compilationResult.problems;
            this.problemsCount = this.problems.length;
        }
    }
}

