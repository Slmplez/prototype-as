/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SocketConnectionIpduIdentifierImpl
extends ARObjectImpl
implements SocketConnectionIpduIdentifier,
IReferringClass {
    protected static final PositiveIntegerDatatype HEADER_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype headerId = HEADER_ID_EDEFAULT.clone();
    protected boolean headerIdESet;
    protected Pdu pdu;

    protected SocketConnectionIpduIdentifierImpl() {
    }

    protected EClass eStaticClass() {
        return EthernetcommunicationPackage.Literals.SOCKET_CONNECTION_IPDU_IDENTIFIER;
    }

    public SocketConnection getSocketConnection() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SocketConnection)this.eContainer();
    }

    public NotificationChain basicSetSocketConnection(SocketConnection newSocketConnection, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSocketConnection, 4, msgs);
        return msgs;
    }

    public void setSocketConnection(SocketConnection newSocketConnection) {
        if (newSocketConnection != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSocketConnection != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSocketConnection)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSocketConnection != null) {
                msgs = ((InternalEObject)newSocketConnection).eInverseAdd((InternalEObject)this, 10, SocketConnection.class, msgs);
            }
            if ((msgs = this.basicSetSocketConnection(newSocketConnection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSocketConnection, (Object)newSocketConnection));
        }
    }

    public Long getHeaderId() {
        return (Long)this.headerId.basicGetValue();
    }

    public void setHeaderId(Long newHeaderId) {
        Long oldHeaderId = (Long)this.headerId.basicGetValue();
        this.headerId.basicSetValue((Object)newHeaderId);
        boolean oldHeaderIdESet = this.headerIdESet;
        this.headerIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldHeaderId, (Object)newHeaderId, !oldHeaderIdESet));
        }
    }

    public void unsetHeaderId() {
        Long oldHeaderId = (Long)this.headerId.basicGetValue();
        boolean oldHeaderIdESet = this.headerIdESet;
        this.headerId = HEADER_ID_EDEFAULT.clone();
        this.headerIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldHeaderId, (Object)HEADER_ID_EDEFAULT, oldHeaderIdESet));
        }
    }

    public boolean isSetHeaderId() {
        return this.headerIdESet;
    }

    public Pdu getPdu() {
        if (this.pdu != null && this.pdu.eIsProxy()) {
            InternalEObject oldPdu = (InternalEObject)this.pdu;
            this.pdu = (Pdu)this.eResolveProxy(oldPdu);
            if (this.pdu != oldPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldPdu, (Object)this.pdu));
            }
        }
        return this.pdu;
    }

    public Pdu basicGetPdu() {
        return this.pdu;
    }

    public void setPdu(Pdu newPdu) {
        Pdu oldPdu = this.pdu;
        this.pdu = newPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPdu, (Object)this.pdu));
        }
    }

    public PositiveIntegerDatatype getHeaderIdData() {
        return this.headerId.clone();
    }

    public void setHeaderIdData(PositiveIntegerDatatype newHeaderId) {
        this.headerId.setRadix((int)newHeaderId.getRadix());
        this.headerId.setNoOfDigits((int)newHeaderId.getNoOfDigits());
        this.setHeaderId(newHeaderId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSocketConnection((SocketConnection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSocketConnection(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, SocketConnection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSocketConnection();
            }
            case 5: {
                return this.getHeaderId();
            }
            case 6: {
                if (resolve) {
                    return this.getPdu();
                }
                return this.basicGetPdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSocketConnection((SocketConnection)newValue);
                return;
            }
            case 5: {
                this.setHeaderId((Long)newValue);
                return;
            }
            case 6: {
                this.setPdu((Pdu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSocketConnection(null);
                return;
            }
            case 5: {
                this.unsetHeaderId();
                return;
            }
            case 6: {
                this.setPdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSocketConnection() != null;
            }
            case 5: {
                return this.isSetHeaderId();
            }
            case 6: {
                return this.pdu != null;
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
        result.append(" (headerId: ");
        if (this.headerIdESet) {
            result.append(this.headerId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

