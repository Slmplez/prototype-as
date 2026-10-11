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

public class TypeDeclarationPattern
extends JavaSearchPattern {
    public char[] simpleName;
    public char[] pkg;
    public char[][] enclosingTypeNames;
    public char typeSuffix;
    public int modifiers;
    public boolean secondary = false;
    protected static char[][] CATEGORIES = new char[][]{TYPE_DECL};
    static PackageNameSet internedPackageNames = new PackageNameSet(1001);

    public static char[] createIndexKey(int modifiers, char[] typeName, char[] packageName, char[][] enclosingTypeNames, boolean secondary) {
        int typeNameLength = typeName == null ? 0 : typeName.length;
        int packageLength = packageName == null ? 0 : packageName.length;
        int enclosingNamesLength = 0;
        if (enclosingTypeNames != null) {
            int i = 0;
            int length = enclosingTypeNames.length;
            while (i < length) {
                enclosingNamesLength += enclosingTypeNames[i].length;
                if (++i >= length) continue;
                ++enclosingNamesLength;
            }
        }
        int resultLength = typeNameLength + packageLength + enclosingNamesLength + 5;
        if (secondary) {
            resultLength += 2;
        }
        char[] result = new char[resultLength];
        int pos = 0;
        if (typeNameLength > 0) {
            System.arraycopy(typeName, 0, result, pos, typeNameLength);
            pos += typeNameLength;
        }
        result[pos++] = 47;
        if (packageLength > 0) {
            System.arraycopy(packageName, 0, result, pos, packageLength);
            pos += packageLength;
        }
        result[pos++] = 47;
        if (enclosingTypeNames != null && enclosingNamesLength > 0) {
            int i = 0;
            int length = enclosingTypeNames.length;
            while (i < length) {
                char[] enclosingName = enclosingTypeNames[i];
                int itsLength = enclosingName.length;
                System.arraycopy(enclosingName, 0, result, pos, itsLength);
                pos += itsLength;
                if (++i >= length) continue;
                result[pos++] = 46;
            }
        }
        result[pos++] = 47;
        result[pos++] = (char)modifiers;
        result[pos] = (char)(modifiers >> 16);
        if (secondary) {
            result[++pos] = 47;
            result[++pos] = 83;
        }
        return result;
    }

    public TypeDeclarationPattern(char[] pkg, char[][] enclosingTypeNames, char[] simpleName, char typeSuffix, int matchRule) {
        this(matchRule);
        char[] cArray = this.pkg = this.isCaseSensitive ? pkg : CharOperation.toLowerCase(pkg);
        if (this.isCaseSensitive || enclosingTypeNames == null) {
            this.enclosingTypeNames = enclosingTypeNames;
        } else {
            int length = enclosingTypeNames.length;
            this.enclosingTypeNames = new char[length][];
            int i = 0;
            while (i < length) {
                this.enclosingTypeNames[i] = CharOperation.toLowerCase(enclosingTypeNames[i]);
                ++i;
            }
        }
        this.simpleName = this.isCaseSensitive || this.isCamelCase ? simpleName : CharOperation.toLowerCase(simpleName);
        this.typeSuffix = typeSuffix;
        this.mustResolve = this.pkg != null && this.enclosingTypeNames != null || typeSuffix != '\u0000';
    }

    TypeDeclarationPattern(int matchRule) {
        super(8, matchRule);
    }

    public void decodeIndexKey(char[] key) {
        int start;
        int slash = CharOperation.indexOf('/', key, 0);
        this.simpleName = CharOperation.subarray(key, 0, slash);
        if (key[start = ++slash] == '/') {
            this.pkg = CharOperation.NO_CHAR;
        } else {
            slash = CharOperation.indexOf('/', key, start);
            this.pkg = internedPackageNames.add(CharOperation.subarray(key, start, slash));
        }
        int last = key.length - 1;
        boolean bl = this.secondary = key[last] == 'S';
        if (this.secondary) {
            last -= 2;
        }
        this.modifiers = key[last - 1] + (key[last] << 16);
        this.decodeModifiers();
        start = slash + 1;
        this.enclosingTypeNames = start == (last -= 2) ? CharOperation.NO_CHAR_CHAR : (last == start + 1 && key[start] == '0' ? ONE_ZERO_CHAR : CharOperation.splitOn('.', key, start, last));
    }

    protected void decodeModifiers() {
        switch (this.modifiers & 0x6200) {
            case 8192: 
            case 8704: {
                this.typeSuffix = (char)65;
                break;
            }
            case 16384: {
                this.typeSuffix = (char)69;
                break;
            }
            case 512: {
                this.typeSuffix = (char)73;
                break;
            }
            default: {
                this.typeSuffix = (char)67;
            }
        }
    }

    public SearchPattern getBlankPattern() {
        return new TypeDeclarationPattern(8);
    }

    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        TypeDeclarationPattern pattern = (TypeDeclarationPattern)decodedPattern;
        if (this.typeSuffix != pattern.typeSuffix && this.typeSuffix != '\u0000' && !this.matchDifferentTypeSuffixes(this.typeSuffix, pattern.typeSuffix)) {
            return false;
        }
        if (!this.matchesName(this.simpleName, pattern.simpleName)) {
            return false;
        }
        if (this.pkg != null && !CharOperation.equals(this.pkg, pattern.pkg, this.isCaseSensitive())) {
            return false;
        }
        if (this.enclosingTypeNames != null) {
            if (this.enclosingTypeNames.length == 0) {
                return pattern.enclosingTypeNames.length == 0;
            }
            if (this.enclosingTypeNames.length == 1 && pattern.enclosingTypeNames.length == 1) {
                return CharOperation.equals(this.enclosingTypeNames[0], pattern.enclosingTypeNames[0], this.isCaseSensitive());
            }
            if (pattern.enclosingTypeNames == ONE_ZERO_CHAR) {
                return true;
            }
            return CharOperation.equals(this.enclosingTypeNames, pattern.enclosingTypeNames, this.isCaseSensitive());
        }
        return true;
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        char[] key = this.simpleName;
        int matchRule = this.getMatchRule();
        switch (this.getMatchMode()) {
            case 1: {
                break;
            }
            case 0: {
                matchRule &= 0xFFFFFFFF;
                if (this.simpleName != null) {
                    matchRule |= 1;
                    key = this.pkg == null ? CharOperation.append(this.simpleName, '/') : CharOperation.concat(this.simpleName, '/', this.pkg, '/', CharOperation.NO_CHAR);
                    break;
                }
                matchRule |= 2;
            }
            case 2: {
                if (this.pkg == null) {
                    if (this.simpleName == null) {
                        switch (this.typeSuffix) {
                            default: 
                        }
                        break;
                    }
                    if (this.simpleName[this.simpleName.length - 1] == '*') break;
                    key = CharOperation.concat(this.simpleName, ONE_STAR, '/');
                    break;
                }
                key = CharOperation.concat(this.simpleName == null ? ONE_STAR : this.simpleName, '/', this.pkg, '/', ONE_STAR);
                break;
            }
            case 4: {
                break;
            }
        }
        return index.query(this.getIndexCategories(), key, matchRule);
    }

    protected StringBuffer print(StringBuffer output) {
        switch (this.typeSuffix) {
            case 'C': {
                output.append("ClassDeclarationPattern: pkg<");
                break;
            }
            case '\n': {
                output.append("ClassAndInterfaceDeclarationPattern: pkg<");
                break;
            }
            case '\t': {
                output.append("ClassAndEnumDeclarationPattern: pkg<");
                break;
            }
            case 'I': {
                output.append("InterfaceDeclarationPattern: pkg<");
                break;
            }
            case '\u000b': {
                output.append("InterfaceAndAnnotationDeclarationPattern: pkg<");
                break;
            }
            case 'E': {
                output.append("EnumDeclarationPattern: pkg<");
                break;
            }
            case 'A': {
                output.append("AnnotationTypeDeclarationPattern: pkg<");
                break;
            }
            default: {
                output.append("TypeDeclarationPattern: pkg<");
            }
        }
        if (this.pkg != null) {
            output.append(this.pkg);
        } else {
            output.append("*");
        }
        output.append(">, enclosing<");
        if (this.enclosingTypeNames != null) {
            int i = 0;
            while (i < this.enclosingTypeNames.length) {
                output.append(this.enclosingTypeNames[i]);
                if (i < this.enclosingTypeNames.length - 1) {
                    output.append('.');
                }
                ++i;
            }
        } else {
            output.append("*");
        }
        output.append(">, type<");
        if (this.simpleName != null) {
            output.append(this.simpleName);
        } else {
            output.append("*");
        }
        output.append(">");
        return super.print(output);
    }

    static class PackageNameSet {
        public char[][] names;
        public int elementSize = 0;
        public int threshold;

        PackageNameSet(int size) {
            this.threshold = size;
            int extraRoom = (int)((float)size * 1.5f);
            if (this.threshold == extraRoom) {
                ++extraRoom;
            }
            this.names = new char[extraRoom][];
        }

        char[] add(char[] name) {
            char[] current;
            int length = this.names.length;
            int index = CharOperation.hashCode(name) % length;
            while ((current = this.names[index]) != null) {
                if (CharOperation.equals(current, name)) {
                    return current;
                }
                if (++index != length) continue;
                index = 0;
            }
            this.names[index] = name;
            if (++this.elementSize > this.threshold) {
                this.rehash();
            }
            return name;
        }

        void rehash() {
            PackageNameSet newSet = new PackageNameSet(this.elementSize * 2);
            int i = this.names.length;
            while (--i >= 0) {
                char[] current = this.names[i];
                if (current == null) continue;
                newSet.add(current);
            }
            this.names = newSet.names;
            this.elementSize = newSet.elementSize;
            this.threshold = newSet.threshold;
        }
    }
}

