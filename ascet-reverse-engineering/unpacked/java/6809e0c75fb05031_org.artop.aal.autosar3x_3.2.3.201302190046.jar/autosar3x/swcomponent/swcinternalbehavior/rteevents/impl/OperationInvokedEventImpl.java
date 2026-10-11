/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OperationInvokedEventImpl
extends RTEEventImpl
implements OperationInvokedEvent {
    protected OperationInvokedEventOperation operation;

    protected OperationInvokedEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.OPERATION_INVOKED_EVENT;
    }

    public GPOperationInAtomicSwcIRef gGetOperation() {
        return this.getOperation();
    }

    public void gSetOperation(GPOperationInAtomicSwcIRef newGOperation) {
        this.setOperation((OperationInvokedEventOperation)newGOperation);
    }

    @Override
    public OperationInvokedEventOperation getOperation() {
        return this.operation;
    }

    public NotificationChain basicSetOperation(OperationInvokedEventOperation newOperation, NotificationChain msgs) {
        OperationInvokedEventOperation oldOperation = this.operation;
        this.operation = newOperation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldOperation, (Object)newOperation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperation(OperationInvokedEventOperation newOperation) {
        if (newOperation != this.operation) {
            NotificationChain msgs = null;
            if (this.operation != null) {
                msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, 6, OperationInvokedEventOperation.class, msgs);
            }
            if (newOperation != null) {
                msgs = ((InternalEObject)newOperation).eInverseAdd((InternalEObject)this, 6, OperationInvokedEventOperation.class, msgs);
            }
            if ((msgs = this.basicSetOperation(newOperation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newOperation, (Object)newOperation));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.operation != null) {
                    msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetOperation((OperationInvokedEventOperation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetOperation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetOperation();
            }
            case 22: {
                return this.getOperation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetOperation((GPOperationInAtomicSwcIRef)newValue);
                return;
            }
            case 22: {
                this.setOperation((OperationInvokedEventOperation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gSetOperation(null);
                return;
            }
            case 22: {
                this.setOperation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gGetOperation() != null;
            }
            case 22: {
                return this.operation != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GOperationInvokedEvent.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GOperationInvokedEvent.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 21;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

