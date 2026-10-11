/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import java.util.ArrayList;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;

public interface IDocumentObject
extends IDocumentElementNode,
IWritable {
    public IModel getSharedModel();

    public void setSharedModel(IModel var1);

    public void reset();

    public boolean isInTheModel();

    public void setInTheModel(boolean var1);

    public boolean isEditable();

    public void addChildNode(IDocumentElementNode var1, boolean var2);

    public void addChildNode(IDocumentElementNode var1, int var2, boolean var3);

    public IDocumentElementNode clone(IDocumentElementNode var1);

    public boolean getBooleanAttributeValue(String var1, boolean var2);

    public IDocumentElementNode getChildNode(Class var1);

    public int getChildNodeCount(Class var1);

    public ArrayList getChildNodesList(Class var1, boolean var2);

    public ArrayList getChildNodesList(Class[] var1, boolean var2);

    public IDocumentElementNode getNextSibling(IDocumentElementNode var1, Class var2);

    public IDocumentElementNode getPreviousSibling(IDocumentElementNode var1, Class var2);

    public boolean hasChildNodes(Class var1);

    public boolean isFirstChildNode(IDocumentElementNode var1, Class var2);

    public boolean isLastChildNode(IDocumentElementNode var1, Class var2);

    public void moveChildNode(IDocumentElementNode var1, int var2, boolean var3);

    public IDocumentElementNode removeChildNode(int var1, Class var2);

    public IDocumentElementNode removeChildNode(IDocumentElementNode var1, boolean var2);

    public IDocumentElementNode removeChildNode(int var1, Class var2, boolean var3);

    public boolean setBooleanAttributeValue(String var1, boolean var2);

    public void setChildNode(IDocumentElementNode var1, Class var2);

    public void swap(IDocumentElementNode var1, IDocumentElementNode var2, boolean var3);
}

