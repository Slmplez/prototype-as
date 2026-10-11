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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DefListImpl
extends PaginateableImpl
implements DefList {
    protected EList<DefItem> defItems;
    protected VariationPoint variationPoint;

    protected DefListImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ListelementsPackage.Literals.DEF_LIST;
    }

    @Override
    public DocumentationBlock getDocumentationBlock() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (DocumentationBlock)this.eContainer();
    }

    public NotificationChain basicSetDocumentationBlock(DocumentationBlock newDocumentationBlock, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDocumentationBlock, 8, msgs);
        return msgs;
    }

    @Override
    public void setDocumentationBlock(DocumentationBlock newDocumentationBlock) {
        if (newDocumentationBlock != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newDocumentationBlock != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDocumentationBlock)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDocumentationBlock != null) {
                msgs = ((InternalEObject)newDocumentationBlock).eInverseAdd((InternalEObject)this, 8, DocumentationBlock.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationBlock(newDocumentationBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newDocumentationBlock, (Object)newDocumentationBlock));
        }
    }

    @Override
    public EList<DefItem> getDefItems() {
        if (this.defItems == null) {
            this.defItems = new EObjectContainmentWithInverseEList(DefItem.class, (InternalEObject)this, 9, 11);
        }
        return this.defItems;
    }

    @Override
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

    @Override
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
                return this.basicSetDocumentationBlock((DocumentationBlock)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getDefItems()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetDocumentationBlock(null, msgs);
            }
            case 9: {
                return ((InternalEList)this.getDefItems()).basicRemove((Object)otherEnd, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, DocumentationBlock.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getDocumentationBlock();
            }
            case 9: {
                return this.getDefItems();
            }
            case 10: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setDocumentationBlock((DocumentationBlock)newValue);
                return;
            }
            case 9: {
                this.getDefItems().clear();
                this.getDefItems().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setDocumentationBlock(null);
                return;
            }
            case 9: {
                this.getDefItems().clear();
                return;
            }
            case 10: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getDocumentationBlock() != null;
            }
            case 9: {
                return this.defItems != null && !this.defItems.isEmpty();
            }
            case 10: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

