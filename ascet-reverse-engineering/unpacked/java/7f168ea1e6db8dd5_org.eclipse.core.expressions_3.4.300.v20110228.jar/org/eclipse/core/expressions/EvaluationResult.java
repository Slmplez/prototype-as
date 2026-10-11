/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.expressions;

import org.eclipse.core.runtime.Assert;

public class EvaluationResult {
    private int fValue;
    private static final int FALSE_VALUE = 0;
    private static final int TRUE_VALUE = 1;
    private static final int NOT_LOADED_VALUE = 2;
    public static final EvaluationResult FALSE = new EvaluationResult(0);
    public static final EvaluationResult TRUE = new EvaluationResult(1);
    public static final EvaluationResult NOT_LOADED = new EvaluationResult(2);
    private static final EvaluationResult[][] AND = new EvaluationResult[][]{{FALSE, FALSE, FALSE}, {FALSE, TRUE, NOT_LOADED}, {FALSE, NOT_LOADED, NOT_LOADED}};
    private static final EvaluationResult[][] OR = new EvaluationResult[][]{{FALSE, TRUE, NOT_LOADED}, {TRUE, TRUE, TRUE}, {NOT_LOADED, TRUE, NOT_LOADED}};
    private static final EvaluationResult[] NOT = new EvaluationResult[]{TRUE, FALSE, NOT_LOADED};

    private EvaluationResult(int value) {
        this.fValue = value;
    }

    public EvaluationResult and(EvaluationResult other) {
        return AND[this.fValue][other.fValue];
    }

    public EvaluationResult or(EvaluationResult other) {
        return OR[this.fValue][other.fValue];
    }

    public EvaluationResult not() {
        return NOT[this.fValue];
    }

    public static EvaluationResult valueOf(boolean b) {
        return b ? TRUE : FALSE;
    }

    public static EvaluationResult valueOf(Boolean b) {
        return b != false ? TRUE : FALSE;
    }

    public String toString() {
        switch (this.fValue) {
            case 0: {
                return "false";
            }
            case 1: {
                return "true";
            }
            case 2: {
                return "not_loaded";
            }
        }
        Assert.isTrue((boolean)false);
        return null;
    }
}

