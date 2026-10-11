/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

public interface IExpressionConstants {
    public static final String KEYWORD_ALL = "all";
    public static final String KEYWORD_BOOLEAN = "boolean";
    public static final String KEYWORD_CLASS = "class";
    public static final String KEYWORD_EXISTS = "exists";
    public static final String KEYWORD_FALSE = "false";
    public static final String KEYWORD_FILTER = "filter";
    public static final String KEYWORD_NULL = "null";
    public static final String KEYWORD_RANGE = "range";
    public static final String KEYWORD_TRUE = "true";
    public static final String KEYWORD_COLLECT = "collect";
    public static final String KEYWORD_FIRST = "first";
    public static final String KEYWORD_FLATTEN = "flatten";
    public static final String KEYWORD_INTERSECT = "intersect";
    public static final String KEYWORD_IQUERY = "iquery";
    public static final String KEYWORD_LATEST = "latest";
    public static final String KEYWORD_LIMIT = "limit";
    public static final String KEYWORD_LOCALIZED_KEYS = "localizedKeys";
    public static final String KEYWORD_LOCALIZED_MAP = "localizedMap";
    public static final String KEYWORD_LOCALIZED_PROPERTY = "localizedProperty";
    public static final String KEYWORD_SATISFIES_ALL = "satisfiesAll";
    public static final String KEYWORD_SATISFIES_ANY = "satisfiesAny";
    public static final String KEYWORD_SELECT = "select";
    public static final String KEYWORD_SET = "set";
    public static final String KEYWORD_TRAVERSE = "traverse";
    public static final String KEYWORD_UNION = "union";
    public static final String KEYWORD_UNIQUE = "unique";
    public static final String KEYWORD_VERSION = "version";
    public static final String OPERATOR_AND = "&&";
    public static final String OPERATOR_AT = "[]";
    public static final String OPERATOR_EQUALS = "==";
    public static final String OPERATOR_GT = ">";
    public static final String OPERATOR_GT_EQUAL = ">=";
    public static final String OPERATOR_LT = "<";
    public static final String OPERATOR_LT_EQUAL = "<=";
    public static final String OPERATOR_MATCHES = "~=";
    public static final String OPERATOR_MEMBER = ".";
    public static final String OPERATOR_NOT = "!";
    public static final String OPERATOR_NOT_EQUALS = "!=";
    public static final String OPERATOR_OR = "||";
    public static final String OPERATOR_PARAMETER = "$";
    public static final String OPERATOR_ARRAY = "[]";
    public static final String OPERATOR_ASSIGN = "=";
    public static final String OPERATOR_EACH = "_";
    public static final String OPERATOR_ELSE = ":";
    public static final String OPERATOR_IF = "?";
    public static final int PRIORITY_LITERAL = 1;
    public static final int PRIORITY_VARIABLE = 1;
    public static final int PRIORITY_FUNCTION = 2;
    public static final int PRIORITY_MEMBER = 3;
    public static final int PRIORITY_COLLECTION = 4;
    public static final int PRIORITY_NOT = 5;
    public static final int PRIORITY_BINARY = 6;
    public static final int PRIORITY_AND = 7;
    public static final int PRIORITY_OR = 8;
    public static final int PRIORITY_CONDITION = 9;
    public static final int PRIORITY_ASSIGNMENT = 10;
    public static final int PRIORITY_LAMBDA = 11;
    public static final int PRIORITY_COMMA = 12;
    public static final int PRIORITY_MAX = 20;
    public static final String VARIABLE_EVERYTHING = "everything";
    public static final String VARIABLE_THIS = "this";
}

