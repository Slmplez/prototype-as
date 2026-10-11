/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar21.system.topology.impl;

import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.TopologyPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ECUCommunicationPortInstanceImpl
extends IdentifiableImpl
implements ECUCommunicationPortInstance,
IReferringClass {
    protected static final Integer COMM_PORT_ID_EDEFAULT = new Integer(0);
    protected Integer commPortId = COMM_PORT_ID_EDEFAULT;
    protected boolean commPortIdESet;
    protected static final Integer COMMUNICATION_SPEED_PORT_EDEFAULT = new Integer(0);
    protected Integer communicationSpeedPort = COMMUNICATION_SPEED_PORT_EDEFAULT;
    protected boolean communicationSpeedPortESet;
    protected ECUCommunicationPort port;
    protected static final Boolean WAKE_UP_ON_COMM_PORT_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpOnCommPortSupported = WAKE_UP_ON_COMM_PORT_SUPPORTED_EDEFAULT;
    protected boolean wakeUpOnCommPortSupportedESet;

    protected ECUCommunicationPortInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.ECU_COMMUNICATION_PORT_INSTANCE;
    }

    public ECUInstance getECUInstance() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (ECUInstance)this.eContainer();
    }

    public NotificationChain basicSetECUInstance(ECUInstance newECUInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newECUInstance, 16, msgs);
        return msgs;
    }

    public void setECUInstance(ECUInstance newECUInstance) {
        if (newECUInstance != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newECUInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newECUInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newECUInstance != null) {
                msgs = ((InternalEObject)newECUInstance).eInverseAdd((InternalEObject)this, 20, ECUInstance.class, msgs);
            }
            if ((msgs = this.basicSetECUInstance(newECUInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newECUInstance, (Object)newECUInstance));
        }
    }

    public Integer getCommPortId() {
        return this.commPortId;
    }

    public void setCommPortId(Integer newCommPortId) {
        Integer oldCommPortId = this.commPortId;
        this.commPortId = newCommPortId;
        boolean oldCommPortIdESet = this.commPortIdESet;
        this.commPortIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldCommPortId, (Object)this.commPortId, !oldCommPortIdESet));
        }
    }

    public void unsetCommPortId() {
        Integer oldCommPortId = this.commPortId;
        boolean oldCommPortIdESet = this.commPortIdESet;
        this.commPortId = COMM_PORT_ID_EDEFAULT;
        this.commPortIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldCommPortId, (Object)COMM_PORT_ID_EDEFAULT, oldCommPortIdESet));
        }
    }

    public boolean isSetCommPortId() {
        return this.commPortIdESet;
    }

    public Integer getCommunicationSpeedPort() {
        return this.communicationSpeedPort;
    }

    public void setCommunicationSpeedPort(Integer newCommunicationSpeedPort) {
        Integer oldCommunicationSpeedPort = this.communicationSpeedPort;
        this.communicationSpeedPort = newCommunicationSpeedPort;
        boolean oldCommunicationSpeedPortESet = this.communicationSpeedPortESet;
        this.communicationSpeedPortESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldCommunicationSpeedPort, (Object)this.communicationSpeedPort, !oldCommunicationSpeedPortESet));
        }
    }

    public void unsetCommunicationSpeedPort() {
        Integer oldCommunicationSpeedPort = this.communicationSpeedPort;
        boolean oldCommunicationSpeedPortESet = this.communicationSpeedPortESet;
        this.communicationSpeedPort = COMMUNICATION_SPEED_PORT_EDEFAULT;
        this.communicationSpeedPortESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldCommunicationSpeedPort, (Object)COMMUNICATION_SPEED_PORT_EDEFAULT, oldCommunicationSpeedPortESet));
        }
    }

    public boolean isSetCommunicationSpeedPort() {
        return this.communicationSpeedPortESet;
    }

    public ECUCommunicationPort getPort() {
        if (this.port != null && this.port.eIsProxy()) {
            InternalEObject oldPort = (InternalEObject)this.port;
            this.port = (ECUCommunicationPort)this.eResolveProxy(oldPort);
            if (this.port != oldPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldPort, (Object)this.port));
            }
        }
        return this.port;
    }

    public ECUCommunicationPort basicGetPort() {
        return this.port;
    }

    public void setPort(ECUCommunicationPort newPort) {
        ECUCommunicationPort oldPort = this.port;
        this.port = newPort;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldPort, (Object)this.port));
        }
    }

    public Boolean getWakeUpOnCommPortSupported() {
        return this.wakeUpOnCommPortSupported;
    }

    public void setWakeUpOnCommPortSupported(Boolean newWakeUpOnCommPortSupported) {
        Boolean oldWakeUpOnCommPortSupported = this.wakeUpOnCommPortSupported;
        this.wakeUpOnCommPortSupported = newWakeUpOnCommPortSupported;
        boolean oldWakeUpOnCommPortSupportedESet = this.wakeUpOnCommPortSupportedESet;
        this.wakeUpOnCommPortSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldWakeUpOnCommPortSupported, (Object)this.wakeUpOnCommPortSupported, !oldWakeUpOnCommPortSupportedESet));
        }
    }

    public void unsetWakeUpOnCommPortSupported() {
        Boolean oldWakeUpOnCommPortSupported = this.wakeUpOnCommPortSupported;
        boolean oldWakeUpOnCommPortSupportedESet = this.wakeUpOnCommPortSupportedESet;
        this.wakeUpOnCommPortSupported = WAKE_UP_ON_COMM_PORT_SUPPORTED_EDEFAULT;
        this.wakeUpOnCommPortSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldWakeUpOnCommPortSupported, (Object)WAKE_UP_ON_COMM_PORT_SUPPORTED_EDEFAULT, oldWakeUpOnCommPortSupportedESet));
        }
    }

    public boolean isSetWakeUpOnCommPortSupported() {
        return this.wakeUpOnCommPortSupportedESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetECUInstance((ECUInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetECUInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, ECUInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getECUInstance();
            }
            case 17: {
                return this.getCommPortId();
            }
            case 18: {
                return this.getCommunicationSpeedPort();
            }
            case 19: {
                if (resolve) {
                    return this.getPort();
                }
                return this.basicGetPort();
            }
            case 20: {
                return this.getWakeUpOnCommPortSupported();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setECUInstance((ECUInstance)newValue);
                return;
            }
            case 17: {
                this.setCommPortId((Integer)newValue);
                return;
            }
            case 18: {
                this.setCommunicationSpeedPort((Integer)newValue);
                return;
            }
            case 19: {
                this.setPort((ECUCommunicationPort)newValue);
                return;
            }
            case 20: {
                this.setWakeUpOnCommPortSupported((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setECUInstance(null);
                return;
            }
            case 17: {
                this.unsetCommPortId();
                return;
            }
            case 18: {
                this.unsetCommunicationSpeedPort();
                return;
            }
            case 19: {
                this.setPort(null);
                return;
            }
            case 20: {
                this.unsetWakeUpOnCommPortSupported();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getECUInstance() != null;
            }
            case 17: {
                return this.isSetCommPortId();
            }
            case 18: {
                return this.isSetCommunicationSpeedPort();
            }
            case 19: {
                return this.port != null;
            }
            case 20: {
                return this.isSetWakeUpOnCommPortSupported();
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
        result.append(" (commPortId: ");
        if (this.commPortIdESet) {
            result.append(this.commPortId);
        } else {
            result.append("<unset>");
        }
        result.append(", communicationSpeedPort: ");
        if (this.communicationSpeedPortESet) {
            result.append(this.communicationSpeedPort);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpOnCommPortSupported: ");
        if (this.wakeUpOnCommPortSupportedESet) {
            result.append(this.wakeUpOnCommPortSupported);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

