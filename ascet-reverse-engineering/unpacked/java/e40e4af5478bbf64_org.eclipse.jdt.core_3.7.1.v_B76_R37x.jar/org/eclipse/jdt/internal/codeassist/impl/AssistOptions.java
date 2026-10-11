/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;

public class AssistOptions {
    public static final String OPTION_PerformVisibilityCheck = "org.eclipse.jdt.core.codeComplete.visibilityCheck";
    public static final String OPTION_PerformDeprecationCheck = "org.eclipse.jdt.core.codeComplete.deprecationCheck";
    public static final String OPTION_ForceImplicitQualification = "org.eclipse.jdt.core.codeComplete.forceImplicitQualification";
    public static final String OPTION_FieldPrefixes = "org.eclipse.jdt.core.codeComplete.fieldPrefixes";
    public static final String OPTION_StaticFieldPrefixes = "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes";
    public static final String OPTION_StaticFinalFieldPrefixes = "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes";
    public static final String OPTION_LocalPrefixes = "org.eclipse.jdt.core.codeComplete.localPrefixes";
    public static final String OPTION_ArgumentPrefixes = "org.eclipse.jdt.core.codeComplete.argumentPrefixes";
    public static final String OPTION_FieldSuffixes = "org.eclipse.jdt.core.codeComplete.fieldSuffixes";
    public static final String OPTION_StaticFieldSuffixes = "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes";
    public static final String OPTION_StaticFinalFieldSuffixes = "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes";
    public static final String OPTION_LocalSuffixes = "org.eclipse.jdt.core.codeComplete.localSuffixes";
    public static final String OPTION_ArgumentSuffixes = "org.eclipse.jdt.core.codeComplete.argumentSuffixes";
    public static final String OPTION_PerformForbiddenReferenceCheck = "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck";
    public static final String OPTION_PerformDiscouragedReferenceCheck = "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck";
    public static final String OPTION_CamelCaseMatch = "org.eclipse.jdt.core.codeComplete.camelCaseMatch";
    public static final String OPTION_SuggestStaticImports = "org.eclipse.jdt.core.codeComplete.suggestStaticImports";
    public static final String ENABLED = "enabled";
    public static final String DISABLED = "disabled";
    public boolean checkVisibility = false;
    public boolean checkDeprecation = false;
    public boolean checkForbiddenReference = false;
    public boolean checkDiscouragedReference = false;
    public boolean forceImplicitQualification = false;
    public boolean camelCaseMatch = true;
    public boolean suggestStaticImport = true;
    public char[][] fieldPrefixes = null;
    public char[][] staticFieldPrefixes = null;
    public char[][] staticFinalFieldPrefixes = null;
    public char[][] localPrefixes = null;
    public char[][] argumentPrefixes = null;
    public char[][] fieldSuffixes = null;
    public char[][] staticFieldSuffixes = null;
    public char[][] staticFinalFieldSuffixes = null;
    public char[][] localSuffixes = null;
    public char[][] argumentSuffixes = null;

    public AssistOptions() {
    }

    public AssistOptions(Map settings) {
        if (settings == null) {
            return;
        }
        this.set(settings);
    }

    public void set(Map optionsMap) {
        String stringValue;
        Object optionValue = optionsMap.get(OPTION_PerformVisibilityCheck);
        if (optionValue != null) {
            if (ENABLED.equals(optionValue)) {
                this.checkVisibility = true;
            } else if (DISABLED.equals(optionValue)) {
                this.checkVisibility = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ForceImplicitQualification)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.forceImplicitQualification = true;
            } else if (DISABLED.equals(optionValue)) {
                this.forceImplicitQualification = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_FieldPrefixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.fieldPrefixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_StaticFieldPrefixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.staticFieldPrefixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_StaticFinalFieldPrefixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.staticFinalFieldPrefixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_LocalPrefixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.localPrefixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_ArgumentPrefixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.argumentPrefixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_FieldSuffixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.fieldSuffixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_StaticFieldSuffixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.staticFieldSuffixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_StaticFinalFieldSuffixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.staticFinalFieldSuffixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_LocalSuffixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.localSuffixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_ArgumentSuffixes)) != null && optionValue instanceof String) {
            stringValue = (String)optionValue;
            this.argumentSuffixes = (char[][])(stringValue.length() > 0 ? this.splitAndTrimOn(',', stringValue.toCharArray()) : null);
        }
        if ((optionValue = optionsMap.get(OPTION_PerformForbiddenReferenceCheck)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.checkForbiddenReference = true;
            } else if (DISABLED.equals(optionValue)) {
                this.checkForbiddenReference = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_PerformDiscouragedReferenceCheck)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.checkDiscouragedReference = true;
            } else if (DISABLED.equals(optionValue)) {
                this.checkDiscouragedReference = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_CamelCaseMatch)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.camelCaseMatch = true;
            } else if (DISABLED.equals(optionValue)) {
                this.camelCaseMatch = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_PerformDeprecationCheck)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.checkDeprecation = true;
            } else if (DISABLED.equals(optionValue)) {
                this.checkDeprecation = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_SuggestStaticImports)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.suggestStaticImport = true;
            } else if (DISABLED.equals(optionValue)) {
                this.suggestStaticImport = false;
            }
        }
    }

    private char[][] splitAndTrimOn(char divider, char[] arrayToSplit) {
        Object result = CharOperation.splitAndTrimOn(',', arrayToSplit);
        int length = ((char[][])result).length;
        int resultCount = 0;
        int i = 0;
        while (i < length) {
            if (result[i].length != 0) {
                result[resultCount++] = result[i];
            }
            ++i;
        }
        if (resultCount != length) {
            char[][] cArray = result;
            char[][] cArrayArray = new char[resultCount][];
            result = cArrayArray;
            System.arraycopy(cArray, 0, cArrayArray, 0, resultCount);
        }
        return result;
    }
}

