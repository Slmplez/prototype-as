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
package autosar3x.system.fibex.fibex4multiplatform.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibex4multiplatform.SignalMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SignalMappingImpl
extends ARObjectImpl
implements SignalMapping,
IReferringClass {
    protected ISignalTriggering sourceSignal;
    protected ISignalTriggering targetSignal;

    protected SignalMappingImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.SIGNAL_MAPPING;
    }

    public Gateway getGateway() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Gateway)this.eContainer();
    }

    public NotificationChain basicSetGateway(Gateway newGateway, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newGateway, 4, msgs);
        return msgs;
    }

    public void setGateway(Gateway newGateway) {
        if (newGateway != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newGateway != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newGateway)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newGateway != null) {
                msgs = ((InternalEObject)newGateway).eInverseAdd((InternalEObject)this, 22, Gateway.class, msgs);
            }
            if ((msgs = this.basicSetGateway(newGateway, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGateway, (Object)newGateway));
        }
    }

    public ISignalTriggering getSourceSignal() {
        if (this.sourceSignal != null && this.sourceSignal.eIsProxy()) {
            InternalEObject oldSourceSignal = (InternalEObject)this.sourceSignal;
            this.sourceSignal = (ISignalTriggering)this.eResolveProxy(oldSourceSignal);
            if (this.sourceSignal != oldSourceSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSourceSignal, (Object)this.sourceSignal));
            }
        }
        return this.sourceSignal;
    }

    public ISignalTriggering basicGetSourceSignal() {
        return this.sourceSignal;
    }

    public void setSourceSignal(ISignalTriggering newSourceSignal) {
        ISignalTriggering oldSourceSignal = this.sourceSignal;
        this.sourceSignal = newSourceSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSourceSignal, (Object)this.sourceSignal));
        }
    }

    public ISignalTriggering getTargetSignal() {
        if (this.targetSignal != null && this.targetSignal.eIsProxy()) {
            InternalEObject oldTargetSignal = (InternalEObject)this.targetSignal;
            this.targetSignal = (ISignalTriggering)this.eResolveProxy(oldTargetSignal);
            if (this.targetSignal != oldTargetSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTargetSignal, (Object)this.targetSignal));
            }
        }
        return this.targetSignal;
    }

    public ISignalTriggering basicGetTargetSignal() {
        return this.targetSignal;
    }

    public void setTargetSignal(ISignalTriggering newTargetSignal) {
        ISignalTriggering oldTargetSignal = this.targetSignal;
        this.targetSignal = newTargetSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTargetSignal, (Object)this.targetSignal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGateway((Gateway)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetGateway(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, Gateway.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getGateway();
            }
            case 5: {
                if (resolve) {
                    return this.getSourceSignal();
                }
                return this.basicGetSourceSignal();
            }
            case 6: {
                if (resolve) {
                    return this.getTargetSignal();
                }
                return this.basicGetTargetSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setGateway((Gateway)newValue);
                return;
            }
            case 5: {
                this.setSourceSignal((ISignalTriggering)newValue);
                return;
            }
            case 6: {
                this.setTargetSignal((ISignalTriggering)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setGateway(null);
                return;
            }
            case 5: {
                this.setSourceSignal(null);
                return;
            }
            case 6: {
                this.setTargetSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getGateway() != null;
            }
            case 5: {
                return this.sourceSignal != null;
            }
            case 6: {
                return this.targetSignal != null;
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

