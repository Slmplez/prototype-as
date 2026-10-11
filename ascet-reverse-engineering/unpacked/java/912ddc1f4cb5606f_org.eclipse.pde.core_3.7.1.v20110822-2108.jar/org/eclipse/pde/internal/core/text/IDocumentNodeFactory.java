/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;

public interface IDocumentNodeFactory {
    public IDocumentAttributeNode createAttribute(String var1, String var2, IDocumentElementNode var3);

    public IDocumentElementNode createDocumentNode(String var1, IDocumentElementNode var2);

    public IDocumentTextNode createDocumentTextNode(String var1, IDocumentElementNode var2);
}

