/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.TreeMap;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentRange;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.text.IDocumentXMLNode;

public interface IDocumentElementNode
extends Serializable,
IDocumentRange,
IDocumentXMLNode {
    public static final String F_PROPERTY_CHANGE_TYPE_SWAP = "type_swap";

    public IDocumentElementNode getParentNode();

    public void setParentNode(IDocumentElementNode var1);

    public void addChildNode(IDocumentElementNode var1);

    public void addChildNode(IDocumentElementNode var1, int var2);

    public IDocumentElementNode removeChildNode(IDocumentElementNode var1);

    public IDocumentElementNode removeChildNode(int var1);

    public IDocumentElementNode[] getChildNodes();

    public void addTextNode(IDocumentTextNode var1);

    public IDocumentTextNode getTextNode();

    public void removeTextNode();

    public int indexOf(IDocumentElementNode var1);

    public IDocumentElementNode getChildAt(int var1);

    public IDocumentElementNode getPreviousSibling();

    public void setPreviousSibling(IDocumentElementNode var1);

    public void swap(IDocumentElementNode var1, IDocumentElementNode var2);

    public void setXMLTagName(String var1);

    public String getXMLTagName();

    public void setXMLAttribute(IDocumentAttributeNode var1);

    public boolean setXMLAttribute(String var1, String var2);

    public String getXMLAttributeValue(String var1);

    public IDocumentAttributeNode getDocumentAttribute(String var1);

    public IDocumentAttributeNode[] getNodeAttributes();

    public void removeDocumentAttribute(IDocumentAttributeNode var1);

    public boolean isErrorNode();

    public void setIsErrorNode(boolean var1);

    public boolean isRoot();

    public void setOffset(int var1);

    public void setLength(int var1);

    public void setLineIndent(int var1);

    public int getLineIndent();

    public String getNamespace();

    public String getNamespacePrefix();

    public void setNamespace(String var1);

    public void setNamespacePrefix(String var1);

    public String getIndent();

    public String write(boolean var1);

    public String writeShallow(boolean var1);

    public boolean canTerminateStartTag();

    public int getChildCount();

    public int getNodeAttributesCount();

    public TreeMap getNodeAttributesMap();

    public ArrayList getChildNodesList();

    public void reconnect(IDocumentElementNode var1, IModel var2);

    public boolean setXMLContent(String var1);

    public String getXMLContent();

    public boolean isContentCollapsed();

    public boolean isLeafNode();

    public boolean hasXMLChildren();

    public boolean hasXMLContent();

    public boolean hasXMLAttributes();
}

