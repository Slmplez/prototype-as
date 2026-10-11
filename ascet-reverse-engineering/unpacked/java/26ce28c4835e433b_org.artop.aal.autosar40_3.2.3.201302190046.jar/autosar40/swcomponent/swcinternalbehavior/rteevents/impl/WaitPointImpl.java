/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreEList$UnmodifiableEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WaitPointImpl
extends IdentifiableImpl
implements WaitPoint,
IReferringClass {
    protected static final Double GTIMEOUT_EDEFAULT = null;
    protected static final Double TIMEOUT_EDEFAULT = new Double(0.0);
    protected Double timeout = TIMEOUT_EDEFAULT;
    protected boolean timeoutESet;
    protected RTEEvent trigger;

    protected WaitPointImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.WAIT_POINT;
    }

    public Double gGetTimeout() {
        Double tgtFeatureValue = this.getTimeout();
        return tgtFeatureValue;
    }

    public void gSetTimeout(Double newGTimeout) {
        this.setTimeout(newGTimeout);
    }

    public void gUnsetTimeout() {
        this.unsetTimeout();
    }

    public boolean gIsSetTimeout() {
        return this.isSetTimeout();
    }

    public EList<GRTEEvent> gGetTriggers() {
        RTEEvent rteEvent = this.getTrigger();
        if (rteEvent != null) {
            return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gTriggers"), 1, new Object[]{this.getTrigger()});
        }
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gTriggers"), 0, new Object[0]);
    }

    @Override
    public RunnableEntity getRunnableEntity() {
        if (this.eContainerFeatureID() != 20) {
            return null;
        }
        return (RunnableEntity)this.eContainer();
    }

    public NotificationChain basicSetRunnableEntity(RunnableEntity newRunnableEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRunnableEntity, 20, msgs);
        return msgs;
    }

    @Override
    public void setRunnableEntity(RunnableEntity newRunnableEntity) {
        if (newRunnableEntity != this.eInternalContainer() || this.eContainerFeatureID() != 20 && newRunnableEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRunnableEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRunnableEntity != null) {
                msgs = ((InternalEObject)newRunnableEntity).eInverseAdd((InternalEObject)this, 51, RunnableEntity.class, msgs);
            }
            if ((msgs = this.basicSetRunnableEntity(newRunnableEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newRunnableEntity, (Object)newRunnableEntity));
        }
    }

    @Override
    public Double getTimeout() {
        return this.timeout;
    }

    @Override
    public void setTimeout(Double newTimeout) {
        Double oldTimeout = this.timeout;
        this.timeout = newTimeout;
        boolean oldTimeoutESet = this.timeoutESet;
        this.timeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTimeout, (Object)this.timeout, !oldTimeoutESet));
        }
    }

    @Override
    public void unsetTimeout() {
        Double oldTimeout = this.timeout;
        boolean oldTimeoutESet = this.timeoutESet;
        this.timeout = TIMEOUT_EDEFAULT;
        this.timeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldTimeout, (Object)TIMEOUT_EDEFAULT, oldTimeoutESet));
        }
    }

    @Override
    public boolean isSetTimeout() {
        return this.timeoutESet;
    }

    @Override
    public RTEEvent getTrigger() {
        if (this.trigger != null && this.trigger.eIsProxy()) {
            InternalEObject oldTrigger = (InternalEObject)this.trigger;
            this.trigger = (RTEEvent)this.eResolveProxy(oldTrigger);
            if (this.trigger != oldTrigger && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldTrigger, (Object)this.trigger));
            }
        }
        return this.trigger;
    }

    public RTEEvent basicGetTrigger() {
        return this.trigger;
    }

    @Override
    public void setTrigger(RTEEvent newTrigger) {
        RTEEvent oldTrigger = this.trigger;
        this.trigger = newTrigger;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTrigger, (Object)this.trigger));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRunnableEntity((RunnableEntity)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetRunnableEntity(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 20: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 51, RunnableEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetTimeout();
            }
            case 19: {
                return this.gGetTriggers();
            }
            case 20: {
                return this.getRunnableEntity();
            }
            case 21: {
                return this.getTimeout();
            }
            case 22: {
                if (resolve) {
                    return this.getTrigger();
                }
                return this.basicGetTrigger();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetTimeout((Double)newValue);
                return;
            }
            case 19: {
                this.gGetTriggers().clear();
                this.gGetTriggers().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setRunnableEntity((RunnableEntity)newValue);
                return;
            }
            case 21: {
                this.setTimeout((Double)newValue);
                return;
            }
            case 22: {
                this.setTrigger((RTEEvent)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gUnsetTimeout();
                return;
            }
            case 19: {
                this.gGetTriggers().clear();
                return;
            }
            case 20: {
                this.setRunnableEntity(null);
                return;
            }
            case 21: {
                this.unsetTimeout();
                return;
            }
            case 22: {
                this.setTrigger(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gIsSetTimeout();
            }
            case 19: {
                return !this.gGetTriggers().isEmpty();
            }
            case 20: {
                return this.getRunnableEntity() != null;
            }
            case 21: {
                return this.isSetTimeout();
            }
            case 22: {
                return this.trigger != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GWaitPoint.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
                case 19: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GWaitPoint.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
                case 7: {
                    return 19;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeout: ");
        if (this.timeoutESet) {
            result.append(this.timeout);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

