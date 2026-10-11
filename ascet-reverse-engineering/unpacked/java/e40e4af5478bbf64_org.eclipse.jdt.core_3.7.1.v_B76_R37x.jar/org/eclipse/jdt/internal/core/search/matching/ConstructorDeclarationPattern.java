/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;

public class ConstructorDeclarationPattern
extends ConstructorPattern {
    public int extraFlags;
    public int declaringTypeModifiers;
    public char[] declaringPackageName;
    public int modifiers;
    public char[] signature;
    public char[][] parameterTypes;
    public char[][] parameterNames;

    public ConstructorDeclarationPattern(char[] declaringPackageName, char[] declaringSimpleName, int matchRule) {
        this(matchRule);
        this.declaringSimpleName = this.isCaseSensitive || this.isCamelCase ? declaringSimpleName : CharOperation.toLowerCase(declaringSimpleName);
        this.declaringPackageName = declaringPackageName;
        this.findDeclarations = true;
        this.findReferences = false;
        this.parameterCount = -1;
        this.mustResolve = false;
    }

    ConstructorDeclarationPattern(int matchRule) {
        super(matchRule);
    }

    public void decodeIndexKey(char[] key) {
        boolean isMemberType;
        boolean isDefaultConstructor;
        int last = key.length - 1;
        int slash = CharOperation.indexOf('/', key, 0);
        this.declaringSimpleName = CharOperation.subarray(key, 0, slash);
        int start = slash + 1;
        last = (slash = CharOperation.indexOf('/', key, start)) - 1;
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
        last = (slash += 3) - 1;
        int typeModifiersWithExtraFlags = key[last - 1] + (key[last] << 16);
        this.declaringTypeModifiers = ConstructorDeclarationPattern.decodeModifers(typeModifiersWithExtraFlags);
        this.extraFlags = ConstructorDeclarationPattern.decodeExtraFlags(typeModifiersWithExtraFlags);
        this.declaringPackageName = null;
        this.modifiers = 0;
        this.signature = null;
        this.parameterTypes = null;
        this.parameterNames = null;
        boolean bl2 = isMemberType = (this.extraFlags & 2) != 0;
        if (!isMemberType) {
            start = slash + 1;
            if (this.parameterCount == -1) {
                slash = key.length;
                last = slash - 1;
            } else {
                slash = CharOperation.indexOf('/', key, start);
            }
            last = slash - 1;
            this.declaringPackageName = CharOperation.subarray(key, start, slash);
            start = slash + 1;
            if (this.parameterCount == 0) {
                last = (slash += 3) - 1;
                this.modifiers = key[last - 1] + (key[last] << 16);
            } else if (this.parameterCount > 0) {
                boolean hasParameterStoredAsSignature;
                slash = CharOperation.indexOf('/', key, start);
                last = slash - 1;
                boolean bl3 = hasParameterStoredAsSignature = (this.extraFlags & 0x10) != 0;
                if (hasParameterStoredAsSignature) {
                    this.signature = CharOperation.subarray(key, start, slash);
                    CharOperation.replace(this.signature, '\\', '/');
                } else {
                    this.parameterTypes = CharOperation.splitOn(',', key, start, slash);
                }
                start = slash + 1;
                slash = CharOperation.indexOf('/', key, start);
                last = slash - 1;
                if (slash != start) {
                    this.parameterNames = CharOperation.splitOn(',', key, start, slash);
                }
                last = (slash += 3) - 1;
                this.modifiers = key[last - 1] + (key[last] << 16);
            } else {
                this.modifiers = 1;
            }
        }
        this.removeInternalFlags();
    }

    public SearchPattern getBlankPattern() {
        return new ConstructorDeclarationPattern(8);
    }

    public char[][] getIndexCategories() {
        return DECL_CATEGORIES;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        ConstructorDeclarationPattern pattern = (ConstructorDeclarationPattern)decodedPattern;
        if ((pattern.extraFlags & 2) != 0) {
            return false;
        }
        if (this.declaringPackageName != null && !CharOperation.equals(this.declaringPackageName, pattern.declaringPackageName, true)) {
            return false;
        }
        return (this.parameterCount == pattern.parameterCount || this.parameterCount == -1 || this.varargs) && this.matchesName(this.declaringSimpleName, pattern.declaringSimpleName);
    }

    private void removeInternalFlags() {
        this.extraFlags &= 0xFFFFFFEF;
    }
}

