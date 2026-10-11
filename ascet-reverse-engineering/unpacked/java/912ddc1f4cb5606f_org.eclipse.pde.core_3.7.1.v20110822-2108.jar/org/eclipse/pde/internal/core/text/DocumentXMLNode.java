/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.pde.internal.core.text.IDocumentXMLNode;

public abstract class DocumentXMLNode
implements IDocumentXMLNode {
    public String toString() {
        return this.write();
    }

    public abstract String write();
}

