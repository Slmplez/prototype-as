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
package autosar21.system.signalpaths.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.signalpaths.PermissibleSignalPath;
import autosar21.system.signalpaths.instanceref.InstancerefPackage;
import autosar21.system.signalpaths.instanceref.PermissibleSignalPathEcuCommunicationPort;
import autosar21.system.topology.ECUCommunicationPortInstance;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PermissibleSignalPathEcuCommunicationPortImpl
extends ARObjectImpl
implements PermissibleSignalPathEcuCommunicationPort,
IReferringClass {
    protected SystemTopologyInstance systemTopologyInstance;
    protected ECUCommunicationPortInstance ecuCommunicationPort;

    protected PermissibleSignalPathEcuCommunicationPortImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.PERMISSIBLE_SIGNAL_PATH_ECU_COMMUNICATION_PORT;
    }

    public PermissibleSignalPath getPermissibleSignalPath() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PermissibleSignalPath)this.eContainer();
    }

    public NotificationChain basicSetPermissibleSignalPath(PermissibleSignalPath newPermissibleSignalPath, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPermissibleSignalPath, 4, msgs);
        return msgs;
    }

    public void setPermissibleSignalPath(PermissibleSignalPath newPermissibleSignalPath) {
        if (newPermissibleSignalPath != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPermissibleSignalPath != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPermissibleSignalPath)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPermissibleSignalPath != null) {
                msgs = ((InternalEObject)newPermissibleSignalPath).eInverseAdd((InternalEObject)this, 5, PermissibleSignalPath.class, msgs);
            }
            if ((msgs = this.basicSetPermissibleSignalPath(newPermissibleSignalPath, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPermissibleSignalPath, (Object)newPermissibleSignalPath));
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

    public ECUCommunicationPortInstance getEcuCommunicationPort() {
        if (this.ecuCommunicationPort != null && this.ecuCommunicationPort.eIsProxy()) {
            InternalEObject oldEcuCommunicationPort = (InternalEObject)this.ecuCommunicationPort;
            this.ecuCommunicationPort = (ECUCommunicationPortInstance)this.eResolveProxy(oldEcuCommunicationPort);
            if (this.ecuCommunicationPort != oldEcuCommunicationPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldEcuCommunicationPort, (Object)this.ecuCommunicationPort));
            }
        }
        return this.ecuCommunicationPort;
    }

    public ECUCommunicationPortInstance basicGetEcuCommunicationPort() {
        return this.ecuCommunicationPort;
    }

    public void setEcuCommunicationPort(ECUCommunicationPortInstance newEcuCommunicationPort) {
        ECUCommunicationPortInstance oldEcuCommunicationPort = this.ecuCommunicationPort;
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
                return this.basicSetPermissibleSignalPath((PermissibleSignalPath)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPermissibleSignalPath(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, PermissibleSignalPath.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPermissibleSignalPath();
            }
            case 5: {
                if (resolve) {
                    return this.getSystemTopologyInstance();
                }
                return this.basicGetSystemTopologyInstance();
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
                this.setPermissibleSignalPath((PermissibleSignalPath)newValue);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance((SystemTopologyInstance)newValue);
                return;
            }
            case 6: {
                this.setEcuCommunicationPort((ECUCommunicationPortInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPermissibleSignalPath(null);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance(null);
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
                return this.getPermissibleSignalPath() != null;
            }
            case 5: {
                return this.systemTopologyInstance != null;
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

