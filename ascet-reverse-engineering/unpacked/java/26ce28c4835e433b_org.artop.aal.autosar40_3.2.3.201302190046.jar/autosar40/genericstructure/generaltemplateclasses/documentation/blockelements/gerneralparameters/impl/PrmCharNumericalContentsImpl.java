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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharContentsImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PrmCharNumericalContentsImpl
extends PrmCharContentsImpl
implements PrmCharNumericalContents {
    protected PrmCharNumericalValue prmCharNumericalValueType;
    protected SingleLanguageUnitNames prmUnit;

    protected PrmCharNumericalContentsImpl() {
    }

    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRM_CHAR_NUMERICAL_CONTENTS;
    }

    public PrmCharNumericalValue getPrmCharNumericalValueType() {
        return this.prmCharNumericalValueType;
    }

    public NotificationChain basicSetPrmCharNumericalValueType(PrmCharNumericalValue newPrmCharNumericalValueType, NotificationChain msgs) {
        PrmCharNumericalValue oldPrmCharNumericalValueType = this.prmCharNumericalValueType;
        this.prmCharNumericalValueType = newPrmCharNumericalValueType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPrmCharNumericalValueType, (Object)newPrmCharNumericalValueType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPrmCharNumericalValueType(PrmCharNumericalValue newPrmCharNumericalValueType) {
        if (newPrmCharNumericalValueType != this.prmCharNumericalValueType) {
            NotificationChain msgs = null;
            if (this.prmCharNumericalValueType != null) {
                msgs = ((InternalEObject)this.prmCharNumericalValueType).eInverseRemove((InternalEObject)this, 4, PrmCharNumericalValue.class, msgs);
            }
            if (newPrmCharNumericalValueType != null) {
                msgs = ((InternalEObject)newPrmCharNumericalValueType).eInverseAdd((InternalEObject)this, 4, PrmCharNumericalValue.class, msgs);
            }
            if ((msgs = this.basicSetPrmCharNumericalValueType(newPrmCharNumericalValueType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newPrmCharNumericalValueType, (Object)newPrmCharNumericalValueType));
        }
    }

    public SingleLanguageUnitNames getPrmUnit() {
        return this.prmUnit;
    }

    public NotificationChain basicSetPrmUnit(SingleLanguageUnitNames newPrmUnit, NotificationChain msgs) {
        SingleLanguageUnitNames oldPrmUnit = this.prmUnit;
        this.prmUnit = newPrmUnit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPrmUnit, (Object)newPrmUnit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPrmUnit(SingleLanguageUnitNames newPrmUnit) {
        if (newPrmUnit != this.prmUnit) {
            NotificationChain msgs = null;
            if (this.prmUnit != null) {
                msgs = ((InternalEObject)this.prmUnit).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newPrmUnit != null) {
                msgs = ((InternalEObject)newPrmUnit).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetPrmUnit(newPrmUnit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newPrmUnit, (Object)newPrmUnit));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.prmCharNumericalValueType != null) {
                    msgs = ((InternalEObject)this.prmCharNumericalValueType).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetPrmCharNumericalValueType((PrmCharNumericalValue)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetPrmCharNumericalValueType(null, msgs);
            }
            case 6: {
                return this.basicSetPrmUnit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getPrmCharNumericalValueType();
            }
            case 6: {
                return this.getPrmUnit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setPrmCharNumericalValueType((PrmCharNumericalValue)newValue);
                return;
            }
            case 6: {
                this.setPrmUnit((SingleLanguageUnitNames)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setPrmCharNumericalValueType(null);
                return;
            }
            case 6: {
                this.setPrmUnit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.prmCharNumericalValueType != null;
            }
            case 6: {
                return this.prmUnit != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

