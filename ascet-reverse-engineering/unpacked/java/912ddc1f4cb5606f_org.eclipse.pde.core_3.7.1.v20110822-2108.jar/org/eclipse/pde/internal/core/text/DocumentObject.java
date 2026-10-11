/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.pde.internal.core.text;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.text.DocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentObject;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.text.IEditingModel;

public abstract class DocumentObject
extends DocumentElementNode
implements IDocumentObject {
    private static final long serialVersionUID = 1L;
    private transient IModel fModel;
    private transient boolean fInTheModel;

    public DocumentObject(IModel model, String tagName) {
        this.fModel = model;
        this.fInTheModel = false;
        this.setXMLTagName(tagName);
    }

    public void setSharedModel(IModel model) {
        this.fModel = model;
    }

    public IModel getSharedModel() {
        return this.fModel;
    }

    public void reset() {
        this.fModel = null;
        this.fInTheModel = false;
    }

    public boolean isInTheModel() {
        return this.fInTheModel;
    }

    public void setInTheModel(boolean inModel) {
        this.fInTheModel = inModel;
    }

    public boolean isEditable() {
        return this.fModel.isEditable();
    }

    protected boolean shouldFireEvent() {
        return this.isInTheModel() && this.isEditable();
    }

    protected String getLineDelimiter() {
        if (this.fModel instanceof IEditingModel) {
            IDocument document = ((IEditingModel)this.fModel).getDocument();
            return TextUtilities.getDefaultLineDelimiter((IDocument)document);
        }
        return super.getLineDelimiter();
    }

    public void reconnect(IDocumentElementNode parent, IModel model) {
        super.reconnect(parent, model);
        this.fInTheModel = true;
        this.fModel = model;
    }

    protected void firePropertyChanged(String property, Object oldValue, Object newValue) {
        this.firePropertyChanged(this, property, oldValue, newValue);
    }

    private void firePropertyChanged(Object object, String property, Object oldValue, Object newValue) {
        if (this.fModel.isEditable() && this.fModel instanceof IModelChangeProvider) {
            IModelChangeProvider provider = (IModelChangeProvider)((Object)this.fModel);
            provider.fireModelObjectChanged(object, property, oldValue, newValue);
        }
    }

    protected void fireStructureChanged(Object child, int changeType) {
        this.fireStructureChanged(new Object[]{child}, changeType);
    }

    protected void fireStructureChanged(Object[] children, int changeType) {
        if (this.fModel.isEditable() && this.fModel instanceof IModelChangeProvider) {
            IModelChangeProvider provider = (IModelChangeProvider)((Object)this.fModel);
            ModelChangedEvent event = new ModelChangedEvent(provider, changeType, children, null);
            provider.fireModelChanged(event);
        }
    }

    public void addChildNode(IDocumentElementNode child) {
        if (child instanceof IDocumentObject) {
            ((IDocumentObject)child).setInTheModel(true);
        }
        super.addChildNode(child);
    }

    public void addChildNode(IDocumentElementNode child, int position) {
        if (position < 0 || position > this.getChildCount()) {
            return;
        }
        if (child instanceof IDocumentObject) {
            ((IDocumentObject)child).setInTheModel(true);
        }
        super.addChildNode(child, position);
    }

    public void addChildNode(IDocumentElementNode child, int position, boolean fireEvent) {
        this.addChildNode(child, position);
        if (fireEvent && this.shouldFireEvent()) {
            this.fireStructureChanged(child, 1);
        }
    }

    public void addChildNode(IDocumentElementNode child, boolean fireEvent) {
        this.addChildNode(child);
        if (fireEvent && this.shouldFireEvent()) {
            this.fireStructureChanged(child, 1);
        }
    }

    public IDocumentElementNode removeChildNode(IDocumentElementNode child) {
        IDocumentElementNode node = super.removeChildNode(child);
        if (node != null && node instanceof IDocumentObject) {
            ((IDocumentObject)node).setInTheModel(false);
        }
        return node;
    }

    public IDocumentElementNode removeChildNode(int index) {
        IDocumentElementNode node = super.removeChildNode(index);
        if (node != null && node instanceof IDocumentObject) {
            ((IDocumentObject)node).setInTheModel(false);
        }
        return node;
    }

    public IDocumentElementNode removeChildNode(IDocumentElementNode child, boolean fireEvent) {
        IDocumentElementNode node = this.removeChildNode(child);
        if (fireEvent && this.shouldFireEvent()) {
            this.fireStructureChanged(child, 2);
        }
        return node;
    }

    public IDocumentElementNode removeChildNode(int index, Class clazz, boolean fireEvent) {
        IDocumentElementNode node = this.removeChildNode(index, clazz);
        if (fireEvent && this.shouldFireEvent()) {
            this.fireStructureChanged(node, 2);
        }
        return node;
    }

    public IDocumentElementNode removeChildNode(int index, Class clazz) {
        if (index < 0 || index >= this.getChildCount() || !clazz.isInstance(this.getChildAt(index))) {
            return null;
        }
        IDocumentElementNode node = this.removeChildNode(index);
        return node;
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write(true));
    }

    public void setChildNode(IDocumentElementNode newNode, Class clazz) {
        boolean fireEvent = this.shouldFireEvent();
        IDocumentElementNode oldNode = this.getChildNode(clazz);
        if (newNode == null && oldNode == null) {
            return;
        }
        if (newNode == null) {
            this.removeChildNode(oldNode, fireEvent);
        } else if (oldNode == null) {
            this.addChildNode(newNode, fireEvent);
        } else {
            this.replaceChildNode(newNode, oldNode, fireEvent);
        }
    }

    protected void replaceChildNode(IDocumentElementNode newNode, IDocumentElementNode oldNode, boolean fireEvent) {
        int position = this.indexOf(oldNode);
        if (position < 0) {
            return;
        }
        this.addChildNode(newNode, position, fireEvent);
        this.removeChildNode(oldNode, fireEvent);
    }

    public IDocumentElementNode getChildNode(Class clazz) {
        ArrayList children = this.getChildNodesList();
        Iterator iterator = children.iterator();
        while (iterator.hasNext()) {
            IDocumentElementNode node = (IDocumentElementNode)iterator.next();
            if (!clazz.isInstance(node)) continue;
            return node;
        }
        return null;
    }

    public int getChildNodeCount(Class clazz) {
        int count = 0;
        ArrayList children = this.getChildNodesList();
        Iterator iterator = children.iterator();
        while (iterator.hasNext()) {
            IDocumentElementNode node = (IDocumentElementNode)iterator.next();
            if (!clazz.isInstance(node)) continue;
            ++count;
        }
        return count;
    }

    public ArrayList getChildNodesList(Class clazz, boolean match) {
        return this.getChildNodesList(new Class[]{clazz}, match);
    }

    public ArrayList getChildNodesList(Class[] classes, boolean match) {
        ArrayList<IDocumentElementNode> filteredChildren = new ArrayList<IDocumentElementNode>();
        ArrayList children = this.getChildNodesList();
        Iterator iterator = children.iterator();
        block0: while (iterator.hasNext()) {
            IDocumentElementNode node = (IDocumentElementNode)iterator.next();
            int i = 0;
            while (i < classes.length) {
                Class clazz = classes[i];
                if (clazz.isInstance(node) == match) {
                    filteredChildren.add(node);
                    continue block0;
                }
                ++i;
            }
        }
        return filteredChildren;
    }

    public IDocumentElementNode getNextSibling(IDocumentElementNode node, Class clazz) {
        int position = this.indexOf(node);
        int lastIndex = this.getChildCount() - 1;
        if (position < 0 || position >= lastIndex) {
            return null;
        }
        int i = position + 1;
        while (i <= lastIndex) {
            IDocumentElementNode currentNode = this.getChildAt(i);
            if (clazz.isInstance(currentNode)) {
                return currentNode;
            }
            ++i;
        }
        return null;
    }

    public IDocumentElementNode getPreviousSibling(IDocumentElementNode node, Class clazz) {
        int position = this.indexOf(node);
        if (position <= 0 || position >= this.getChildCount()) {
            return null;
        }
        int i = position - 1;
        while (i >= 0) {
            IDocumentElementNode currentNode = this.getChildAt(i);
            if (clazz.isInstance(currentNode)) {
                return currentNode;
            }
            --i;
        }
        return null;
    }

    public boolean hasChildNodes(Class clazz) {
        ArrayList children = this.getChildNodesList();
        Iterator iterator = children.iterator();
        while (iterator.hasNext()) {
            IDocumentElementNode node = (IDocumentElementNode)iterator.next();
            if (!clazz.isInstance(node)) continue;
            return true;
        }
        return false;
    }

    public boolean isFirstChildNode(IDocumentElementNode node, Class clazz) {
        int position = this.indexOf(node);
        if (position < 0 || position >= this.getChildCount()) {
            return false;
        }
        if (position == 0) {
            return true;
        }
        int i = 0;
        while (i < position) {
            if (clazz.isInstance(this.getChildAt(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isLastChildNode(IDocumentElementNode node, Class clazz) {
        int position = this.indexOf(node);
        int lastIndex = this.getChildCount() - 1;
        if (position < 0 || position > lastIndex) {
            return false;
        }
        if (position == lastIndex) {
            return true;
        }
        int i = position + 1;
        while (i <= lastIndex) {
            if (clazz.isInstance(this.getChildAt(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void swap(IDocumentElementNode child1, IDocumentElementNode child2, boolean fireEvent) {
        super.swap(child1, child2);
        if (fireEvent && this.shouldFireEvent()) {
            this.firePropertyChanged(this, "type_swap", child1, child2);
        }
    }

    public void moveChildNode(IDocumentElementNode node, int newRelativeIndex, boolean fireEvent) {
        if (newRelativeIndex == 0) {
            return;
        }
        int currentIndex = this.indexOf(node);
        if (currentIndex == -1) {
            return;
        }
        int newIndex = newRelativeIndex + currentIndex;
        if (newIndex < 0 || newIndex >= this.getChildCount()) {
            return;
        }
        if (newRelativeIndex == -1 || newRelativeIndex == 1) {
            IDocumentElementNode sibling = this.getChildAt(newIndex);
            if (sibling == null) {
                return;
            }
            this.swap(node, sibling, fireEvent);
        } else {
            this.removeChildNode(node, fireEvent);
            IDocumentElementNode clone = this.clone(node);
            this.addChildNode(clone, newIndex, fireEvent);
        }
    }

    public IDocumentElementNode clone(IDocumentElementNode node) {
        IDocumentElementNode clone = null;
        try {
            ByteArrayOutputStream bout = new ByteArrayOutputStream();
            ObjectOutputStream out = new ObjectOutputStream(bout);
            out.writeObject(node);
            out.flush();
            out.close();
            byte[] bytes = bout.toByteArray();
            ByteArrayInputStream bin = new ByteArrayInputStream(bytes);
            ObjectInputStream in = new ObjectInputStream(bin);
            clone = (IDocumentElementNode)in.readObject();
            in.close();
            clone.reconnect(this, this.fModel);
        }
        catch (IOException iOException) {
            clone = null;
        }
        catch (ClassNotFoundException classNotFoundException) {
            clone = null;
        }
        return clone;
    }

    public boolean getBooleanAttributeValue(String name, boolean defaultValue) {
        String value = this.getXMLAttributeValue(name);
        if (value == null) {
            return defaultValue;
        }
        if (value.equalsIgnoreCase("true")) {
            return true;
        }
        if (value.equalsIgnoreCase("false")) {
            return false;
        }
        return defaultValue;
    }

    public boolean setBooleanAttributeValue(String name, boolean value) {
        String newValue = Boolean.valueOf(value).toString();
        return this.setXMLAttribute(name, newValue);
    }

    public boolean setXMLAttribute(String name, String newValue) {
        String oldValue = this.getXMLAttributeValue(name);
        boolean changed = super.setXMLAttribute(name, newValue);
        if (changed && this.shouldFireEvent()) {
            this.firePropertyChanged(name, oldValue, newValue);
        }
        return changed;
    }

    public boolean setXMLContent(String text) {
        String oldText = null;
        IDocumentTextNode node = this.getTextNode();
        oldText = node == null ? "" : node.getText();
        boolean changed = super.setXMLContent(text);
        if (changed && this.shouldFireEvent()) {
            if (node != null) {
                this.firePropertyChanged(node, "type_pcdata", oldText, text);
            } else {
                this.fireStructureChanged(this, 1);
            }
        }
        return changed;
    }

    protected String getFileEncoding() {
        if (this.fModel != null && this.fModel instanceof IEditingModel) {
            return ((IEditingModel)this.fModel).getCharset();
        }
        return super.getFileEncoding();
    }
}

