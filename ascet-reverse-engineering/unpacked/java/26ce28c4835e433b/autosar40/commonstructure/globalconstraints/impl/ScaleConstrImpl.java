/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.globalconstraints.impl;

import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.ScaleConstr;
import autosar40.commonstructure.globalconstraints.ScaleConstrValidityEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.swcomponent.datatype.localconstraints.Limit;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ScaleConstrImpl
extends ARObjectImpl
implements ScaleConstr {
    protected static final ScaleConstrValidityEnum VALIDITY_EDEFAULT = ScaleConstrValidityEnum.NOT_AVAILABLE;
    protected ScaleConstrValidityEnum validity = VALIDITY_EDEFAULT;
    protected boolean validityESet;
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected MultiLanguageOverviewParagraph desc;
    protected Limit lowerLimit;
    protected Limit upperLimit;

    protected ScaleConstrImpl() {
    }

    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.SCALE_CONSTR;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldValidity, (Object)this.validity, !oldValidityESet));
        }
    }

    public void unsetValidity() {
        ScaleConstrValidityEnum oldValidity = this.validity;
        boolean oldValidityESet = this.validityESet;
        this.validity = VALIDITY_EDEFAULT;
        this.validityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldValidity, (Object)VALIDITY_EDEFAULT, oldValidityESet));
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

    public MultiLanguageOverviewParagraph getDesc() {
        return this.desc;
    }

    public NotificationChain basicSetDesc(MultiLanguageOverviewParagraph newDesc, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldDesc = this.desc;
        this.desc = newDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDesc(MultiLanguageOverviewParagraph newDesc) {
        if (newDesc != this.desc) {
            NotificationChain msgs = null;
            if (this.desc != null) {
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newDesc, (Object)newDesc));
        }
    }

    public Limit getLowerLimit() {
        return this.lowerLimit;
    }

    public NotificationChain basicSetLowerLimit(Limit newLowerLimit, NotificationChain msgs) {
        Limit oldLowerLimit = this.lowerLimit;
        this.lowerLimit = newLowerLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldLowerLimit, (Object)newLowerLimit);
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
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newLowerLimit, (Object)newLowerLimit));
        }
    }

    public Limit getUpperLimit() {
        return this.upperLimit;
    }

    public NotificationChain basicSetUpperLimit(Limit newUpperLimit, NotificationChain msgs) {
        Limit oldUpperLimit = this.upperLimit;
        this.upperLimit = newUpperLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldUpperLimit, (Object)newUpperLimit);
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
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetDesc(null, msgs);
            }
            case 7: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 8: {
                return this.basicSetUpperLimit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getValidity();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                return this.getDesc();
            }
            case 7: {
                return this.getLowerLimit();
            }
            case 8: {
                return this.getUpperLimit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setValidity((ScaleConstrValidityEnum)((Object)newValue));
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setDesc((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 7: {
                this.setLowerLimit((Limit)newValue);
                return;
            }
            case 8: {
                this.setUpperLimit((Limit)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetValidity();
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.setDesc(null);
                return;
            }
            case 7: {
                this.setLowerLimit(null);
                return;
            }
            case 8: {
                this.setUpperLimit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetValidity();
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.desc != null;
            }
            case 7: {
                return this.lowerLimit != null;
            }
            case 8: {
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

