/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text;

import java.io.Serializable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentRange;
import org.eclipse.pde.internal.core.text.IDocumentXMLNode;

public interface IDocumentAttributeNode
extends IDocumentRange,
Serializable,
IDocumentXMLNode {
    public void setEnclosingElement(IDocumentElementNode var1);

    public IDocumentElementNode getEnclosingElement();

    public void setNameOffset(int var1);

    public int getNameOffset();

    public void setNameLength(int var1);

    public int getNameLength();

    public void setValueOffset(int var1);

    public int getValueOffset();

    public void setValueLength(int var1);

    public int getValueLength();

    public String getAttributeName();

    public String getAttributeValue();

    public void setAttributeName(String var1) throws CoreException;

    public void setAttributeValue(String var1) throws CoreException;

    public String write();

    public void reconnect(IDocumentElementNode var1);
}

