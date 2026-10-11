/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.memory.impl;

import autosar21.ecuresource.impl.HWPortImpl;
import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.memory.MemoryMappedHWPortHwPortTypeEnum;
import autosar21.ecuresource.memory.MemoryPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MemoryMappedHWPortImpl
extends HWPortImpl
implements MemoryMappedHWPort {
    protected static final Integer DATA_INTERFACE_WIDTH_EDEFAULT = new Integer(0);
    protected Integer dataInterfaceWidth = DATA_INTERFACE_WIDTH_EDEFAULT;
    protected boolean dataInterfaceWidthESet;
    protected static final MemoryMappedHWPortHwPortTypeEnum HW_PORT_TYPE_EDEFAULT = MemoryMappedHWPortHwPortTypeEnum.UNSPECIFIED;
    protected MemoryMappedHWPortHwPortTypeEnum hwPortType = HW_PORT_TYPE_EDEFAULT;
    protected boolean hwPortTypeESet;

    protected MemoryMappedHWPortImpl() {
    }

    protected EClass eStaticClass() {
        return MemoryPackage.Literals.MEMORY_MAPPED_HW_PORT;
    }

    public Integer getDataInterfaceWidth() {
        return this.dataInterfaceWidth;
    }

    public void setDataInterfaceWidth(Integer newDataInterfaceWidth) {
        Integer oldDataInterfaceWidth = this.dataInterfaceWidth;
        this.dataInterfaceWidth = newDataInterfaceWidth;
        boolean oldDataInterfaceWidthESet = this.dataInterfaceWidthESet;
        this.dataInterfaceWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDataInterfaceWidth, (Object)this.dataInterfaceWidth, !oldDataInterfaceWidthESet));
        }
    }

    public void unsetDataInterfaceWidth() {
        Integer oldDataInterfaceWidth = this.dataInterfaceWidth;
        boolean oldDataInterfaceWidthESet = this.dataInterfaceWidthESet;
        this.dataInterfaceWidth = DATA_INTERFACE_WIDTH_EDEFAULT;
        this.dataInterfaceWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldDataInterfaceWidth, (Object)DATA_INTERFACE_WIDTH_EDEFAULT, oldDataInterfaceWidthESet));
        }
    }

    public boolean isSetDataInterfaceWidth() {
        return this.dataInterfaceWidthESet;
    }

    public MemoryMappedHWPortHwPortTypeEnum getHwPortType() {
        return this.hwPortType;
    }

    public void setHwPortType(MemoryMappedHWPortHwPortTypeEnum newHwPortType) {
        MemoryMappedHWPortHwPortTypeEnum oldHwPortType = this.hwPortType;
        this.hwPortType = newHwPortType == null ? HW_PORT_TYPE_EDEFAULT : newHwPortType;
        boolean oldHwPortTypeESet = this.hwPortTypeESet;
        this.hwPortTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldHwPortType, (Object)this.hwPortType, !oldHwPortTypeESet));
        }
    }

    public void unsetHwPortType() {
        MemoryMappedHWPortHwPortTypeEnum oldHwPortType = this.hwPortType;
        boolean oldHwPortTypeESet = this.hwPortTypeESet;
        this.hwPortType = HW_PORT_TYPE_EDEFAULT;
        this.hwPortTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldHwPortType, (Object)HW_PORT_TYPE_EDEFAULT, oldHwPortTypeESet));
        }
    }

    public boolean isSetHwPortType() {
        return this.hwPortTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getDataInterfaceWidth();
            }
            case 20: {
                return this.getHwPortType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setDataInterfaceWidth((Integer)newValue);
                return;
            }
            case 20: {
                this.setHwPortType((MemoryMappedHWPortHwPortTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetDataInterfaceWidth();
                return;
            }
            case 20: {
                this.unsetHwPortType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetDataInterfaceWidth();
            }
            case 20: {
                return this.isSetHwPortType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dataInterfaceWidth: ");
        if (this.dataInterfaceWidthESet) {
            result.append(this.dataInterfaceWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", hwPortType: ");
        if (this.hwPortTypeESet) {
            result.append((Object)this.hwPortType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

