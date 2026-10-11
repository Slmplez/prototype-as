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
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
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
public class SoAdConfigImpl
extends ARObjectImpl
implements SoAdConfig {
    protected EList<SocketConnection> connections;
    protected EList<LogicAddress> logicAddress;
    protected EList<SocketAddress> socketAddress;

    protected SoAdConfigImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EthernetcommunicationPackage.Literals.SO_AD_CONFIG;
    }

    @Override
    public EthernetPhysicalChannel getEthernetPhysicalChannel() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EthernetPhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetEthernetPhysicalChannel(EthernetPhysicalChannel newEthernetPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEthernetPhysicalChannel, 4, msgs);
        return msgs;
    }

    @Override
    public void setEthernetPhysicalChannel(EthernetPhysicalChannel newEthernetPhysicalChannel) {
        if (newEthernetPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEthernetPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEthernetPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEthernetPhysicalChannel != null) {
                msgs = ((InternalEObject)newEthernetPhysicalChannel).eInverseAdd((InternalEObject)this, 24, EthernetPhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetEthernetPhysicalChannel(newEthernetPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEthernetPhysicalChannel, (Object)newEthernetPhysicalChannel));
        }
    }

    @Override
    public EList<SocketConnection> getConnections() {
        if (this.connections == null) {
            this.connections = new EObjectContainmentWithInverseEList(SocketConnection.class, (InternalEObject)this, 5, 4);
        }
        return this.connections;
    }

    @Override
    public EList<LogicAddress> getLogicAddress() {
        if (this.logicAddress == null) {
            this.logicAddress = new EObjectContainmentWithInverseEList(LogicAddress.class, (InternalEObject)this, 6, 18);
        }
        return this.logicAddress;
    }

    @Override
    public EList<SocketAddress> getSocketAddress() {
        if (this.socketAddress == null) {
            this.socketAddress = new EObjectContainmentWithInverseEList(SocketAddress.class, (InternalEObject)this, 7, 18);
        }
        return this.socketAddress;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEthernetPhysicalChannel((EthernetPhysicalChannel)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getConnections()).basicAdd((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getLogicAddress()).basicAdd((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSocketAddress()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEthernetPhysicalChannel(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getLogicAddress()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSocketAddress()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, EthernetPhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEthernetPhysicalChannel();
            }
            case 5: {
                return this.getConnections();
            }
            case 6: {
                return this.getLogicAddress();
            }
            case 7: {
                return this.getSocketAddress();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEthernetPhysicalChannel((EthernetPhysicalChannel)newValue);
                return;
            }
            case 5: {
                this.getConnections().clear();
                this.getConnections().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getLogicAddress().clear();
                this.getLogicAddress().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getSocketAddress().clear();
                this.getSocketAddress().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEthernetPhysicalChannel(null);
                return;
            }
            case 5: {
                this.getConnections().clear();
                return;
            }
            case 6: {
                this.getLogicAddress().clear();
                return;
            }
            case 7: {
                this.getSocketAddress().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEthernetPhysicalChannel() != null;
            }
            case 5: {
                return this.connections != null && !this.connections.isEmpty();
            }
            case 6: {
                return this.logicAddress != null && !this.logicAddress.isEmpty();
            }
            case 7: {
                return this.socketAddress != null && !this.socketAddress.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

