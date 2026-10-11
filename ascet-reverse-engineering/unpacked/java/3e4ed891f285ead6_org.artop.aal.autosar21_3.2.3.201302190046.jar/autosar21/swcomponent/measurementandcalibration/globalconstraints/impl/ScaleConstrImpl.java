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
package autosar21.swcomponent.measurementandcalibration.globalconstraints.impl;

import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrValidityEnum;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrs;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ScaleConstrImpl
extends ARObjectImpl
implements ScaleConstr {
    protected static final ScaleConstrValidityEnum VALIDITY_EDEFAULT = ScaleConstrValidityEnum.NOT_DEFINED;
    protected ScaleConstrValidityEnum validity = VALIDITY_EDEFAULT;
    protected boolean validityESet;
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected MlData2 desc;
    protected Limit lowerLimit;
    protected Limit upperLimit;

    protected ScaleConstrImpl() {
    }

    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.SCALE_CONSTR;
    }

    public ScaleConstrs getScaleConstrs() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ScaleConstrs)this.eContainer();
    }

    public NotificationChain basicSetScaleConstrs(ScaleConstrs newScaleConstrs, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newScaleConstrs, 4, msgs);
        return msgs;
    }

    public void setScaleConstrs(ScaleConstrs newScaleConstrs) {
        if (newScaleConstrs != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newScaleConstrs != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newScaleConstrs)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newScaleConstrs != null) {
                msgs = ((InternalEObject)newScaleConstrs).eInverseAdd((InternalEObject)this, 4, ScaleConstrs.class, msgs);
            }
            if ((msgs = this.basicSetScaleConstrs(newScaleConstrs, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newScaleConstrs, (Object)newScaleConstrs));
        }
    }

    public ScaleConstrValidityEnum getValidity() {
        return this.validity;
    }

    public void setValidity(ScaleConstrValidityEnum newValidity) {
        ScaleConstrValidityEnum oldValidity = this.validity;
        this.validity = newValidity == null ? VALIDITY_EDEFAULT : newValidity;
        boolean oldValidityESet = this.validityESet;
        this.validityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldValidity, (Object)this.validity, !oldValidityESet));
        }
    }

    public void unsetValidity() {
        ScaleConstrValidityEnum oldValidity = this.validity;
        boolean oldValidityESet = this.validityESet;
        this.validity = VALIDITY_EDEFAULT;
        this.validityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldValidity, (Object)VALIDITY_EDEFAULT, oldValidityESet));
        }
    }

    public boolean isSetValidity() {
        return this.validityESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = SHORT_LABEL_EDEFAULT;
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldShortLabel, (Object)SHORT_LABEL_EDEFAULT, oldShortLabelESet));
        }
    }

    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    public MlData2 getDesc() {
        return this.desc;
    }

    public NotificationChain basicSetDesc(MlData2 newDesc, NotificationChain msgs) {
        MlData2 oldDesc = this.desc;
        this.desc = newDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDesc(MlData2 newDesc) {
        if (newDesc != this.desc) {
            NotificationChain msgs = null;
            if (this.desc != null) {
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newDesc, (Object)newDesc));
        }
    }

    public Limit getLowerLimit() {
        return this.lowerLimit;
    }

    public NotificationChain basicSetLowerLimit(Limit newLowerLimit, NotificationChain msgs) {
        Limit oldLowerLimit = this.lowerLimit;
        this.lowerLimit = newLowerLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldLowerLimit, (Object)newLowerLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLowerLimit(Limit newLowerLimit) {
        if (newLowerLimit != this.lowerLimit) {
            NotificationChain msgs = null;
            if (this.lowerLimit != null) {
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newLowerLimit, (Object)newLowerLimit));
        }
    }

    public Limit getUpperLimit() {
        return this.upperLimit;
    }

    public NotificationChain basicSetUpperLimit(Limit newUpperLimit, NotificationChain msgs) {
        Limit oldUpperLimit = this.upperLimit;
        this.upperLimit = newUpperLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldUpperLimit, (Object)newUpperLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUpperLimit(Limit newUpperLimit) {
        if (newUpperLimit != this.upperLimit) {
            NotificationChain msgs = null;
            if (this.upperLimit != null) {
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetScaleConstrs((ScaleConstrs)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetScaleConstrs(null, msgs);
            }
            case 7: {
                return this.basicSetDesc(null, msgs);
            }
            case 8: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 9: {
                return this.basicSetUpperLimit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, ScaleConstrs.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getScaleConstrs();
            }
            case 5: {
                return this.getValidity();
            }
            case 6: {
                return this.getShortLabel();
            }
            case 7: {
                return this.getDesc();
            }
            case 8: {
                return this.getLowerLimit();
            }
            case 9: {
                return this.getUpperLimit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setScaleConstrs((ScaleConstrs)newValue);
                return;
            }
            case 5: {
                this.setValidity((ScaleConstrValidityEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 7: {
                this.setDesc((MlData2)newValue);
                return;
            }
            case 8: {
                this.setLowerLimit((Limit)newValue);
                return;
            }
            case 9: {
                this.setUpperLimit((Limit)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setScaleConstrs(null);
                return;
            }
            case 5: {
                this.unsetValidity();
                return;
            }
            case 6: {
                this.unsetShortLabel();
                return;
            }
            case 7: {
                this.setDesc(null);
                return;
            }
            case 8: {
                this.setLowerLimit(null);
                return;
            }
            case 9: {
                this.setUpperLimit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getScaleConstrs() != null;
            }
            case 5: {
                return this.isSetValidity();
            }
            case 6: {
                return this.isSetShortLabel();
            }
            case 7: {
                return this.desc != null;
            }
            case 8: {
                return this.lowerLimit != null;
            }
            case 9: {
                return this.upperLimit != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (validity: ");
        if (this.validityESet) {
            result.append((Object)this.validity);
        } else {
            result.append("<unset>");
        }
        result.append(", shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

