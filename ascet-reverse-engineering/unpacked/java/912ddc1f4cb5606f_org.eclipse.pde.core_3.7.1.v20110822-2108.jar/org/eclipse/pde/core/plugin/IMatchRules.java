/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core.plugin;

public interface IMatchRules {
    public static final int NONE = 0;
    public static final int EQUIVALENT = 1;
    public static final String RULE_EQUIVALENT = "equivalent";
    public static final int COMPATIBLE = 2;
    public static final String RULE_COMPATIBLE = "compatible";
    public static final int PERFECT = 3;
    public static final String RULE_PERFECT = "perfect";
    public static final int GREATER_OR_EQUAL = 4;
    public static final String RULE_GREATER_OR_EQUAL = "greaterOrEqual";
    public static final int PREFIX = 5;
    public static final String RULE_PREFIX = "prefix";
    public static final String[] RULE_NAME_TABLE = new String[]{"", "equivalent", "compatible", "perfect", "greaterOrEqual"};
}

