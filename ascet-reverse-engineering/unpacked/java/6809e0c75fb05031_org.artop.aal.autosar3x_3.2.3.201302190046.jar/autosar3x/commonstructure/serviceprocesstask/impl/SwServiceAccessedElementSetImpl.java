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
package autosar3x.commonstructure.serviceprocesstask.impl;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwServiceAccessedElementSetImpl
extends ARObjectImpl
implements SwServiceAccessedElementSet {
    protected SwServiceAccessedElementSetImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceprocesstaskPackage.Literals.SW_SERVICE_ACCESSED_ELEMENT_SET;
    }

    public SwService getSwService() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwService)this.eContainer();
    }

    public NotificationChain basicSetSwService(SwService newSwService, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwService, 4, msgs);
        return msgs;
    }

    public void setSwService(SwService newSwService) {
        if (newSwService != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwService != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwService)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwService != null) {
                msgs = ((InternalEObject)newSwService).eInverseAdd((InternalEObject)this, 21, SwService.class, msgs);
            }
            if ((msgs = this.basicSetSwService(newSwService, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwService, (Object)newSwService));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwService((SwService)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwService(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, SwService.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwService();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwService((SwService)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwService(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwService() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

