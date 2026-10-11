/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.eclipse.jdt.internal.core.util.Util;

public class MethodPattern
extends JavaSearchPattern {
    protected boolean findDeclarations = true;
    protected boolean findReferences = true;
    public char[] selector;
    public char[] declaringQualification;
    public char[] declaringSimpleName;
    public char[] returnQualification;
    public char[] returnSimpleName;
    public char[][] parameterQualifications;
    public char[][] parameterSimpleNames;
    public int parameterCount;
    public boolean varargs = false;
    protected IType declaringType;
    char[][] returnTypeSignatures;
    char[][][] parametersTypeSignatures;
    char[][][][] parametersTypeArguments;
    boolean methodParameters = false;
    char[][] methodArguments;
    protected static char[][] REF_CATEGORIES = new char[][]{METHOD_REF};
    protected static char[][] REF_AND_DECL_CATEGORIES = new char[][]{METHOD_REF, METHOD_DECL};
    protected static char[][] DECL_CATEGORIES = new char[][]{METHOD_DECL};
    public static final int FINE_GRAIN_MASK = 0xF000000;

    public static char[] createIndexKey(char[] selector, int argCount) {
        char[] countChars = argCount < 10 ? COUNTS[argCount] : ("/" + String.valueOf(argCount)).toCharArray();
        return CharOperation.concat(selector, countChars);
    }

    MethodPattern(int matchRule) {
        super(128, matchRule);
    }

    public MethodPattern(char[] selector, char[] declaringQualification, char[] declaringSimpleName, char[] returnQualification, char[] returnSimpleName, char[][] parameterQualifications, char[][] parameterSimpleNames, IType declaringType, int limitTo, int matchRule) {
        this(matchRule);
        this.fineGrain = limitTo & 0xF000000;
        if (this.fineGrain == 0) {
            switch (limitTo & 0xF) {
                case 0: {
                    this.findReferences = false;
                    break;
                }
                case 2: {
                    this.findDeclarations = false;
                    break;
                }
            }
        } else {
            this.findDeclarations = false;
        }
        this.selector = this.isCaseSensitive || this.isCamelCase ? selector : CharOperation.toLowerCase(selector);
        this.declaringQualification = this.isCaseSensitive ? declaringQualification : CharOperation.toLowerCase(declaringQualification);
        this.declaringSimpleName = this.isCaseSensitive ? declaringSimpleName : CharOperation.toLowerCase(declaringSimpleName);
        this.returnQualification = this.isCaseSensitive ? returnQualification : CharOperation.toLowerCase(returnQualification);
        char[] cArray = this.returnSimpleName = this.isCaseSensitive ? returnSimpleName : CharOperation.toLowerCase(returnSimpleName);
        if (parameterSimpleNames != null) {
            this.parameterCount = parameterSimpleNames.length;
            this.parameterQualifications = new char[this.parameterCount][];
            this.parameterSimpleNames = new char[this.parameterCount][];
            int i = 0;
            while (i < this.parameterCount) {
                this.parameterQualifications[i] = this.isCaseSensitive ? parameterQualifications[i] : CharOperation.toLowerCase(parameterQualifications[i]);
                this.parameterSimpleNames[i] = this.isCaseSensitive ? parameterSimpleNames[i] : CharOperation.toLowerCase(parameterSimpleNames[i]);
                ++i;
            }
        } else {
            this.parameterCount = -1;
        }
        this.declaringType = declaringType;
        this.mustResolve = this.mustResolve();
    }

    public MethodPattern(char[] selector, char[] declaringQualification, char[] declaringSimpleName, char[] returnQualification, char[] returnSimpleName, String returnSignature, char[][] parameterQualifications, char[][] parameterSimpleNames, String[] parameterSignatures, IMethod method, int limitTo, int matchRule) {
        this(selector, declaringQualification, declaringSimpleName, returnQualification, returnSimpleName, parameterQualifications, parameterSimpleNames, method.getDeclaringType(), limitTo, matchRule);
        int length;
        try {
            this.varargs = (method.getFlags() & 0x80) != 0;
        }
        catch (JavaModelException javaModelException) {}
        String genericDeclaringTypeSignature = null;
        if (method.isResolved()) {
            String key = method.getKey();
            BindingKey bindingKey = new BindingKey(key);
            if (bindingKey.isParameterizedType() && (genericDeclaringTypeSignature = Util.getDeclaringTypeSignature(key)) != null) {
                this.typeSignatures = Util.splitTypeLevelsSignature(genericDeclaringTypeSignature);
                this.setTypeArguments(Util.getAllTypeArguments(this.typeSignatures));
            }
        } else {
            this.methodParameters = true;
            this.storeTypeSignaturesAndArguments(this.declaringType);
        }
        if (returnSignature != null) {
            this.returnTypeSignatures = Util.splitTypeLevelsSignature(returnSignature);
        }
        if (parameterSignatures != null && (length = parameterSignatures.length) > 0) {
            this.parametersTypeSignatures = new char[length][][];
            this.parametersTypeArguments = new char[length][][][];
            int i = 0;
            while (i < length) {
                this.parametersTypeSignatures[i] = Util.splitTypeLevelsSignature(parameterSignatures[i]);
                this.parametersTypeArguments[i] = Util.getAllTypeArguments(this.parametersTypeSignatures[i]);
                ++i;
            }
        }
        this.methodArguments = this.extractMethodArguments(method);
        if (this.hasMethodArguments()) {
            this.mustResolve = true;
        }
    }

    public MethodPattern(char[] selector, char[] declaringQualification, char[] declaringSimpleName, String declaringSignature, char[] returnQualification, char[] returnSimpleName, String returnSignature, char[][] parameterQualifications, char[][] parameterSimpleNames, String[] parameterSignatures, char[][] arguments, int limitTo, int matchRule) {
        this(selector, declaringQualification, declaringSimpleName, returnQualification, returnSimpleName, parameterQualifications, parameterSimpleNames, null, limitTo, matchRule);
        int length;
        if (declaringSignature != null) {
            this.typeSignatures = Util.splitTypeLevelsSignature(declaringSignature);
            this.setTypeArguments(Util.getAllTypeArguments(this.typeSignatures));
        }
        if (returnSignature != null) {
            this.returnTypeSignatures = Util.splitTypeLevelsSignature(returnSignature);
        }
        if (parameterSignatures != null && (length = parameterSignatures.length) > 0) {
            this.parametersTypeSignatures = new char[length][][];
            this.parametersTypeArguments = new char[length][][][];
            int i = 0;
            while (i < length) {
                this.parametersTypeSignatures[i] = Util.splitTypeLevelsSignature(parameterSignatures[i]);
                this.parametersTypeArguments[i] = Util.getAllTypeArguments(this.parametersTypeSignatures[i]);
                ++i;
            }
        }
        this.methodArguments = arguments;
        if (this.hasMethodArguments()) {
            this.mustResolve = true;
        }
    }

    public void decodeIndexKey(char[] key) {
        int last = key.length - 1;
        this.parameterCount = 0;
        this.selector = null;
        int power = 1;
        int i = last;
        while (i >= 0) {
            if (key[i] == '/') {
                this.selector = new char[i];
                System.arraycopy(key, 0, this.selector, 0, i);
                break;
            }
            this.parameterCount = i == last ? key[i] - 48 : (this.parameterCount += (power *= 10) * (key[i] - 48));
            --i;
        }
    }

    public SearchPattern getBlankPattern() {
        return new MethodPattern(8);
    }

    public char[][] getIndexCategories() {
        if (this.findReferences) {
            return this.findDeclarations ? REF_AND_DECL_CATEGORIES : REF_CATEGORIES;
        }
        if (this.findDeclarations) {
            return DECL_CATEGORIES;
        }
        return CharOperation.NO_CHAR_CHAR;
    }

    boolean hasMethodArguments() {
        return this.methodArguments != null && this.methodArguments.length > 0;
    }

    boolean hasMethodParameters() {
        return this.methodParameters;
    }

    public boolean isPolymorphicSearch() {
        return this.findReferences;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        MethodPattern pattern = (MethodPattern)decodedPattern;
        return (this.parameterCount == pattern.parameterCount || this.parameterCount == -1 || this.varargs) && this.matchesName(this.selector, pattern.selector);
    }

    protected boolean mustResolve() {
        if (this.declaringSimpleName != null || this.declaringQualification != null) {
            return true;
        }
        if (this.returnSimpleName != null || this.returnQualification != null) {
            return true;
        }
        if (this.parameterSimpleNames != null) {
            int i = 0;
            int max = this.parameterSimpleNames.length;
            while (i < max) {
                if (this.parameterQualifications[i] != null) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        char[] key = this.selector;
        int matchRule = this.getMatchRule();
        switch (this.getMatchMode()) {
            case 0: {
                if (this.selector != null && this.parameterCount >= 0 && !this.varargs) {
                    key = MethodPattern.createIndexKey(this.selector, this.parameterCount);
                    break;
                }
                matchRule &= 0xFFFFFFFF;
                matchRule |= 1;
                break;
            }
            case 1: {
                break;
            }
            case 2: {
                if (this.parameterCount >= 0 && !this.varargs) {
                    key = MethodPattern.createIndexKey(this.selector == null ? ONE_STAR : this.selector, this.parameterCount);
                    break;
                }
                if (this.selector == null || this.selector[this.selector.length - 1] == '*') break;
                key = CharOperation.concat(this.selector, ONE_STAR, '/');
                break;
            }
            case 4: {
                break;
            }
        }
        return index.query(this.getIndexCategories(), key, matchRule);
    }

    protected StringBuffer print(StringBuffer output) {
        if (this.findDeclarations) {
            output.append(this.findReferences ? "MethodCombinedPattern: " : "MethodDeclarationPattern: ");
        } else {
            output.append("MethodReferencePattern: ");
        }
        if (this.declaringQualification != null) {
            output.append(this.declaringQualification).append('.');
        }
        if (this.declaringSimpleName != null) {
            output.append(this.declaringSimpleName).append('.');
        } else if (this.declaringQualification != null) {
            output.append("*.");
        }
        if (this.selector != null) {
            output.append(this.selector);
        } else {
            output.append("*");
        }
        output.append('(');
        if (this.parameterSimpleNames == null) {
            output.append("...");
        } else {
            int i = 0;
            int max = this.parameterSimpleNames.length;
            while (i < max) {
                if (i > 0) {
                    output.append(", ");
                }
                if (this.parameterQualifications[i] != null) {
                    output.append(this.parameterQualifications[i]).append('.');
                }
                if (this.parameterSimpleNames[i] == null) {
                    output.append('*');
                } else {
                    output.append(this.parameterSimpleNames[i]);
                }
                ++i;
            }
        }
        output.append(')');
        if (this.returnQualification != null) {
            output.append(" --> ").append(this.returnQualification).append('.');
        } else if (this.returnSimpleName != null) {
            output.append(" --> ");
        }
        if (this.returnSimpleName != null) {
            output.append(this.returnSimpleName);
        } else if (this.returnQualification != null) {
            output.append("*");
        }
        return super.print(output);
    }
}

