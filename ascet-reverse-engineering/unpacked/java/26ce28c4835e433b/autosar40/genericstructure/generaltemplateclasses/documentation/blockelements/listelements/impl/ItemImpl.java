/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.Item;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ItemImpl
extends PaginateableImpl
implements Item {
    protected DocumentationBlock itemContents;
    protected VariationPoint variationPoint;

    protected ItemImpl() {
    }

    protected EClass eStaticClass() {
        return ListelementsPackage.Literals.ITEM;
    }

    public List getList() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (List)this.eContainer();
    }

    public NotificationChain basicSetList(List newList, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newList, 8, msgs);
        return msgs;
    }

    public void setList(List newList) {
        if (newList != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newList != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newList)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newList != null) {
                msgs = ((InternalEObject)newList).eInverseAdd((InternalEObject)this, 10, List.class, msgs);
            }
            if ((msgs = this.basicSetList(newList, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newList, (Object)newList));
        }
    }

    public DocumentationBlock getItemContents() {
        return this.itemContents;
    }

    public NotificationChain basicSetItemContents(DocumentationBlock newItemContents, NotificationChain msgs) {
        DocumentationBlock oldItemContents = this.itemContents;
        this.itemContents = newItemContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldItemContents, (Object)newItemContents);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setItemContents(DocumentationBlock newItemContents) {
        if (newItemContents != this.itemContents) {
            NotificationChain msgs = null;
            if (this.itemContents != null) {
                msgs = ((InternalEObject)this.itemContents).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newItemContents != null) {
                msgs = ((InternalEObject)newItemContents).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetItemContents(newItemContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newItemContents, (Object)newItemContents));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetList((List)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetList(null, msgs);
            }
            case 9: {
                return this.basicSetItemContents(null, msgs);
            }
            case 10: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, List.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getList();
            }
            case 9: {
                return this.getItemContents();
            }
            case 10: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setList((List)newValue);
                return;
            }
            case 9: {
                this.setItemContents((DocumentationBlock)newValue);
                return;
            }
            case 10: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setList(null);
                return;
            }
            case 9: {
                this.setItemContents(null);
                return;
            }
            case 10: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getList() != null;
            }
            case 9: {
                return this.itemContents != null;
            }
            case 10: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

