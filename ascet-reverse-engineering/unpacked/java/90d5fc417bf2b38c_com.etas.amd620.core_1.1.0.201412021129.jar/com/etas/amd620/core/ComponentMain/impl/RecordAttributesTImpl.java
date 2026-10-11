/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.RecordAttributesT;
import com.etas.amd620.core.ComponentMain.impl.ComplexAttributesTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RecordAttributesTImpl
extends ComplexAttributesTImpl
implements RecordAttributesT {
    protected static final Object CALIBRATION_READ_EDEFAULT = null;
    protected Object calibrationRead = CALIBRATION_READ_EDEFAULT;
    protected static final boolean CALIBRATION_WRITE_EDEFAULT = false;
    protected boolean calibrationWrite = false;
    protected boolean calibrationWriteESet;
    protected static final boolean VIRTUAL_EDEFAULT = false;
    protected boolean virtual = false;
    protected boolean virtualESet;
    protected static final boolean VOLATILE_EDEFAULT = false;
    protected boolean volatile_ = false;
    protected boolean volatileESet;

    protected RecordAttributesTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.RECORD_ATTRIBUTES_T;
    }

    @Override
    public Object getCalibrationRead() {
        return this.calibrationRead;
    }

    @Override
    public void setCalibrationRead(Object newCalibrationRead) {
        Object oldCalibrationRead = this.calibrationRead;
        this.calibrationRead = newCalibrationRead;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldCalibrationRead, this.calibrationRead));
        }
    }

    @Override
    public boolean isCalibrationWrite() {
        return this.calibrationWrite;
    }

    @Override
    public void setCalibrationWrite(boolean newCalibrationWrite) {
        boolean oldCalibrationWrite = this.calibrationWrite;
        this.calibrationWrite = newCalibrationWrite;
        boolean oldCalibrationWriteESet = this.calibrationWriteESet;
        this.calibrationWriteESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, oldCalibrationWrite, this.calibrationWrite, !oldCalibrationWriteESet));
        }
    }

    @Override
    public void unsetCalibrationWrite() {
        boolean oldCalibrationWrite = this.calibrationWrite;
        boolean oldCalibrationWriteESet = this.calibrationWriteESet;
        this.calibrationWrite = false;
        this.calibrationWriteESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, oldCalibrationWrite, false, oldCalibrationWriteESet));
        }
    }

    @Override
    public boolean isSetCalibrationWrite() {
        return this.calibrationWriteESet;
    }

    @Override
    public boolean isVirtual() {
        return this.virtual;
    }

    @Override
    public void setVirtual(boolean newVirtual) {
        boolean oldVirtual = this.virtual;
        this.virtual = newVirtual;
        boolean oldVirtualESet = this.virtualESet;
        this.virtualESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, oldVirtual, this.virtual, !oldVirtualESet));
        }
    }

    @Override
    public void unsetVirtual() {
        boolean oldVirtual = this.virtual;
        boolean oldVirtualESet = this.virtualESet;
        this.virtual = false;
        this.virtualESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, oldVirtual, false, oldVirtualESet));
        }
    }

    @Override
    public boolean isSetVirtual() {
        return this.virtualESet;
    }

    @Override
    public boolean isVolatile() {
        return this.volatile_;
    }

    @Override
    public void setVolatile(boolean newVolatile) {
        boolean oldVolatile = this.volatile_;
        this.volatile_ = newVolatile;
        boolean oldVolatileESet = this.volatileESet;
        this.volatileESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, oldVolatile, this.volatile_, !oldVolatileESet));
        }
    }

    @Override
    public void unsetVolatile() {
        boolean oldVolatile = this.volatile_;
        boolean oldVolatileESet = this.volatileESet;
        this.volatile_ = false;
        this.volatileESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, oldVolatile, false, oldVolatileESet));
        }
    }

    @Override
    public boolean isSetVolatile() {
        return this.volatileESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 11: {
                return this.getCalibrationRead();
            }
            case 12: {
                return this.isCalibrationWrite();
            }
            case 13: {
                return this.isVirtual();
            }
            case 14: {
                return this.isVolatile();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 11: {
                this.setCalibrationRead(newValue);
                return;
            }
            case 12: {
                this.setCalibrationWrite((Boolean)newValue);
                return;
            }
            case 13: {
                this.setVirtual((Boolean)newValue);
                return;
            }
            case 14: {
                this.setVolatile((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 11: {
                this.setCalibrationRead(CALIBRATION_READ_EDEFAULT);
                return;
            }
            case 12: {
                this.unsetCalibrationWrite();
                return;
            }
            case 13: {
                this.unsetVirtual();
                return;
            }
            case 14: {
                this.unsetVolatile();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 11: {
                return CALIBRATION_READ_EDEFAULT == null ? this.calibrationRead != null : !CALIBRATION_READ_EDEFAULT.equals(this.calibrationRead);
            }
            case 12: {
                return this.isSetCalibrationWrite();
            }
            case 13: {
                return this.isSetVirtual();
            }
            case 14: {
                return this.isSetVolatile();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (calibrationRead: ");
        result.append(this.calibrationRead);
        result.append(", calibrationWrite: ");
        if (this.calibrationWriteESet) {
            result.append(this.calibrationWrite);
        } else {
            result.append("<unset>");
        }
        result.append(", virtual: ");
        if (this.virtualESet) {
            result.append(this.virtual);
        } else {
            result.append("<unset>");
        }
        result.append(", volatile: ");
        if (this.volatileESet) {
            result.append(this.volatile_);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

