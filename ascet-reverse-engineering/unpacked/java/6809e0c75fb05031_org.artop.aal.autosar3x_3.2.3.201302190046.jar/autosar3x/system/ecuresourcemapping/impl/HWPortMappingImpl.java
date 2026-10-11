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
package autosar3x.system.ecuresourcemapping.impl;

import autosar3x.ecuresource.peripherals.ECUCommunicationPort;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.ecuresourcemapping.ECUMapping;
import autosar3x.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar3x.system.ecuresourcemapping.HWPortMapping;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class HWPortMappingImpl
extends ARObjectImpl
implements HWPortMapping,
IReferringClass {
    protected CommunicationConnector communicationConnector;
    protected ECUCommunicationPort ecuCommunicationPort;

    protected HWPortMappingImpl() {
    }

    protected EClass eStaticClass() {
        return EcuresourcemappingPackage.Literals.HW_PORT_MAPPING;
    }

    public ECUMapping getECUMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ECUMapping)this.eContainer();
    }

    public NotificationChain basicSetECUMapping(ECUMapping newECUMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newECUMapping, 4, msgs);
        return msgs;
    }

    public void setECUMapping(ECUMapping newECUMapping) {
        if (newECUMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newECUMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newECUMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newECUMapping != null) {
                msgs = ((InternalEObject)newECUMapping).eInverseAdd((InternalEObject)this, 21, ECUMapping.class, msgs);
            }
            if ((msgs = this.basicSetECUMapping(newECUMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newECUMapping, (Object)newECUMapping));
        }
    }

    public CommunicationConnector getCommunicationConnector() {
        if (this.communicationConnector != null && this.communicationConnector.eIsProxy()) {
            InternalEObject oldCommunicationConnector = (InternalEObject)this.communicationConnector;
            this.communicationConnector = (CommunicationConnector)this.eResolveProxy(oldCommunicationConnector);
            if (this.communicationConnector != oldCommunicationConnector && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldCommunicationConnector, (Object)this.communicationConnector));
            }
        }
        return this.communicationConnector;
    }

    public CommunicationConnector basicGetCommunicationConnector() {
        return this.communicationConnector;
    }

    public void setCommunicationConnector(CommunicationConnector newCommunicationConnector) {
        CommunicationConnector oldCommunicationConnector = this.communicationConnector;
        this.communicationConnector = newCommunicationConnector;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationConnector, (Object)this.communicationConnector));
        }
    }

    public ECUCommunicationPort getEcuCommunicationPort() {
        if (this.ecuCommunicationPort != null && this.ecuCommunicationPort.eIsProxy()) {
            InternalEObject oldEcuCommunicationPort = (InternalEObject)this.ecuCommunicationPort;
            this.ecuCommunicationPort = (ECUCommunicationPort)this.eResolveProxy(oldEcuCommunicationPort);
            if (this.ecuCommunicationPort != oldEcuCommunicationPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldEcuCommunicationPort, (Object)this.ecuCommunicationPort));
            }
        }
        return this.ecuCommunicationPort;
    }

    public ECUCommunicationPort basicGetEcuCommunicationPort() {
        return this.ecuCommunicationPort;
    }

    public void setEcuCommunicationPort(ECUCommunicationPort newEcuCommunicationPort) {
        ECUCommunicationPort oldEcuCommunicationPort = this.ecuCommunicationPort;
        this.ecuCommunicationPort = newEcuCommunicationPort;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEcuCommunicationPort, (Object)this.ecuCommunicationPort));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetECUMapping((ECUMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetECUMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ECUMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getECUMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getCommunicationConnector();
                }
                return this.basicGetCommunicationConnector();
            }
            case 6: {
                if (resolve) {
                    return this.getEcuCommunicationPort();
                }
                return this.basicGetEcuCommunicationPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setECUMapping((ECUMapping)newValue);
                return;
            }
            case 5: {
                this.setCommunicationConnector((CommunicationConnector)newValue);
                return;
            }
            case 6: {
                this.setEcuCommunicationPort((ECUCommunicationPort)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setECUMapping(null);
                return;
            }
            case 5: {
                this.setCommunicationConnector(null);
                return;
            }
            case 6: {
                this.setEcuCommunicationPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getECUMapping() != null;
            }
            case 5: {
                return this.communicationConnector != null;
            }
            case 6: {
                return this.ecuCommunicationPort != null;
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
}

