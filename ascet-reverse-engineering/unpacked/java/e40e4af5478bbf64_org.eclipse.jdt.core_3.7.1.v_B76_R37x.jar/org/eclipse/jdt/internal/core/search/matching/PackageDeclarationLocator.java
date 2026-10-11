/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;

public class PackageDeclarationLocator
extends PatternLocator {
    protected PackageDeclarationPattern pattern;

    public PackageDeclarationLocator(PackageDeclarationPattern pattern) {
        super(pattern);
        this.pattern = pattern;
    }

    protected int matchContainer() {
        return 0;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

