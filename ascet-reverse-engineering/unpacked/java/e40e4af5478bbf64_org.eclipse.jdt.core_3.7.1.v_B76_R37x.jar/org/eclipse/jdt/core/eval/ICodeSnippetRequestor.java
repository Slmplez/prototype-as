/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 */
package org.eclipse.jdt.core.eval;

import org.eclipse.core.resources.IMarker;
import org.eclipse.jdt.internal.eval.EvaluationConstants;

public interface ICodeSnippetRequestor {
    public static final String LOCAL_VAR_PREFIX = new String(EvaluationConstants.LOCAL_VAR_PREFIX);
    public static final String DELEGATE_THIS = new String(EvaluationConstants.DELEGATE_THIS);
    public static final String RUN_METHOD = "run";
    public static final String RESULT_VALUE_FIELD = "resultValue";
    public static final String RESULT_TYPE_FIELD = "resultType";
    public static final int VARIABLE = 1;
    public static final int CODE_SNIPPET = 2;
    public static final int IMPORT = 3;
    public static final int PACKAGE = 4;
    public static final int INTERNAL = 5;

    public boolean acceptClassFiles(byte[][] var1, String[][] var2, String var3);

    public void acceptProblem(IMarker var1, String var2, int var3);
}

