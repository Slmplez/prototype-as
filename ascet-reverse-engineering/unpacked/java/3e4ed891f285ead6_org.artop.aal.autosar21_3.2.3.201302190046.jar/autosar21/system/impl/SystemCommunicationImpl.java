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
package autosar21.system.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.GatewayInstance;
import autosar21.system.System;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemPackage;
import autosar21.system.communicationprotocol.CommProtocolInstance;
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
public class SystemCommunicationImpl
extends ARObjectImpl
implements SystemCommunication {
    protected EList<CommunicationMatrixInstance> communicationMatrixs;
    protected EList<CommProtocolInstance> communicationProtocols;
    protected EList<GatewayInstance> gateways;

    protected SystemCommunicationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemPackage.Literals.SYSTEM_COMMUNICATION;
    }

    @Override
    public System getSystem() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (System)this.eContainer();
    }

    public NotificationChain basicSetSystem(System newSystem, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystem, 4, msgs);
        return msgs;
    }

    @Override
    public void setSystem(System newSystem) {
        if (newSystem != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSystem != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystem)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystem != null) {
                msgs = ((InternalEObject)newSystem).eInverseAdd((InternalEObject)this, 18, System.class, msgs);
            }
            if ((msgs = this.basicSetSystem(newSystem, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSystem, (Object)newSystem));
        }
    }

    @Override
    public EList<CommunicationMatrixInstance> getCommunicationMatrixs() {
        if (this.communicationMatrixs == null) {
            this.communicationMatrixs = new EObjectContainmentWithInverseEList(CommunicationMatrixInstance.class, (InternalEObject)this, 5, 16);
        }
        return this.communicationMatrixs;
    }

    @Override
    public EList<CommProtocolInstance> getCommunicationProtocols() {
        if (this.communicationProtocols == null) {
            this.communicationProtocols = new EObjectContainmentWithInverseEList(CommProtocolInstance.class, (InternalEObject)this, 6, 16);
        }
        return this.communicationProtocols;
    }

    @Override
    public EList<GatewayInstance> getGateways() {
        if (this.gateways == null) {
            this.gateways = new EObjectContainmentWithInverseEList(GatewayInstance.class, (InternalEObject)this, 7, 16);
        }
        return this.gateways;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystem((System)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getCommunicationMatrixs()).basicAdd((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getCommunicationProtocols()).basicAdd((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getGateways()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSystem(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getCommunicationMatrixs()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getCommunicationProtocols()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getGateways()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, System.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSystem();
            }
            case 5: {
                return this.getCommunicationMatrixs();
            }
            case 6: {
                return this.getCommunicationProtocols();
            }
            case 7: {
                return this.getGateways();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSystem((System)newValue);
                return;
            }
            case 5: {
                this.getCommunicationMatrixs().clear();
                this.getCommunicationMatrixs().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getCommunicationProtocols().clear();
                this.getCommunicationProtocols().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getGateways().clear();
                this.getGateways().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSystem(null);
                return;
            }
            case 5: {
                this.getCommunicationMatrixs().clear();
                return;
            }
            case 6: {
                this.getCommunicationProtocols().clear();
                return;
            }
            case 7: {
                this.getGateways().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSystem() != null;
            }
            case 5: {
                return this.communicationMatrixs != null && !this.communicationMatrixs.isEmpty();
            }
            case 6: {
                return this.communicationProtocols != null && !this.communicationProtocols.isEmpty();
            }
            case 7: {
                return this.gateways != null && !this.gateways.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

