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
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;

public class MultiTypeDeclarationPattern
extends JavaSearchPattern {
    public char[][] simpleNames;
    public char[][] qualifications;
    public char typeSuffix;
    protected static char[][] CATEGORIES = new char[][]{TYPE_DECL};

    public MultiTypeDeclarationPattern(char[][] qualifications, char[][] simpleNames, char typeSuffix, int matchRule) {
        this(matchRule);
        int i;
        int length;
        if (this.isCaseSensitive || qualifications == null) {
            this.qualifications = qualifications;
        } else {
            length = qualifications.length;
            this.qualifications = new char[length][];
            i = 0;
            while (i < length) {
                this.qualifications[i] = CharOperation.toLowerCase(qualifications[i]);
                ++i;
            }
        }
        if (simpleNames != null) {
            if (this.isCaseSensitive || this.isCamelCase) {
                this.simpleNames = simpleNames;
            } else {
                length = simpleNames.length;
                this.simpleNames = new char[length][];
                i = 0;
                while (i < length) {
                    this.simpleNames[i] = CharOperation.toLowerCase(simpleNames[i]);
                    ++i;
                }
            }
        }
        this.typeSuffix = typeSuffix;
        this.mustResolve = typeSuffix != '\u0000';
    }

    MultiTypeDeclarationPattern(int matchRule) {
        super(8, matchRule);
    }

    public SearchPattern getBlankPattern() {
        return new QualifiedTypeDeclarationPattern(8);
    }

    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        int max;
        int count;
        QualifiedTypeDeclarationPattern pattern = (QualifiedTypeDeclarationPattern)decodedPattern;
        if (this.typeSuffix != pattern.typeSuffix && this.typeSuffix != '\u0000' && !this.matchDifferentTypeSuffixes(this.typeSuffix, pattern.typeSuffix)) {
            return false;
        }
        if (this.qualifications != null) {
            count = 0;
            max = this.qualifications.length;
            if (max == 0 && pattern.qualification.length > 0) {
                return false;
            }
            if (max > 0) {
                while (count < max) {
                    if (this.matchesName(this.qualifications[count], pattern.qualification)) break;
                    ++count;
                }
                if (count == max) {
                    return false;
                }
            }
        }
        if (this.simpleNames == null) {
            return true;
        }
        count = 0;
        max = this.simpleNames.length;
        while (count < max) {
            if (this.matchesName(this.simpleNames[count], pattern.simpleName)) break;
            ++count;
        }
        return count < max;
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        if (this.simpleNames == null) {
            return index.query(this.getIndexCategories(), null, -1);
        }
        int count = -1;
        int numOfNames = this.simpleNames.length;
        EntryResult[][] allResults = numOfNames > 1 ? new EntryResult[numOfNames][] : null;
        int i = 0;
        while (i < numOfNames) {
            char[] key = this.simpleNames[i];
            int matchRule = this.getMatchRule();
            switch (this.getMatchMode()) {
                case 1: {
                    break;
                }
                case 0: {
                    matchRule &= 0xFFFFFFFF;
                    matchRule |= 1;
                    key = CharOperation.append(key, '/');
                    break;
                }
                case 2: {
                    if (key[key.length - 1] == '*') break;
                    key = CharOperation.concat(key, ONE_STAR, '/');
                    break;
                }
                case 4: {
                    break;
                }
            }
            EntryResult[] entries = index.query(this.getIndexCategories(), key, matchRule);
            if (entries != null) {
                if (allResults == null) {
                    return entries;
                }
                allResults[++count] = entries;
            }
            ++i;
        }
        if (count == -1) {
            return null;
        }
        int total = 0;
        int i2 = 0;
        while (i2 <= count) {
            total += allResults[i2].length;
            ++i2;
        }
        EntryResult[] allEntries = new EntryResult[total];
        int next = 0;
        int i3 = 0;
        while (i3 <= count) {
            EntryResult[] entries = allResults[i3];
            System.arraycopy(entries, 0, allEntries, next, entries.length);
            next += entries.length;
            ++i3;
        }
        return allEntries;
    }

    protected StringBuffer print(StringBuffer output) {
        int i;
        switch (this.typeSuffix) {
            case 'C': {
                output.append("MultiClassDeclarationPattern: ");
                break;
            }
            case '\n': {
                output.append("MultiClassAndInterfaceDeclarationPattern: ");
                break;
            }
            case '\t': {
                output.append("MultiClassAndEnumDeclarationPattern: ");
                break;
            }
            case 'I': {
                output.append("MultiInterfaceDeclarationPattern: ");
                break;
            }
            case '\u000b': {
                output.append("MultiInterfaceAndAnnotationDeclarationPattern: ");
                break;
            }
            case 'E': {
                output.append("MultiEnumDeclarationPattern: ");
                break;
            }
            case 'A': {
                output.append("MultiAnnotationTypeDeclarationPattern: ");
                break;
            }
            default: {
                output.append("MultiTypeDeclarationPattern: ");
            }
        }
        if (this.qualifications != null) {
            output.append("qualifications: <");
            i = 0;
            while (i < this.qualifications.length) {
                output.append(this.qualifications[i]);
                if (i < this.qualifications.length - 1) {
                    output.append(", ");
                }
                ++i;
            }
            output.append("> ");
        }
        if (this.simpleNames != null) {
            output.append("simpleNames: <");
            i = 0;
            while (i < this.simpleNames.length) {
                output.append(this.simpleNames[i]);
                if (i < this.simpleNames.length - 1) {
                    output.append(", ");
                }
                ++i;
            }
            output.append(">");
        }
        return super.print(output);
    }
}

