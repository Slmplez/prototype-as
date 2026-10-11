/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.flatmap.impl;

import autosar40.commonstructure.flatmap.AliasNameAssignment;
import autosar40.commonstructure.flatmap.AliasNameSet;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class AliasNameAssignmentImpl
extends ARObjectImpl
implements AliasNameAssignment,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected MultilanguageLongName label;
    protected Identifiable identifiable;
    protected FlatInstanceDescriptor flatInstance;
    protected VariationPoint variationPoint;

    protected AliasNameAssignmentImpl() {
    }

    protected EClass eStaticClass() {
        return FlatmapPackage.Literals.ALIAS_NAME_ASSIGNMENT;
    }

    public AliasNameSet getAliasNameSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AliasNameSet)this.eContainer();
    }

    public NotificationChain basicSetAliasNameSet(AliasNameSet newAliasNameSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAliasNameSet, 4, msgs);
        return msgs;
    }

    public void setAliasNameSet(AliasNameSet newAliasNameSet) {
        if (newAliasNameSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAliasNameSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAliasNameSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAliasNameSet != null) {
                msgs = ((InternalEObject)newAliasNameSet).eInverseAdd((InternalEObject)this, 22, AliasNameSet.class, msgs);
            }
            if ((msgs = this.basicSetAliasNameSet(newAliasNameSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAliasNameSet, (Object)newAliasNameSet));
        }
    }

    public String getShortLabel() {
        return this.shortLabel;
    }

    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = SHORT_LABEL_EDEFAULT;
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortLabel, (Object)SHORT_LABEL_EDEFAULT, oldShortLabelESet));
        }
    }

    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    public MultilanguageLongName getLabel() {
        return this.label;
    }

    public NotificationChain basicSetLabel(MultilanguageLongName newLabel, NotificationChain msgs) {
        MultilanguageLongName oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLabel, (Object)newLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLabel(MultilanguageLongName newLabel) {
        if (newLabel != this.label) {
            NotificationChain msgs = null;
            if (this.label != null) {
                msgs = ((InternalEObject)this.label).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newLabel != null) {
                msgs = ((InternalEObject)newLabel).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetLabel(newLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newLabel, (Object)newLabel));
        }
    }

    public Identifiable getIdentifiable() {
        if (this.identifiable != null && this.identifiable.eIsProxy()) {
            InternalEObject oldIdentifiable = (InternalEObject)this.identifiable;
            this.identifiable = (Identifiable)this.eResolveProxy(oldIdentifiable);
            if (this.identifiable != oldIdentifiable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldIdentifiable, (Object)this.identifiable));
            }
        }
        return this.identifiable;
    }

    public Identifiable basicGetIdentifiable() {
        return this.identifiable;
    }

    public void setIdentifiable(Identifiable newIdentifiable) {
        Identifiable oldIdentifiable = this.identifiable;
        this.identifiable = newIdentifiable;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldIdentifiable, (Object)this.identifiable));
        }
    }

    public FlatInstanceDescriptor getFlatInstance() {
        if (this.flatInstance != null && this.flatInstance.eIsProxy()) {
            InternalEObject oldFlatInstance = (InternalEObject)this.flatInstance;
            this.flatInstance = (FlatInstanceDescriptor)this.eResolveProxy(oldFlatInstance);
            if (this.flatInstance != oldFlatInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldFlatInstance, (Object)this.flatInstance));
            }
        }
        return this.flatInstance;
    }

    public FlatInstanceDescriptor basicGetFlatInstance() {
        return this.flatInstance;
    }

    public void setFlatInstance(FlatInstanceDescriptor newFlatInstance) {
        FlatInstanceDescriptor oldFlatInstance = this.flatInstance;
        this.flatInstance = newFlatInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldFlatInstance, (Object)this.flatInstance));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAliasNameSet((AliasNameSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAliasNameSet(null, msgs);
            }
            case 6: {
                return this.basicSetLabel(null, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, AliasNameSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAliasNameSet();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                return this.getLabel();
            }
            case 7: {
                if (resolve) {
                    return this.getIdentifiable();
                }
                return this.basicGetIdentifiable();
            }
            case 8: {
                if (resolve) {
                    return this.getFlatInstance();
                }
                return this.basicGetFlatInstance();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAliasNameSet((AliasNameSet)newValue);
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setLabel((MultilanguageLongName)newValue);
                return;
            }
            case 7: {
                this.setIdentifiable((Identifiable)newValue);
                return;
            }
            case 8: {
                this.setFlatInstance((FlatInstanceDescriptor)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAliasNameSet(null);
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.setLabel(null);
                return;
            }
            case 7: {
                this.setIdentifiable(null);
                return;
            }
            case 8: {
                this.setFlatInstance(null);
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAliasNameSet() != null;
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.label != null;
            }
            case 7: {
                return this.identifiable != null;
            }
            case 8: {
                return this.flatInstance != null;
            }
            case 9: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

