/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.dataprototypes.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.impl.AutosarDataPrototypeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class VariableDataPrototypeImpl
extends AutosarDataPrototypeImpl
implements VariableDataPrototype {
    protected ValueSpecification initValue;
    protected VariationPoint variationPoint;

    protected VariableDataPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return DataprototypesPackage.Literals.VARIABLE_DATA_PROTOTYPE;
    }

    public ValueSpecification getInitValue() {
        return this.initValue;
    }

    public NotificationChain basicSetInitValue(ValueSpecification newInitValue, NotificationChain msgs) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldInitValue, (Object)newInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setInitValue(ValueSpecification newInitValue) {
        if (newInitValue != this.initValue) {
            NotificationChain msgs = null;
            if (this.initValue != null) {
                msgs = ((InternalEObject)this.initValue).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newInitValue != null) {
                msgs = ((InternalEObject)newInitValue).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetInitValue(newInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newInitValue, (Object)newInitValue));
        }
    }

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

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetInitValue(null, msgs);
            }
            case 23: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getInitValue();
            }
            case 23: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 23: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setInitValue(null);
                return;
            }
            case 23: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.initValue != null;
            }
            case 23: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

