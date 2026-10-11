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

import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwcBswRunnableMappingImpl
extends ARObjectImpl
implements SwcBswRunnableMapping,
IReferringClass {
    protected BswModuleEntity bswEntity;
    protected RunnableEntity swcRunnable;
    protected VariationPoint variationPoint;

    protected SwcBswRunnableMappingImpl() {
    }

    protected EClass eStaticClass() {
        return SwcbswmappingPackage.Literals.SWC_BSW_RUNNABLE_MAPPING;
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
                msgs = ((InternalEObject)newSwcBswMapping).eInverseAdd((InternalEObject)this, 23, SwcBswMapping.class, msgs);
            }
            if ((msgs = this.basicSetSwcBswMapping(newSwcBswMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwcBswMapping, (Object)newSwcBswMapping));
        }
    }

    public BswModuleEntity getBswEntity() {
        if (this.bswEntity != null && this.bswEntity.eIsProxy()) {
            InternalEObject oldBswEntity = (InternalEObject)this.bswEntity;
            this.bswEntity = (BswModuleEntity)this.eResolveProxy(oldBswEntity);
            if (this.bswEntity != oldBswEntity && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldBswEntity, (Object)this.bswEntity));
            }
        }
        return this.bswEntity;
    }

    public BswModuleEntity basicGetBswEntity() {
        return this.bswEntity;
    }

    public void setBswEntity(BswModuleEntity newBswEntity) {
        BswModuleEntity oldBswEntity = this.bswEntity;
        this.bswEntity = newBswEntity;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBswEntity, (Object)this.bswEntity));
        }
    }

    public RunnableEntity getSwcRunnable() {
        if (this.swcRunnable != null && this.swcRunnable.eIsProxy()) {
            InternalEObject oldSwcRunnable = (InternalEObject)this.swcRunnable;
            this.swcRunnable = (RunnableEntity)this.eResolveProxy(oldSwcRunnable);
            if (this.swcRunnable != oldSwcRunnable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSwcRunnable, (Object)this.swcRunnable));
            }
        }
        return this.swcRunnable;
    }

    public RunnableEntity basicGetSwcRunnable() {
        return this.swcRunnable;
    }

    public void setSwcRunnable(RunnableEntity newSwcRunnable) {
        RunnableEntity oldSwcRunnable = this.swcRunnable;
        this.swcRunnable = newSwcRunnable;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwcRunnable, (Object)this.swcRunnable));
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
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, SwcBswMapping.class, msgs);
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
                    return this.getBswEntity();
                }
                return this.basicGetBswEntity();
            }
            case 6: {
                if (resolve) {
                    return this.getSwcRunnable();
                }
                return this.basicGetSwcRunnable();
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
                this.setBswEntity((BswModuleEntity)newValue);
                return;
            }
            case 6: {
                this.setSwcRunnable((RunnableEntity)newValue);
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
                this.setBswEntity(null);
                return;
            }
            case 6: {
                this.setSwcRunnable(null);
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
                return this.bswEntity != null;
            }
            case 6: {
                return this.swcRunnable != null;
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

