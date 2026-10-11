/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;

public class QualifiedTypeDeclarationPattern
extends TypeDeclarationPattern {
    public char[] qualification;
    PackageDeclarationPattern packagePattern;
    public int packageIndex = -1;

    public QualifiedTypeDeclarationPattern(char[] qualification, char[] simpleName, char typeSuffix, int matchRule) {
        this(matchRule);
        this.qualification = this.isCaseSensitive ? qualification : CharOperation.toLowerCase(qualification);
        this.simpleName = this.isCaseSensitive || this.isCamelCase ? simpleName : CharOperation.toLowerCase(simpleName);
        this.typeSuffix = typeSuffix;
        this.mustResolve = this.qualification != null || typeSuffix != '\u0000';
    }

    public QualifiedTypeDeclarationPattern(char[] qualification, int qualificationMatchRule, char[] simpleName, char typeSuffix, int matchRule) {
        this(qualification, simpleName, typeSuffix, matchRule);
        this.packagePattern = new PackageDeclarationPattern(qualification, qualificationMatchRule);
    }

    QualifiedTypeDeclarationPattern(int matchRule) {
        super(matchRule);
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
        this.qualification = this.pkg;
        int last = key.length - 1;
        boolean bl = this.secondary = key[last] == 'S';
        if (this.secondary) {
            last -= 2;
        }
        this.modifiers = key[last - 1] + (key[last] << 16);
        this.decodeModifiers();
        start = slash + 1;
        if (start == (last -= 2)) {
            this.enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
        } else {
            int length = this.qualification.length;
            int size = last - start;
            this.qualification = new char[length + 1 + size];
            System.arraycopy(this.qualification, 0, this.qualification, 0, length);
            this.qualification[length] = 46;
            if (last == start + 1 && key[start] == '0') {
                this.enclosingTypeNames = ONE_ZERO_CHAR;
                this.qualification[length + 1] = 48;
            } else {
                this.enclosingTypeNames = CharOperation.splitOn('.', key, start, last);
                System.arraycopy(key, start, this.qualification, length + 1, size);
            }
        }
    }

    public SearchPattern getBlankPattern() {
        return new QualifiedTypeDeclarationPattern(8);
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        QualifiedTypeDeclarationPattern pattern = (QualifiedTypeDeclarationPattern)decodedPattern;
        if (this.typeSuffix != pattern.typeSuffix && this.typeSuffix != '\u0000' && !this.matchDifferentTypeSuffixes(this.typeSuffix, pattern.typeSuffix)) {
            return false;
        }
        return this.matchesName(this.simpleName, pattern.simpleName) && (this.qualification == null || this.packagePattern == null || this.packagePattern.matchesName(this.qualification, pattern.qualification));
    }

    protected StringBuffer print(StringBuffer output) {
        switch (this.typeSuffix) {
            case 'C': {
                output.append("ClassDeclarationPattern: qualification<");
                break;
            }
            case '\n': {
                output.append("ClassAndInterfaceDeclarationPattern: qualification<");
                break;
            }
            case '\t': {
                output.append("ClassAndEnumDeclarationPattern: qualification<");
                break;
            }
            case 'I': {
                output.append("InterfaceDeclarationPattern: qualification<");
                break;
            }
            case '\u000b': {
                output.append("InterfaceAndAnnotationDeclarationPattern: qualification<");
                break;
            }
            case 'E': {
                output.append("EnumDeclarationPattern: qualification<");
                break;
            }
            case 'A': {
                output.append("AnnotationTypeDeclarationPattern: qualification<");
                break;
            }
            default: {
                output.append("TypeDeclarationPattern: qualification<");
            }
        }
        if (this.qualification != null) {
            output.append(this.qualification);
        } else {
            output.append("*");
        }
        output.append(">, type<");
        if (this.simpleName != null) {
            output.append(this.simpleName);
        } else {
            output.append("*");
        }
        output.append("> ");
        return super.print(output);
    }
}

