/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.internalbehavior.interrunnablecommunication.impl;

import autosar21.swcomponent.datatype.constants.ValueSpecification;
import autosar21.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.CommunicationApproachType;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class InterRunnableVariableImpl
extends DataPrototypeImpl
implements InterRunnableVariable,
IReferringClass {
    protected static final CommunicationApproachType COMMUNICATION_APPROACH_EDEFAULT = CommunicationApproachType.IMPLICIT;
    protected CommunicationApproachType communicationApproach = COMMUNICATION_APPROACH_EDEFAULT;
    protected boolean communicationApproachESet;
    protected ValueSpecification initValue;
    protected Measurable measurable;

    protected InterRunnableVariableImpl() {
    }

    protected EClass eStaticClass() {
        return InterrunnablecommunicationPackage.Literals.INTER_RUNNABLE_VARIABLE;
    }

    public InternalBehavior getInternalBehavior() {
        if (this.eContainerFeatureID() != 20) {
            return null;
        }
        return (InternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetInternalBehavior(InternalBehavior newInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInternalBehavior, 20, msgs);
        return msgs;
    }

    public void setInternalBehavior(InternalBehavior newInternalBehavior) {
        if (newInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 20 && newInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInternalBehavior != null) {
                msgs = ((InternalEObject)newInternalBehavior).eInverseAdd((InternalEObject)this, 27, InternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetInternalBehavior(newInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newInternalBehavior, (Object)newInternalBehavior));
        }
    }

    public CommunicationApproachType getCommunicationApproach() {
        return this.communicationApproach;
    }

    public void setCommunicationApproach(CommunicationApproachType newCommunicationApproach) {
        CommunicationApproachType oldCommunicationApproach = this.communicationApproach;
        this.communicationApproach = newCommunicationApproach == null ? COMMUNICATION_APPROACH_EDEFAULT : newCommunicationApproach;
        boolean oldCommunicationApproachESet = this.communicationApproachESet;
        this.communicationApproachESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCommunicationApproach, (Object)this.communicationApproach, !oldCommunicationApproachESet));
        }
    }

    public void unsetCommunicationApproach() {
        CommunicationApproachType oldCommunicationApproach = this.communicationApproach;
        boolean oldCommunicationApproachESet = this.communicationApproachESet;
        this.communicationApproach = COMMUNICATION_APPROACH_EDEFAULT;
        this.communicationApproachESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldCommunicationApproach, (Object)COMMUNICATION_APPROACH_EDEFAULT, oldCommunicationApproachESet));
        }
    }

    public boolean isSetCommunicationApproach() {
        return this.communicationApproachESet;
    }

    public ValueSpecification getInitValue() {
        if (this.initValue != null && this.initValue.eIsProxy()) {
            InternalEObject oldInitValue = (InternalEObject)this.initValue;
            this.initValue = (ValueSpecification)this.eResolveProxy(oldInitValue);
            if (this.initValue != oldInitValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldInitValue, (Object)this.initValue));
            }
        }
        return this.initValue;
    }

    public ValueSpecification basicGetInitValue() {
        return this.initValue;
    }

    public void setInitValue(ValueSpecification newInitValue) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldInitValue, (Object)this.initValue));
        }
    }

    public Measurable getMeasurable() {
        return this.measurable;
    }

    public NotificationChain basicSetMeasurable(Measurable newMeasurable, NotificationChain msgs) {
        Measurable oldMeasurable = this.measurable;
        this.measurable = newMeasurable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMeasurable, (Object)newMeasurable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMeasurable(Measurable newMeasurable) {
        if (newMeasurable != this.measurable) {
            NotificationChain msgs = null;
            if (this.measurable != null) {
                msgs = ((InternalEObject)this.measurable).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newMeasurable != null) {
                msgs = ((InternalEObject)newMeasurable).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetMeasurable(newMeasurable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newMeasurable, (Object)newMeasurable));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInternalBehavior((InternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetInternalBehavior(null, msgs);
            }
            case 23: {
                return this.basicSetMeasurable(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 20: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, InternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getInternalBehavior();
            }
            case 21: {
                return this.getCommunicationApproach();
            }
            case 22: {
                if (resolve) {
                    return this.getInitValue();
                }
                return this.basicGetInitValue();
            }
            case 23: {
                return this.getMeasurable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setInternalBehavior((InternalBehavior)newValue);
                return;
            }
            case 21: {
                this.setCommunicationApproach((CommunicationApproachType)((Object)newValue));
                return;
            }
            case 22: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 23: {
                this.setMeasurable((Measurable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setInternalBehavior(null);
                return;
            }
            case 21: {
                this.unsetCommunicationApproach();
                return;
            }
            case 22: {
                this.setInitValue(null);
                return;
            }
            case 23: {
                this.setMeasurable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.getInternalBehavior() != null;
            }
            case 21: {
                return this.isSetCommunicationApproach();
            }
            case 22: {
                return this.initValue != null;
            }
            case 23: {
                return this.measurable != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (communicationApproach: ");
        if (this.communicationApproachESet) {
            result.append((Object)this.communicationApproach);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

