/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationControllerAttributesImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanControllerConfigurationImpl
extends AbstractCanCommunicationControllerAttributesImpl
implements CanControllerConfiguration {
    protected static final IntegerDatatype SYNC_JUMP_WIDTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype syncJumpWidth = SYNC_JUMP_WIDTH_EDEFAULT.clone();
    protected boolean syncJumpWidthESet;
    protected static final IntegerDatatype TIME_SEG1_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype timeSeg1 = TIME_SEG1_EDEFAULT.clone();
    protected boolean timeSeg1ESet;
    protected static final IntegerDatatype TIME_SEG2_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype timeSeg2 = TIME_SEG2_EDEFAULT.clone();
    protected boolean timeSeg2ESet;

    protected CanControllerConfigurationImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_CONTROLLER_CONFIGURATION;
    }

    public Integer getSyncJumpWidth() {
        return (Integer)this.syncJumpWidth.basicGetValue();
    }

    public void setSyncJumpWidth(Integer newSyncJumpWidth) {
        Integer oldSyncJumpWidth = (Integer)this.syncJumpWidth.basicGetValue();
        this.syncJumpWidth.basicSetValue((Object)newSyncJumpWidth);
        boolean oldSyncJumpWidthESet = this.syncJumpWidthESet;
        this.syncJumpWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSyncJumpWidth, (Object)newSyncJumpWidth, !oldSyncJumpWidthESet));
        }
    }

    public void unsetSyncJumpWidth() {
        Integer oldSyncJumpWidth = (Integer)this.syncJumpWidth.basicGetValue();
        boolean oldSyncJumpWidthESet = this.syncJumpWidthESet;
        this.syncJumpWidth = SYNC_JUMP_WIDTH_EDEFAULT.clone();
        this.syncJumpWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldSyncJumpWidth, (Object)SYNC_JUMP_WIDTH_EDEFAULT, oldSyncJumpWidthESet));
        }
    }

    public boolean isSetSyncJumpWidth() {
        return this.syncJumpWidthESet;
    }

    public Integer getTimeSeg1() {
        return (Integer)this.timeSeg1.basicGetValue();
    }

    public void setTimeSeg1(Integer newTimeSeg1) {
        Integer oldTimeSeg1 = (Integer)this.timeSeg1.basicGetValue();
        this.timeSeg1.basicSetValue((Object)newTimeSeg1);
        boolean oldTimeSeg1ESet = this.timeSeg1ESet;
        this.timeSeg1ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTimeSeg1, (Object)newTimeSeg1, !oldTimeSeg1ESet));
        }
    }

    public void unsetTimeSeg1() {
        Integer oldTimeSeg1 = (Integer)this.timeSeg1.basicGetValue();
        boolean oldTimeSeg1ESet = this.timeSeg1ESet;
        this.timeSeg1 = TIME_SEG1_EDEFAULT.clone();
        this.timeSeg1ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTimeSeg1, (Object)TIME_SEG1_EDEFAULT, oldTimeSeg1ESet));
        }
    }

    public boolean isSetTimeSeg1() {
        return this.timeSeg1ESet;
    }

    public Integer getTimeSeg2() {
        return (Integer)this.timeSeg2.basicGetValue();
    }

    public void setTimeSeg2(Integer newTimeSeg2) {
        Integer oldTimeSeg2 = (Integer)this.timeSeg2.basicGetValue();
        this.timeSeg2.basicSetValue((Object)newTimeSeg2);
        boolean oldTimeSeg2ESet = this.timeSeg2ESet;
        this.timeSeg2ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTimeSeg2, (Object)newTimeSeg2, !oldTimeSeg2ESet));
        }
    }

    public void unsetTimeSeg2() {
        Integer oldTimeSeg2 = (Integer)this.timeSeg2.basicGetValue();
        boolean oldTimeSeg2ESet = this.timeSeg2ESet;
        this.timeSeg2 = TIME_SEG2_EDEFAULT.clone();
        this.timeSeg2ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldTimeSeg2, (Object)TIME_SEG2_EDEFAULT, oldTimeSeg2ESet));
        }
    }

    public boolean isSetTimeSeg2() {
        return this.timeSeg2ESet;
    }

    public IntegerDatatype getSyncJumpWidthData() {
        return this.syncJumpWidth.clone();
    }

    public void setSyncJumpWidthData(IntegerDatatype newSyncJumpWidth) {
        this.syncJumpWidth.setRadix((int)newSyncJumpWidth.getRadix());
        this.syncJumpWidth.setNoOfDigits((int)newSyncJumpWidth.getNoOfDigits());
        this.setSyncJumpWidth(newSyncJumpWidth.getValue());
    }

    public IntegerDatatype getTimeSeg1Data() {
        return this.timeSeg1.clone();
    }

    public void setTimeSeg1Data(IntegerDatatype newTimeSeg1) {
        this.timeSeg1.setRadix((int)newTimeSeg1.getRadix());
        this.timeSeg1.setNoOfDigits((int)newTimeSeg1.getNoOfDigits());
        this.setTimeSeg1(newTimeSeg1.getValue());
    }

    public IntegerDatatype getTimeSeg2Data() {
        return this.timeSeg2.clone();
    }

    public void setTimeSeg2Data(IntegerDatatype newTimeSeg2) {
        this.timeSeg2.setRadix((int)newTimeSeg2.getRadix());
        this.timeSeg2.setNoOfDigits((int)newTimeSeg2.getNoOfDigits());
        this.setTimeSeg2(newTimeSeg2.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getSyncJumpWidth();
            }
            case 6: {
                return this.getTimeSeg1();
            }
            case 7: {
                return this.getTimeSeg2();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setSyncJumpWidth((Integer)newValue);
                return;
            }
            case 6: {
                this.setTimeSeg1((Integer)newValue);
                return;
            }
            case 7: {
                this.setTimeSeg2((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetSyncJumpWidth();
                return;
            }
            case 6: {
                this.unsetTimeSeg1();
                return;
            }
            case 7: {
                this.unsetTimeSeg2();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetSyncJumpWidth();
            }
            case 6: {
                return this.isSetTimeSeg1();
            }
            case 7: {
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
        result.append(" (syncJumpWidth: ");
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

