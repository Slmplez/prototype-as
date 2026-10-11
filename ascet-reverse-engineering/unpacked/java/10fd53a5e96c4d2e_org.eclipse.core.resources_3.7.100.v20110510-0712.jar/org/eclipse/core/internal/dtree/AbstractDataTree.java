/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataTreeLookup;
import org.eclipse.core.internal.dtree.ObjectNotFoundException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public abstract class AbstractDataTree {
    private boolean immutable = false;
    protected static final IPath[] NO_CHILDREN = new IPath[0];

    public AbstractDataTree() {
        this.empty();
    }

    protected AbstractDataTree copy() {
        AbstractDataTree newTree = this.createInstance();
        newTree.setImmutable(this.isImmutable());
        newTree.setRootNode(this.getRootNode());
        return newTree;
    }

    public abstract AbstractDataTreeNode copyCompleteSubtree(IPath var1);

    public abstract void createChild(IPath var1, String var2);

    public abstract void createChild(IPath var1, String var2, Object var3);

    protected abstract AbstractDataTree createInstance();

    public abstract void createSubtree(IPath var1, AbstractDataTreeNode var2);

    public abstract void deleteChild(IPath var1, String var2);

    public abstract void empty();

    public IPath getChild(IPath parentKey, int index) {
        String child = this.getNameOfChild(parentKey, index);
        return parentKey.append(child);
    }

    public int getChildCount(IPath parentKey) {
        return this.getNamesOfChildren(parentKey).length;
    }

    public IPath[] getChildren(IPath parentKey) {
        String[] names = this.getNamesOfChildren(parentKey);
        int len = names.length;
        if (len == 0) {
            return NO_CHILDREN;
        }
        IPath[] answer = new IPath[len];
        int i = 0;
        while (i < len) {
            answer[i] = parentKey.append(names[i]);
            ++i;
        }
        return answer;
    }

    public abstract Object getData(IPath var1);

    public String getNameOfChild(IPath parentKey, int index) {
        String[] childNames = this.getNamesOfChildren(parentKey);
        return childNames[index];
    }

    public abstract String[] getNamesOfChildren(IPath var1);

    AbstractDataTreeNode getRootNode() {
        throw new AbstractMethodError(Messages.dtree_subclassImplement);
    }

    static void handleImmutableTree() {
        throw new RuntimeException(Messages.dtree_immutable);
    }

    static void handleNotFound(IPath key) {
        throw new ObjectNotFoundException(NLS.bind((String)Messages.dtree_notFound, (Object)key));
    }

    public void immutable() {
        this.immutable = true;
    }

    public abstract boolean includes(IPath var1);

    public boolean isImmutable() {
        return this.immutable;
    }

    public abstract DataTreeLookup lookup(IPath var1);

    public IPath rootKey() {
        return Path.ROOT;
    }

    public abstract void setData(IPath var1, Object var2);

    void setImmutable(boolean bool) {
        this.immutable = bool;
    }

    void setRootNode(AbstractDataTreeNode node) {
        throw new Error(Messages.dtree_subclassImplement);
    }
}

