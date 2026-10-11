/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.env.ISourceField;
import org.eclipse.jdt.internal.core.AnnotatableInfo;

public class SourceFieldElementInfo
extends AnnotatableInfo
implements ISourceField {
    protected char[] typeName;
    protected char[] initializationSource;

    public char[] getInitializationSource() {
        return this.initializationSource;
    }

    public char[] getTypeName() {
        return this.typeName;
    }

    protected String getTypeSignature() {
        return Signature.createTypeSignature(this.typeName, false);
    }

    protected void setTypeName(char[] typeName) {
        this.typeName = typeName;
    }
}

