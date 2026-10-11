/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;

public class DeclarationOfReferencedMethodsPattern
extends MethodPattern {
    protected IJavaElement enclosingElement;
    protected SimpleSet knownMethods;

    public DeclarationOfReferencedMethodsPattern(IJavaElement enclosingElement) {
        super(null, null, null, null, null, null, null, null, 2, 2);
        this.enclosingElement = enclosingElement;
        this.knownMethods = new SimpleSet();
        this.mustResolve = true;
    }
}

