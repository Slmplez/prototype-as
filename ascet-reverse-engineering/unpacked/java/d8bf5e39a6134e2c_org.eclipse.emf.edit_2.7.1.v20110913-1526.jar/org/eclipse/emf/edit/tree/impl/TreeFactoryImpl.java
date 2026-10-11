/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package org.eclipse.emf.edit.tree.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.edit.tree.TreeFactory;
import org.eclipse.emf.edit.tree.TreeNode;
import org.eclipse.emf.edit.tree.TreePackage;
import org.eclipse.emf.edit.tree.impl.TreeNodeImpl;

public class TreeFactoryImpl
extends EFactoryImpl
implements TreeFactory {
    public static TreeFactory init() {
        try {
            TreeFactory theTreeFactory = (TreeFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.eclipse.org/emf/2002/Tree");
            if (theTreeFactory != null) {
                return theTreeFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TreeFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTreeNode();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public TreeNode createTreeNode() {
        TreeNodeImpl treeNode = new TreeNodeImpl();
        return treeNode;
    }

    public TreePackage getTreePackage() {
        return (TreePackage)this.getEPackage();
    }

    @Deprecated
    public static TreePackage getPackage() {
        return TreePackage.eINSTANCE;
    }
}

