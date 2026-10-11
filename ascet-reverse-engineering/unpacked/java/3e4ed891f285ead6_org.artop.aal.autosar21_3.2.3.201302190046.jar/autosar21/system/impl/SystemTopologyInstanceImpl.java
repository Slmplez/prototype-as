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
package autosar21.system.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.System;
import autosar21.system.SystemPackage;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.topology.SystemTopologyType;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SystemTopologyInstanceImpl
extends IdentifiableImpl
implements SystemTopologyInstance,
IReferringClass {
    protected SystemTopologyType topology;

    protected SystemTopologyInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return SystemPackage.Literals.SYSTEM_TOPOLOGY_INSTANCE;
    }

    public System getSystem() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (System)this.eContainer();
    }

    public NotificationChain basicSetSystem(System newSystem, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystem, 16, msgs);
        return msgs;
    }

    public void setSystem(System newSystem) {
        if (newSystem != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSystem != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystem)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystem != null) {
                msgs = ((InternalEObject)newSystem).eInverseAdd((InternalEObject)this, 21, System.class, msgs);
            }
            if ((msgs = this.basicSetSystem(newSystem, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystem, (Object)newSystem));
        }
    }

    public SystemTopologyType getTopology() {
        if (this.topology != null && this.topology.eIsProxy()) {
            InternalEObject oldTopology = (InternalEObject)this.topology;
            this.topology = (SystemTopologyType)this.eResolveProxy(oldTopology);
            if (this.topology != oldTopology && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 17, (Object)oldTopology, (Object)this.topology));
            }
        }
        return this.topology;
    }

    public SystemTopologyType basicGetTopology() {
        return this.topology;
    }

    public void setTopology(SystemTopologyType newTopology) {
        SystemTopologyType oldTopology = this.topology;
        this.topology = newTopology;
        AutosarObjectUtil.setDest((EObject)this, (int)17, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldTopology, (Object)this.topology));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystem((System)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystem(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, System.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystem();
            }
            case 17: {
                if (resolve) {
                    return this.getTopology();
                }
                return this.basicGetTopology();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystem((System)newValue);
                return;
            }
            case 17: {
                this.setTopology((SystemTopologyType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystem(null);
                return;
            }
            case 17: {
                this.setTopology(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystem() != null;
            }
            case 17: {
                return this.topology != null;
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

