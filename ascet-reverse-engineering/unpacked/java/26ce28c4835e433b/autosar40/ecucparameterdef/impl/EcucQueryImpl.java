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
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucQueryExpression;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcucQueryImpl
extends IdentifiableImpl
implements EcucQuery {
    protected EcucQueryExpression ecucQueryExpression;

    protected EcucQueryImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_QUERY;
    }

    public EcucQueryExpression getEcucQueryExpression() {
        return this.ecucQueryExpression;
    }

    public NotificationChain basicSetEcucQueryExpression(EcucQueryExpression newEcucQueryExpression, NotificationChain msgs) {
        EcucQueryExpression oldEcucQueryExpression = this.ecucQueryExpression;
        this.ecucQueryExpression = newEcucQueryExpression;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldEcucQueryExpression, (Object)newEcucQueryExpression);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEcucQueryExpression(EcucQueryExpression newEcucQueryExpression) {
        if (newEcucQueryExpression != this.ecucQueryExpression) {
            NotificationChain msgs = null;
            if (this.ecucQueryExpression != null) {
                msgs = ((InternalEObject)this.ecucQueryExpression).eInverseRemove((InternalEObject)this, 5, EcucQueryExpression.class, msgs);
            }
            if (newEcucQueryExpression != null) {
                msgs = ((InternalEObject)newEcucQueryExpression).eInverseAdd((InternalEObject)this, 5, EcucQueryExpression.class, msgs);
            }
            if ((msgs = this.basicSetEcucQueryExpression(newEcucQueryExpression, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcucQueryExpression, (Object)newEcucQueryExpression));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.ecucQueryExpression != null) {
                    msgs = ((InternalEObject)this.ecucQueryExpression).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetEcucQueryExpression((EcucQueryExpression)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcucQueryExpression(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcucQueryExpression();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcucQueryExpression((EcucQueryExpression)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcucQueryExpression(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.ecucQueryExpression != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

