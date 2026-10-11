/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.edit.tree;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TreeNode
extends EObject {
    public TreeNode getParent();

    public void setParent(TreeNode var1);

    public EList<TreeNode> getChildren();

    public EObject getData();

    public void setData(EObject var1);
}

