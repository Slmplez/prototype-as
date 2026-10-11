/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NmPduImpl
extends PduImpl
implements NmPdu {
    protected EList<ISignalToIPduMapping> iSignalToIPduMappings;
    protected static final Integer LENGTH_EDEFAULT = new Integer(0);
    protected Integer length = LENGTH_EDEFAULT;
    protected boolean lengthESet;
    protected static final Integer NM_CBV_POSITION_EDEFAULT = new Integer(0);
    protected Integer nmCbvPosition = NM_CBV_POSITION_EDEFAULT;
    protected boolean nmCbvPositionESet;
    protected static final Integer NM_NID_POSITION_EDEFAULT = new Integer(0);
    protected Integer nmNidPosition = NM_NID_POSITION_EDEFAULT;
    protected boolean nmNidPositionESet;
    protected static final Integer NM_USER_DATA_LENGTH_EDEFAULT = new Integer(0);
    protected Integer nmUserDataLength = NM_USER_DATA_LENGTH_EDEFAULT;
    protected boolean nmUserDataLengthESet;

    protected NmPduImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.NM_PDU;
    }

    @Override
    public EList<ISignalToIPduMapping> getISignalToIPduMappings() {
        if (this.iSignalToIPduMappings == null) {
            this.iSignalToIPduMappings = new EObjectContainmentEList(ISignalToIPduMapping.class, (InternalEObject)this, 19);
        }
        return this.iSignalToIPduMappings;
    }

    @Override
    public Integer getLength() {
        return this.length;
    }

    @Override
    public void setLength(Integer newLength) {
        Integer oldLength = this.length;
        this.length = newLength;
        boolean oldLengthESet = this.lengthESet;
        this.lengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldLength, (Object)this.length, !oldLengthESet));
        }
    }

    @Override
    public void unsetLength() {
        Integer oldLength = this.length;
        boolean oldLengthESet = this.lengthESet;
        this.length = LENGTH_EDEFAULT;
        this.lengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldLength, (Object)LENGTH_EDEFAULT, oldLengthESet));
        }
    }

    @Override
    public boolean isSetLength() {
        return this.lengthESet;
    }

    @Override
    public Integer getNmCbvPosition() {
        return this.nmCbvPosition;
    }

    @Override
    public void setNmCbvPosition(Integer newNmCbvPosition) {
        Integer oldNmCbvPosition = this.nmCbvPosition;
        this.nmCbvPosition = newNmCbvPosition;
        boolean oldNmCbvPositionESet = this.nmCbvPositionESet;
        this.nmCbvPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNmCbvPosition, (Object)this.nmCbvPosition, !oldNmCbvPositionESet));
        }
    }

    @Override
    public void unsetNmCbvPosition() {
        Integer oldNmCbvPosition = this.nmCbvPosition;
        boolean oldNmCbvPositionESet = this.nmCbvPositionESet;
        this.nmCbvPosition = NM_CBV_POSITION_EDEFAULT;
        this.nmCbvPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNmCbvPosition, (Object)NM_CBV_POSITION_EDEFAULT, oldNmCbvPositionESet));
        }
    }

    @Override
    public boolean isSetNmCbvPosition() {
        return this.nmCbvPositionESet;
    }

    @Override
    public Integer getNmNidPosition() {
        return this.nmNidPosition;
    }

    @Override
    public void setNmNidPosition(Integer newNmNidPosition) {
        Integer oldNmNidPosition = this.nmNidPosition;
        this.nmNidPosition = newNmNidPosition;
        boolean oldNmNidPositionESet = this.nmNidPositionESet;
        this.nmNidPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldNmNidPosition, (Object)this.nmNidPosition, !oldNmNidPositionESet));
        }
    }

    @Override
    public void unsetNmNidPosition() {
        Integer oldNmNidPosition = this.nmNidPosition;
        boolean oldNmNidPositionESet = this.nmNidPositionESet;
        this.nmNidPosition = NM_NID_POSITION_EDEFAULT;
        this.nmNidPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldNmNidPosition, (Object)NM_NID_POSITION_EDEFAULT, oldNmNidPositionESet));
        }
    }

    @Override
    public boolean isSetNmNidPosition() {
        return this.nmNidPositionESet;
    }

    @Override
    public Integer getNmUserDataLength() {
        return this.nmUserDataLength;
    }

    @Override
    public void setNmUserDataLength(Integer newNmUserDataLength) {
        Integer oldNmUserDataLength = this.nmUserDataLength;
        this.nmUserDataLength = newNmUserDataLength;
        boolean oldNmUserDataLengthESet = this.nmUserDataLengthESet;
        this.nmUserDataLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldNmUserDataLength, (Object)this.nmUserDataLength, !oldNmUserDataLengthESet));
        }
    }

    @Override
    public void unsetNmUserDataLength() {
        Integer oldNmUserDataLength = this.nmUserDataLength;
        boolean oldNmUserDataLengthESet = this.nmUserDataLengthESet;
        this.nmUserDataLength = NM_USER_DATA_LENGTH_EDEFAULT;
        this.nmUserDataLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldNmUserDataLength, (Object)NM_USER_DATA_LENGTH_EDEFAULT, oldNmUserDataLengthESet));
        }
    }

    @Override
    public boolean isSetNmUserDataLength() {
        return this.nmUserDataLengthESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getISignalToIPduMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getISignalToIPduMappings();
            }
            case 20: {
                return this.getLength();
            }
            case 21: {
                return this.getNmCbvPosition();
            }
            case 22: {
                return this.getNmNidPosition();
            }
            case 23: {
                return this.getNmUserDataLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getISignalToIPduMappings().clear();
                this.getISignalToIPduMappings().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setLength((Integer)newValue);
                return;
            }
            case 21: {
                this.setNmCbvPosition((Integer)newValue);
                return;
            }
            case 22: {
                this.setNmNidPosition((Integer)newValue);
                return;
            }
            case 23: {
                this.setNmUserDataLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getISignalToIPduMappings().clear();
                return;
            }
            case 20: {
                this.unsetLength();
                return;
            }
            case 21: {
                this.unsetNmCbvPosition();
                return;
            }
            case 22: {
                this.unsetNmNidPosition();
                return;
            }
            case 23: {
                this.unsetNmUserDataLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.iSignalToIPduMappings != null && !this.iSignalToIPduMappings.isEmpty();
            }
            case 20: {
                return this.isSetLength();
            }
            case 21: {
                return this.isSetNmCbvPosition();
            }
            case 22: {
                return this.isSetNmNidPosition();
            }
            case 23: {
                return this.isSetNmUserDataLength();
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
        result.append(" (length: ");
        if (this.lengthESet) {
            result.append(this.length);
        } else {
            result.append("<unset>");
        }
        result.append(", nmCbvPosition: ");
        if (this.nmCbvPositionESet) {
            result.append(this.nmCbvPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNidPosition: ");
        if (this.nmNidPositionESet) {
            result.append(this.nmNidPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", nmUserDataLength: ");
        if (this.nmUserDataLengthESet) {
            result.append(this.nmUserDataLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

