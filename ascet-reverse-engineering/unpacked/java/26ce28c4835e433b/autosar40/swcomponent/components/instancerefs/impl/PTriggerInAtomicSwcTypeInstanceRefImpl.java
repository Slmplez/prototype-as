/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import autosar40.swcomponent.components.instancerefs.impl.TriggerInAtomicSwcInstanceRefImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PTriggerInAtomicSwcTypeInstanceRefImpl
extends TriggerInAtomicSwcInstanceRefImpl
implements PTriggerInAtomicSwcTypeInstanceRef,
IReferringClass {
    protected PPortPrototype contextPPort;
    protected Trigger targetTrigger;

    protected PTriggerInAtomicSwcTypeInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF;
    }

    public PPortPrototype getContextPPort() {
        if (this.contextPPort != null && this.contextPPort.eIsProxy()) {
            InternalEObject oldContextPPort = (InternalEObject)this.contextPPort;
            this.contextPPort = (PPortPrototype)this.eResolveProxy(oldContextPPort);
            if (this.contextPPort != oldContextPPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldContextPPort, (Object)this.contextPPort));
            }
        }
        return this.contextPPort;
    }

    public PPortPrototype basicGetContextPPort() {
        return this.contextPPort;
    }

    public void setContextPPort(PPortPrototype newContextPPort) {
        PPortPrototype oldContextPPort = this.contextPPort;
        this.contextPPort = newContextPPort;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldContextPPort, (Object)this.contextPPort));
        }
    }

    public Trigger getTargetTrigger() {
        if (this.targetTrigger != null && this.targetTrigger.eIsProxy()) {
            InternalEObject oldTargetTrigger = (InternalEObject)this.targetTrigger;
            this.targetTrigger = (Trigger)this.eResolveProxy(oldTargetTrigger);
            if (this.targetTrigger != oldTargetTrigger && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldTargetTrigger, (Object)this.targetTrigger));
            }
        }
        return this.targetTrigger;
    }

    public Trigger basicGetTargetTrigger() {
        return this.targetTrigger;
    }

    public void setTargetTrigger(Trigger newTargetTrigger) {
        Trigger oldTargetTrigger = this.targetTrigger;
        this.targetTrigger = newTargetTrigger;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldTargetTrigger, (Object)this.targetTrigger));
        }
    }

    public AtomicSwComponentType getBase() {
        PPortPrototype contextPPort = this.getContextPPort();
        if (contextPPort != null) {
            return (AtomicSwComponentType)contextPPort.getSwComponentType();
        }
        return null;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getContextPPort();
                }
                return this.basicGetContextPPort();
            }
            case 5: {
                if (resolve) {
                    return this.getTargetTrigger();
                }
                return this.basicGetTargetTrigger();
            }
            case 6: {
                return this.getBase();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setContextPPort((PPortPrototype)newValue);
                return;
            }
            case 5: {
                this.setTargetTrigger((Trigger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setContextPPort(null);
                return;
            }
            case 5: {
                this.setTargetTrigger(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.contextPPort != null;
            }
            case 5: {
                return this.targetTrigger != null;
            }
            case 6: {
                return this.getBase() != null;
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

