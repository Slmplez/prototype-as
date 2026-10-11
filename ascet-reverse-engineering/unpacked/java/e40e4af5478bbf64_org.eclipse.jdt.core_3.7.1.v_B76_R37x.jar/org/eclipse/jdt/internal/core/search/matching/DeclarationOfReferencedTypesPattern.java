/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.search.matching.TypeReferencePattern;

public class DeclarationOfReferencedTypesPattern
extends TypeReferencePattern {
    protected SimpleSet knownTypes;
    protected IJavaElement enclosingElement;

    public DeclarationOfReferencedTypesPattern(IJavaElement enclosingElement) {
        super(null, null, 2);
        this.enclosingElement = enclosingElement;
        this.knownTypes = new SimpleSet();
        this.mustResolve = true;
    }
}

