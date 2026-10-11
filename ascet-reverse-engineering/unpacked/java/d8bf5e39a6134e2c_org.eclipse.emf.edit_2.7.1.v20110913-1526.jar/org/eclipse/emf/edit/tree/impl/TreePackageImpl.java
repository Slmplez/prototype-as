/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package org.eclipse.emf.edit.tree.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.edit.tree.TreeFactory;
import org.eclipse.emf.edit.tree.TreeNode;
import org.eclipse.emf.edit.tree.TreePackage;

public class TreePackageImpl
extends EPackageImpl
implements TreePackage {
    private EClass treeNodeEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private TreePackageImpl() {
        super("http://www.eclipse.org/emf/2002/Tree", (EFactory)TreeFactory.eINSTANCE);
    }

    public static TreePackage init() {
        if (isInited) {
            return (TreePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2002/Tree");
        }
        TreePackageImpl theTreePackage = (TreePackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.eclipse.org/emf/2002/Tree") instanceof TreePackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.eclipse.org/emf/2002/Tree") : new TreePackageImpl());
        isInited = true;
        EcorePackage.eINSTANCE.eClass();
        theTreePackage.createPackageContents();
        theTreePackage.initializePackageContents();
        theTreePackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.eclipse.org/emf/2002/Tree", (Object)theTreePackage);
        return theTreePackage;
    }

    public EClass getTreeNode() {
        return this.treeNodeEClass;
    }

    public EReference getTreeNode_Parent() {
        return (EReference)this.treeNodeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getTreeNode_Children() {
        return (EReference)this.treeNodeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getTreeNode_Data() {
        return (EReference)this.treeNodeEClass.getEStructuralFeatures().get(2);
    }

    public TreeFactory getTreeFactory() {
        return (TreeFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.treeNodeEClass = this.createEClass(0);
        this.createEReference(this.treeNodeEClass, 0);
        this.createEReference(this.treeNodeEClass, 1);
        this.createEReference(this.treeNodeEClass, 2);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("tree");
        this.setNsPrefix("tree");
        this.setNsURI("http://www.eclipse.org/emf/2002/Tree");
        EcorePackage theEcorePackage = (EcorePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2002/Ecore");
        this.initEClass(this.treeNodeEClass, TreeNode.class, "TreeNode", false, false, true);
        this.initEReference(this.getTreeNode_Parent(), (EClassifier)this.getTreeNode(), this.getTreeNode_Children(), "parent", null, 0, 1, TreeNode.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getTreeNode_Children(), (EClassifier)this.getTreeNode(), this.getTreeNode_Parent(), "children", null, 0, -1, TreeNode.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTreeNode_Data(), (EClassifier)theEcorePackage.getEObject(), null, "data", null, 1, 1, TreeNode.class, false, false, true, false, true, false, true, false, true);
        this.createResource("http://www.eclipse.org/emf/2002/Tree");
    }
}

