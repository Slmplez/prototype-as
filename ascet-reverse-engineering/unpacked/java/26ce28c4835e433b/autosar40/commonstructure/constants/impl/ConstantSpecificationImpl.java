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
package autosar40.commonstructure.constants.impl;

import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ConstantSpecificationImpl
extends ARElementImpl
implements ConstantSpecification {
    protected ValueSpecification valueSpec;

    protected ConstantSpecificationImpl() {
    }

    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.CONSTANT_SPECIFICATION;
    }

    public ValueSpecification getValueSpec() {
        return this.valueSpec;
    }

    public NotificationChain basicSetValueSpec(ValueSpecification newValueSpec, NotificationChain msgs) {
        ValueSpecification oldValueSpec = this.valueSpec;
        this.valueSpec = newValueSpec;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldValueSpec, (Object)newValueSpec);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setValueSpec(ValueSpecification newValueSpec) {
        if (newValueSpec != this.valueSpec) {
            NotificationChain msgs = null;
            if (this.valueSpec != null) {
                msgs = ((InternalEObject)this.valueSpec).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newValueSpec != null) {
                msgs = ((InternalEObject)newValueSpec).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetValueSpec(newValueSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newValueSpec, (Object)newValueSpec));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetValueSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getValueSpec();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setValueSpec((ValueSpecification)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setValueSpec(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.valueSpec != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

