/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.edit.tree.util;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.tree.TreeNode;
import org.eclipse.emf.edit.tree.TreePackage;
import org.eclipse.emf.edit.tree.util.TreeSwitch;

public class TreeAdapterFactory
extends AdapterFactoryImpl {
    protected static TreePackage modelPackage;
    protected TreeSwitch<Adapter> modelSwitch = new TreeSwitch<Adapter>(){

        @Override
        public Adapter caseTreeNode(TreeNode object) {
            return TreeAdapterFactory.this.createTreeNodeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TreeAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TreeAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TreePackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createTreeNodeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

