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
package autosar21.system.swmapping.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.instanceref.EcuResourceEstimationEcuInstance;
import autosar21.system.swmapping.instanceref.InstancerefPackage;
import autosar21.system.topology.ECUInstance;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcuResourceEstimationEcuInstanceImpl
extends ARObjectImpl
implements EcuResourceEstimationEcuInstance,
IReferringClass {
    protected SystemTopologyInstance systemTopologyInstance;
    protected ECUInstance ecuInstance;

    protected EcuResourceEstimationEcuInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.ECU_RESOURCE_ESTIMATION_ECU_INSTANCE;
    }

    public EcuResourceEstimation getEcuResourceEstimation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EcuResourceEstimation)this.eContainer();
    }

    public NotificationChain basicSetEcuResourceEstimation(EcuResourceEstimation newEcuResourceEstimation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuResourceEstimation, 4, msgs);
        return msgs;
    }

    public void setEcuResourceEstimation(EcuResourceEstimation newEcuResourceEstimation) {
        if (newEcuResourceEstimation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEcuResourceEstimation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuResourceEstimation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuResourceEstimation != null) {
                msgs = ((InternalEObject)newEcuResourceEstimation).eInverseAdd((InternalEObject)this, 6, EcuResourceEstimation.class, msgs);
            }
            if ((msgs = this.basicSetEcuResourceEstimation(newEcuResourceEstimation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEcuResourceEstimation, (Object)newEcuResourceEstimation));
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

    public ECUInstance getEcuInstance() {
        if (this.ecuInstance != null && this.ecuInstance.eIsProxy()) {
            InternalEObject oldEcuInstance = (InternalEObject)this.ecuInstance;
            this.ecuInstance = (ECUInstance)this.eResolveProxy(oldEcuInstance);
            if (this.ecuInstance != oldEcuInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldEcuInstance, (Object)this.ecuInstance));
            }
        }
        return this.ecuInstance;
    }

    public ECUInstance basicGetEcuInstance() {
        return this.ecuInstance;
    }

    public void setEcuInstance(ECUInstance newEcuInstance) {
        ECUInstance oldEcuInstance = this.ecuInstance;
        this.ecuInstance = newEcuInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEcuInstance, (Object)this.ecuInstance));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuResourceEstimation((EcuResourceEstimation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEcuResourceEstimation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, EcuResourceEstimation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEcuResourceEstimation();
            }
            case 5: {
                if (resolve) {
                    return this.getSystemTopologyInstance();
                }
                return this.basicGetSystemTopologyInstance();
            }
            case 6: {
                if (resolve) {
                    return this.getEcuInstance();
                }
                return this.basicGetEcuInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEcuResourceEstimation((EcuResourceEstimation)newValue);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance((SystemTopologyInstance)newValue);
                return;
            }
            case 6: {
                this.setEcuInstance((ECUInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEcuResourceEstimation(null);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance(null);
                return;
            }
            case 6: {
                this.setEcuInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEcuResourceEstimation() != null;
            }
            case 5: {
                return this.systemTopologyInstance != null;
            }
            case 6: {
                return this.ecuInstance != null;
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

