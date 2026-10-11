/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
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
package autosar21.swcomponent.internalbehavior.rteevents.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.modedeclaration.ModeDisablingDependency;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RTEEventImpl
extends IdentifiableImpl
implements RTEEvent,
IReferringClass {
    protected ModeDisablingDependency modeDependency;
    protected RunnableEntity startOnEvent;

    protected RTEEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.RTE_EVENT;
    }

    public GRunnableEntity gGetStartOnEvent() {
        return this.getStartOnEvent();
    }

    public void gSetStartOnEvent(GRunnableEntity newGStartOnEvent) {
        this.setStartOnEvent((RunnableEntity)newGStartOnEvent);
    }

    @Override
    public InternalBehavior getInternalBehavior() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (InternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetInternalBehavior(InternalBehavior newInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInternalBehavior, 17, msgs);
        return msgs;
    }

    @Override
    public void setInternalBehavior(InternalBehavior newInternalBehavior) {
        if (newInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInternalBehavior != null) {
                msgs = ((InternalEObject)newInternalBehavior).eInverseAdd((InternalEObject)this, 25, InternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetInternalBehavior(newInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newInternalBehavior, (Object)newInternalBehavior));
        }
    }

    @Override
    public ModeDisablingDependency getModeDependency() {
        return this.modeDependency;
    }

    public NotificationChain basicSetModeDependency(ModeDisablingDependency newModeDependency, NotificationChain msgs) {
        ModeDisablingDependency oldModeDependency = this.modeDependency;
        this.modeDependency = newModeDependency;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldModeDependency, (Object)newModeDependency);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setModeDependency(ModeDisablingDependency newModeDependency) {
        if (newModeDependency != this.modeDependency) {
            NotificationChain msgs = null;
            if (this.modeDependency != null) {
                msgs = ((InternalEObject)this.modeDependency).eInverseRemove((InternalEObject)this, 4, ModeDisablingDependency.class, msgs);
            }
            if (newModeDependency != null) {
                msgs = ((InternalEObject)newModeDependency).eInverseAdd((InternalEObject)this, 4, ModeDisablingDependency.class, msgs);
            }
            if ((msgs = this.basicSetModeDependency(newModeDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newModeDependency, (Object)newModeDependency));
        }
    }

    @Override
    public RunnableEntity getStartOnEvent() {
        if (this.startOnEvent != null && this.startOnEvent.eIsProxy()) {
            InternalEObject oldStartOnEvent = (InternalEObject)this.startOnEvent;
            this.startOnEvent = (RunnableEntity)this.eResolveProxy(oldStartOnEvent);
            if (this.startOnEvent != oldStartOnEvent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldStartOnEvent, (Object)this.startOnEvent));
            }
        }
        return this.startOnEvent;
    }

    public RunnableEntity basicGetStartOnEvent() {
        return this.startOnEvent;
    }

    @Override
    public void setStartOnEvent(RunnableEntity newStartOnEvent) {
        RunnableEntity oldStartOnEvent = this.startOnEvent;
        this.startOnEvent = newStartOnEvent;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldStartOnEvent, (Object)this.startOnEvent));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInternalBehavior((InternalBehavior)otherEnd, msgs);
            }
            case 18: {
                if (this.modeDependency != null) {
                    msgs = ((InternalEObject)this.modeDependency).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetModeDependency((ModeDisablingDependency)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetInternalBehavior(null, msgs);
            }
            case 18: {
                return this.basicSetModeDependency(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, InternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetStartOnEvent();
            }
            case 17: {
                return this.getInternalBehavior();
            }
            case 18: {
                return this.getModeDependency();
            }
            case 19: {
                if (resolve) {
                    return this.getStartOnEvent();
                }
                return this.basicGetStartOnEvent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gSetStartOnEvent((GRunnableEntity)newValue);
                return;
            }
            case 17: {
                this.setInternalBehavior((InternalBehavior)newValue);
                return;
            }
            case 18: {
                this.setModeDependency((ModeDisablingDependency)newValue);
                return;
            }
            case 19: {
                this.setStartOnEvent((RunnableEntity)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.gSetStartOnEvent(null);
                return;
            }
            case 17: {
                this.setInternalBehavior(null);
                return;
            }
            case 18: {
                this.setModeDependency(null);
                return;
            }
            case 19: {
                this.setStartOnEvent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.gGetStartOnEvent() != null;
            }
            case 17: {
                return this.getInternalBehavior() != null;
            }
            case 18: {
                return this.modeDependency != null;
            }
            case 19: {
                return this.startOnEvent != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRTEEvent.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRTEEvent.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 16;
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
}

