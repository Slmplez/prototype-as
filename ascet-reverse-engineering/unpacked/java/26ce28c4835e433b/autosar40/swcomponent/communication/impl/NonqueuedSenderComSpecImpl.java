/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.communication.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.NonqueuedSenderComSpec;
import autosar40.swcomponent.communication.impl.SenderComSpecImpl;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NonqueuedSenderComSpecImpl
extends SenderComSpecImpl
implements NonqueuedSenderComSpec {
    protected ValueSpecification initValue;

    protected NonqueuedSenderComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.NONQUEUED_SENDER_COM_SPEC;
    }

    public GValueSpecification gGetInitValue() {
        return this.getInitValue();
    }

    public void gSetInitValue(GValueSpecification newGInitValue) {
        this.setInitValue((ValueSpecification)newGInitValue);
    }

    @Override
    public ValueSpecification getInitValue() {
        return this.initValue;
    }

    public NotificationChain basicSetInitValue(ValueSpecification newInitValue, NotificationChain msgs) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldInitValue, (Object)newInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInitValue(ValueSpecification newInitValue) {
        if (newInitValue != this.initValue) {
            NotificationChain msgs = null;
            if (this.initValue != null) {
                msgs = ((InternalEObject)this.initValue).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newInitValue != null) {
                msgs = ((InternalEObject)newInitValue).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetInitValue(newInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newInitValue, (Object)newInitValue));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                return this.basicSetInitValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 11: {
                return this.gGetInitValue();
            }
            case 12: {
                return this.getInitValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 11: {
                this.gSetInitValue((GValueSpecification)newValue);
                return;
            }
            case 12: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 11: {
                this.gSetInitValue(null);
                return;
            }
            case 12: {
                this.setInitValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 11: {
                return this.gGetInitValue() != null;
            }
            case 12: {
                return this.initValue != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedSenderComSpec.class) {
            switch (derivedFeatureID) {
                case 11: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedSenderComSpec.class) {
            switch (baseFeatureID) {
                case 3: {
                    return 11;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

