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
package autosar3x.commonstructure.resourceconsumption.executiontime.impl;

import autosar3x.commonstructure.resourceconsumption.executiontime.ECUPrototype;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.ecuresource.ECU;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ECUPrototypeImpl
extends ARObjectImpl
implements ECUPrototype,
IReferringClass {
    protected ECU eCU;

    protected ECUPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.ECU_PROTOTYPE;
    }

    public ExecutionTime getExecutionTime() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ExecutionTime)this.eContainer();
    }

    public NotificationChain basicSetExecutionTime(ExecutionTime newExecutionTime, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newExecutionTime, 4, msgs);
        return msgs;
    }

    public void setExecutionTime(ExecutionTime newExecutionTime) {
        if (newExecutionTime != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newExecutionTime != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newExecutionTime)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newExecutionTime != null) {
                msgs = ((InternalEObject)newExecutionTime).eInverseAdd((InternalEObject)this, 18, ExecutionTime.class, msgs);
            }
            if ((msgs = this.basicSetExecutionTime(newExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newExecutionTime, (Object)newExecutionTime));
        }
    }

    public ECU getECU() {
        if (this.eCU != null && this.eCU.eIsProxy()) {
            InternalEObject oldECU = (InternalEObject)this.eCU;
            this.eCU = (ECU)this.eResolveProxy(oldECU);
            if (this.eCU != oldECU && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldECU, (Object)this.eCU));
            }
        }
        return this.eCU;
    }

    public ECU basicGetECU() {
        return this.eCU;
    }

    public void setECU(ECU newECU) {
        ECU oldECU = this.eCU;
        this.eCU = newECU;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldECU, (Object)this.eCU));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetExecutionTime((ExecutionTime)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetExecutionTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, ExecutionTime.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getExecutionTime();
            }
            case 5: {
                if (resolve) {
                    return this.getECU();
                }
                return this.basicGetECU();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setExecutionTime((ExecutionTime)newValue);
                return;
            }
            case 5: {
                this.setECU((ECU)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setExecutionTime(null);
                return;
            }
            case 5: {
                this.setECU(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getExecutionTime() != null;
            }
            case 5: {
                return this.eCU != null;
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

