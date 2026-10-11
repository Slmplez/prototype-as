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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.IndentSample;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
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
public class LabeledListImpl
extends PaginateableImpl
implements LabeledList {
    protected IndentSample indentSample;
    protected EList<LabeledItem> labeledItems;
    protected VariationPoint variationPoint;

    protected LabeledListImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ListelementsPackage.Literals.LABELED_LIST;
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
                msgs = ((InternalEObject)newDocumentationBlock).eInverseAdd((InternalEObject)this, 9, DocumentationBlock.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationBlock(newDocumentationBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newDocumentationBlock, (Object)newDocumentationBlock));
        }
    }

    @Override
    public IndentSample getIndentSample() {
        return this.indentSample;
    }

    public NotificationChain basicSetIndentSample(IndentSample newIndentSample, NotificationChain msgs) {
        IndentSample oldIndentSample = this.indentSample;
        this.indentSample = newIndentSample;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldIndentSample, (Object)newIndentSample);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIndentSample(IndentSample newIndentSample) {
        if (newIndentSample != this.indentSample) {
            NotificationChain msgs = null;
            if (this.indentSample != null) {
                msgs = ((InternalEObject)this.indentSample).eInverseRemove((InternalEObject)this, 4, IndentSample.class, msgs);
            }
            if (newIndentSample != null) {
                msgs = ((InternalEObject)newIndentSample).eInverseAdd((InternalEObject)this, 4, IndentSample.class, msgs);
            }
            if ((msgs = this.basicSetIndentSample(newIndentSample, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newIndentSample, (Object)newIndentSample));
        }
    }

    @Override
    public EList<LabeledItem> getLabeledItems() {
        if (this.labeledItems == null) {
            this.labeledItems = new EObjectContainmentWithInverseEList(LabeledItem.class, (InternalEObject)this, 10, 8);
        }
        return this.labeledItems;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newVariationPoint, (Object)newVariationPoint));
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
                if (this.indentSample != null) {
                    msgs = ((InternalEObject)this.indentSample).eInverseRemove((InternalEObject)this, -10, null, msgs);
                }
                return this.basicSetIndentSample((IndentSample)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getLabeledItems()).basicAdd((Object)otherEnd, msgs);
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
                return this.basicSetIndentSample(null, msgs);
            }
            case 10: {
                return ((InternalEList)this.getLabeledItems()).basicRemove((Object)otherEnd, msgs);
            }
            case 11: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, DocumentationBlock.class, msgs);
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
                return this.getIndentSample();
            }
            case 10: {
                return this.getLabeledItems();
            }
            case 11: {
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
                this.setIndentSample((IndentSample)newValue);
                return;
            }
            case 10: {
                this.getLabeledItems().clear();
                this.getLabeledItems().addAll((Collection)newValue);
                return;
            }
            case 11: {
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
                this.setIndentSample(null);
                return;
            }
            case 10: {
                this.getLabeledItems().clear();
                return;
            }
            case 11: {
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
                return this.indentSample != null;
            }
            case 10: {
                return this.labeledItems != null && !this.labeledItems.isEmpty();
            }
            case 11: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

