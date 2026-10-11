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
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RTEEventImpl
extends AtpStructureElementImpl
implements RTEEvent,
IReferringClass {
    protected EList<RModeInAtomicSwcInstanceRef> disabledModes;
    protected RunnableEntity startOnEvent;
    protected VariationPoint variationPoint;

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
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 20) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 20, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 20 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 32, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public EList<RModeInAtomicSwcInstanceRef> getDisabledModes() {
        if (this.disabledModes == null) {
            this.disabledModes = new EObjectContainmentEList(RModeInAtomicSwcInstanceRef.class, (InternalEObject)this, 21);
        }
        return this.disabledModes;
    }

    @Override
    public RunnableEntity getStartOnEvent() {
        if (this.startOnEvent != null && this.startOnEvent.eIsProxy()) {
            InternalEObject oldStartOnEvent = (InternalEObject)this.startOnEvent;
            this.startOnEvent = (RunnableEntity)this.eResolveProxy(oldStartOnEvent);
            if (this.startOnEvent != oldStartOnEvent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldStartOnEvent, (Object)this.startOnEvent));
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
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldStartOnEvent, (Object)this.startOnEvent));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
            case 21: {
                return ((InternalEList)this.getDisabledModes()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 20: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetStartOnEvent();
            }
            case 20: {
                return this.getSwcInternalBehavior();
            }
            case 21: {
                return this.getDisabledModes();
            }
            case 22: {
                if (resolve) {
                    return this.getStartOnEvent();
                }
                return this.basicGetStartOnEvent();
            }
            case 23: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetStartOnEvent((GRunnableEntity)newValue);
                return;
            }
            case 20: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 21: {
                this.getDisabledModes().clear();
                this.getDisabledModes().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setStartOnEvent((RunnableEntity)newValue);
                return;
            }
            case 23: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gSetStartOnEvent(null);
                return;
            }
            case 20: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 21: {
                this.getDisabledModes().clear();
                return;
            }
            case 22: {
                this.setStartOnEvent(null);
                return;
            }
            case 23: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gGetStartOnEvent() != null;
            }
            case 20: {
                return this.getSwcInternalBehavior() != null;
            }
            case 21: {
                return this.disabledModes != null && !this.disabledModes.isEmpty();
            }
            case 22: {
                return this.startOnEvent != null;
            }
            case 23: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRTEEvent.class) {
            switch (derivedFeatureID) {
                case 19: {
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
}

