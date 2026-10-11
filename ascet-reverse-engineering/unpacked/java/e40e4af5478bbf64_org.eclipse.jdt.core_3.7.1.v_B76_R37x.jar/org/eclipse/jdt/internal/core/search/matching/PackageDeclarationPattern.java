/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;

public class PackageDeclarationPattern
extends JavaSearchPattern {
    protected char[] pkgName;

    public PackageDeclarationPattern(char[] pkgName, int matchRule) {
        super(2, matchRule);
        this.pkgName = pkgName;
    }

    public EntryResult[] queryIn(Index index) {
        return null;
    }

    protected StringBuffer print(StringBuffer output) {
        output.append("PackageDeclarationPattern: <");
        if (this.pkgName != null) {
            output.append(this.pkgName);
        } else {
            output.append("*");
        }
        output.append(">");
        return super.print(output);
    }
}

