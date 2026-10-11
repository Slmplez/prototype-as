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
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayCommunicationControllerContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FlexrayCommunicationControllerConditionalImpl
extends FlexrayCommunicationControllerContentImpl
implements FlexrayCommunicationControllerConditional {
    protected VariationPoint variationPoint;

    protected FlexrayCommunicationControllerConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL;
    }

    public FlexrayCommunicationController getFlexrayCommunicationController() {
        if (this.eContainerFeatureID() != 36) {
            return null;
        }
        return (FlexrayCommunicationController)this.eContainer();
    }

    public NotificationChain basicSetFlexrayCommunicationController(FlexrayCommunicationController newFlexrayCommunicationController, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayCommunicationController, 36, msgs);
        return msgs;
    }

    public void setFlexrayCommunicationController(FlexrayCommunicationController newFlexrayCommunicationController) {
        if (newFlexrayCommunicationController != this.eInternalContainer() || this.eContainerFeatureID() != 36 && newFlexrayCommunicationController != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayCommunicationController)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayCommunicationController != null) {
                msgs = ((InternalEObject)newFlexrayCommunicationController).eInverseAdd((InternalEObject)this, 19, FlexrayCommunicationController.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayCommunicationController(newFlexrayCommunicationController, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)newFlexrayCommunicationController, (Object)newFlexrayCommunicationController));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -38, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -38, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 36: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayCommunicationController((FlexrayCommunicationController)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 36: {
                return this.basicSetFlexrayCommunicationController(null, msgs);
            }
            case 37: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 36: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, FlexrayCommunicationController.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 36: {
                return this.getFlexrayCommunicationController();
            }
            case 37: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 36: {
                this.setFlexrayCommunicationController((FlexrayCommunicationController)newValue);
                return;
            }
            case 37: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 36: {
                this.setFlexrayCommunicationController(null);
                return;
            }
            case 37: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 36: {
                return this.getFlexrayCommunicationController() != null;
            }
            case 37: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

