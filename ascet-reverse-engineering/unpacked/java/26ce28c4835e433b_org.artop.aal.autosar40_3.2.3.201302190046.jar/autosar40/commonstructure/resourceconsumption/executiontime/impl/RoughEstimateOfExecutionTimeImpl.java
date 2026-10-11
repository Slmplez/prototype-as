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
package autosar40.commonstructure.resourceconsumption.executiontime.impl;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutionTimeImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RoughEstimateOfExecutionTimeImpl
extends ExecutionTimeImpl
implements RoughEstimateOfExecutionTime {
    protected static final String ADDITIONAL_INFORMATION_EDEFAULT = "";
    protected String additionalInformation = "";
    protected boolean additionalInformationESet;
    protected MultidimensionalTime estimatedExecutionTime;

    protected RoughEstimateOfExecutionTimeImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.ROUGH_ESTIMATE_OF_EXECUTION_TIME;
    }

    public String getAdditionalInformation() {
        return this.additionalInformation;
    }

    public void setAdditionalInformation(String newAdditionalInformation) {
        String oldAdditionalInformation = this.additionalInformation;
        this.additionalInformation = newAdditionalInformation;
        boolean oldAdditionalInformationESet = this.additionalInformationESet;
        this.additionalInformationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldAdditionalInformation, (Object)this.additionalInformation, !oldAdditionalInformationESet));
        }
    }

    public void unsetAdditionalInformation() {
        String oldAdditionalInformation = this.additionalInformation;
        boolean oldAdditionalInformationESet = this.additionalInformationESet;
        this.additionalInformation = ADDITIONAL_INFORMATION_EDEFAULT;
        this.additionalInformationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldAdditionalInformation, (Object)ADDITIONAL_INFORMATION_EDEFAULT, oldAdditionalInformationESet));
        }
    }

    public boolean isSetAdditionalInformation() {
        return this.additionalInformationESet;
    }

    public MultidimensionalTime getEstimatedExecutionTime() {
        return this.estimatedExecutionTime;
    }

    public NotificationChain basicSetEstimatedExecutionTime(MultidimensionalTime newEstimatedExecutionTime, NotificationChain msgs) {
        MultidimensionalTime oldEstimatedExecutionTime = this.estimatedExecutionTime;
        this.estimatedExecutionTime = newEstimatedExecutionTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldEstimatedExecutionTime, (Object)newEstimatedExecutionTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEstimatedExecutionTime(MultidimensionalTime newEstimatedExecutionTime) {
        if (newEstimatedExecutionTime != this.estimatedExecutionTime) {
            NotificationChain msgs = null;
            if (this.estimatedExecutionTime != null) {
                msgs = ((InternalEObject)this.estimatedExecutionTime).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newEstimatedExecutionTime != null) {
                msgs = ((InternalEObject)newEstimatedExecutionTime).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetEstimatedExecutionTime(newEstimatedExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newEstimatedExecutionTime, (Object)newEstimatedExecutionTime));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return this.basicSetEstimatedExecutionTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getAdditionalInformation();
            }
            case 28: {
                return this.getEstimatedExecutionTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setAdditionalInformation((String)newValue);
                return;
            }
            case 28: {
                this.setEstimatedExecutionTime((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.unsetAdditionalInformation();
                return;
            }
            case 28: {
                this.setEstimatedExecutionTime(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.isSetAdditionalInformation();
            }
            case 28: {
                return this.estimatedExecutionTime != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (additionalInformation: ");
        if (this.additionalInformationESet) {
            result.append(this.additionalInformation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

