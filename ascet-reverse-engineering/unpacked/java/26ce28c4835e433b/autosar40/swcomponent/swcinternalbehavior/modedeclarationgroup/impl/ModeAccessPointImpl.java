/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeAccessPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeAccessPointImpl
extends ARObjectImpl
implements ModeAccessPoint {
    protected ModeGroupInAtomicSwcInstanceRef modeGroup;
    protected VariationPoint variationPoint;

    protected ModeAccessPointImpl() {
    }

    protected EClass eStaticClass() {
        return ModedeclarationgroupPackage.Literals.MODE_ACCESS_POINT;
    }

    public RunnableEntity getRunnableEntity() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (RunnableEntity)this.eContainer();
    }

    public NotificationChain basicSetRunnableEntity(RunnableEntity newRunnableEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRunnableEntity, 4, msgs);
        return msgs;
    }

    public void setRunnableEntity(RunnableEntity newRunnableEntity) {
        if (newRunnableEntity != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newRunnableEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRunnableEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRunnableEntity != null) {
                msgs = ((InternalEObject)newRunnableEntity).eInverseAdd((InternalEObject)this, 45, RunnableEntity.class, msgs);
            }
            if ((msgs = this.basicSetRunnableEntity(newRunnableEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newRunnableEntity, (Object)newRunnableEntity));
        }
    }

    public ModeGroupInAtomicSwcInstanceRef getModeGroup() {
        return this.modeGroup;
    }

    public NotificationChain basicSetModeGroup(ModeGroupInAtomicSwcInstanceRef newModeGroup, NotificationChain msgs) {
        ModeGroupInAtomicSwcInstanceRef oldModeGroup = this.modeGroup;
        this.modeGroup = newModeGroup;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldModeGroup, (Object)newModeGroup);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setModeGroup(ModeGroupInAtomicSwcInstanceRef newModeGroup) {
        if (newModeGroup != this.modeGroup) {
            NotificationChain msgs = null;
            if (this.modeGroup != null) {
                msgs = ((InternalEObject)this.modeGroup).eInverseRemove((InternalEObject)this, 4, ModeGroupInAtomicSwcInstanceRef.class, msgs);
            }
            if (newModeGroup != null) {
                msgs = ((InternalEObject)newModeGroup).eInverseAdd((InternalEObject)this, 4, ModeGroupInAtomicSwcInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetModeGroup(newModeGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newModeGroup, (Object)newModeGroup));
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
                return this.basicSetRunnableEntity((RunnableEntity)otherEnd, msgs);
            }
            case 5: {
                if (this.modeGroup != null) {
                    msgs = ((InternalEObject)this.modeGroup).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetModeGroup((ModeGroupInAtomicSwcInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetRunnableEntity(null, msgs);
            }
            case 5: {
                return this.basicSetModeGroup(null, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 45, RunnableEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRunnableEntity();
            }
            case 5: {
                return this.getModeGroup();
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
                this.setRunnableEntity((RunnableEntity)newValue);
                return;
            }
            case 5: {
                this.setModeGroup((ModeGroupInAtomicSwcInstanceRef)newValue);
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
                this.setRunnableEntity(null);
                return;
            }
            case 5: {
                this.setModeGroup(null);
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
                return this.getRunnableEntity() != null;
            }
            case 5: {
                return this.modeGroup != null;
            }
            case 6: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

