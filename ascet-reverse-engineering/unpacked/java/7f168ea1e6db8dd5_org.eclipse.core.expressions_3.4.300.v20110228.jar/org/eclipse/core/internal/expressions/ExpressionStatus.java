/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.internal.expressions.ExpressionPlugin;
import org.eclipse.core.runtime.Status;

public class ExpressionStatus
extends Status {
    public static final int VARIABLE_IS_NOT_A_COLLECTION = 3;
    public static final int VARIABLE_IS_NOT_A_LIST = 4;
    public static final int VALUE_IS_NOT_AN_INTEGER = 5;
    public static final int MISSING_ATTRIBUTE = 50;
    public static final int WRONG_ATTRIBUTE_VALUE = 51;
    public static final int MISSING_EXPRESSION = 52;
    public static final int VARAIBLE_POOL_WRONG_NUMBER_OF_ARGUMENTS = 100;
    public static final int VARAIBLE_POOL_ARGUMENT_IS_NOT_A_STRING = 101;
    public static final int TYPE_EXTENDER_PLUGIN_NOT_LOADED = 200;
    public static final int TYPE_EXTENDER_UNKOWN_METHOD = 201;
    public static final int TYPE_EXTENDER_INCORRECT_TYPE = 202;
    public static final int TEST_EXPRESSION_NOT_A_BOOLEAN = 203;
    public static final int NO_NAMESPACE_PROVIDED = 300;
    public static final int VARIABLE_NOT_DEFINED = 301;
    public static final int STRING_NOT_CORRECT_ESCAPED = 302;
    public static final int STRING_NOT_TERMINATED = 303;

    public ExpressionStatus(int errorCode, String message) {
        this(errorCode, message, null);
    }

    public ExpressionStatus(int errorCode, String message, Throwable exception) {
        super(4, ExpressionPlugin.getPluginId(), errorCode, message, exception);
    }
}

