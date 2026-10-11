/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;

public class SuperTypeReferencePattern
extends JavaSearchPattern {
    public char[] superQualification;
    public char[] superSimpleName;
    public char superClassOrInterface;
    public char typeSuffix;
    public char[] pkgName;
    public char[] simpleName;
    public char[] enclosingTypeName;
    public char classOrInterface;
    public int modifiers;
    public char[][] typeParameterSignatures;
    protected int superRefKind;
    public static final int ALL_SUPER_TYPES = 0;
    public static final int ONLY_SUPER_INTERFACES = 1;
    public static final int ONLY_SUPER_CLASSES = 2;
    protected static char[][] CATEGORIES = new char[][]{SUPER_REF};

    public static char[] createIndexKey(int modifiers, char[] packageName, char[] typeName, char[][] enclosingTypeNames, char[][] typeParameterSignatures, char classOrInterface, char[] superTypeName, char superClassOrInterface) {
        char[] superTypeSourceName;
        if (superTypeName == null) {
            superTypeName = OBJECT;
        }
        char[] superSimpleName = CharOperation.lastSegment(superTypeName, '.');
        char[] superQualification = null;
        if (superSimpleName != superTypeName) {
            int length = superTypeName.length - superSimpleName.length - 1;
            superQualification = new char[length];
            System.arraycopy(superTypeName, 0, superQualification, 0, length);
        }
        if ((superTypeSourceName = CharOperation.lastSegment(superSimpleName, '$')) != superSimpleName) {
            int start = superQualification == null ? 0 : superQualification.length + 1;
            int prefixLength = superSimpleName.length - superTypeSourceName.length;
            char[] mangledQualification = new char[start + prefixLength];
            if (superQualification != null) {
                System.arraycopy(superQualification, 0, mangledQualification, 0, start - 1);
                mangledQualification[start - 1] = 46;
            }
            System.arraycopy(superSimpleName, 0, mangledQualification, start, prefixLength);
            superQualification = mangledQualification;
            superSimpleName = superTypeSourceName;
        }
        char[] simpleName = CharOperation.lastSegment(typeName, '.');
        char[] enclosingTypeName = CharOperation.concatWith(enclosingTypeNames, '$');
        if (superQualification != null && CharOperation.equals(superQualification, packageName)) {
            packageName = ONE_ZERO;
        }
        char[] typeParameters = CharOperation.NO_CHAR;
        int typeParametersLength = 0;
        if (typeParameterSignatures != null) {
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            int length = typeParameterSignatures.length;
            while (i < length) {
                char[] typeParameter = typeParameterSignatures[i];
                buffer.append(typeParameter);
                typeParametersLength += typeParameter.length;
                if (i != length - 1) {
                    buffer.append(',');
                    ++typeParametersLength;
                }
                ++i;
            }
            typeParameters = new char[typeParametersLength];
            buffer.getChars(0, typeParametersLength, typeParameters, 0);
        }
        int superLength = superSimpleName == null ? 0 : superSimpleName.length;
        int superQLength = superQualification == null ? 0 : superQualification.length;
        int simpleLength = simpleName == null ? 0 : simpleName.length;
        int enclosingLength = enclosingTypeName == null ? 0 : enclosingTypeName.length;
        int packageLength = packageName == null ? 0 : packageName.length;
        char[] result = new char[superLength + superQLength + simpleLength + enclosingLength + typeParametersLength + packageLength + 9];
        int pos = 0;
        if (superLength > 0) {
            System.arraycopy(superSimpleName, 0, result, pos, superLength);
            pos += superLength;
        }
        result[pos++] = 47;
        if (superQLength > 0) {
            System.arraycopy(superQualification, 0, result, pos, superQLength);
            pos += superQLength;
        }
        result[pos++] = 47;
        if (simpleLength > 0) {
            System.arraycopy(simpleName, 0, result, pos, simpleLength);
            pos += simpleLength;
        }
        result[pos++] = 47;
        if (enclosingLength > 0) {
            System.arraycopy(enclosingTypeName, 0, result, pos, enclosingLength);
            pos += enclosingLength;
        }
        result[pos++] = 47;
        if (typeParametersLength > 0) {
            System.arraycopy(typeParameters, 0, result, pos, typeParametersLength);
            pos += typeParametersLength;
        }
        result[pos++] = 47;
        if (packageLength > 0) {
            System.arraycopy(packageName, 0, result, pos, packageLength);
            pos += packageLength;
        }
        result[pos++] = 47;
        result[pos++] = superClassOrInterface;
        result[pos++] = classOrInterface;
        result[pos] = (char)modifiers;
        return result;
    }

    public SuperTypeReferencePattern(char[] superQualification, char[] superSimpleName, int superRefKind, int matchRule) {
        this(matchRule);
        this.superQualification = this.isCaseSensitive ? superQualification : CharOperation.toLowerCase(superQualification);
        this.superSimpleName = this.isCaseSensitive || this.isCamelCase ? superSimpleName : CharOperation.toLowerCase(superSimpleName);
        this.mustResolve = superQualification != null;
        this.superRefKind = superRefKind;
    }

    public SuperTypeReferencePattern(char[] superQualification, char[] superSimpleName, int superRefKind, char typeSuffix, int matchRule) {
        this(superQualification, superSimpleName, superRefKind, matchRule);
        this.typeSuffix = typeSuffix;
        this.mustResolve = superQualification != null || typeSuffix != '\u0000';
    }

    SuperTypeReferencePattern(int matchRule) {
        super(16, matchRule);
    }

    public void decodeIndexKey(char[] key) {
        char[] names;
        int slash = CharOperation.indexOf('/', key, 0);
        this.superSimpleName = CharOperation.subarray(key, 0, slash);
        int start = slash + 1;
        this.superQualification = (slash = CharOperation.indexOf('/', key, start)) == start ? null : CharOperation.subarray(key, start, slash);
        start = slash + 1;
        slash = CharOperation.indexOf('/', key, start);
        this.simpleName = CharOperation.subarray(key, start, slash);
        if (key[start = ++slash] == '/') {
            this.enclosingTypeName = null;
        } else {
            slash = CharOperation.indexOf('/', key, start);
            if (slash == start + 1 && key[start] == '0') {
                this.enclosingTypeName = ONE_ZERO;
            } else {
                names = CharOperation.subarray(key, start, slash);
                this.enclosingTypeName = names;
            }
        }
        start = ++slash;
        if (key[start] == '/') {
            this.typeParameterSignatures = null;
        } else {
            slash = CharOperation.indexOf('/', key, start);
            this.typeParameterSignatures = CharOperation.splitOn(',', key, start, slash);
        }
        start = ++slash;
        if (key[start] == '/') {
            this.pkgName = null;
        } else {
            slash = CharOperation.indexOf('/', key, start);
            if (slash == start + 1 && key[start] == '0') {
                this.pkgName = this.superQualification;
            } else {
                names = CharOperation.subarray(key, start, slash);
                this.pkgName = names;
            }
        }
        this.superClassOrInterface = key[slash + 1];
        this.classOrInterface = key[slash + 2];
        this.modifiers = key[slash + 3];
    }

    public SearchPattern getBlankPattern() {
        return new SuperTypeReferencePattern(8);
    }

    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        SuperTypeReferencePattern pattern = (SuperTypeReferencePattern)decodedPattern;
        if (this.superRefKind == 2 && pattern.enclosingTypeName != ONE_ZERO && (pattern.superClassOrInterface == 'I' || pattern.superClassOrInterface == 'A')) {
            return false;
        }
        if (pattern.superQualification != null && !this.matchesName(this.superQualification, pattern.superQualification)) {
            return false;
        }
        return this.matchesName(this.superSimpleName, pattern.superSimpleName);
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        char[] key = this.superSimpleName;
        int matchRule = this.getMatchRule();
        switch (this.getMatchMode()) {
            case 0: {
                matchRule &= 0xFFFFFFFF;
                matchRule |= 1;
                if (this.superSimpleName == null) break;
                key = CharOperation.append(this.superSimpleName, '/');
                break;
            }
            case 1: {
                break;
            }
            case 2: {
                break;
            }
            case 4: {
                break;
            }
        }
        return index.query(this.getIndexCategories(), key, matchRule);
    }

    protected StringBuffer print(StringBuffer output) {
        switch (this.superRefKind) {
            case 0: {
                output.append("SuperTypeReferencePattern: <");
                break;
            }
            case 1: {
                output.append("SuperInterfaceReferencePattern: <");
                break;
            }
            case 2: {
                output.append("SuperClassReferencePattern: <");
            }
        }
        if (this.superSimpleName != null) {
            output.append(this.superSimpleName);
        } else {
            output.append("*");
        }
        output.append(">");
        return super.print(output);
    }
}

