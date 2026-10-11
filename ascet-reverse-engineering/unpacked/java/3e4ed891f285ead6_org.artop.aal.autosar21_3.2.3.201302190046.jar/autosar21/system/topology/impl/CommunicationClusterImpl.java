/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar21.system.topology.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyPackage;
import java.util.Collection;
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
public class CommunicationClusterImpl
extends IdentifiableImpl
implements CommunicationCluster {
    protected static final Integer COMMUNICATION_SPEED_BUS_EDEFAULT = new Integer(0);
    protected Integer communicationSpeedBus = COMMUNICATION_SPEED_BUS_EDEFAULT;
    protected boolean communicationSpeedBusESet;
    protected EList<PhysicalChannel> physicalChannels;
    protected static final String PROTOCOL_NAME_EDEFAULT = "";
    protected String protocolName = "";
    protected boolean protocolNameESet;
    protected static final String PROTOCOL_VERSION_EDEFAULT = "";
    protected String protocolVersion = "";
    protected boolean protocolVersionESet;

    protected CommunicationClusterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.COMMUNICATION_CLUSTER;
    }

    @Override
    public SystemTopologyType getSystemTopologyType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (SystemTopologyType)this.eContainer();
    }

    public NotificationChain basicSetSystemTopologyType(SystemTopologyType newSystemTopologyType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemTopologyType, 16, msgs);
        return msgs;
    }

    @Override
    public void setSystemTopologyType(SystemTopologyType newSystemTopologyType) {
        if (newSystemTopologyType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSystemTopologyType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemTopologyType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemTopologyType != null) {
                msgs = ((InternalEObject)newSystemTopologyType).eInverseAdd((InternalEObject)this, 18, SystemTopologyType.class, msgs);
            }
            if ((msgs = this.basicSetSystemTopologyType(newSystemTopologyType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystemTopologyType, (Object)newSystemTopologyType));
        }
    }

    @Override
    public Integer getCommunicationSpeedBus() {
        return this.communicationSpeedBus;
    }

    @Override
    public void setCommunicationSpeedBus(Integer newCommunicationSpeedBus) {
        Integer oldCommunicationSpeedBus = this.communicationSpeedBus;
        this.communicationSpeedBus = newCommunicationSpeedBus;
        boolean oldCommunicationSpeedBusESet = this.communicationSpeedBusESet;
        this.communicationSpeedBusESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldCommunicationSpeedBus, (Object)this.communicationSpeedBus, !oldCommunicationSpeedBusESet));
        }
    }

    @Override
    public void unsetCommunicationSpeedBus() {
        Integer oldCommunicationSpeedBus = this.communicationSpeedBus;
        boolean oldCommunicationSpeedBusESet = this.communicationSpeedBusESet;
        this.communicationSpeedBus = COMMUNICATION_SPEED_BUS_EDEFAULT;
        this.communicationSpeedBusESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldCommunicationSpeedBus, (Object)COMMUNICATION_SPEED_BUS_EDEFAULT, oldCommunicationSpeedBusESet));
        }
    }

    @Override
    public boolean isSetCommunicationSpeedBus() {
        return this.communicationSpeedBusESet;
    }

    @Override
    public EList<PhysicalChannel> getPhysicalChannels() {
        if (this.physicalChannels == null) {
            this.physicalChannels = new EObjectContainmentWithInverseEList(PhysicalChannel.class, (InternalEObject)this, 18, 16);
        }
        return this.physicalChannels;
    }

    @Override
    public String getProtocolName() {
        return this.protocolName;
    }

    @Override
    public void setProtocolName(String newProtocolName) {
        String oldProtocolName = this.protocolName;
        this.protocolName = newProtocolName;
        boolean oldProtocolNameESet = this.protocolNameESet;
        this.protocolNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldProtocolName, (Object)this.protocolName, !oldProtocolNameESet));
        }
    }

    @Override
    public void unsetProtocolName() {
        String oldProtocolName = this.protocolName;
        boolean oldProtocolNameESet = this.protocolNameESet;
        this.protocolName = "";
        this.protocolNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldProtocolName, (Object)"", oldProtocolNameESet));
        }
    }

    @Override
    public boolean isSetProtocolName() {
        return this.protocolNameESet;
    }

    @Override
    public String getProtocolVersion() {
        return this.protocolVersion;
    }

    @Override
    public void setProtocolVersion(String newProtocolVersion) {
        String oldProtocolVersion = this.protocolVersion;
        this.protocolVersion = newProtocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    @Override
    public void unsetProtocolVersion() {
        String oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = "";
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldProtocolVersion, (Object)"", oldProtocolVersionESet));
        }
    }

    @Override
    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemTopologyType((SystemTopologyType)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getPhysicalChannels()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystemTopologyType(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getPhysicalChannels()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, SystemTopologyType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystemTopologyType();
            }
            case 17: {
                return this.getCommunicationSpeedBus();
            }
            case 18: {
                return this.getPhysicalChannels();
            }
            case 19: {
                return this.getProtocolName();
            }
            case 20: {
                return this.getProtocolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystemTopologyType((SystemTopologyType)newValue);
                return;
            }
            case 17: {
                this.setCommunicationSpeedBus((Integer)newValue);
                return;
            }
            case 18: {
                this.getPhysicalChannels().clear();
                this.getPhysicalChannels().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setProtocolName((String)newValue);
                return;
            }
            case 20: {
                this.setProtocolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystemTopologyType(null);
                return;
            }
            case 17: {
                this.unsetCommunicationSpeedBus();
                return;
            }
            case 18: {
                this.getPhysicalChannels().clear();
                return;
            }
            case 19: {
                this.unsetProtocolName();
                return;
            }
            case 20: {
                this.unsetProtocolVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystemTopologyType() != null;
            }
            case 17: {
                return this.isSetCommunicationSpeedBus();
            }
            case 18: {
                return this.physicalChannels != null && !this.physicalChannels.isEmpty();
            }
            case 19: {
                return this.isSetProtocolName();
            }
            case 20: {
                return this.isSetProtocolVersion();
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
        result.append(" (communicationSpeedBus: ");
        if (this.communicationSpeedBusESet) {
            result.append(this.communicationSpeedBus);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolName: ");
        if (this.protocolNameESet) {
            result.append(this.protocolName);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolVersion: ");
        if (this.protocolVersionESet) {
            result.append(this.protocolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

