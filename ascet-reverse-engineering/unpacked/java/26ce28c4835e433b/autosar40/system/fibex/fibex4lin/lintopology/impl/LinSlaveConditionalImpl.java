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
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinSlaveContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinSlaveConditionalImpl
extends LinSlaveContentImpl
implements LinSlaveConditional {
    protected VariationPoint variationPoint;

    protected LinSlaveConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_SLAVE_CONDITIONAL;
    }

    public LinSlave getLinSlave() {
        if (this.eContainerFeatureID() != 10) {
            return null;
        }
        return (LinSlave)this.eContainer();
    }

    public NotificationChain basicSetLinSlave(LinSlave newLinSlave, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinSlave, 10, msgs);
        return msgs;
    }

    public void setLinSlave(LinSlave newLinSlave) {
        if (newLinSlave != this.eInternalContainer() || this.eContainerFeatureID() != 10 && newLinSlave != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinSlave)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinSlave != null) {
                msgs = ((InternalEObject)newLinSlave).eInverseAdd((InternalEObject)this, 19, LinSlave.class, msgs);
            }
            if ((msgs = this.basicSetLinSlave(newLinSlave, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newLinSlave, (Object)newLinSlave));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinSlave((LinSlave)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetLinSlave(null, msgs);
            }
            case 11: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 10: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, LinSlave.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getLinSlave();
            }
            case 11: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setLinSlave((LinSlave)newValue);
                return;
            }
            case 11: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.setLinSlave(null);
                return;
            }
            case 11: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return this.getLinSlave() != null;
            }
            case 11: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

