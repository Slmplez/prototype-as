/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;

public interface EvaluationConstants {
    public static final char[] CODE_SNIPPET_CLASS_NAME_PREFIX = "CodeSnippet_".toCharArray();
    public static final char[] GLOBAL_VARS_CLASS_NAME_PREFIX = "GlobalVariables_".toCharArray();
    public static final char[] PACKAGE_NAME = "org.eclipse.jdt.internal.eval.target".toCharArray();
    public static final char[] CODE_SNIPPET_NAME = "org/eclipse/jdt/internal/eval/target/CodeSnippet".toCharArray();
    public static final char[] ROOT_CLASS_NAME = "CodeSnippet".toCharArray();
    public static final String ROOT_FULL_CLASS_NAME = String.valueOf(new String(PACKAGE_NAME)) + "." + new String(ROOT_CLASS_NAME);
    public static final char[] SETRESULT_SELECTOR = "setResult".toCharArray();
    public static final char[] SETRESULT_ARGUMENTS = "Ljava.lang.Object;Ljava.lang.Class;".toCharArray();
    public static final char[][] ROOT_COMPOUND_NAME = CharOperation.arrayConcat(CharOperation.splitOn('.', PACKAGE_NAME), ROOT_CLASS_NAME);
    public static final String RUN_METHOD = "run";
    public static final String RESULT_VALUE_FIELD = "resultValue";
    public static final String RESULT_TYPE_FIELD = "resultType";
    public static final char[] LOCAL_VAR_PREFIX = "val$".toCharArray();
    public static final char[] DELEGATE_THIS = "val$this".toCharArray();
}

