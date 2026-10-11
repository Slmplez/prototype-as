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
package autosar21.swcomponent.measurementandcalibration.globalconstraints.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstrRule;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.InternalConstrs;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class InternalConstrsImpl
extends ARObjectImpl
implements InternalConstrs {
    protected Limit lowerLimit;
    protected Limit upperLimit;

    protected InternalConstrsImpl() {
    }

    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.INTERNAL_CONSTRS;
    }

    public DataConstrRule getDataConstrRule() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DataConstrRule)this.eContainer();
    }

    public NotificationChain basicSetDataConstrRule(DataConstrRule newDataConstrRule, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataConstrRule, 4, msgs);
        return msgs;
    }

    public void setDataConstrRule(DataConstrRule newDataConstrRule) {
        if (newDataConstrRule != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDataConstrRule != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataConstrRule)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataConstrRule != null) {
                msgs = ((InternalEObject)newDataConstrRule).eInverseAdd((InternalEObject)this, 6, DataConstrRule.class, msgs);
            }
            if ((msgs = this.basicSetDataConstrRule(newDataConstrRule, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataConstrRule, (Object)newDataConstrRule));
        }
    }

    public Limit getLowerLimit() {
        return this.lowerLimit;
    }

    public NotificationChain basicSetLowerLimit(Limit newLowerLimit, NotificationChain msgs) {
        Limit oldLowerLimit = this.lowerLimit;
        this.lowerLimit = newLowerLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLowerLimit, (Object)newLowerLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLowerLimit(Limit newLowerLimit) {
        if (newLowerLimit != this.lowerLimit) {
            NotificationChain msgs = null;
            if (this.lowerLimit != null) {
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newLowerLimit, (Object)newLowerLimit));
        }
    }

    public Limit getUpperLimit() {
        return this.upperLimit;
    }

    public NotificationChain basicSetUpperLimit(Limit newUpperLimit, NotificationChain msgs) {
        Limit oldUpperLimit = this.upperLimit;
        this.upperLimit = newUpperLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUpperLimit, (Object)newUpperLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUpperLimit(Limit newUpperLimit) {
        if (newUpperLimit != this.upperLimit) {
            NotificationChain msgs = null;
            if (this.upperLimit != null) {
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataConstrRule((DataConstrRule)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataConstrRule(null, msgs);
            }
            case 5: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 6: {
                return this.basicSetUpperLimit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, DataConstrRule.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataConstrRule();
            }
            case 5: {
                return this.getLowerLimit();
            }
            case 6: {
                return this.getUpperLimit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataConstrRule((DataConstrRule)newValue);
                return;
            }
            case 5: {
                this.setLowerLimit((Limit)newValue);
                return;
            }
            case 6: {
                this.setUpperLimit((Limit)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataConstrRule(null);
                return;
            }
            case 5: {
                this.setLowerLimit(null);
                return;
            }
            case 6: {
                this.setUpperLimit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDataConstrRule() != null;
            }
            case 5: {
                return this.lowerLimit != null;
            }
            case 6: {
                return this.upperLimit != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

