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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.IndentSample;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ItemLabelPosEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IndentSampleImpl
extends ARObjectImpl
implements IndentSample {
    protected static final ItemLabelPosEnum ITEM_LABEL_POS_EDEFAULT = ItemLabelPosEnum.NEWLINE;
    protected ItemLabelPosEnum itemLabelPos = ITEM_LABEL_POS_EDEFAULT;
    protected boolean itemLabelPosESet;
    protected EList<LOverviewParagraph> l2s;

    protected IndentSampleImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ListelementsPackage.Literals.INDENT_SAMPLE;
    }

    @Override
    public LabeledList getLabeledList() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LabeledList)this.eContainer();
    }

    public NotificationChain basicSetLabeledList(LabeledList newLabeledList, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLabeledList, 4, msgs);
        return msgs;
    }

    @Override
    public void setLabeledList(LabeledList newLabeledList) {
        if (newLabeledList != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLabeledList != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLabeledList)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLabeledList != null) {
                msgs = ((InternalEObject)newLabeledList).eInverseAdd((InternalEObject)this, 9, LabeledList.class, msgs);
            }
            if ((msgs = this.basicSetLabeledList(newLabeledList, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLabeledList, (Object)newLabeledList));
        }
    }

    @Override
    public ItemLabelPosEnum getItemLabelPos() {
        return this.itemLabelPos;
    }

    @Override
    public void setItemLabelPos(ItemLabelPosEnum newItemLabelPos) {
        ItemLabelPosEnum oldItemLabelPos = this.itemLabelPos;
        this.itemLabelPos = newItemLabelPos == null ? ITEM_LABEL_POS_EDEFAULT : newItemLabelPos;
        boolean oldItemLabelPosESet = this.itemLabelPosESet;
        this.itemLabelPosESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldItemLabelPos, (Object)this.itemLabelPos, !oldItemLabelPosESet));
        }
    }

    @Override
    public void unsetItemLabelPos() {
        ItemLabelPosEnum oldItemLabelPos = this.itemLabelPos;
        boolean oldItemLabelPosESet = this.itemLabelPosESet;
        this.itemLabelPos = ITEM_LABEL_POS_EDEFAULT;
        this.itemLabelPosESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldItemLabelPos, (Object)ITEM_LABEL_POS_EDEFAULT, oldItemLabelPosESet));
        }
    }

    @Override
    public boolean isSetItemLabelPos() {
        return this.itemLabelPosESet;
    }

    @Override
    public EList<LOverviewParagraph> getL2s() {
        if (this.l2s == null) {
            this.l2s = new EObjectContainmentEList(LOverviewParagraph.class, (InternalEObject)this, 6);
        }
        return this.l2s;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLabeledList((LabeledList)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLabeledList(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getL2s()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, LabeledList.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLabeledList();
            }
            case 5: {
                return this.getItemLabelPos();
            }
            case 6: {
                return this.getL2s();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLabeledList((LabeledList)newValue);
                return;
            }
            case 5: {
                this.setItemLabelPos((ItemLabelPosEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.getL2s().clear();
                this.getL2s().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLabeledList(null);
                return;
            }
            case 5: {
                this.unsetItemLabelPos();
                return;
            }
            case 6: {
                this.getL2s().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLabeledList() != null;
            }
            case 5: {
                return this.isSetItemLabelPos();
            }
            case 6: {
                return this.l2s != null && !this.l2s.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (itemLabelPos: ");
        if (this.itemLabelPosESet) {
            result.append((Object)this.itemLabelPos);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

