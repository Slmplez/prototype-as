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
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.PrimitiveAttributesBaseT;
import com.etas.amd620.core.ComponentMain.impl.AttributesBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PrimitiveAttributesBaseTImpl
extends AttributesBaseTImpl
implements PrimitiveAttributesBaseT {
    protected static final boolean CALIBRATION_READ_EDEFAULT = false;
    protected boolean calibrationRead = false;
    protected boolean calibrationReadESet;
    protected static final boolean CALIBRATION_WRITE_EDEFAULT = false;
    protected boolean calibrationWrite = false;
    protected boolean calibrationWriteESet;
    protected static final KindType KIND_EDEFAULT = KindType.VARIABLE;
    protected KindType kind = KIND_EDEFAULT;
    protected boolean kindESet;
    protected static final boolean VOLATILE_EDEFAULT = false;
    protected boolean volatile_ = false;
    protected boolean volatileESet;

    protected PrimitiveAttributesBaseTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.PRIMITIVE_ATTRIBUTES_BASE_T;
    }

    @Override
    public boolean isCalibrationRead() {
        return this.calibrationRead;
    }

    @Override
    public void setCalibrationRead(boolean newCalibrationRead) {
        boolean oldCalibrationRead = this.calibrationRead;
        this.calibrationRead = newCalibrationRead;
        boolean oldCalibrationReadESet = this.calibrationReadESet;
        this.calibrationReadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldCalibrationRead, this.calibrationRead, !oldCalibrationReadESet));
        }
    }

    @Override
    public void unsetCalibrationRead() {
        boolean oldCalibrationRead = this.calibrationRead;
        boolean oldCalibrationReadESet = this.calibrationReadESet;
        this.calibrationRead = false;
        this.calibrationReadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldCalibrationRead, false, oldCalibrationReadESet));
        }
    }

    @Override
    public boolean isSetCalibrationRead() {
        return this.calibrationReadESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldCalibrationWrite, this.calibrationWrite, !oldCalibrationWriteESet));
        }
    }

    @Override
    public void unsetCalibrationWrite() {
        boolean oldCalibrationWrite = this.calibrationWrite;
        boolean oldCalibrationWriteESet = this.calibrationWriteESet;
        this.calibrationWrite = false;
        this.calibrationWriteESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, oldCalibrationWrite, false, oldCalibrationWriteESet));
        }
    }

    @Override
    public boolean isSetCalibrationWrite() {
        return this.calibrationWriteESet;
    }

    @Override
    public KindType getKind() {
        return this.kind;
    }

    @Override
    public void setKind(KindType newKind) {
        KindType oldKind = this.kind;
        this.kind = newKind == null ? KIND_EDEFAULT : newKind;
        boolean oldKindESet = this.kindESet;
        this.kindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldKind, (Object)this.kind, !oldKindESet));
        }
    }

    @Override
    public void unsetKind() {
        KindType oldKind = this.kind;
        boolean oldKindESet = this.kindESet;
        this.kind = KIND_EDEFAULT;
        this.kindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldKind, (Object)KIND_EDEFAULT, oldKindESet));
        }
    }

    @Override
    public boolean isSetKind() {
        return this.kindESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldVolatile, this.volatile_, !oldVolatileESet));
        }
    }

    @Override
    public void unsetVolatile() {
        boolean oldVolatile = this.volatile_;
        boolean oldVolatileESet = this.volatileESet;
        this.volatile_ = false;
        this.volatileESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldVolatile, false, oldVolatileESet));
        }
    }

    @Override
    public boolean isSetVolatile() {
        return this.volatileESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.isCalibrationRead();
            }
            case 7: {
                return this.isCalibrationWrite();
            }
            case 8: {
                return this.getKind();
            }
            case 9: {
                return this.isVolatile();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setCalibrationRead((Boolean)newValue);
                return;
            }
            case 7: {
                this.setCalibrationWrite((Boolean)newValue);
                return;
            }
            case 8: {
                this.setKind((KindType)((Object)newValue));
                return;
            }
            case 9: {
                this.setVolatile((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetCalibrationRead();
                return;
            }
            case 7: {
                this.unsetCalibrationWrite();
                return;
            }
            case 8: {
                this.unsetKind();
                return;
            }
            case 9: {
                this.unsetVolatile();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetCalibrationRead();
            }
            case 7: {
                return this.isSetCalibrationWrite();
            }
            case 8: {
                return this.isSetKind();
            }
            case 9: {
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
        if (this.calibrationReadESet) {
            result.append(this.calibrationRead);
        } else {
            result.append("<unset>");
        }
        result.append(", calibrationWrite: ");
        if (this.calibrationWriteESet) {
            result.append(this.calibrationWrite);
        } else {
            result.append("<unset>");
        }
        result.append(", kind: ");
        if (this.kindESet) {
            result.append((Object)this.kind);
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

