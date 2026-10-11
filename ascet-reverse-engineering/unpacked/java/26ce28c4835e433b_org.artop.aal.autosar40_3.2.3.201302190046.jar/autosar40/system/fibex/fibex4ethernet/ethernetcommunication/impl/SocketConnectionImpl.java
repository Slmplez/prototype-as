/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConnectorType;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdProtocolType;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SocketConnectionImpl
extends ARObjectImpl
implements SocketConnection,
IReferringClass {
    protected static final SoAdConnectorType AUTOSAR_CONNECTOR_EDEFAULT = SoAdConnectorType.PDU_R;
    protected SoAdConnectorType autosarConnector = AUTOSAR_CONNECTOR_EDEFAULT;
    protected boolean autosarConnectorESet;
    protected LogicAddress doIpSourceAddress;
    protected LogicAddress doIpTargetAddress;
    protected SocketAddress localPort;
    protected NPdu nPdu;
    protected EList<SocketConnectionIpduIdentifier> pdus;
    protected SocketAddress remotePort;
    protected static final SoAdProtocolType SOCKET_PROTOCOL_EDEFAULT = SoAdProtocolType.UDP;
    protected SoAdProtocolType socketProtocol = SOCKET_PROTOCOL_EDEFAULT;
    protected boolean socketProtocolESet;

    protected SocketConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EthernetcommunicationPackage.Literals.SOCKET_CONNECTION;
    }

    @Override
    public SoAdConfig getSoAdConfig() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SoAdConfig)this.eContainer();
    }

    public NotificationChain basicSetSoAdConfig(SoAdConfig newSoAdConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSoAdConfig, 4, msgs);
        return msgs;
    }

    @Override
    public void setSoAdConfig(SoAdConfig newSoAdConfig) {
        if (newSoAdConfig != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSoAdConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSoAdConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSoAdConfig != null) {
                msgs = ((InternalEObject)newSoAdConfig).eInverseAdd((InternalEObject)this, 5, SoAdConfig.class, msgs);
            }
            if ((msgs = this.basicSetSoAdConfig(newSoAdConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSoAdConfig, (Object)newSoAdConfig));
        }
    }

    @Override
    public SoAdConnectorType getAutosarConnector() {
        return this.autosarConnector;
    }

    @Override
    public void setAutosarConnector(SoAdConnectorType newAutosarConnector) {
        SoAdConnectorType oldAutosarConnector = this.autosarConnector;
        this.autosarConnector = newAutosarConnector == null ? AUTOSAR_CONNECTOR_EDEFAULT : newAutosarConnector;
        boolean oldAutosarConnectorESet = this.autosarConnectorESet;
        this.autosarConnectorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAutosarConnector, (Object)this.autosarConnector, !oldAutosarConnectorESet));
        }
    }

    @Override
    public void unsetAutosarConnector() {
        SoAdConnectorType oldAutosarConnector = this.autosarConnector;
        boolean oldAutosarConnectorESet = this.autosarConnectorESet;
        this.autosarConnector = AUTOSAR_CONNECTOR_EDEFAULT;
        this.autosarConnectorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAutosarConnector, (Object)AUTOSAR_CONNECTOR_EDEFAULT, oldAutosarConnectorESet));
        }
    }

    @Override
    public boolean isSetAutosarConnector() {
        return this.autosarConnectorESet;
    }

    @Override
    public LogicAddress getDoIpSourceAddress() {
        if (this.doIpSourceAddress != null && this.doIpSourceAddress.eIsProxy()) {
            InternalEObject oldDoIpSourceAddress = (InternalEObject)this.doIpSourceAddress;
            this.doIpSourceAddress = (LogicAddress)this.eResolveProxy(oldDoIpSourceAddress);
            if (this.doIpSourceAddress != oldDoIpSourceAddress && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDoIpSourceAddress, (Object)this.doIpSourceAddress));
            }
        }
        return this.doIpSourceAddress;
    }

    public LogicAddress basicGetDoIpSourceAddress() {
        return this.doIpSourceAddress;
    }

    @Override
    public void setDoIpSourceAddress(LogicAddress newDoIpSourceAddress) {
        LogicAddress oldDoIpSourceAddress = this.doIpSourceAddress;
        this.doIpSourceAddress = newDoIpSourceAddress;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDoIpSourceAddress, (Object)this.doIpSourceAddress));
        }
    }

    @Override
    public LogicAddress getDoIpTargetAddress() {
        if (this.doIpTargetAddress != null && this.doIpTargetAddress.eIsProxy()) {
            InternalEObject oldDoIpTargetAddress = (InternalEObject)this.doIpTargetAddress;
            this.doIpTargetAddress = (LogicAddress)this.eResolveProxy(oldDoIpTargetAddress);
            if (this.doIpTargetAddress != oldDoIpTargetAddress && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldDoIpTargetAddress, (Object)this.doIpTargetAddress));
            }
        }
        return this.doIpTargetAddress;
    }

    public LogicAddress basicGetDoIpTargetAddress() {
        return this.doIpTargetAddress;
    }

    @Override
    public void setDoIpTargetAddress(LogicAddress newDoIpTargetAddress) {
        LogicAddress oldDoIpTargetAddress = this.doIpTargetAddress;
        this.doIpTargetAddress = newDoIpTargetAddress;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDoIpTargetAddress, (Object)this.doIpTargetAddress));
        }
    }

    @Override
    public SocketAddress getLocalPort() {
        if (this.localPort != null && this.localPort.eIsProxy()) {
            InternalEObject oldLocalPort = (InternalEObject)this.localPort;
            this.localPort = (SocketAddress)this.eResolveProxy(oldLocalPort);
            if (this.localPort != oldLocalPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldLocalPort, (Object)this.localPort));
            }
        }
        return this.localPort;
    }

    public SocketAddress basicGetLocalPort() {
        return this.localPort;
    }

    @Override
    public void setLocalPort(SocketAddress newLocalPort) {
        SocketAddress oldLocalPort = this.localPort;
        this.localPort = newLocalPort;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldLocalPort, (Object)this.localPort));
        }
    }

    @Override
    public NPdu getNPdu() {
        if (this.nPdu != null && this.nPdu.eIsProxy()) {
            InternalEObject oldNPdu = (InternalEObject)this.nPdu;
            this.nPdu = (NPdu)this.eResolveProxy(oldNPdu);
            if (this.nPdu != oldNPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldNPdu, (Object)this.nPdu));
            }
        }
        return this.nPdu;
    }

    public NPdu basicGetNPdu() {
        return this.nPdu;
    }

    @Override
    public void setNPdu(NPdu newNPdu) {
        NPdu oldNPdu = this.nPdu;
        this.nPdu = newNPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNPdu, (Object)this.nPdu));
        }
    }

    @Override
    public EList<SocketConnectionIpduIdentifier> getPdus() {
        if (this.pdus == null) {
            this.pdus = new EObjectContainmentWithInverseEList(SocketConnectionIpduIdentifier.class, (InternalEObject)this, 10, 4);
        }
        return this.pdus;
    }

    @Override
    public SocketAddress getRemotePort() {
        if (this.remotePort != null && this.remotePort.eIsProxy()) {
            InternalEObject oldRemotePort = (InternalEObject)this.remotePort;
            this.remotePort = (SocketAddress)this.eResolveProxy(oldRemotePort);
            if (this.remotePort != oldRemotePort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldRemotePort, (Object)this.remotePort));
            }
        }
        return this.remotePort;
    }

    public SocketAddress basicGetRemotePort() {
        return this.remotePort;
    }

    @Override
    public void setRemotePort(SocketAddress newRemotePort) {
        SocketAddress oldRemotePort = this.remotePort;
        this.remotePort = newRemotePort;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldRemotePort, (Object)this.remotePort));
        }
    }

    @Override
    public SoAdProtocolType getSocketProtocol() {
        return this.socketProtocol;
    }

    @Override
    public void setSocketProtocol(SoAdProtocolType newSocketProtocol) {
        SoAdProtocolType oldSocketProtocol = this.socketProtocol;
        this.socketProtocol = newSocketProtocol == null ? SOCKET_PROTOCOL_EDEFAULT : newSocketProtocol;
        boolean oldSocketProtocolESet = this.socketProtocolESet;
        this.socketProtocolESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSocketProtocol, (Object)this.socketProtocol, !oldSocketProtocolESet));
        }
    }

    @Override
    public void unsetSocketProtocol() {
        SoAdProtocolType oldSocketProtocol = this.socketProtocol;
        boolean oldSocketProtocolESet = this.socketProtocolESet;
        this.socketProtocol = SOCKET_PROTOCOL_EDEFAULT;
        this.socketProtocolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldSocketProtocol, (Object)SOCKET_PROTOCOL_EDEFAULT, oldSocketProtocolESet));
        }
    }

    @Override
    public boolean isSetSocketProtocol() {
        return this.socketProtocolESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSoAdConfig((SoAdConfig)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getPdus()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSoAdConfig(null, msgs);
            }
            case 10: {
                return ((InternalEList)this.getPdus()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SoAdConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSoAdConfig();
            }
            case 5: {
                return this.getAutosarConnector();
            }
            case 6: {
                if (resolve) {
                    return this.getDoIpSourceAddress();
                }
                return this.basicGetDoIpSourceAddress();
            }
            case 7: {
                if (resolve) {
                    return this.getDoIpTargetAddress();
                }
                return this.basicGetDoIpTargetAddress();
            }
            case 8: {
                if (resolve) {
                    return this.getLocalPort();
                }
                return this.basicGetLocalPort();
            }
            case 9: {
                if (resolve) {
                    return this.getNPdu();
                }
                return this.basicGetNPdu();
            }
            case 10: {
                return this.getPdus();
            }
            case 11: {
                if (resolve) {
                    return this.getRemotePort();
                }
                return this.basicGetRemotePort();
            }
            case 12: {
                return this.getSocketProtocol();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSoAdConfig((SoAdConfig)newValue);
                return;
            }
            case 5: {
                this.setAutosarConnector((SoAdConnectorType)((Object)newValue));
                return;
            }
            case 6: {
                this.setDoIpSourceAddress((LogicAddress)newValue);
                return;
            }
            case 7: {
                this.setDoIpTargetAddress((LogicAddress)newValue);
                return;
            }
            case 8: {
                this.setLocalPort((SocketAddress)newValue);
                return;
            }
            case 9: {
                this.setNPdu((NPdu)newValue);
                return;
            }
            case 10: {
                this.getPdus().clear();
                this.getPdus().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setRemotePort((SocketAddress)newValue);
                return;
            }
            case 12: {
                this.setSocketProtocol((SoAdProtocolType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSoAdConfig(null);
                return;
            }
            case 5: {
                this.unsetAutosarConnector();
                return;
            }
            case 6: {
                this.setDoIpSourceAddress(null);
                return;
            }
            case 7: {
                this.setDoIpTargetAddress(null);
                return;
            }
            case 8: {
                this.setLocalPort(null);
                return;
            }
            case 9: {
                this.setNPdu(null);
                return;
            }
            case 10: {
                this.getPdus().clear();
                return;
            }
            case 11: {
                this.setRemotePort(null);
                return;
            }
            case 12: {
                this.unsetSocketProtocol();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSoAdConfig() != null;
            }
            case 5: {
                return this.isSetAutosarConnector();
            }
            case 6: {
                return this.doIpSourceAddress != null;
            }
            case 7: {
                return this.doIpTargetAddress != null;
            }
            case 8: {
                return this.localPort != null;
            }
            case 9: {
                return this.nPdu != null;
            }
            case 10: {
                return this.pdus != null && !this.pdus.isEmpty();
            }
            case 11: {
                return this.remotePort != null;
            }
            case 12: {
                return this.isSetSocketProtocol();
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
        result.append(" (autosarConnector: ");
        if (this.autosarConnectorESet) {
            result.append((Object)this.autosarConnector);
        } else {
            result.append("<unset>");
        }
        result.append(", socketProtocol: ");
        if (this.socketProtocolESet) {
            result.append((Object)this.socketProtocol);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

