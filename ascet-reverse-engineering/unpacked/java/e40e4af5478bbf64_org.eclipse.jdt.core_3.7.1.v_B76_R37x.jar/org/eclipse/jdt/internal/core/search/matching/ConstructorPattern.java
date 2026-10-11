/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.eclipse.jdt.internal.core.util.Util;

public class ConstructorPattern
extends JavaSearchPattern {
    protected boolean findDeclarations = true;
    protected boolean findReferences = true;
    public char[] declaringQualification;
    public char[] declaringSimpleName;
    public char[][] parameterQualifications;
    public char[][] parameterSimpleNames;
    public int parameterCount;
    public boolean varargs = false;
    char[][][] parametersTypeSignatures;
    char[][][][] parametersTypeArguments;
    boolean constructorParameters = false;
    char[][] constructorArguments;
    protected static char[][] REF_CATEGORIES = new char[][]{CONSTRUCTOR_REF};
    protected static char[][] REF_AND_DECL_CATEGORIES = new char[][]{CONSTRUCTOR_REF, CONSTRUCTOR_DECL};
    protected static char[][] DECL_CATEGORIES = new char[][]{CONSTRUCTOR_DECL};
    public static final int FINE_GRAIN_MASK = 0xF000000;

    public static char[] createDeclarationIndexKey(char[] typeName, int argCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int modifiers, char[] packageName, int typeModifiers, int extraFlags) {
        char[] countChars;
        char[] parameterTypesChars = null;
        char[] parameterNamesChars = null;
        if (argCount < 0) {
            countChars = DEFAULT_CONSTRUCTOR;
        } else {
            char[] cArray = countChars = argCount < 10 ? COUNTS[argCount] : ("/" + String.valueOf(argCount)).toCharArray();
            if (argCount > 0) {
                if (signature == null) {
                    if (parameterTypes != null && parameterTypes.length == argCount) {
                        char[][] parameterTypeErasures = new char[argCount][];
                        int i = 0;
                        while (i < parameterTypes.length) {
                            parameterTypeErasures[i] = ConstructorPattern.getTypeErasure(parameterTypes[i]);
                            ++i;
                        }
                        parameterTypesChars = CharOperation.concatWith(parameterTypeErasures, ',');
                    }
                } else {
                    extraFlags |= 0x10;
                }
                if (parameterNames != null && parameterNames.length == argCount) {
                    parameterNamesChars = CharOperation.concatWith(parameterNames, ',');
                }
            }
        }
        boolean isMemberType = (extraFlags & 2) != 0;
        int typeNameLength = typeName == null ? 0 : typeName.length;
        int packageNameLength = packageName == null ? 0 : packageName.length;
        int countCharsLength = countChars.length;
        int parameterTypesLength = signature == null ? (parameterTypesChars == null ? 0 : parameterTypesChars.length) : signature.length;
        int parameterNamesLength = parameterNamesChars == null ? 0 : parameterNamesChars.length;
        int resultLength = typeNameLength + countCharsLength + 3;
        if (!isMemberType) {
            resultLength += packageNameLength + 1;
            if (argCount >= 0) {
                resultLength += 3;
            }
            if (argCount > 0) {
                resultLength += parameterTypesLength + parameterNamesLength + 2;
            }
        }
        char[] result = new char[resultLength];
        int pos = 0;
        if (typeNameLength > 0) {
            System.arraycopy(typeName, 0, result, pos, typeNameLength);
            pos += typeNameLength;
        }
        if (countCharsLength > 0) {
            System.arraycopy(countChars, 0, result, pos, countCharsLength);
            pos += countCharsLength;
        }
        int typeModifiersWithExtraFlags = typeModifiers | ConstructorPattern.encodeExtraFlags(extraFlags);
        result[pos++] = 47;
        result[pos++] = (char)typeModifiersWithExtraFlags;
        result[pos++] = (char)(typeModifiersWithExtraFlags >> 16);
        if (!isMemberType) {
            result[pos++] = 47;
            if (packageNameLength > 0) {
                System.arraycopy(packageName, 0, result, pos, packageNameLength);
                pos += packageNameLength;
            }
            if (argCount == 0) {
                result[pos++] = 47;
                result[pos++] = (char)modifiers;
                result[pos++] = (char)(modifiers >> 16);
            } else if (argCount > 0) {
                result[pos++] = 47;
                if (parameterTypesLength > 0) {
                    if (signature == null) {
                        System.arraycopy(parameterTypesChars, 0, result, pos, parameterTypesLength);
                    } else {
                        System.arraycopy(CharOperation.replaceOnCopy(signature, '/', '\\'), 0, result, pos, parameterTypesLength);
                    }
                    pos += parameterTypesLength;
                }
                result[pos++] = 47;
                if (parameterNamesLength > 0) {
                    System.arraycopy(parameterNamesChars, 0, result, pos, parameterNamesLength);
                    pos += parameterNamesLength;
                }
                result[pos++] = 47;
                result[pos++] = (char)modifiers;
                result[pos++] = (char)(modifiers >> 16);
            }
        }
        return result;
    }

    public static char[] createDefaultDeclarationIndexKey(char[] typeName, char[] packageName, int typeModifiers, int extraFlags) {
        return ConstructorPattern.createDeclarationIndexKey(typeName, -1, null, null, null, 0, packageName, typeModifiers, extraFlags);
    }

    public static char[] createIndexKey(char[] typeName, int argCount) {
        char[] countChars = argCount < 10 ? COUNTS[argCount] : ("/" + String.valueOf(argCount)).toCharArray();
        return CharOperation.concat(typeName, countChars);
    }

    static int decodeExtraFlags(int modifiersWithExtraFlags) {
        int extraFlags = 0;
        if ((modifiersWithExtraFlags & 0x8000000) != 0) {
            extraFlags |= 0x10;
        }
        if ((modifiersWithExtraFlags & 0x10000000) != 0) {
            extraFlags |= 4;
        }
        if ((modifiersWithExtraFlags & 0x20000000) != 0) {
            extraFlags |= 2;
        }
        if ((modifiersWithExtraFlags & 0x40000000) != 0) {
            extraFlags |= 1;
        }
        return extraFlags;
    }

    static int decodeModifers(int modifiersWithExtraFlags) {
        return modifiersWithExtraFlags & 0x87FFFFFF;
    }

    private static int encodeExtraFlags(int extraFlags) {
        int encodedExtraFlags = 0;
        if ((extraFlags & 0x10) != 0) {
            encodedExtraFlags |= 0x8000000;
        }
        if ((extraFlags & 4) != 0) {
            encodedExtraFlags |= 0x10000000;
        }
        if ((extraFlags & 2) != 0) {
            encodedExtraFlags |= 0x20000000;
        }
        if ((extraFlags & 1) != 0) {
            encodedExtraFlags |= 0x40000000;
        }
        return encodedExtraFlags;
    }

    private static char[] getTypeErasure(char[] typeName) {
        int index = CharOperation.indexOf('<', typeName);
        if (index == -1) {
            return typeName;
        }
        int length = typeName.length;
        char[] typeErasurename = new char[length - 2];
        System.arraycopy(typeName, 0, typeErasurename, 0, index);
        int depth = 1;
        int i = index + 1;
        while (i < length) {
            switch (typeName[i]) {
                case '<': {
                    ++depth;
                    break;
                }
                case '>': {
                    --depth;
                    break;
                }
                default: {
                    if (depth != 0) break;
                    typeErasurename[index++] = typeName[i];
                }
            }
            ++i;
        }
        char[] cArray = typeErasurename;
        typeErasurename = new char[index];
        System.arraycopy(cArray, 0, typeErasurename, 0, index);
        return typeErasurename;
    }

    ConstructorPattern(int matchRule) {
        super(32, matchRule);
    }

    public ConstructorPattern(char[] declaringSimpleName, char[] declaringQualification, char[][] parameterQualifications, char[][] parameterSimpleNames, int limitTo, int matchRule) {
        this(matchRule);
        this.fineGrain = limitTo & 0xF000000;
        if (this.fineGrain == 0) {
            switch (limitTo) {
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
        this.declaringQualification = this.isCaseSensitive ? declaringQualification : CharOperation.toLowerCase(declaringQualification);
        char[] cArray = this.declaringSimpleName = this.isCaseSensitive || this.isCamelCase ? declaringSimpleName : CharOperation.toLowerCase(declaringSimpleName);
        if (parameterSimpleNames != null) {
            this.parameterCount = parameterSimpleNames.length;
            boolean synthetic = this.parameterCount > 0 && declaringQualification != null && CharOperation.equals(CharOperation.concat(parameterQualifications[0], parameterSimpleNames[0], '.'), declaringQualification);
            int offset = 0;
            if (synthetic) {
                --this.parameterCount;
                ++offset;
            }
            this.parameterQualifications = new char[this.parameterCount][];
            this.parameterSimpleNames = new char[this.parameterCount][];
            int i = 0;
            while (i < this.parameterCount) {
                this.parameterQualifications[i] = this.isCaseSensitive ? parameterQualifications[i + offset] : CharOperation.toLowerCase(parameterQualifications[i + offset]);
                this.parameterSimpleNames[i] = this.isCaseSensitive ? parameterSimpleNames[i + offset] : CharOperation.toLowerCase(parameterSimpleNames[i + offset]);
                ++i;
            }
        } else {
            this.parameterCount = -1;
        }
        this.mustResolve = this.mustResolve();
    }

    public ConstructorPattern(char[] declaringSimpleName, char[] declaringQualification, char[][] parameterQualifications, char[][] parameterSimpleNames, String[] parameterSignatures, IMethod method, int limitTo, int matchRule) {
        this(declaringSimpleName, declaringQualification, parameterQualifications, parameterSimpleNames, limitTo, matchRule);
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
            this.constructorParameters = true;
            this.storeTypeSignaturesAndArguments(method.getDeclaringType());
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
        this.constructorArguments = this.extractMethodArguments(method);
        if (this.hasConstructorArguments()) {
            this.mustResolve = true;
        }
    }

    public ConstructorPattern(char[] declaringSimpleName, char[] declaringQualification, String declaringSignature, char[][] parameterQualifications, char[][] parameterSimpleNames, String[] parameterSignatures, char[][] arguments, int limitTo, int matchRule) {
        this(declaringSimpleName, declaringQualification, parameterQualifications, parameterSimpleNames, limitTo, matchRule);
        int length;
        if (declaringSignature != null) {
            this.typeSignatures = Util.splitTypeLevelsSignature(declaringSignature);
            this.setTypeArguments(Util.getAllTypeArguments(this.typeSignatures));
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
        this.constructorArguments = arguments;
        if ((arguments == null || arguments.length == 0) && this.getTypeArguments() != null && this.getTypeArguments().length > 0) {
            this.constructorArguments = this.getTypeArguments()[0];
        }
        if (this.hasConstructorArguments()) {
            this.mustResolve = true;
        }
    }

    public void decodeIndexKey(char[] key) {
        boolean isDefaultConstructor;
        int last = key.length - 1;
        int slash = CharOperation.indexOf('/', key, 0);
        this.declaringSimpleName = CharOperation.subarray(key, 0, slash);
        int start = slash + 1;
        if ((slash = CharOperation.indexOf('/', key, start)) != -1) {
            last = slash - 1;
        }
        boolean bl = isDefaultConstructor = key[last] == '#';
        if (isDefaultConstructor) {
            this.parameterCount = -1;
        } else {
            this.parameterCount = 0;
            int power = 1;
            int i = last;
            while (i >= start) {
                this.parameterCount = i == last ? key[i] - 48 : (this.parameterCount += (power *= 10) * (key[i] - 48));
                --i;
            }
        }
    }

    public SearchPattern getBlankPattern() {
        return new ConstructorPattern(8);
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

    boolean hasConstructorArguments() {
        return this.constructorArguments != null && this.constructorArguments.length > 0;
    }

    boolean hasConstructorParameters() {
        return this.constructorParameters;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        ConstructorPattern pattern = (ConstructorPattern)decodedPattern;
        return pattern.parameterCount != -1 && (this.parameterCount == pattern.parameterCount || this.parameterCount == -1 || this.varargs) && this.matchesName(this.declaringSimpleName, pattern.declaringSimpleName);
    }

    protected boolean mustResolve() {
        if (this.declaringQualification != null) {
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
        return this.findReferences;
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        char[] key = this.declaringSimpleName;
        int matchRule = this.getMatchRule();
        switch (this.getMatchMode()) {
            case 0: {
                if (this.declaringSimpleName != null && this.parameterCount >= 0 && !this.varargs) {
                    key = ConstructorPattern.createIndexKey(this.declaringSimpleName, this.parameterCount);
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
                    key = CharOperation.concat(ConstructorPattern.createIndexKey(this.declaringSimpleName == null ? ONE_STAR : this.declaringSimpleName, this.parameterCount), ONE_STAR);
                    break;
                }
                if (this.declaringSimpleName != null && this.declaringSimpleName[this.declaringSimpleName.length - 1] != '*') {
                    key = CharOperation.concat(this.declaringSimpleName, ONE_STAR, '/');
                    break;
                }
                if (key == null) break;
                key = CharOperation.concat(key, ONE_STAR);
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
            output.append(this.findReferences ? "ConstructorCombinedPattern: " : "ConstructorDeclarationPattern: ");
        } else {
            output.append("ConstructorReferencePattern: ");
        }
        if (this.declaringQualification != null) {
            output.append(this.declaringQualification).append('.');
        }
        if (this.declaringSimpleName != null) {
            output.append(this.declaringSimpleName);
        } else if (this.declaringQualification != null) {
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
        return super.print(output);
    }
}

