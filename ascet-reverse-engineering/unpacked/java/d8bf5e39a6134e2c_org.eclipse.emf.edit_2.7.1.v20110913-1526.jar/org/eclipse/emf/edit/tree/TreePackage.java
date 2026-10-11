/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package org.eclipse.emf.edit.tree;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.edit.tree.TreeFactory;
import org.eclipse.emf.edit.tree.impl.TreePackageImpl;

public interface TreePackage
extends EPackage {
    public static final String eNAME = "tree";
    public static final String eNS_URI = "http://www.eclipse.org/emf/2002/Tree";
    public static final String eNS_PREFIX = "tree";
    public static final TreePackage eINSTANCE = TreePackageImpl.init();
    public static final int TREE_NODE = 0;
    public static final int TREE_NODE__PARENT = 0;
    public static final int TREE_NODE__CHILDREN = 1;
    public static final int TREE_NODE__DATA = 2;
    public static final int TREE_NODE_FEATURE_COUNT = 3;

    public EClass getTreeNode();

    public EReference getTreeNode_Parent();

    public EReference getTreeNode_Children();

    public EReference getTreeNode_Data();

    public TreeFactory getTreeFactory();

    public static interface Literals {
        public static final EClass TREE_NODE = eINSTANCE.getTreeNode();
        public static final EReference TREE_NODE__PARENT = eINSTANCE.getTreeNode_Parent();
        public static final EReference TREE_NODE__CHILDREN = eINSTANCE.getTreeNode_Children();
        public static final EReference TREE_NODE__DATA = eINSTANCE.getTreeNode_Data();
    }
}

