/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.networkmanagement.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.networkmanagement.BusspecificNmEcu;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmEcu;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class BusspecificNmEcuImpl
extends ARObjectImpl
implements BusspecificNmEcu {
    protected BusspecificNmEcuImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.BUSSPECIFIC_NM_ECU;
    }

    public NmEcu getNmEcu() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (NmEcu)this.eContainer();
    }

    public NotificationChain basicSetNmEcu(NmEcu newNmEcu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNmEcu, 4, msgs);
        return msgs;
    }

    public void setNmEcu(NmEcu newNmEcu) {
        if (newNmEcu != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newNmEcu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNmEcu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNmEcu != null) {
                msgs = ((InternalEObject)newNmEcu).eInverseAdd((InternalEObject)this, 19, NmEcu.class, msgs);
            }
            if ((msgs = this.basicSetNmEcu(newNmEcu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newNmEcu, (Object)newNmEcu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNmEcu((NmEcu)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetNmEcu(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, NmEcu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getNmEcu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setNmEcu((NmEcu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setNmEcu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getNmEcu() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

