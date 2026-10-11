/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdControlServiceNeedsImpl
extends ServiceNeedsImpl
implements ObdControlServiceNeeds {
    protected static final Integer TEST_ID_EDEFAULT = new Integer(0);
    protected Integer testId = TEST_ID_EDEFAULT;
    protected boolean testIdESet;

    protected ObdControlServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_CONTROL_SERVICE_NEEDS;
    }

    public Integer getTestId() {
        return this.testId;
    }

    public void setTestId(Integer newTestId) {
        Integer oldTestId = this.testId;
        this.testId = newTestId;
        boolean oldTestIdESet = this.testIdESet;
        this.testIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldTestId, (Object)this.testId, !oldTestIdESet));
        }
    }

    public void unsetTestId() {
        Integer oldTestId = this.testId;
        boolean oldTestIdESet = this.testIdESet;
        this.testId = TEST_ID_EDEFAULT;
        this.testIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldTestId, (Object)TEST_ID_EDEFAULT, oldTestIdESet));
        }
    }

    public boolean isSetTestId() {
        return this.testIdESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getTestId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setTestId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetTestId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
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

