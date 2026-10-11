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
package autosar21.system.communication.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.instanceref.CommunicationMatrixTypeCommunicationCluster;
import autosar21.system.communication.instanceref.InstancerefPackage;
import autosar21.system.topology.CommunicationCluster;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommunicationMatrixTypeCommunicationClusterImpl
extends ARObjectImpl
implements CommunicationMatrixTypeCommunicationCluster,
IReferringClass {
    protected SystemTopologyInstance systemTopologyInstance;
    protected CommunicationCluster communicationCluster;

    protected CommunicationMatrixTypeCommunicationClusterImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER;
    }

    public CommunicationMatrixType getCommunicationMatrixType() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommunicationMatrixType)this.eContainer();
    }

    public NotificationChain basicSetCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationMatrixType, 4, msgs);
        return msgs;
    }

    public void setCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType) {
        if (newCommunicationMatrixType != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommunicationMatrixType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationMatrixType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationMatrixType != null) {
                msgs = ((InternalEObject)newCommunicationMatrixType).eInverseAdd((InternalEObject)this, 18, CommunicationMatrixType.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationMatrixType(newCommunicationMatrixType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommunicationMatrixType, (Object)newCommunicationMatrixType));
        }
    }

    public SystemTopologyInstance getSystemTopologyInstance() {
        if (this.systemTopologyInstance != null && this.systemTopologyInstance.eIsProxy()) {
            InternalEObject oldSystemTopologyInstance = (InternalEObject)this.systemTopologyInstance;
            this.systemTopologyInstance = (SystemTopologyInstance)this.eResolveProxy(oldSystemTopologyInstance);
            if (this.systemTopologyInstance != oldSystemTopologyInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSystemTopologyInstance, (Object)this.systemTopologyInstance));
            }
        }
        return this.systemTopologyInstance;
    }

    public SystemTopologyInstance basicGetSystemTopologyInstance() {
        return this.systemTopologyInstance;
    }

    public void setSystemTopologyInstance(SystemTopologyInstance newSystemTopologyInstance) {
        SystemTopologyInstance oldSystemTopologyInstance = this.systemTopologyInstance;
        this.systemTopologyInstance = newSystemTopologyInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSystemTopologyInstance, (Object)this.systemTopologyInstance));
        }
    }

    public CommunicationCluster getCommunicationCluster() {
        if (this.communicationCluster != null && this.communicationCluster.eIsProxy()) {
            InternalEObject oldCommunicationCluster = (InternalEObject)this.communicationCluster;
            this.communicationCluster = (CommunicationCluster)this.eResolveProxy(oldCommunicationCluster);
            if (this.communicationCluster != oldCommunicationCluster && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldCommunicationCluster, (Object)this.communicationCluster));
            }
        }
        return this.communicationCluster;
    }

    public CommunicationCluster basicGetCommunicationCluster() {
        return this.communicationCluster;
    }

    public void setCommunicationCluster(CommunicationCluster newCommunicationCluster) {
        CommunicationCluster oldCommunicationCluster = this.communicationCluster;
        this.communicationCluster = newCommunicationCluster;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCommunicationCluster, (Object)this.communicationCluster));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationMatrixType((CommunicationMatrixType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommunicationMatrixType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, CommunicationMatrixType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationMatrixType();
            }
            case 5: {
                if (resolve) {
                    return this.getSystemTopologyInstance();
                }
                return this.basicGetSystemTopologyInstance();
            }
            case 6: {
                if (resolve) {
                    return this.getCommunicationCluster();
                }
                return this.basicGetCommunicationCluster();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommunicationMatrixType((CommunicationMatrixType)newValue);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance((SystemTopologyInstance)newValue);
                return;
            }
            case 6: {
                this.setCommunicationCluster((CommunicationCluster)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommunicationMatrixType(null);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance(null);
                return;
            }
            case 6: {
                this.setCommunicationCluster(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationMatrixType() != null;
            }
            case 5: {
                return this.systemTopologyInstance != null;
            }
            case 6: {
                return this.communicationCluster != null;
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

