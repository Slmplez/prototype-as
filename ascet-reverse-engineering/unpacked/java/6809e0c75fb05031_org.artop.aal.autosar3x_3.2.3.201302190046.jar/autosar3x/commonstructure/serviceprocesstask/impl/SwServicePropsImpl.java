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
import autosar3x.commonstructure.serviceprocesstask.SwServiceImplPolicyEnum;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
import autosar3x.commonstructure.serviceprocesstask.SwServiceReentranceEnum;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwServicePropsImpl
extends ARObjectImpl
implements SwServiceProps {
    protected static final SwServiceReentranceEnum SW_SERVICE_REENTRANCE_EDEFAULT = SwServiceReentranceEnum.REENTRANCE;
    protected SwServiceReentranceEnum swServiceReentrance = SW_SERVICE_REENTRANCE_EDEFAULT;
    protected boolean swServiceReentranceESet;
    protected static final SwServiceImplPolicyEnum SW_IMPL_POLICY_EDEFAULT = SwServiceImplPolicyEnum.STANDARD;
    protected SwServiceImplPolicyEnum swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
    protected boolean swImplPolicyESet;

    protected SwServicePropsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceprocesstaskPackage.Literals.SW_SERVICE_PROPS;
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
                msgs = ((InternalEObject)newSwService).eInverseAdd((InternalEObject)this, 22, SwService.class, msgs);
            }
            if ((msgs = this.basicSetSwService(newSwService, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwService, (Object)newSwService));
        }
    }

    public SwServiceReentranceEnum getSwServiceReentrance() {
        return this.swServiceReentrance;
    }

    public void setSwServiceReentrance(SwServiceReentranceEnum newSwServiceReentrance) {
        SwServiceReentranceEnum oldSwServiceReentrance = this.swServiceReentrance;
        this.swServiceReentrance = newSwServiceReentrance == null ? SW_SERVICE_REENTRANCE_EDEFAULT : newSwServiceReentrance;
        boolean oldSwServiceReentranceESet = this.swServiceReentranceESet;
        this.swServiceReentranceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwServiceReentrance, (Object)this.swServiceReentrance, !oldSwServiceReentranceESet));
        }
    }

    public void unsetSwServiceReentrance() {
        SwServiceReentranceEnum oldSwServiceReentrance = this.swServiceReentrance;
        boolean oldSwServiceReentranceESet = this.swServiceReentranceESet;
        this.swServiceReentrance = SW_SERVICE_REENTRANCE_EDEFAULT;
        this.swServiceReentranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldSwServiceReentrance, (Object)SW_SERVICE_REENTRANCE_EDEFAULT, oldSwServiceReentranceESet));
        }
    }

    public boolean isSetSwServiceReentrance() {
        return this.swServiceReentranceESet;
    }

    public SwServiceImplPolicyEnum getSwImplPolicy() {
        return this.swImplPolicy;
    }

    public void setSwImplPolicy(SwServiceImplPolicyEnum newSwImplPolicy) {
        SwServiceImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        this.swImplPolicy = newSwImplPolicy == null ? SW_IMPL_POLICY_EDEFAULT : newSwImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwImplPolicy, (Object)this.swImplPolicy, !oldSwImplPolicyESet));
        }
    }

    public void unsetSwImplPolicy() {
        SwServiceImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
        this.swImplPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSwImplPolicy, (Object)SW_IMPL_POLICY_EDEFAULT, oldSwImplPolicyESet));
        }
    }

    public boolean isSetSwImplPolicy() {
        return this.swImplPolicyESet;
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, SwService.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwService();
            }
            case 5: {
                return this.getSwServiceReentrance();
            }
            case 6: {
                return this.getSwImplPolicy();
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
            case 5: {
                this.setSwServiceReentrance((SwServiceReentranceEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setSwImplPolicy((SwServiceImplPolicyEnum)((Object)newValue));
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
            case 5: {
                this.unsetSwServiceReentrance();
                return;
            }
            case 6: {
                this.unsetSwImplPolicy();
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
            case 5: {
                return this.isSetSwServiceReentrance();
            }
            case 6: {
                return this.isSetSwImplPolicy();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swServiceReentrance: ");
        if (this.swServiceReentranceESet) {
            result.append((Object)this.swServiceReentrance);
        } else {
            result.append("<unset>");
        }
        result.append(", swImplPolicy: ");
        if (this.swImplPolicyESet) {
            result.append((Object)this.swImplPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

