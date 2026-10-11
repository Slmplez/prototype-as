/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CategorizedProblem;

public class EvaluationResult {
    static final CategorizedProblem[] NO_PROBLEMS = new CategorizedProblem[0];
    char[] evaluationID;
    int evaluationType;
    CategorizedProblem[] problems;
    char[] displayString;
    char[] typeName;
    public static final int T_VARIABLE = 1;
    public static final int T_CODE_SNIPPET = 2;
    public static final int T_IMPORT = 3;
    public static final int T_PACKAGE = 4;
    public static final int T_INTERNAL = 5;

    public EvaluationResult(char[] evaluationID, int evaluationType, char[] displayString, char[] typeName) {
        this.evaluationID = evaluationID;
        this.evaluationType = evaluationType;
        this.displayString = displayString;
        this.typeName = typeName;
        this.problems = NO_PROBLEMS;
    }

    public EvaluationResult(char[] evaluationID, int evaluationType, CategorizedProblem[] problems) {
        this.evaluationID = evaluationID;
        this.evaluationType = evaluationType;
        this.problems = problems;
    }

    void addProblem(CategorizedProblem problem) {
        CategorizedProblem[] existingProblems = this.problems;
        int existingLength = existingProblems.length;
        this.problems = new CategorizedProblem[existingLength + 1];
        System.arraycopy(existingProblems, 0, this.problems, 0, existingLength);
        this.problems[existingLength] = problem;
    }

    public char[] getEvaluationID() {
        return this.evaluationID;
    }

    public int getEvaluationType() {
        return this.evaluationType;
    }

    public CategorizedProblem[] getProblems() {
        return this.problems;
    }

    public Object getValue() {
        return null;
    }

    public char[] getValueDisplayString() {
        return this.displayString;
    }

    public char[] getValueTypeName() {
        return this.typeName;
    }

    public boolean hasErrors() {
        if (this.problems == null) {
            return false;
        }
        int i = 0;
        while (i < this.problems.length) {
            if (this.problems[i].isError()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean hasProblems() {
        return this.problems != null && this.problems.length != 0;
    }

    public boolean hasValue() {
        return this.displayString != null;
    }

    public boolean hasWarnings() {
        if (this.problems == null) {
            return false;
        }
        int i = 0;
        while (i < this.problems.length) {
            if (this.problems[i].isWarning()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        switch (this.evaluationType) {
            case 2: {
                buffer.append("Code snippet");
                break;
            }
            case 3: {
                buffer.append("Import");
                break;
            }
            case 5: {
                buffer.append("Internal problem");
                break;
            }
            case 4: {
                buffer.append("Package");
                break;
            }
            case 1: {
                buffer.append("Global variable");
            }
        }
        buffer.append(": ");
        buffer.append(this.evaluationID == null ? "<unknown>".toCharArray() : this.evaluationID);
        buffer.append("\n");
        if (this.hasProblems()) {
            buffer.append("Problems:\n");
            int i = 0;
            while (i < this.problems.length) {
                buffer.append(this.problems[i].toString());
                ++i;
            }
        } else if (this.hasValue()) {
            buffer.append("(");
            buffer.append(this.typeName);
            buffer.append(") ");
            buffer.append(this.displayString);
        } else {
            buffer.append("(No explicit return value)");
        }
        return buffer.toString();
    }
}

