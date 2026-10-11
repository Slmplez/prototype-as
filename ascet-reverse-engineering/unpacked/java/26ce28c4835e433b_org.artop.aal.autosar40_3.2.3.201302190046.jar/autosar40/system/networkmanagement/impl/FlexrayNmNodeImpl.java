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
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.FlexrayNmNode;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NmNodeImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexrayNmNodeImpl
extends NmNodeImpl
implements FlexrayNmNode {
    protected static final PositiveIntegerDatatype NM_INSTANCE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nmInstanceId = NM_INSTANCE_ID_EDEFAULT.clone();
    protected boolean nmInstanceIdESet;

    protected FlexrayNmNodeImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.FLEXRAY_NM_NODE;
    }

    public Long getNmInstanceId() {
        return (Long)this.nmInstanceId.basicGetValue();
    }

    public void setNmInstanceId(Long newNmInstanceId) {
        Long oldNmInstanceId = (Long)this.nmInstanceId.basicGetValue();
        this.nmInstanceId.basicSetValue((Object)newNmInstanceId);
        boolean oldNmInstanceIdESet = this.nmInstanceIdESet;
        this.nmInstanceIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNmInstanceId, (Object)newNmInstanceId, !oldNmInstanceIdESet));
        }
    }

    public void unsetNmInstanceId() {
        Long oldNmInstanceId = (Long)this.nmInstanceId.basicGetValue();
        boolean oldNmInstanceIdESet = this.nmInstanceIdESet;
        this.nmInstanceId = NM_INSTANCE_ID_EDEFAULT.clone();
        this.nmInstanceIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNmInstanceId, (Object)NM_INSTANCE_ID_EDEFAULT, oldNmInstanceIdESet));
        }
    }

    public boolean isSetNmInstanceId() {
        return this.nmInstanceIdESet;
    }

    public PositiveIntegerDatatype getNmInstanceIdData() {
        return this.nmInstanceId.clone();
    }

    public void setNmInstanceIdData(PositiveIntegerDatatype newNmInstanceId) {
        this.nmInstanceId.setRadix((int)newNmInstanceId.getRadix());
        this.nmInstanceId.setNoOfDigits((int)newNmInstanceId.getNoOfDigits());
        this.setNmInstanceId(newNmInstanceId.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getNmInstanceId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setNmInstanceId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetNmInstanceId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetNmInstanceId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmInstanceId: ");
        if (this.nmInstanceIdESet) {
            result.append(this.nmInstanceId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

