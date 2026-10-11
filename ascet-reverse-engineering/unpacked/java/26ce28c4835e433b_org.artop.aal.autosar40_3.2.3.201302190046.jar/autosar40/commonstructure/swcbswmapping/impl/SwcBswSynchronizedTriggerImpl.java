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
package autosar40.commonstructure.swcbswmapping.impl;

import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwcBswSynchronizedTriggerImpl
extends ARObjectImpl
implements SwcBswSynchronizedTrigger,
IReferringClass {
    protected Trigger bswTrigger;
    protected PTriggerInAtomicSwcTypeInstanceRef swcTrigger;
    protected VariationPoint variationPoint;

    protected SwcBswSynchronizedTriggerImpl() {
    }

    protected EClass eStaticClass() {
        return SwcbswmappingPackage.Literals.SWC_BSW_SYNCHRONIZED_TRIGGER;
    }

    public SwcBswMapping getSwcBswMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwcBswMapping)this.eContainer();
    }

    public NotificationChain basicSetSwcBswMapping(SwcBswMapping newSwcBswMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcBswMapping, 4, msgs);
        return msgs;
    }

    public void setSwcBswMapping(SwcBswMapping newSwcBswMapping) {
        if (newSwcBswMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwcBswMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcBswMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcBswMapping != null) {
                msgs = ((InternalEObject)newSwcBswMapping).eInverseAdd((InternalEObject)this, 26, SwcBswMapping.class, msgs);
            }
            if ((msgs = this.basicSetSwcBswMapping(newSwcBswMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwcBswMapping, (Object)newSwcBswMapping));
        }
    }

    public Trigger getBswTrigger() {
        if (this.bswTrigger != null && this.bswTrigger.eIsProxy()) {
            InternalEObject oldBswTrigger = (InternalEObject)this.bswTrigger;
            this.bswTrigger = (Trigger)this.eResolveProxy(oldBswTrigger);
            if (this.bswTrigger != oldBswTrigger && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldBswTrigger, (Object)this.bswTrigger));
            }
        }
        return this.bswTrigger;
    }

    public Trigger basicGetBswTrigger() {
        return this.bswTrigger;
    }

    public void setBswTrigger(Trigger newBswTrigger) {
        Trigger oldBswTrigger = this.bswTrigger;
        this.bswTrigger = newBswTrigger;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBswTrigger, (Object)this.bswTrigger));
        }
    }

    public PTriggerInAtomicSwcTypeInstanceRef getSwcTrigger() {
        return this.swcTrigger;
    }

    public NotificationChain basicSetSwcTrigger(PTriggerInAtomicSwcTypeInstanceRef newSwcTrigger, NotificationChain msgs) {
        PTriggerInAtomicSwcTypeInstanceRef oldSwcTrigger = this.swcTrigger;
        this.swcTrigger = newSwcTrigger;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwcTrigger, (Object)newSwcTrigger);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwcTrigger(PTriggerInAtomicSwcTypeInstanceRef newSwcTrigger) {
        if (newSwcTrigger != this.swcTrigger) {
            NotificationChain msgs = null;
            if (this.swcTrigger != null) {
                msgs = ((InternalEObject)this.swcTrigger).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSwcTrigger != null) {
                msgs = ((InternalEObject)newSwcTrigger).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSwcTrigger(newSwcTrigger, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwcTrigger, (Object)newSwcTrigger));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcBswMapping((SwcBswMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwcBswMapping(null, msgs);
            }
            case 6: {
                return this.basicSetSwcTrigger(null, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, SwcBswMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwcBswMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getBswTrigger();
                }
                return this.basicGetBswTrigger();
            }
            case 6: {
                return this.getSwcTrigger();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwcBswMapping((SwcBswMapping)newValue);
                return;
            }
            case 5: {
                this.setBswTrigger((Trigger)newValue);
                return;
            }
            case 6: {
                this.setSwcTrigger((PTriggerInAtomicSwcTypeInstanceRef)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwcBswMapping(null);
                return;
            }
            case 5: {
                this.setBswTrigger(null);
                return;
            }
            case 6: {
                this.setSwcTrigger(null);
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwcBswMapping() != null;
            }
            case 5: {
                return this.bswTrigger != null;
            }
            case 6: {
                return this.swcTrigger != null;
            }
            case 7: {
                return this.variationPoint != null;
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

