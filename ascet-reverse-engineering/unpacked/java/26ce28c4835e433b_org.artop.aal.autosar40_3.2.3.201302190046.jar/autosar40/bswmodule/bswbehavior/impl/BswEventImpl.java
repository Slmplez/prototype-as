/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswoverview.instancerefs.ModeInBswModuleDescriptionInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
public abstract class BswEventImpl
extends IdentifiableImpl
implements BswEvent,
IReferringClass {
    protected EList<ModeInBswModuleDescriptionInstanceRef> disabledInModes;
    protected BswSchedulableEntity startsOnEvent;
    protected VariationPoint variationPoint;

    protected BswEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_EVENT;
    }

    @Override
    public BswInternalBehavior getBswInternalBehavior() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (BswInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetBswInternalBehavior(BswInternalBehavior newBswInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswInternalBehavior, 18, msgs);
        return msgs;
    }

    @Override
    public void setBswInternalBehavior(BswInternalBehavior newBswInternalBehavior) {
        if (newBswInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newBswInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswInternalBehavior != null) {
                msgs = ((InternalEObject)newBswInternalBehavior).eInverseAdd((InternalEObject)this, 28, BswInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetBswInternalBehavior(newBswInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newBswInternalBehavior, (Object)newBswInternalBehavior));
        }
    }

    @Override
    public EList<ModeInBswModuleDescriptionInstanceRef> getDisabledInModes() {
        if (this.disabledInModes == null) {
            this.disabledInModes = new EObjectContainmentEList(ModeInBswModuleDescriptionInstanceRef.class, (InternalEObject)this, 19);
        }
        return this.disabledInModes;
    }

    @Override
    public BswSchedulableEntity getStartsOnEvent() {
        if (this.startsOnEvent != null && this.startsOnEvent.eIsProxy()) {
            InternalEObject oldStartsOnEvent = (InternalEObject)this.startsOnEvent;
            this.startsOnEvent = (BswSchedulableEntity)this.eResolveProxy(oldStartsOnEvent);
            if (this.startsOnEvent != oldStartsOnEvent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldStartsOnEvent, (Object)this.startsOnEvent));
            }
        }
        return this.startsOnEvent;
    }

    public BswSchedulableEntity basicGetStartsOnEvent() {
        return this.startsOnEvent;
    }

    @Override
    public void setStartsOnEvent(BswSchedulableEntity newStartsOnEvent) {
        BswSchedulableEntity oldStartsOnEvent = this.startsOnEvent;
        this.startsOnEvent = newStartsOnEvent;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldStartsOnEvent, (Object)this.startsOnEvent));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswInternalBehavior((BswInternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetBswInternalBehavior(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getDisabledInModes()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, BswInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getBswInternalBehavior();
            }
            case 19: {
                return this.getDisabledInModes();
            }
            case 20: {
                if (resolve) {
                    return this.getStartsOnEvent();
                }
                return this.basicGetStartsOnEvent();
            }
            case 21: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setBswInternalBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 19: {
                this.getDisabledInModes().clear();
                this.getDisabledInModes().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setStartsOnEvent((BswSchedulableEntity)newValue);
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setBswInternalBehavior(null);
                return;
            }
            case 19: {
                this.getDisabledInModes().clear();
                return;
            }
            case 20: {
                this.setStartsOnEvent(null);
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getBswInternalBehavior() != null;
            }
            case 19: {
                return this.disabledInModes != null && !this.disabledInModes.isEmpty();
            }
            case 20: {
                return this.startsOnEvent != null;
            }
            case 21: {
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

