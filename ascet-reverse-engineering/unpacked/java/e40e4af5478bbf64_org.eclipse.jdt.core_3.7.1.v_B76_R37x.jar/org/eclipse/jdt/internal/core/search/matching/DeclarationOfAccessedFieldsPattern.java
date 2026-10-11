/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;

public class DeclarationOfAccessedFieldsPattern
extends FieldPattern {
    protected IJavaElement enclosingElement;
    protected SimpleSet knownFields;

    public DeclarationOfAccessedFieldsPattern(IJavaElement enclosingElement) {
        super(null, null, null, null, null, 2, 2);
        this.enclosingElement = enclosingElement;
        this.knownFields = new SimpleSet();
        this.mustResolve = true;
    }
}

