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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LabeledItemImpl
extends PaginateableImpl
implements LabeledItem {
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected MultiLanguageOverviewParagraph itemLabel;
    protected DocumentationBlock itemContents;
    protected VariationPoint variationPoint;

    protected LabeledItemImpl() {
    }

    protected EClass eStaticClass() {
        return ListelementsPackage.Literals.LABELED_ITEM;
    }

    public LabeledList getLabeledList() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (LabeledList)this.eContainer();
    }

    public NotificationChain basicSetLabeledList(LabeledList newLabeledList, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLabeledList, 8, msgs);
        return msgs;
    }

    public void setLabeledList(LabeledList newLabeledList) {
        if (newLabeledList != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newLabeledList != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLabeledList)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLabeledList != null) {
                msgs = ((InternalEObject)newLabeledList).eInverseAdd((InternalEObject)this, 10, LabeledList.class, msgs);
            }
            if ((msgs = this.basicSetLabeledList(newLabeledList, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newLabeledList, (Object)newLabeledList));
        }
    }

    public String getHelpEntry() {
        return this.helpEntry;
    }

    public void setHelpEntry(String newHelpEntry) {
        String oldHelpEntry = this.helpEntry;
        this.helpEntry = newHelpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = HELP_ENTRY_EDEFAULT;
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldHelpEntry, (Object)HELP_ENTRY_EDEFAULT, oldHelpEntryESet));
        }
    }

    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    public MultiLanguageOverviewParagraph getItemLabel() {
        return this.itemLabel;
    }

    public NotificationChain basicSetItemLabel(MultiLanguageOverviewParagraph newItemLabel, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldItemLabel = this.itemLabel;
        this.itemLabel = newItemLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldItemLabel, (Object)newItemLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setItemLabel(MultiLanguageOverviewParagraph newItemLabel) {
        if (newItemLabel != this.itemLabel) {
            NotificationChain msgs = null;
            if (this.itemLabel != null) {
                msgs = ((InternalEObject)this.itemLabel).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newItemLabel != null) {
                msgs = ((InternalEObject)newItemLabel).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetItemLabel(newItemLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newItemLabel, (Object)newItemLabel));
        }
    }

    public DocumentationBlock getItemContents() {
        return this.itemContents;
    }

    public NotificationChain basicSetItemContents(DocumentationBlock newItemContents, NotificationChain msgs) {
        DocumentationBlock oldItemContents = this.itemContents;
        this.itemContents = newItemContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldItemContents, (Object)newItemContents);
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
                msgs = ((InternalEObject)this.itemContents).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newItemContents != null) {
                msgs = ((InternalEObject)newItemContents).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetItemContents(newItemContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newItemContents, (Object)newItemContents));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
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
            case 8: {
                return this.basicSetLabeledList(null, msgs);
            }
            case 10: {
                return this.basicSetItemLabel(null, msgs);
            }
            case 11: {
                return this.basicSetItemContents(null, msgs);
            }
            case 12: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, LabeledList.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getLabeledList();
            }
            case 9: {
                return this.getHelpEntry();
            }
            case 10: {
                return this.getItemLabel();
            }
            case 11: {
                return this.getItemContents();
            }
            case 12: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setLabeledList((LabeledList)newValue);
                return;
            }
            case 9: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 10: {
                this.setItemLabel((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 11: {
                this.setItemContents((DocumentationBlock)newValue);
                return;
            }
            case 12: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setLabeledList(null);
                return;
            }
            case 9: {
                this.unsetHelpEntry();
                return;
            }
            case 10: {
                this.setItemLabel(null);
                return;
            }
            case 11: {
                this.setItemContents(null);
                return;
            }
            case 12: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getLabeledList() != null;
            }
            case 9: {
                return this.isSetHelpEntry();
            }
            case 10: {
                return this.itemLabel != null;
            }
            case 11: {
                return this.itemContents != null;
            }
            case 12: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (helpEntry: ");
        if (this.helpEntryESet) {
            result.append(this.helpEntry);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

