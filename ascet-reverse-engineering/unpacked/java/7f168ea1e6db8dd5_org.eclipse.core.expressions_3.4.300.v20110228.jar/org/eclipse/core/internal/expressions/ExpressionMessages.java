/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.osgi.util.NLS;

public final class ExpressionMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.expressions.ExpressionMessages";
    public static String Expression_attribute_missing;
    public static String Expression_attribute_invalid_value;
    public static String Expression_variable_not_a_collection;
    public static String Expression_variable_not_a_list;
    public static String Expression_variable_not_iterable;
    public static String Expression_variable_not_countable;
    public static String Expression_unknown_element;
    public static String Missing_Expression;
    public static String Expression_string_not_correctly_escaped;
    public static String Expression_string_not_terminated;
    public static String TypeExtender_unknownMethod;
    public static String TypeExtender_incorrectType;
    public static String TestExpression_no_name_space;
    public static String WithExpression_variable_not_defined;
    public static String ResolveExpression_variable_not_defined;
    public static String PropertyTesterDescriptor_no_namespace;
    public static String PropertyTesterDescritpri_no_properties;
    public static String ElementHandler_unsupported_element;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }

    private ExpressionMessages() {
    }
}

