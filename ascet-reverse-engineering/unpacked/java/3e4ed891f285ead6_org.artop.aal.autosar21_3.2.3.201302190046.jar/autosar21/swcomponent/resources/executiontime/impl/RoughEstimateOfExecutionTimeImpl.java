/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.resources.executiontime.impl;

import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.RoughEstimateOfExecutionTime;
import autosar21.swcomponent.resources.executiontime.impl.ExecutionTimeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RoughEstimateOfExecutionTimeImpl
extends ExecutionTimeImpl
implements RoughEstimateOfExecutionTime {
    protected static final String DESCRIPTION_EDEFAULT = "";
    protected String description = "";
    protected boolean descriptionESet;

    protected RoughEstimateOfExecutionTimeImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.ROUGH_ESTIMATE_OF_EXECUTION_TIME;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String newDescription) {
        String oldDescription = this.description;
        this.description = newDescription;
        boolean oldDescriptionESet = this.descriptionESet;
        this.descriptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDescription, (Object)this.description, !oldDescriptionESet));
        }
    }

    public void unsetDescription() {
        String oldDescription = this.description;
        boolean oldDescriptionESet = this.descriptionESet;
        this.description = DESCRIPTION_EDEFAULT;
        this.descriptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldDescription, (Object)DESCRIPTION_EDEFAULT, oldDescriptionESet));
        }
    }

    public boolean isSetDescription() {
        return this.descriptionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getDescription();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setDescription((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.unsetDescription();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.isSetDescription();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (description: ");
        if (this.descriptionESet) {
            result.append(this.description);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

