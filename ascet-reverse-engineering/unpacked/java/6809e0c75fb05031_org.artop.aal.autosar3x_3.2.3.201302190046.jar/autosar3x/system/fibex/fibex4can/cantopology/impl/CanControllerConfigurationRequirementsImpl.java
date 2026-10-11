/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4can.cantopology.impl;

import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationControllerAttributesImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanControllerConfigurationRequirementsImpl
extends AbstractCanCommunicationControllerAttributesImpl
implements CanControllerConfigurationRequirements {
    protected static final Integer MAX_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT = new Integer(0);
    protected Integer maxNumberOfTimeQuantaPerBit = MAX_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT;
    protected boolean maxNumberOfTimeQuantaPerBitESet;
    protected static final Double MAX_SAMPLE_POINT_EDEFAULT = new Double(0.0);
    protected Double maxSamplePoint = MAX_SAMPLE_POINT_EDEFAULT;
    protected boolean maxSamplePointESet;
    protected static final Double MAX_SYNC_JUMP_WIDTH_EDEFAULT = new Double(0.0);
    protected Double maxSyncJumpWidth = MAX_SYNC_JUMP_WIDTH_EDEFAULT;
    protected boolean maxSyncJumpWidthESet;
    protected static final Integer MIN_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT = new Integer(0);
    protected Integer minNumberOfTimeQuantaPerBit = MIN_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT;
    protected boolean minNumberOfTimeQuantaPerBitESet;
    protected static final Double MIN_SAMPLE_POINT_EDEFAULT = new Double(0.0);
    protected Double minSamplePoint = MIN_SAMPLE_POINT_EDEFAULT;
    protected boolean minSamplePointESet;
    protected static final Double MIN_SYNC_JUMP_WIDTH_EDEFAULT = new Double(0.0);
    protected Double minSyncJumpWidth = MIN_SYNC_JUMP_WIDTH_EDEFAULT;
    protected boolean minSyncJumpWidthESet;

    protected CanControllerConfigurationRequirementsImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS;
    }

    public Integer getMaxNumberOfTimeQuantaPerBit() {
        return this.maxNumberOfTimeQuantaPerBit;
    }

    public void setMaxNumberOfTimeQuantaPerBit(Integer newMaxNumberOfTimeQuantaPerBit) {
        Integer oldMaxNumberOfTimeQuantaPerBit = this.maxNumberOfTimeQuantaPerBit;
        this.maxNumberOfTimeQuantaPerBit = newMaxNumberOfTimeQuantaPerBit;
        boolean oldMaxNumberOfTimeQuantaPerBitESet = this.maxNumberOfTimeQuantaPerBitESet;
        this.maxNumberOfTimeQuantaPerBitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMaxNumberOfTimeQuantaPerBit, (Object)this.maxNumberOfTimeQuantaPerBit, !oldMaxNumberOfTimeQuantaPerBitESet));
        }
    }

    public void unsetMaxNumberOfTimeQuantaPerBit() {
        Integer oldMaxNumberOfTimeQuantaPerBit = this.maxNumberOfTimeQuantaPerBit;
        boolean oldMaxNumberOfTimeQuantaPerBitESet = this.maxNumberOfTimeQuantaPerBitESet;
        this.maxNumberOfTimeQuantaPerBit = MAX_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT;
        this.maxNumberOfTimeQuantaPerBitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMaxNumberOfTimeQuantaPerBit, (Object)MAX_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT, oldMaxNumberOfTimeQuantaPerBitESet));
        }
    }

    public boolean isSetMaxNumberOfTimeQuantaPerBit() {
        return this.maxNumberOfTimeQuantaPerBitESet;
    }

    public Double getMaxSamplePoint() {
        return this.maxSamplePoint;
    }

    public void setMaxSamplePoint(Double newMaxSamplePoint) {
        Double oldMaxSamplePoint = this.maxSamplePoint;
        this.maxSamplePoint = newMaxSamplePoint;
        boolean oldMaxSamplePointESet = this.maxSamplePointESet;
        this.maxSamplePointESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMaxSamplePoint, (Object)this.maxSamplePoint, !oldMaxSamplePointESet));
        }
    }

    public void unsetMaxSamplePoint() {
        Double oldMaxSamplePoint = this.maxSamplePoint;
        boolean oldMaxSamplePointESet = this.maxSamplePointESet;
        this.maxSamplePoint = MAX_SAMPLE_POINT_EDEFAULT;
        this.maxSamplePointESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMaxSamplePoint, (Object)MAX_SAMPLE_POINT_EDEFAULT, oldMaxSamplePointESet));
        }
    }

    public boolean isSetMaxSamplePoint() {
        return this.maxSamplePointESet;
    }

    public Double getMaxSyncJumpWidth() {
        return this.maxSyncJumpWidth;
    }

    public void setMaxSyncJumpWidth(Double newMaxSyncJumpWidth) {
        Double oldMaxSyncJumpWidth = this.maxSyncJumpWidth;
        this.maxSyncJumpWidth = newMaxSyncJumpWidth;
        boolean oldMaxSyncJumpWidthESet = this.maxSyncJumpWidthESet;
        this.maxSyncJumpWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMaxSyncJumpWidth, (Object)this.maxSyncJumpWidth, !oldMaxSyncJumpWidthESet));
        }
    }

    public void unsetMaxSyncJumpWidth() {
        Double oldMaxSyncJumpWidth = this.maxSyncJumpWidth;
        boolean oldMaxSyncJumpWidthESet = this.maxSyncJumpWidthESet;
        this.maxSyncJumpWidth = MAX_SYNC_JUMP_WIDTH_EDEFAULT;
        this.maxSyncJumpWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMaxSyncJumpWidth, (Object)MAX_SYNC_JUMP_WIDTH_EDEFAULT, oldMaxSyncJumpWidthESet));
        }
    }

    public boolean isSetMaxSyncJumpWidth() {
        return this.maxSyncJumpWidthESet;
    }

    public Integer getMinNumberOfTimeQuantaPerBit() {
        return this.minNumberOfTimeQuantaPerBit;
    }

    public void setMinNumberOfTimeQuantaPerBit(Integer newMinNumberOfTimeQuantaPerBit) {
        Integer oldMinNumberOfTimeQuantaPerBit = this.minNumberOfTimeQuantaPerBit;
        this.minNumberOfTimeQuantaPerBit = newMinNumberOfTimeQuantaPerBit;
        boolean oldMinNumberOfTimeQuantaPerBitESet = this.minNumberOfTimeQuantaPerBitESet;
        this.minNumberOfTimeQuantaPerBitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMinNumberOfTimeQuantaPerBit, (Object)this.minNumberOfTimeQuantaPerBit, !oldMinNumberOfTimeQuantaPerBitESet));
        }
    }

    public void unsetMinNumberOfTimeQuantaPerBit() {
        Integer oldMinNumberOfTimeQuantaPerBit = this.minNumberOfTimeQuantaPerBit;
        boolean oldMinNumberOfTimeQuantaPerBitESet = this.minNumberOfTimeQuantaPerBitESet;
        this.minNumberOfTimeQuantaPerBit = MIN_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT;
        this.minNumberOfTimeQuantaPerBitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldMinNumberOfTimeQuantaPerBit, (Object)MIN_NUMBER_OF_TIME_QUANTA_PER_BIT_EDEFAULT, oldMinNumberOfTimeQuantaPerBitESet));
        }
    }

    public boolean isSetMinNumberOfTimeQuantaPerBit() {
        return this.minNumberOfTimeQuantaPerBitESet;
    }

    public Double getMinSamplePoint() {
        return this.minSamplePoint;
    }

    public void setMinSamplePoint(Double newMinSamplePoint) {
        Double oldMinSamplePoint = this.minSamplePoint;
        this.minSamplePoint = newMinSamplePoint;
        boolean oldMinSamplePointESet = this.minSamplePointESet;
        this.minSamplePointESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMinSamplePoint, (Object)this.minSamplePoint, !oldMinSamplePointESet));
        }
    }

    public void unsetMinSamplePoint() {
        Double oldMinSamplePoint = this.minSamplePoint;
        boolean oldMinSamplePointESet = this.minSamplePointESet;
        this.minSamplePoint = MIN_SAMPLE_POINT_EDEFAULT;
        this.minSamplePointESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMinSamplePoint, (Object)MIN_SAMPLE_POINT_EDEFAULT, oldMinSamplePointESet));
        }
    }

    public boolean isSetMinSamplePoint() {
        return this.minSamplePointESet;
    }

    public Double getMinSyncJumpWidth() {
        return this.minSyncJumpWidth;
    }

    public void setMinSyncJumpWidth(Double newMinSyncJumpWidth) {
        Double oldMinSyncJumpWidth = this.minSyncJumpWidth;
        this.minSyncJumpWidth = newMinSyncJumpWidth;
        boolean oldMinSyncJumpWidthESet = this.minSyncJumpWidthESet;
        this.minSyncJumpWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMinSyncJumpWidth, (Object)this.minSyncJumpWidth, !oldMinSyncJumpWidthESet));
        }
    }

    public void unsetMinSyncJumpWidth() {
        Double oldMinSyncJumpWidth = this.minSyncJumpWidth;
        boolean oldMinSyncJumpWidthESet = this.minSyncJumpWidthESet;
        this.minSyncJumpWidth = MIN_SYNC_JUMP_WIDTH_EDEFAULT;
        this.minSyncJumpWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMinSyncJumpWidth, (Object)MIN_SYNC_JUMP_WIDTH_EDEFAULT, oldMinSyncJumpWidthESet));
        }
    }

    public boolean isSetMinSyncJumpWidth() {
        return this.minSyncJumpWidthESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMaxNumberOfTimeQuantaPerBit();
            }
            case 6: {
                return this.getMaxSamplePoint();
            }
            case 7: {
                return this.getMaxSyncJumpWidth();
            }
            case 8: {
                return this.getMinNumberOfTimeQuantaPerBit();
            }
            case 9: {
                return this.getMinSamplePoint();
            }
            case 10: {
                return this.getMinSyncJumpWidth();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMaxNumberOfTimeQuantaPerBit((Integer)newValue);
                return;
            }
            case 6: {
                this.setMaxSamplePoint((Double)newValue);
                return;
            }
            case 7: {
                this.setMaxSyncJumpWidth((Double)newValue);
                return;
            }
            case 8: {
                this.setMinNumberOfTimeQuantaPerBit((Integer)newValue);
                return;
            }
            case 9: {
                this.setMinSamplePoint((Double)newValue);
                return;
            }
            case 10: {
                this.setMinSyncJumpWidth((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetMaxNumberOfTimeQuantaPerBit();
                return;
            }
            case 6: {
                this.unsetMaxSamplePoint();
                return;
            }
            case 7: {
                this.unsetMaxSyncJumpWidth();
                return;
            }
            case 8: {
                this.unsetMinNumberOfTimeQuantaPerBit();
                return;
            }
            case 9: {
                this.unsetMinSamplePoint();
                return;
            }
            case 10: {
                this.unsetMinSyncJumpWidth();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetMaxNumberOfTimeQuantaPerBit();
            }
            case 6: {
                return this.isSetMaxSamplePoint();
            }
            case 7: {
                return this.isSetMaxSyncJumpWidth();
            }
            case 8: {
                return this.isSetMinNumberOfTimeQuantaPerBit();
            }
            case 9: {
                return this.isSetMinSamplePoint();
            }
            case 10: {
                return this.isSetMinSyncJumpWidth();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxNumberOfTimeQuantaPerBit: ");
        if (this.maxNumberOfTimeQuantaPerBitESet) {
            result.append(this.maxNumberOfTimeQuantaPerBit);
        } else {
            result.append("<unset>");
        }
        result.append(", maxSamplePoint: ");
        if (this.maxSamplePointESet) {
            result.append(this.maxSamplePoint);
        } else {
            result.append("<unset>");
        }
        result.append(", maxSyncJumpWidth: ");
        if (this.maxSyncJumpWidthESet) {
            result.append(this.maxSyncJumpWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", minNumberOfTimeQuantaPerBit: ");
        if (this.minNumberOfTimeQuantaPerBitESet) {
            result.append(this.minNumberOfTimeQuantaPerBit);
        } else {
            result.append("<unset>");
        }
        result.append(", minSamplePoint: ");
        if (this.minSamplePointESet) {
            result.append(this.minSamplePoint);
        } else {
            result.append("<unset>");
        }
        result.append(", minSyncJumpWidth: ");
        if (this.minSyncJumpWidthESet) {
            result.append(this.minSyncJumpWidth);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

