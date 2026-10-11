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
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPointRefConditional;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BswInternalTriggeringPointRefConditionalImpl
extends ARObjectImpl
implements BswInternalTriggeringPointRefConditional,
IReferringClass {
    protected BswInternalTriggeringPoint bswInternalTriggeringPoint;
    protected VariationPoint variationPoint;

    protected BswInternalTriggeringPointRefConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL;
    }

    public BswModuleEntity getBswModuleEntity() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BswModuleEntity)this.eContainer();
    }

    public NotificationChain basicSetBswModuleEntity(BswModuleEntity newBswModuleEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswModuleEntity, 4, msgs);
        return msgs;
    }

    public void setBswModuleEntity(BswModuleEntity newBswModuleEntity) {
        if (newBswModuleEntity != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBswModuleEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswModuleEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswModuleEntity != null) {
                msgs = ((InternalEObject)newBswModuleEntity).eInverseAdd((InternalEObject)this, 26, BswModuleEntity.class, msgs);
            }
            if ((msgs = this.basicSetBswModuleEntity(newBswModuleEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBswModuleEntity, (Object)newBswModuleEntity));
        }
    }

    public BswInternalTriggeringPoint getBswInternalTriggeringPoint() {
        if (this.bswInternalTriggeringPoint != null && this.bswInternalTriggeringPoint.eIsProxy()) {
            InternalEObject oldBswInternalTriggeringPoint = (InternalEObject)this.bswInternalTriggeringPoint;
            this.bswInternalTriggeringPoint = (BswInternalTriggeringPoint)this.eResolveProxy(oldBswInternalTriggeringPoint);
            if (this.bswInternalTriggeringPoint != oldBswInternalTriggeringPoint && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldBswInternalTriggeringPoint, (Object)this.bswInternalTriggeringPoint));
            }
        }
        return this.bswInternalTriggeringPoint;
    }

    public BswInternalTriggeringPoint basicGetBswInternalTriggeringPoint() {
        return this.bswInternalTriggeringPoint;
    }

    public void setBswInternalTriggeringPoint(BswInternalTriggeringPoint newBswInternalTriggeringPoint) {
        BswInternalTriggeringPoint oldBswInternalTriggeringPoint = this.bswInternalTriggeringPoint;
        this.bswInternalTriggeringPoint = newBswInternalTriggeringPoint;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBswInternalTriggeringPoint, (Object)this.bswInternalTriggeringPoint));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswModuleEntity((BswModuleEntity)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBswModuleEntity(null, msgs);
            }
            case 6: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, BswModuleEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBswModuleEntity();
            }
            case 5: {
                if (resolve) {
                    return this.getBswInternalTriggeringPoint();
                }
                return this.basicGetBswInternalTriggeringPoint();
            }
            case 6: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBswModuleEntity((BswModuleEntity)newValue);
                return;
            }
            case 5: {
                this.setBswInternalTriggeringPoint((BswInternalTriggeringPoint)newValue);
                return;
            }
            case 6: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBswModuleEntity(null);
                return;
            }
            case 5: {
                this.setBswInternalTriggeringPoint(null);
                return;
            }
            case 6: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBswModuleEntity() != null;
            }
            case 5: {
                return this.bswInternalTriggeringPoint != null;
            }
            case 6: {
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

