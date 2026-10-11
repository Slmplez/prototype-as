/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import java.io.Serializable;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentRange;
import org.eclipse.pde.internal.core.text.IDocumentXMLNode;

public interface IDocumentTextNode
extends IDocumentRange,
Serializable,
IDocumentXMLNode {
    public static final String F_PROPERTY_CHANGE_TYPE_PCDATA = "type_pcdata";

    public void setEnclosingElement(IDocumentElementNode var1);

    public IDocumentElementNode getEnclosingElement();

    public void setText(String var1);

    public String getText();

    public void setOffset(int var1);

    public void setLength(int var1);

    public void reconnect(IDocumentElementNode var1);

    public String write();
}

