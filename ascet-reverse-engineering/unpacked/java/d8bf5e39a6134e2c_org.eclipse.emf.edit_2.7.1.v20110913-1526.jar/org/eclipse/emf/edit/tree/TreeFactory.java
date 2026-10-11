/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package org.eclipse.emf.edit.tree;

import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.edit.tree.TreeNode;
import org.eclipse.emf.edit.tree.TreePackage;
import org.eclipse.emf.edit.tree.impl.TreeFactoryImpl;

public interface TreeFactory
extends EFactory {
    public static final TreeFactory eINSTANCE = TreeFactoryImpl.init();

    public TreeNode createTreeNode();

    public TreePackage getTreePackage();
}

