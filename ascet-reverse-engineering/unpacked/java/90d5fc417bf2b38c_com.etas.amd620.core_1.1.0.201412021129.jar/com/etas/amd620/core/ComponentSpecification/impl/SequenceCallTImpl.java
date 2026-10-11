/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class SequenceCallTImpl
extends MinimalEObjectImpl.Container
implements SequenceCallT {
    protected PointT position;
    protected static final BigInteger CONNECT_OID_EDEFAULT = null;
    protected BigInteger connectOID = CONNECT_OID_EDEFAULT;
    protected static final boolean END_ATOMIC_EDEFAULT = false;
    protected boolean endAtomic = false;
    protected boolean endAtomicESet;
    protected static final BigInteger GRAPHIC_OID_EDEFAULT = null;
    protected BigInteger graphicOID = GRAPHIC_OID_EDEFAULT;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final String METHOD_OID_EDEFAULT = null;
    protected String methodOID = METHOD_OID_EDEFAULT;
    protected static final BigInteger SEQUENCE_NUMBER_EDEFAULT = null;
    protected BigInteger sequenceNumber = SEQUENCE_NUMBER_EDEFAULT;
    protected static final boolean START_ATOMIC_EDEFAULT = false;
    protected boolean startAtomic = false;
    protected boolean startAtomicESet;
    protected static final boolean USER_VISIBILITY_EDEFAULT = false;
    protected boolean userVisibility = false;
    protected boolean userVisibilityESet;

    protected SequenceCallTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getSequenceCallT();
    }

    @Override
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPosition, (Object)newPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPosition(PointT newPosition) {
        if (newPosition != this.position) {
            NotificationChain msgs = null;
            if (this.position != null) {
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public BigInteger getConnectOID() {
        return this.connectOID;
    }

    @Override
    public void setConnectOID(BigInteger newConnectOID) {
        BigInteger oldConnectOID = this.connectOID;
        this.connectOID = newConnectOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldConnectOID, (Object)this.connectOID));
        }
    }

    @Override
    public boolean isEndAtomic() {
        return this.endAtomic;
    }

    @Override
    public void setEndAtomic(boolean newEndAtomic) {
        boolean oldEndAtomic = this.endAtomic;
        this.endAtomic = newEndAtomic;
        boolean oldEndAtomicESet = this.endAtomicESet;
        this.endAtomicESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldEndAtomic, this.endAtomic, !oldEndAtomicESet));
        }
    }

    @Override
    public void unsetEndAtomic() {
        boolean oldEndAtomic = this.endAtomic;
        boolean oldEndAtomicESet = this.endAtomicESet;
        this.endAtomic = false;
        this.endAtomicESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, oldEndAtomic, false, oldEndAtomicESet));
        }
    }

    @Override
    public boolean isSetEndAtomic() {
        return this.endAtomicESet;
    }

    @Override
    public BigInteger getGraphicOID() {
        return this.graphicOID;
    }

    @Override
    public void setGraphicOID(BigInteger newGraphicOID) {
        BigInteger oldGraphicOID = this.graphicOID;
        this.graphicOID = newGraphicOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldGraphicOID, (Object)this.graphicOID));
        }
    }

    @Override
    public String getMethodName() {
        return this.methodName;
    }

    @Override
    public void setMethodName(String newMethodName) {
        String oldMethodName = this.methodName;
        this.methodName = newMethodName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    @Override
    public String getMethodOID() {
        return this.methodOID;
    }

    @Override
    public void setMethodOID(String newMethodOID) {
        String oldMethodOID = this.methodOID;
        this.methodOID = newMethodOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMethodOID, (Object)this.methodOID));
        }
    }

    @Override
    public BigInteger getSequenceNumber() {
        return this.sequenceNumber;
    }

    @Override
    public void setSequenceNumber(BigInteger newSequenceNumber) {
        BigInteger oldSequenceNumber = this.sequenceNumber;
        this.sequenceNumber = newSequenceNumber;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSequenceNumber, (Object)this.sequenceNumber));
        }
    }

    @Override
    public boolean isStartAtomic() {
        return this.startAtomic;
    }

    @Override
    public void setStartAtomic(boolean newStartAtomic) {
        boolean oldStartAtomic = this.startAtomic;
        this.startAtomic = newStartAtomic;
        boolean oldStartAtomicESet = this.startAtomicESet;
        this.startAtomicESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldStartAtomic, this.startAtomic, !oldStartAtomicESet));
        }
    }

    @Override
    public void unsetStartAtomic() {
        boolean oldStartAtomic = this.startAtomic;
        boolean oldStartAtomicESet = this.startAtomicESet;
        this.startAtomic = false;
        this.startAtomicESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, oldStartAtomic, false, oldStartAtomicESet));
        }
    }

    @Override
    public boolean isSetStartAtomic() {
        return this.startAtomicESet;
    }

    @Override
    public boolean isUserVisibility() {
        return this.userVisibility;
    }

    @Override
    public void setUserVisibility(boolean newUserVisibility) {
        boolean oldUserVisibility = this.userVisibility;
        this.userVisibility = newUserVisibility;
        boolean oldUserVisibilityESet = this.userVisibilityESet;
        this.userVisibilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldUserVisibility, this.userVisibility, !oldUserVisibilityESet));
        }
    }

    @Override
    public void unsetUserVisibility() {
        boolean oldUserVisibility = this.userVisibility;
        boolean oldUserVisibilityESet = this.userVisibilityESet;
        this.userVisibility = false;
        this.userVisibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, oldUserVisibility, false, oldUserVisibilityESet));
        }
    }

    @Override
    public boolean isSetUserVisibility() {
        return this.userVisibilityESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetPosition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPosition();
            }
            case 1: {
                return this.getConnectOID();
            }
            case 2: {
                return this.isEndAtomic();
            }
            case 3: {
                return this.getGraphicOID();
            }
            case 4: {
                return this.getMethodName();
            }
            case 5: {
                return this.getMethodOID();
            }
            case 6: {
                return this.getSequenceNumber();
            }
            case 7: {
                return this.isStartAtomic();
            }
            case 8: {
                return this.isUserVisibility();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPosition((PointT)newValue);
                return;
            }
            case 1: {
                this.setConnectOID((BigInteger)newValue);
                return;
            }
            case 2: {
                this.setEndAtomic((Boolean)newValue);
                return;
            }
            case 3: {
                this.setGraphicOID((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setMethodName((String)newValue);
                return;
            }
            case 5: {
                this.setMethodOID((String)newValue);
                return;
            }
            case 6: {
                this.setSequenceNumber((BigInteger)newValue);
                return;
            }
            case 7: {
                this.setStartAtomic((Boolean)newValue);
                return;
            }
            case 8: {
                this.setUserVisibility((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setPosition(null);
                return;
            }
            case 1: {
                this.setConnectOID(CONNECT_OID_EDEFAULT);
                return;
            }
            case 2: {
                this.unsetEndAtomic();
                return;
            }
            case 3: {
                this.setGraphicOID(GRAPHIC_OID_EDEFAULT);
                return;
            }
            case 4: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.setMethodOID(METHOD_OID_EDEFAULT);
                return;
            }
            case 6: {
                this.setSequenceNumber(SEQUENCE_NUMBER_EDEFAULT);
                return;
            }
            case 7: {
                this.unsetStartAtomic();
                return;
            }
            case 8: {
                this.unsetUserVisibility();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.position != null;
            }
            case 1: {
                return CONNECT_OID_EDEFAULT == null ? this.connectOID != null : !CONNECT_OID_EDEFAULT.equals(this.connectOID);
            }
            case 2: {
                return this.isSetEndAtomic();
            }
            case 3: {
                return GRAPHIC_OID_EDEFAULT == null ? this.graphicOID != null : !GRAPHIC_OID_EDEFAULT.equals(this.graphicOID);
            }
            case 4: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 5: {
                return METHOD_OID_EDEFAULT == null ? this.methodOID != null : !METHOD_OID_EDEFAULT.equals(this.methodOID);
            }
            case 6: {
                return SEQUENCE_NUMBER_EDEFAULT == null ? this.sequenceNumber != null : !SEQUENCE_NUMBER_EDEFAULT.equals(this.sequenceNumber);
            }
            case 7: {
                return this.isSetStartAtomic();
            }
            case 8: {
                return this.isSetUserVisibility();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (connectOID: ");
        result.append(this.connectOID);
        result.append(", endAtomic: ");
        if (this.endAtomicESet) {
            result.append(this.endAtomic);
        } else {
            result.append("<unset>");
        }
        result.append(", graphicOID: ");
        result.append(this.graphicOID);
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(", methodOID: ");
        result.append(this.methodOID);
        result.append(", sequenceNumber: ");
        result.append(this.sequenceNumber);
        result.append(", startAtomic: ");
        if (this.startAtomicESet) {
            result.append(this.startAtomic);
        } else {
            result.append("<unset>");
        }
        result.append(", userVisibility: ");
        if (this.userVisibilityESet) {
            result.append(this.userVisibility);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

