/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.INamingRequestor;
import org.eclipse.jdt.internal.core.InternalNamingConventions;

public final class NamingConventions {
    private static final char[] GETTER_BOOL_NAME = "is".toCharArray();
    private static final char[] GETTER_NAME = "get".toCharArray();
    private static final char[] SETTER_NAME = "set".toCharArray();
    public static final int VK_STATIC_FIELD = 1;
    public static final int VK_INSTANCE_FIELD = 2;
    public static final int VK_STATIC_FINAL_FIELD = 3;
    public static final int VK_PARAMETER = 4;
    public static final int VK_LOCAL = 5;
    public static final int BK_NAME = 1;
    public static final int BK_TYPE_NAME = 2;

    private static String[] convertCharsToString(char[][] c) {
        int length = c == null ? 0 : c.length;
        String[] s = new String[length];
        int i = 0;
        while (i < length) {
            s[i] = String.valueOf(c[i]);
            ++i;
        }
        return s;
    }

    private static char[][] convertStringToChars(String[] s) {
        int length = s == null ? 0 : s.length;
        char[][] c = new char[length][];
        int i = 0;
        while (i < length) {
            c[i] = s[i] == null ? CharOperation.NO_CHAR : s[i].toCharArray();
            ++i;
        }
        return c;
    }

    public static char[] removePrefixAndSuffixForArgumentName(IJavaProject javaProject, char[] argumentName) {
        return InternalNamingConventions.removeVariablePrefixAndSuffix(4, javaProject, argumentName);
    }

    public static String removePrefixAndSuffixForArgumentName(IJavaProject javaProject, String argumentName) {
        return String.valueOf(NamingConventions.removePrefixAndSuffixForArgumentName(javaProject, argumentName.toCharArray()));
    }

    public static char[] removePrefixAndSuffixForFieldName(IJavaProject javaProject, char[] fieldName, int modifiers) {
        return InternalNamingConventions.removeVariablePrefixAndSuffix(Flags.isStatic(modifiers) ? 1 : 2, javaProject, fieldName);
    }

    public static String removePrefixAndSuffixForFieldName(IJavaProject javaProject, String fieldName, int modifiers) {
        return String.valueOf(NamingConventions.removePrefixAndSuffixForFieldName(javaProject, fieldName.toCharArray(), modifiers));
    }

    public static char[] removePrefixAndSuffixForLocalVariableName(IJavaProject javaProject, char[] localName) {
        return InternalNamingConventions.removeVariablePrefixAndSuffix(5, javaProject, localName);
    }

    public static String removePrefixAndSuffixForLocalVariableName(IJavaProject javaProject, String localName) {
        return String.valueOf(NamingConventions.removePrefixAndSuffixForLocalVariableName(javaProject, localName.toCharArray()));
    }

    public static String getBaseName(int variableKind, String variableName, IJavaProject javaProject) {
        return String.valueOf(InternalNamingConventions.getBaseName(variableKind, javaProject, variableName.toCharArray(), true));
    }

    private static int getFieldVariableKind(int modifiers) {
        if (Flags.isStatic(modifiers)) {
            if (Flags.isFinal(modifiers)) {
                return 3;
            }
            return 1;
        }
        return 2;
    }

    private static char[] suggestAccessorName(IJavaProject project, char[] fieldName, int modifiers) {
        char[] name = InternalNamingConventions.getBaseName(NamingConventions.getFieldVariableKind(modifiers), project, fieldName, false);
        if (name.length > 0 && ScannerHelper.isLowerCase(name[0]) && (name.length == 1 || !ScannerHelper.isUpperCase(name[1]))) {
            name[0] = ScannerHelper.toUpperCase(name[0]);
        }
        return name;
    }

    public static char[][] suggestArgumentNames(IJavaProject javaProject, char[] packageName, char[] qualifiedTypeName, int dim, char[][] excludedNames) {
        if (qualifiedTypeName == null || qualifiedTypeName.length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[] typeName = CharOperation.lastSegment(qualifiedTypeName, '.');
        NamingRequestor requestor = new NamingRequestor();
        InternalNamingConventions.suggestVariableNames(4, 2, typeName, javaProject, dim, null, excludedNames, true, requestor);
        return requestor.getResults();
    }

    public static String[] suggestArgumentNames(IJavaProject javaProject, String packageName, String qualifiedTypeName, int dim, String[] excludedNames) {
        return NamingConventions.convertCharsToString(NamingConventions.suggestArgumentNames(javaProject, packageName.toCharArray(), qualifiedTypeName.toCharArray(), dim, NamingConventions.convertStringToChars(excludedNames)));
    }

    public static char[][] suggestFieldNames(IJavaProject javaProject, char[] packageName, char[] qualifiedTypeName, int dim, int modifiers, char[][] excludedNames) {
        if (qualifiedTypeName == null || qualifiedTypeName.length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[] typeName = CharOperation.lastSegment(qualifiedTypeName, '.');
        NamingRequestor requestor = new NamingRequestor();
        InternalNamingConventions.suggestVariableNames(Flags.isStatic(modifiers) ? 1 : 2, 2, typeName, javaProject, dim, null, excludedNames, true, requestor);
        return requestor.getResults();
    }

    public static String[] suggestFieldNames(IJavaProject javaProject, String packageName, String qualifiedTypeName, int dim, int modifiers, String[] excludedNames) {
        return NamingConventions.convertCharsToString(NamingConventions.suggestFieldNames(javaProject, packageName.toCharArray(), qualifiedTypeName.toCharArray(), dim, modifiers, NamingConventions.convertStringToChars(excludedNames)));
    }

    public static char[] suggestGetterName(IJavaProject project, char[] fieldName, int modifiers, boolean isBoolean, char[][] excludedNames) {
        if (isBoolean) {
            char[] name = InternalNamingConventions.getBaseName(NamingConventions.getFieldVariableKind(modifiers), project, fieldName, false);
            int prefixLen = GETTER_BOOL_NAME.length;
            if (CharOperation.prefixEquals(GETTER_BOOL_NAME, name) && name.length > prefixLen && ScannerHelper.isUpperCase(name[prefixLen])) {
                return NamingConventions.suggestNewName(name, excludedNames);
            }
            return NamingConventions.suggestNewName(CharOperation.concat(GETTER_BOOL_NAME, NamingConventions.suggestAccessorName(project, fieldName, modifiers)), excludedNames);
        }
        return NamingConventions.suggestNewName(CharOperation.concat(GETTER_NAME, NamingConventions.suggestAccessorName(project, fieldName, modifiers)), excludedNames);
    }

    public static String suggestGetterName(IJavaProject project, String fieldName, int modifiers, boolean isBoolean, String[] excludedNames) {
        return String.valueOf(NamingConventions.suggestGetterName(project, fieldName.toCharArray(), modifiers, isBoolean, NamingConventions.convertStringToChars(excludedNames)));
    }

    public static char[][] suggestLocalVariableNames(IJavaProject javaProject, char[] packageName, char[] qualifiedTypeName, int dim, char[][] excludedNames) {
        if (qualifiedTypeName == null || qualifiedTypeName.length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[] typeName = CharOperation.lastSegment(qualifiedTypeName, '.');
        NamingRequestor requestor = new NamingRequestor();
        InternalNamingConventions.suggestVariableNames(5, 2, typeName, javaProject, dim, null, excludedNames, true, requestor);
        return requestor.getResults();
    }

    public static String[] suggestLocalVariableNames(IJavaProject javaProject, String packageName, String qualifiedTypeName, int dim, String[] excludedNames) {
        return NamingConventions.convertCharsToString(NamingConventions.suggestLocalVariableNames(javaProject, packageName.toCharArray(), qualifiedTypeName.toCharArray(), dim, NamingConventions.convertStringToChars(excludedNames)));
    }

    private static char[] suggestNewName(char[] name, char[][] excludedNames) {
        if (excludedNames == null) {
            return name;
        }
        char[] newName = name;
        int count = 2;
        int i = 0;
        while (i < excludedNames.length) {
            if (CharOperation.equals(newName, excludedNames[i], false)) {
                newName = CharOperation.concat(name, String.valueOf(count++).toCharArray());
                i = 0;
                continue;
            }
            ++i;
        }
        return newName;
    }

    public static char[] suggestSetterName(IJavaProject project, char[] fieldName, int modifiers, boolean isBoolean, char[][] excludedNames) {
        if (isBoolean) {
            char[] name = InternalNamingConventions.getBaseName(NamingConventions.getFieldVariableKind(modifiers), project, fieldName, false);
            int prefixLen = GETTER_BOOL_NAME.length;
            if (CharOperation.prefixEquals(GETTER_BOOL_NAME, name) && name.length > prefixLen && ScannerHelper.isUpperCase(name[prefixLen])) {
                name = CharOperation.subarray(name, prefixLen, name.length);
                return NamingConventions.suggestNewName(CharOperation.concat(SETTER_NAME, NamingConventions.suggestAccessorName(project, name, modifiers)), excludedNames);
            }
            return NamingConventions.suggestNewName(CharOperation.concat(SETTER_NAME, NamingConventions.suggestAccessorName(project, fieldName, modifiers)), excludedNames);
        }
        return NamingConventions.suggestNewName(CharOperation.concat(SETTER_NAME, NamingConventions.suggestAccessorName(project, fieldName, modifiers)), excludedNames);
    }

    public static String suggestSetterName(IJavaProject project, String fieldName, int modifiers, boolean isBoolean, String[] excludedNames) {
        return String.valueOf(NamingConventions.suggestSetterName(project, fieldName.toCharArray(), modifiers, isBoolean, NamingConventions.convertStringToChars(excludedNames)));
    }

    public static String[] suggestVariableNames(int variableKind, int baseNameKind, String baseName, IJavaProject javaProject, int dim, String[] excluded, boolean evaluateDefault) {
        NamingRequestor requestor = new NamingRequestor();
        InternalNamingConventions.suggestVariableNames(variableKind, baseNameKind, baseName.toCharArray(), javaProject, dim, null, NamingConventions.convertStringToChars(excluded), evaluateDefault, requestor);
        return NamingConventions.convertCharsToString(requestor.getResults());
    }

    private NamingConventions() {
    }

    static class NamingRequestor
    implements INamingRequestor {
        private static final int SIZE = 10;
        private char[][] firstPrefixAndFirstSuffixResults = new char[10][];
        private int firstPrefixAndFirstSuffixResultsCount = 0;
        private char[][] firstPrefixAndSuffixResults = new char[10][];
        private int firstPrefixAndSuffixResultsCount = 0;
        private char[][] prefixAndFirstSuffixResults = new char[10][];
        private int prefixAndFirstSuffixResultsCount = 0;
        private char[][] prefixAndSuffixResults = new char[10][];
        private int prefixAndSuffixResultsCount = 0;
        private char[][] firstPrefixResults = new char[10][];
        private int firstPrefixResultsCount = 0;
        private char[][] prefixResults = new char[10][];
        private int prefixResultsCount = 0;
        private char[][] firstSuffixResults = new char[10][];
        private int firstSuffixResultsCount = 0;
        private char[][] suffixResults = new char[10][];
        private int suffixResultsCount = 0;
        private char[][] otherResults = new char[10][];
        private int otherResultsCount = 0;

        NamingRequestor() {
        }

        public void acceptNameWithoutPrefixAndSuffix(char[] name, int reusedCharacters) {
            int length = this.otherResults.length;
            if (length == this.otherResultsCount) {
                char[][] cArrayArray = new char[length * 2][];
                this.otherResults = cArrayArray;
                System.arraycopy(this.otherResults, 0, cArrayArray, 0, length);
            }
            this.otherResults[this.otherResultsCount++] = name;
        }

        public void acceptNameWithPrefix(char[] name, boolean isFirstPrefix, int reusedCharacters) {
            if (isFirstPrefix) {
                int length = this.firstPrefixResults.length;
                if (length == this.firstPrefixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.firstPrefixResults = cArrayArray;
                    System.arraycopy(this.firstPrefixResults, 0, cArrayArray, 0, length);
                }
                this.firstPrefixResults[this.firstPrefixResultsCount++] = name;
            } else {
                int length = this.prefixResults.length;
                if (length == this.prefixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.prefixResults = cArrayArray;
                    System.arraycopy(this.prefixResults, 0, cArrayArray, 0, length);
                }
                this.prefixResults[this.prefixResultsCount++] = name;
            }
        }

        public void acceptNameWithPrefixAndSuffix(char[] name, boolean isFirstPrefix, boolean isFirstSuffix, int reusedCharacters) {
            if (isFirstPrefix && isFirstSuffix) {
                int length = this.firstPrefixAndFirstSuffixResults.length;
                if (length == this.firstPrefixAndFirstSuffixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.firstPrefixAndFirstSuffixResults = cArrayArray;
                    System.arraycopy(this.firstPrefixAndFirstSuffixResults, 0, cArrayArray, 0, length);
                }
                this.firstPrefixAndFirstSuffixResults[this.firstPrefixAndFirstSuffixResultsCount++] = name;
            } else if (isFirstPrefix) {
                int length = this.firstPrefixAndSuffixResults.length;
                if (length == this.firstPrefixAndSuffixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.firstPrefixAndSuffixResults = cArrayArray;
                    System.arraycopy(this.firstPrefixAndSuffixResults, 0, cArrayArray, 0, length);
                }
                this.firstPrefixAndSuffixResults[this.firstPrefixAndSuffixResultsCount++] = name;
            } else if (isFirstSuffix) {
                int length = this.prefixAndFirstSuffixResults.length;
                if (length == this.prefixAndFirstSuffixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.prefixAndFirstSuffixResults = cArrayArray;
                    System.arraycopy(this.prefixAndFirstSuffixResults, 0, cArrayArray, 0, length);
                }
                this.prefixAndFirstSuffixResults[this.prefixAndFirstSuffixResultsCount++] = name;
            } else {
                int length = this.prefixAndSuffixResults.length;
                if (length == this.prefixAndSuffixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.prefixAndSuffixResults = cArrayArray;
                    System.arraycopy(this.prefixAndSuffixResults, 0, cArrayArray, 0, length);
                }
                this.prefixAndSuffixResults[this.prefixAndSuffixResultsCount++] = name;
            }
        }

        public void acceptNameWithSuffix(char[] name, boolean isFirstSuffix, int reusedCharacters) {
            if (isFirstSuffix) {
                int length = this.firstSuffixResults.length;
                if (length == this.firstSuffixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.firstSuffixResults = cArrayArray;
                    System.arraycopy(this.firstSuffixResults, 0, cArrayArray, 0, length);
                }
                this.firstSuffixResults[this.firstSuffixResultsCount++] = name;
            } else {
                int length = this.suffixResults.length;
                if (length == this.suffixResultsCount) {
                    char[][] cArrayArray = new char[length * 2][];
                    this.suffixResults = cArrayArray;
                    System.arraycopy(this.suffixResults, 0, cArrayArray, 0, length);
                }
                this.suffixResults[this.suffixResultsCount++] = name;
            }
        }

        public char[][] getResults() {
            int count = this.firstPrefixAndFirstSuffixResultsCount + this.firstPrefixAndSuffixResultsCount + this.prefixAndFirstSuffixResultsCount + this.prefixAndSuffixResultsCount + this.firstPrefixResultsCount + this.prefixResultsCount + this.firstSuffixResultsCount + this.suffixResultsCount + this.otherResultsCount;
            char[][] results = new char[count][];
            int index = 0;
            System.arraycopy(this.firstPrefixAndFirstSuffixResults, 0, results, index, this.firstPrefixAndFirstSuffixResultsCount);
            System.arraycopy(this.firstPrefixAndSuffixResults, 0, results, index += this.firstPrefixAndFirstSuffixResultsCount, this.firstPrefixAndSuffixResultsCount);
            System.arraycopy(this.prefixAndFirstSuffixResults, 0, results, index += this.firstPrefixAndSuffixResultsCount, this.prefixAndFirstSuffixResultsCount);
            System.arraycopy(this.prefixAndSuffixResults, 0, results, index += this.prefixAndFirstSuffixResultsCount, this.prefixAndSuffixResultsCount);
            System.arraycopy(this.firstPrefixResults, 0, results, index += this.prefixAndSuffixResultsCount, this.firstPrefixResultsCount);
            System.arraycopy(this.prefixResults, 0, results, index += this.firstPrefixResultsCount, this.prefixResultsCount);
            System.arraycopy(this.firstSuffixResults, 0, results, index += this.prefixResultsCount, this.firstSuffixResultsCount);
            System.arraycopy(this.suffixResults, 0, results, index += this.firstSuffixResultsCount, this.suffixResultsCount);
            System.arraycopy(this.otherResults, 0, results, index += this.suffixResultsCount, this.otherResultsCount);
            return results;
        }
    }
}

