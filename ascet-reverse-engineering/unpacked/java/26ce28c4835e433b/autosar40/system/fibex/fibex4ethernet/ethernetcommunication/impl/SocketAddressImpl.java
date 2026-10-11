/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SocketAddressImpl
extends IdentifiableImpl
implements SocketAddress,
IReferringClass {
    protected EthernetCommunicationConnector connector;
    protected static final String IP_ADDRESS_EDEFAULT = "";
    protected String ipAddress = "";
    protected boolean ipAddressESet;
    protected static final IntegerDatatype PORT_ADDRESS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype portAddress = PORT_ADDRESS_EDEFAULT.clone();
    protected boolean portAddressESet;

    protected SocketAddressImpl() {
    }

    protected EClass eStaticClass() {
        return EthernetcommunicationPackage.Literals.SOCKET_ADDRESS;
    }

    public SoAdConfig getSoAdConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SoAdConfig)this.eContainer();
    }

    public NotificationChain basicSetSoAdConfig(SoAdConfig newSoAdConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSoAdConfig, 18, msgs);
        return msgs;
    }

    public void setSoAdConfig(SoAdConfig newSoAdConfig) {
        if (newSoAdConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSoAdConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSoAdConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSoAdConfig != null) {
                msgs = ((InternalEObject)newSoAdConfig).eInverseAdd((InternalEObject)this, 7, SoAdConfig.class, msgs);
            }
            if ((msgs = this.basicSetSoAdConfig(newSoAdConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSoAdConfig, (Object)newSoAdConfig));
        }
    }

    public EthernetCommunicationConnector getConnector() {
        if (this.connector != null && this.connector.eIsProxy()) {
            InternalEObject oldConnector = (InternalEObject)this.connector;
            this.connector = (EthernetCommunicationConnector)this.eResolveProxy(oldConnector);
            if (this.connector != oldConnector && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldConnector, (Object)this.connector));
            }
        }
        return this.connector;
    }

    public EthernetCommunicationConnector basicGetConnector() {
        return this.connector;
    }

    public void setConnector(EthernetCommunicationConnector newConnector) {
        EthernetCommunicationConnector oldConnector = this.connector;
        this.connector = newConnector;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldConnector, (Object)this.connector));
        }
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public void setIpAddress(String newIpAddress) {
        String oldIpAddress = this.ipAddress;
        this.ipAddress = newIpAddress;
        boolean oldIpAddressESet = this.ipAddressESet;
        this.ipAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldIpAddress, (Object)this.ipAddress, !oldIpAddressESet));
        }
    }

    public void unsetIpAddress() {
        String oldIpAddress = this.ipAddress;
        boolean oldIpAddressESet = this.ipAddressESet;
        this.ipAddress = IP_ADDRESS_EDEFAULT;
        this.ipAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldIpAddress, (Object)IP_ADDRESS_EDEFAULT, oldIpAddressESet));
        }
    }

    public boolean isSetIpAddress() {
        return this.ipAddressESet;
    }

    public Integer getPortAddress() {
        return (Integer)this.portAddress.basicGetValue();
    }

    public void setPortAddress(Integer newPortAddress) {
        Integer oldPortAddress = (Integer)this.portAddress.basicGetValue();
        this.portAddress.basicSetValue((Object)newPortAddress);
        boolean oldPortAddressESet = this.portAddressESet;
        this.portAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldPortAddress, (Object)newPortAddress, !oldPortAddressESet));
        }
    }

    public void unsetPortAddress() {
        Integer oldPortAddress = (Integer)this.portAddress.basicGetValue();
        boolean oldPortAddressESet = this.portAddressESet;
        this.portAddress = PORT_ADDRESS_EDEFAULT.clone();
        this.portAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldPortAddress, (Object)PORT_ADDRESS_EDEFAULT, oldPortAddressESet));
        }
    }

    public boolean isSetPortAddress() {
        return this.portAddressESet;
    }

    public IntegerDatatype getPortAddressData() {
        return this.portAddress.clone();
    }

    public void setPortAddressData(IntegerDatatype newPortAddress) {
        this.portAddress.setRadix((int)newPortAddress.getRadix());
        this.portAddress.setNoOfDigits((int)newPortAddress.getNoOfDigits());
        this.setPortAddress(newPortAddress.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSoAdConfig((SoAdConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSoAdConfig(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, SoAdConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSoAdConfig();
            }
            case 19: {
                if (resolve) {
                    return this.getConnector();
                }
                return this.basicGetConnector();
            }
            case 20: {
                return this.getIpAddress();
            }
            case 21: {
                return this.getPortAddress();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSoAdConfig((SoAdConfig)newValue);
                return;
            }
            case 19: {
                this.setConnector((EthernetCommunicationConnector)newValue);
                return;
            }
            case 20: {
                this.setIpAddress((String)newValue);
                return;
            }
            case 21: {
                this.setPortAddress((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setSoAdConfig(null);
                return;
            }
            case 19: {
                this.setConnector(null);
                return;
            }
            case 20: {
                this.unsetIpAddress();
                return;
            }
            case 21: {
                this.unsetPortAddress();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getSoAdConfig() != null;
            }
            case 19: {
                return this.connector != null;
            }
            case 20: {
                return this.isSetIpAddress();
            }
            case 21: {
                return this.isSetPortAddress();
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
        result.append(" (ipAddress: ");
        if (this.ipAddressESet) {
            result.append(this.ipAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", portAddress: ");
        if (this.portAddressESet) {
            result.append(this.portAddress);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

