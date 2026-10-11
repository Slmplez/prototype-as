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
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.FreeTextCondition;
import autosar21.system.communication.Timing;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FreeTextConditionImpl
extends ARObjectImpl
implements FreeTextCondition {
    protected static final String CONDITION_EDEFAULT = "";
    protected String condition = "";
    protected boolean conditionESet;

    protected FreeTextConditionImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.FREE_TEXT_CONDITION;
    }

    public Timing getTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Timing)this.eContainer();
    }

    public NotificationChain basicSetTiming(Timing newTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTiming, 4, msgs);
        return msgs;
    }

    public void setTiming(Timing newTiming) {
        if (newTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTiming != null) {
                msgs = ((InternalEObject)newTiming).eInverseAdd((InternalEObject)this, 4, Timing.class, msgs);
            }
            if ((msgs = this.basicSetTiming(newTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTiming, (Object)newTiming));
        }
    }

    public String getCondition() {
        return this.condition;
    }

    public void setCondition(String newCondition) {
        String oldCondition = this.condition;
        this.condition = newCondition;
        boolean oldConditionESet = this.conditionESet;
        this.conditionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCondition, (Object)this.condition, !oldConditionESet));
        }
    }

    public void unsetCondition() {
        String oldCondition = this.condition;
        boolean oldConditionESet = this.conditionESet;
        this.condition = CONDITION_EDEFAULT;
        this.conditionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCondition, (Object)CONDITION_EDEFAULT, oldConditionESet));
        }
    }

    public boolean isSetCondition() {
        return this.conditionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTiming((Timing)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, Timing.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTiming();
            }
            case 5: {
                return this.getCondition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTiming((Timing)newValue);
                return;
            }
            case 5: {
                this.setCondition((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTiming(null);
                return;
            }
            case 5: {
                this.unsetCondition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTiming() != null;
            }
            case 5: {
                return this.isSetCondition();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (condition: ");
        if (this.conditionESet) {
            result.append(this.condition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

