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
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanCommunicationControllerContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TtcanCommunicationControllerConditionalImpl
extends TtcanCommunicationControllerContentImpl
implements TtcanCommunicationControllerConditional {
    protected VariationPoint variationPoint;

    protected TtcanCommunicationControllerConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_COMMUNICATION_CONTROLLER_CONDITIONAL;
    }

    public TtcanCommunicationController getTtcanCommunicationController() {
        if (this.eContainerFeatureID() != 13) {
            return null;
        }
        return (TtcanCommunicationController)this.eContainer();
    }

    public NotificationChain basicSetTtcanCommunicationController(TtcanCommunicationController newTtcanCommunicationController, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTtcanCommunicationController, 13, msgs);
        return msgs;
    }

    public void setTtcanCommunicationController(TtcanCommunicationController newTtcanCommunicationController) {
        if (newTtcanCommunicationController != this.eInternalContainer() || this.eContainerFeatureID() != 13 && newTtcanCommunicationController != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTtcanCommunicationController)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTtcanCommunicationController != null) {
                msgs = ((InternalEObject)newTtcanCommunicationController).eInverseAdd((InternalEObject)this, 19, TtcanCommunicationController.class, msgs);
            }
            if ((msgs = this.basicSetTtcanCommunicationController(newTtcanCommunicationController, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newTtcanCommunicationController, (Object)newTtcanCommunicationController));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 13: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTtcanCommunicationController((TtcanCommunicationController)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 13: {
                return this.basicSetTtcanCommunicationController(null, msgs);
            }
            case 14: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 13: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, TtcanCommunicationController.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 13: {
                return this.getTtcanCommunicationController();
            }
            case 14: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 13: {
                this.setTtcanCommunicationController((TtcanCommunicationController)newValue);
                return;
            }
            case 14: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 13: {
                this.setTtcanCommunicationController(null);
                return;
            }
            case 14: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 13: {
                return this.getTtcanCommunicationController() != null;
            }
            case 14: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

