/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.edit.tree.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.edit.tree.TreeNode;
import org.eclipse.emf.edit.tree.TreePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TreeNodeImpl
extends EObjectImpl
implements TreeNode {
    protected EList<TreeNode> children;
    protected EObject data;

    protected TreeNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TreePackage.Literals.TREE_NODE;
    }

    @Override
    public TreeNode getParent() {
        if (this.eContainerFeatureID() != 0) {
            return null;
        }
        return (TreeNode)this.eContainer();
    }

    public NotificationChain basicSetParent(TreeNode newParent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newParent, 0, msgs);
        return msgs;
    }

    @Override
    public void setParent(TreeNode newParent) {
        if (newParent != this.eInternalContainer() || this.eContainerFeatureID() != 0 && newParent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newParent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newParent != null) {
                msgs = ((InternalEObject)newParent).eInverseAdd((InternalEObject)this, 1, TreeNode.class, msgs);
            }
            if ((msgs = this.basicSetParent(newParent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newParent, (Object)newParent));
        }
    }

    @Override
    public EList<TreeNode> getChildren() {
        if (this.children == null) {
            this.children = new EObjectContainmentWithInverseEList(TreeNode.class, (InternalEObject)this, 1, 0);
        }
        return this.children;
    }

    @Override
    public EObject getData() {
        if (this.data != null && this.data.eIsProxy()) {
            InternalEObject oldData = (InternalEObject)this.data;
            this.data = this.eResolveProxy(oldData);
            if (this.data != oldData && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 2, (Object)oldData, (Object)this.data));
            }
        }
        return this.data;
    }

    public EObject basicGetData() {
        return this.data;
    }

    @Override
    public void setData(EObject newData) {
        EObject oldData = this.data;
        this.data = newData;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldData, (Object)this.data));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetParent((TreeNode)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getChildren()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetParent(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getChildren()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 0: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 1, TreeNode.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getParent();
            }
            case 1: {
                return this.getChildren();
            }
            case 2: {
                if (resolve) {
                    return this.getData();
                }
                return this.basicGetData();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setParent((TreeNode)newValue);
                return;
            }
            case 1: {
                this.getChildren().clear();
                this.getChildren().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setData((EObject)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setParent(null);
                return;
            }
            case 1: {
                this.getChildren().clear();
                return;
            }
            case 2: {
                this.setData(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.getParent() != null;
            }
            case 1: {
                return this.children != null && !this.children.isEmpty();
            }
            case 2: {
                return this.data != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

