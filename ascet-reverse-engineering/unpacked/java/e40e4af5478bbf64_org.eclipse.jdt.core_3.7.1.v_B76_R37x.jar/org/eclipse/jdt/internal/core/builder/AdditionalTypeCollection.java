/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.internal.core.builder.ReferenceCollection;

public class AdditionalTypeCollection
extends ReferenceCollection {
    char[][] definedTypeNames;

    protected AdditionalTypeCollection(char[][] definedTypeNames, char[][][] qualifiedReferences, char[][] simpleNameReferences, char[][] rootReferences) {
        super(qualifiedReferences, simpleNameReferences, rootReferences);
        this.definedTypeNames = definedTypeNames;
    }
}

