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
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucFunctionNameDefConditional;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucFunctionNameDefContentImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcucFunctionNameDefConditionalImpl
extends EcucFunctionNameDefContentImpl
implements EcucFunctionNameDefConditional {
    protected VariationPoint variationPoint;

    protected EcucFunctionNameDefConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_FUNCTION_NAME_DEF_CONDITIONAL;
    }

    public EcucFunctionNameDef getEcucFunctionNameDef() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (EcucFunctionNameDef)this.eContainer();
    }

    public NotificationChain basicSetEcucFunctionNameDef(EcucFunctionNameDef newEcucFunctionNameDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucFunctionNameDef, 8, msgs);
        return msgs;
    }

    public void setEcucFunctionNameDef(EcucFunctionNameDef newEcucFunctionNameDef) {
        if (newEcucFunctionNameDef != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newEcucFunctionNameDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucFunctionNameDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucFunctionNameDef != null) {
                msgs = ((InternalEObject)newEcucFunctionNameDef).eInverseAdd((InternalEObject)this, 30, EcucFunctionNameDef.class, msgs);
            }
            if ((msgs = this.basicSetEcucFunctionNameDef(newEcucFunctionNameDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newEcucFunctionNameDef, (Object)newEcucFunctionNameDef));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucFunctionNameDef((EcucFunctionNameDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetEcucFunctionNameDef(null, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 30, EcucFunctionNameDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getEcucFunctionNameDef();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setEcucFunctionNameDef((EcucFunctionNameDef)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setEcucFunctionNameDef(null);
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getEcucFunctionNameDef() != null;
            }
            case 9: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

