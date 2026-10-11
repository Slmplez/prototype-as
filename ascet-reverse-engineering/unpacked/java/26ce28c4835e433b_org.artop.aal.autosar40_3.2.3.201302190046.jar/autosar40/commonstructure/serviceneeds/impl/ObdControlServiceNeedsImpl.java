/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdControlServiceNeedsImpl
extends DiagnosticCapabilityElementImpl
implements ObdControlServiceNeeds {
    protected static final PositiveIntegerDatatype TEST_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype testId = TEST_ID_EDEFAULT.clone();
    protected boolean testIdESet;

    protected ObdControlServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_CONTROL_SERVICE_NEEDS;
    }

    public Long getTestId() {
        return (Long)this.testId.basicGetValue();
    }

    public void setTestId(Long newTestId) {
        Long oldTestId = (Long)this.testId.basicGetValue();
        this.testId.basicSetValue((Object)newTestId);
        boolean oldTestIdESet = this.testIdESet;
        this.testIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTestId, (Object)newTestId, !oldTestIdESet));
        }
    }

    public void unsetTestId() {
        Long oldTestId = (Long)this.testId.basicGetValue();
        boolean oldTestIdESet = this.testIdESet;
        this.testId = TEST_ID_EDEFAULT.clone();
        this.testIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldTestId, (Object)TEST_ID_EDEFAULT, oldTestIdESet));
        }
    }

    public boolean isSetTestId() {
        return this.testIdESet;
    }

    public PositiveIntegerDatatype getTestIdData() {
        return this.testId.clone();
    }

    public void setTestIdData(PositiveIntegerDatatype newTestId) {
        this.testId.setRadix((int)newTestId.getRadix());
        this.testId.setNoOfDigits((int)newTestId.getNoOfDigits());
        this.setTestId(newTestId.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getTestId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setTestId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetTestId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetTestId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (testId: ");
        if (this.testIdESet) {
            result.append(this.testId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

