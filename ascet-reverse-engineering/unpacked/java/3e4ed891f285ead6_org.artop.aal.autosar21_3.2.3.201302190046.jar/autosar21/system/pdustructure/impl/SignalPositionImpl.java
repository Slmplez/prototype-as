/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.pdustructure.impl;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.systemsignal.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SignalPositionImpl
extends IdentifiableImpl
implements SignalPosition,
IReferringClass {
    protected static final ByteOrderEnum PACKING_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
    protected boolean packingByteOrderESet;
    protected static final Integer START_POSITION_EDEFAULT = new Integer(0);
    protected Integer startPosition = START_POSITION_EDEFAULT;
    protected boolean startPositionESet;
    protected SystemSignal systemSignal;

    protected SignalPositionImpl() {
    }

    protected EClass eStaticClass() {
        return PdustructurePackage.Literals.SIGNAL_POSITION;
    }

    public ByteOrderEnum getPackingByteOrder() {
        return this.packingByteOrder;
    }

    public void setPackingByteOrder(ByteOrderEnum newPackingByteOrder) {
        ByteOrderEnum oldPackingByteOrder = this.packingByteOrder;
        this.packingByteOrder = newPackingByteOrder == null ? PACKING_BYTE_ORDER_EDEFAULT : newPackingByteOrder;
        boolean oldPackingByteOrderESet = this.packingByteOrderESet;
        this.packingByteOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldPackingByteOrder, (Object)this.packingByteOrder, !oldPackingByteOrderESet));
        }
    }

    public void unsetPackingByteOrder() {
        ByteOrderEnum oldPackingByteOrder = this.packingByteOrder;
        boolean oldPackingByteOrderESet = this.packingByteOrderESet;
        this.packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
        this.packingByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldPackingByteOrder, (Object)PACKING_BYTE_ORDER_EDEFAULT, oldPackingByteOrderESet));
        }
    }

    public boolean isSetPackingByteOrder() {
        return this.packingByteOrderESet;
    }

    public Integer getStartPosition() {
        return this.startPosition;
    }

    public void setStartPosition(Integer newStartPosition) {
        Integer oldStartPosition = this.startPosition;
        this.startPosition = newStartPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldStartPosition, (Object)this.startPosition, !oldStartPositionESet));
        }
    }

    public void unsetStartPosition() {
        Integer oldStartPosition = this.startPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPosition = START_POSITION_EDEFAULT;
        this.startPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldStartPosition, (Object)START_POSITION_EDEFAULT, oldStartPositionESet));
        }
    }

    public boolean isSetStartPosition() {
        return this.startPositionESet;
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldSystemSignal, (Object)this.systemSignal));
            }
        }
        return this.systemSignal;
    }

    public SystemSignal basicGetSystemSignal() {
        return this.systemSignal;
    }

    public void setSystemSignal(SystemSignal newSystemSignal) {
        SystemSignal oldSystemSignal = this.systemSignal;
        this.systemSignal = newSystemSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSystemSignal, (Object)this.systemSignal));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getPackingByteOrder();
            }
            case 17: {
                return this.getStartPosition();
            }
            case 18: {
                if (resolve) {
                    return this.getSystemSignal();
                }
                return this.basicGetSystemSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setPackingByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 17: {
                this.setStartPosition((Integer)newValue);
                return;
            }
            case 18: {
                this.setSystemSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.unsetPackingByteOrder();
                return;
            }
            case 17: {
                this.unsetStartPosition();
                return;
            }
            case 18: {
                this.setSystemSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.isSetPackingByteOrder();
            }
            case 17: {
                return this.isSetStartPosition();
            }
            case 18: {
                return this.systemSignal != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (packingByteOrder: ");
        if (this.packingByteOrderESet) {
            result.append((Object)this.packingByteOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", startPosition: ");
        if (this.startPositionESet) {
            result.append(this.startPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

