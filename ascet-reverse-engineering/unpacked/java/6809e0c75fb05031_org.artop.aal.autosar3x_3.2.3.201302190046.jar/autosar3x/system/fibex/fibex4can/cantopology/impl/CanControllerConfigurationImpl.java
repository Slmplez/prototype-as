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

import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationControllerAttributesImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanControllerConfigurationImpl
extends AbstractCanCommunicationControllerAttributesImpl
implements CanControllerConfiguration {
    protected static final Integer NUMBER_OF_SAMPLES_EDEFAULT = new Integer(0);
    protected Integer numberOfSamples = NUMBER_OF_SAMPLES_EDEFAULT;
    protected boolean numberOfSamplesESet;
    protected static final Integer PROPAGATION_DELAY_EDEFAULT = new Integer(0);
    protected Integer propagationDelay = PROPAGATION_DELAY_EDEFAULT;
    protected boolean propagationDelayESet;
    protected static final Integer SYNC_JUMP_WIDTH_EDEFAULT = new Integer(0);
    protected Integer syncJumpWidth = SYNC_JUMP_WIDTH_EDEFAULT;
    protected boolean syncJumpWidthESet;
    protected static final Integer TIME_SEG1_EDEFAULT = new Integer(0);
    protected Integer timeSeg1 = TIME_SEG1_EDEFAULT;
    protected boolean timeSeg1ESet;
    protected static final Integer TIME_SEG2_EDEFAULT = new Integer(0);
    protected Integer timeSeg2 = TIME_SEG2_EDEFAULT;
    protected boolean timeSeg2ESet;

    protected CanControllerConfigurationImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_CONTROLLER_CONFIGURATION;
    }

    public Integer getNumberOfSamples() {
        return this.numberOfSamples;
    }

    public void setNumberOfSamples(Integer newNumberOfSamples) {
        Integer oldNumberOfSamples = this.numberOfSamples;
        this.numberOfSamples = newNumberOfSamples;
        boolean oldNumberOfSamplesESet = this.numberOfSamplesESet;
        this.numberOfSamplesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNumberOfSamples, (Object)this.numberOfSamples, !oldNumberOfSamplesESet));
        }
    }

    public void unsetNumberOfSamples() {
        Integer oldNumberOfSamples = this.numberOfSamples;
        boolean oldNumberOfSamplesESet = this.numberOfSamplesESet;
        this.numberOfSamples = NUMBER_OF_SAMPLES_EDEFAULT;
        this.numberOfSamplesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldNumberOfSamples, (Object)NUMBER_OF_SAMPLES_EDEFAULT, oldNumberOfSamplesESet));
        }
    }

    public boolean isSetNumberOfSamples() {
        return this.numberOfSamplesESet;
    }

    public Integer getPropagationDelay() {
        return this.propagationDelay;
    }

    public void setPropagationDelay(Integer newPropagationDelay) {
        Integer oldPropagationDelay = this.propagationDelay;
        this.propagationDelay = newPropagationDelay;
        boolean oldPropagationDelayESet = this.propagationDelayESet;
        this.propagationDelayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPropagationDelay, (Object)this.propagationDelay, !oldPropagationDelayESet));
        }
    }

    public void unsetPropagationDelay() {
        Integer oldPropagationDelay = this.propagationDelay;
        boolean oldPropagationDelayESet = this.propagationDelayESet;
        this.propagationDelay = PROPAGATION_DELAY_EDEFAULT;
        this.propagationDelayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPropagationDelay, (Object)PROPAGATION_DELAY_EDEFAULT, oldPropagationDelayESet));
        }
    }

    public boolean isSetPropagationDelay() {
        return this.propagationDelayESet;
    }

    public Integer getSyncJumpWidth() {
        return this.syncJumpWidth;
    }

    public void setSyncJumpWidth(Integer newSyncJumpWidth) {
        Integer oldSyncJumpWidth = this.syncJumpWidth;
        this.syncJumpWidth = newSyncJumpWidth;
        boolean oldSyncJumpWidthESet = this.syncJumpWidthESet;
        this.syncJumpWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSyncJumpWidth, (Object)this.syncJumpWidth, !oldSyncJumpWidthESet));
        }
    }

    public void unsetSyncJumpWidth() {
        Integer oldSyncJumpWidth = this.syncJumpWidth;
        boolean oldSyncJumpWidthESet = this.syncJumpWidthESet;
        this.syncJumpWidth = SYNC_JUMP_WIDTH_EDEFAULT;
        this.syncJumpWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSyncJumpWidth, (Object)SYNC_JUMP_WIDTH_EDEFAULT, oldSyncJumpWidthESet));
        }
    }

    public boolean isSetSyncJumpWidth() {
        return this.syncJumpWidthESet;
    }

    public Integer getTimeSeg1() {
        return this.timeSeg1;
    }

    public void setTimeSeg1(Integer newTimeSeg1) {
        Integer oldTimeSeg1 = this.timeSeg1;
        this.timeSeg1 = newTimeSeg1;
        boolean oldTimeSeg1ESet = this.timeSeg1ESet;
        this.timeSeg1ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTimeSeg1, (Object)this.timeSeg1, !oldTimeSeg1ESet));
        }
    }

    public void unsetTimeSeg1() {
        Integer oldTimeSeg1 = this.timeSeg1;
        boolean oldTimeSeg1ESet = this.timeSeg1ESet;
        this.timeSeg1 = TIME_SEG1_EDEFAULT;
        this.timeSeg1ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldTimeSeg1, (Object)TIME_SEG1_EDEFAULT, oldTimeSeg1ESet));
        }
    }

    public boolean isSetTimeSeg1() {
        return this.timeSeg1ESet;
    }

    public Integer getTimeSeg2() {
        return this.timeSeg2;
    }

    public void setTimeSeg2(Integer newTimeSeg2) {
        Integer oldTimeSeg2 = this.timeSeg2;
        this.timeSeg2 = newTimeSeg2;
        boolean oldTimeSeg2ESet = this.timeSeg2ESet;
        this.timeSeg2ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTimeSeg2, (Object)this.timeSeg2, !oldTimeSeg2ESet));
        }
    }

    public void unsetTimeSeg2() {
        Integer oldTimeSeg2 = this.timeSeg2;
        boolean oldTimeSeg2ESet = this.timeSeg2ESet;
        this.timeSeg2 = TIME_SEG2_EDEFAULT;
        this.timeSeg2ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldTimeSeg2, (Object)TIME_SEG2_EDEFAULT, oldTimeSeg2ESet));
        }
    }

    public boolean isSetTimeSeg2() {
        return this.timeSeg2ESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getNumberOfSamples();
            }
            case 6: {
                return this.getPropagationDelay();
            }
            case 7: {
                return this.getSyncJumpWidth();
            }
            case 8: {
                return this.getTimeSeg1();
            }
            case 9: {
                return this.getTimeSeg2();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setNumberOfSamples((Integer)newValue);
                return;
            }
            case 6: {
                this.setPropagationDelay((Integer)newValue);
                return;
            }
            case 7: {
                this.setSyncJumpWidth((Integer)newValue);
                return;
            }
            case 8: {
                this.setTimeSeg1((Integer)newValue);
                return;
            }
            case 9: {
                this.setTimeSeg2((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetNumberOfSamples();
                return;
            }
            case 6: {
                this.unsetPropagationDelay();
                return;
            }
            case 7: {
                this.unsetSyncJumpWidth();
                return;
            }
            case 8: {
                this.unsetTimeSeg1();
                return;
            }
            case 9: {
                this.unsetTimeSeg2();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetNumberOfSamples();
            }
            case 6: {
                return this.isSetPropagationDelay();
            }
            case 7: {
                return this.isSetSyncJumpWidth();
            }
            case 8: {
                return this.isSetTimeSeg1();
            }
            case 9: {
                return this.isSetTimeSeg2();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (numberOfSamples: ");
        if (this.numberOfSamplesESet) {
            result.append(this.numberOfSamples);
        } else {
            result.append("<unset>");
        }
        result.append(", propagationDelay: ");
        if (this.propagationDelayESet) {
            result.append(this.propagationDelay);
        } else {
            result.append("<unset>");
        }
        result.append(", syncJumpWidth: ");
        if (this.syncJumpWidthESet) {
            result.append(this.syncJumpWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", timeSeg1: ");
        if (this.timeSeg1ESet) {
            result.append(this.timeSeg1);
        } else {
            result.append("<unset>");
        }
        result.append(", timeSeg2: ");
        if (this.timeSeg2ESet) {
            result.append(this.timeSeg2);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

