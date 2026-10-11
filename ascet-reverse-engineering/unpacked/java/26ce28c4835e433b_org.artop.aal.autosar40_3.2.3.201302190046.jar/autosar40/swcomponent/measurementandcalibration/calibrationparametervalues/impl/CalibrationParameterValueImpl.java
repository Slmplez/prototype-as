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
package autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValue;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValueSet;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CalibrationParameterValueImpl
extends ARObjectImpl
implements CalibrationParameterValue,
IReferringClass {
    protected ValueSpecification applInitValue;
    protected ValueSpecification implInitValue;
    protected FlatInstanceDescriptor initializedParameter;

    protected CalibrationParameterValueImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationparametervaluesPackage.Literals.CALIBRATION_PARAMETER_VALUE;
    }

    public CalibrationParameterValueSet getCalibrationParameterValueSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CalibrationParameterValueSet)this.eContainer();
    }

    public NotificationChain basicSetCalibrationParameterValueSet(CalibrationParameterValueSet newCalibrationParameterValueSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCalibrationParameterValueSet, 4, msgs);
        return msgs;
    }

    public void setCalibrationParameterValueSet(CalibrationParameterValueSet newCalibrationParameterValueSet) {
        if (newCalibrationParameterValueSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCalibrationParameterValueSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCalibrationParameterValueSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCalibrationParameterValueSet != null) {
                msgs = ((InternalEObject)newCalibrationParameterValueSet).eInverseAdd((InternalEObject)this, 21, CalibrationParameterValueSet.class, msgs);
            }
            if ((msgs = this.basicSetCalibrationParameterValueSet(newCalibrationParameterValueSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCalibrationParameterValueSet, (Object)newCalibrationParameterValueSet));
        }
    }

    public ValueSpecification getApplInitValue() {
        return this.applInitValue;
    }

    public NotificationChain basicSetApplInitValue(ValueSpecification newApplInitValue, NotificationChain msgs) {
        ValueSpecification oldApplInitValue = this.applInitValue;
        this.applInitValue = newApplInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldApplInitValue, (Object)newApplInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setApplInitValue(ValueSpecification newApplInitValue) {
        if (newApplInitValue != this.applInitValue) {
            NotificationChain msgs = null;
            if (this.applInitValue != null) {
                msgs = ((InternalEObject)this.applInitValue).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newApplInitValue != null) {
                msgs = ((InternalEObject)newApplInitValue).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetApplInitValue(newApplInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newApplInitValue, (Object)newApplInitValue));
        }
    }

    public ValueSpecification getImplInitValue() {
        return this.implInitValue;
    }

    public NotificationChain basicSetImplInitValue(ValueSpecification newImplInitValue, NotificationChain msgs) {
        ValueSpecification oldImplInitValue = this.implInitValue;
        this.implInitValue = newImplInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldImplInitValue, (Object)newImplInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setImplInitValue(ValueSpecification newImplInitValue) {
        if (newImplInitValue != this.implInitValue) {
            NotificationChain msgs = null;
            if (this.implInitValue != null) {
                msgs = ((InternalEObject)this.implInitValue).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newImplInitValue != null) {
                msgs = ((InternalEObject)newImplInitValue).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetImplInitValue(newImplInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newImplInitValue, (Object)newImplInitValue));
        }
    }

    public FlatInstanceDescriptor getInitializedParameter() {
        if (this.initializedParameter != null && this.initializedParameter.eIsProxy()) {
            InternalEObject oldInitializedParameter = (InternalEObject)this.initializedParameter;
            this.initializedParameter = (FlatInstanceDescriptor)this.eResolveProxy(oldInitializedParameter);
            if (this.initializedParameter != oldInitializedParameter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldInitializedParameter, (Object)this.initializedParameter));
            }
        }
        return this.initializedParameter;
    }

    public FlatInstanceDescriptor basicGetInitializedParameter() {
        return this.initializedParameter;
    }

    public void setInitializedParameter(FlatInstanceDescriptor newInitializedParameter) {
        FlatInstanceDescriptor oldInitializedParameter = this.initializedParameter;
        this.initializedParameter = newInitializedParameter;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldInitializedParameter, (Object)this.initializedParameter));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCalibrationParameterValueSet((CalibrationParameterValueSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCalibrationParameterValueSet(null, msgs);
            }
            case 5: {
                return this.basicSetApplInitValue(null, msgs);
            }
            case 6: {
                return this.basicSetImplInitValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, CalibrationParameterValueSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCalibrationParameterValueSet();
            }
            case 5: {
                return this.getApplInitValue();
            }
            case 6: {
                return this.getImplInitValue();
            }
            case 7: {
                if (resolve) {
                    return this.getInitializedParameter();
                }
                return this.basicGetInitializedParameter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCalibrationParameterValueSet((CalibrationParameterValueSet)newValue);
                return;
            }
            case 5: {
                this.setApplInitValue((ValueSpecification)newValue);
                return;
            }
            case 6: {
                this.setImplInitValue((ValueSpecification)newValue);
                return;
            }
            case 7: {
                this.setInitializedParameter((FlatInstanceDescriptor)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCalibrationParameterValueSet(null);
                return;
            }
            case 5: {
                this.setApplInitValue(null);
                return;
            }
            case 6: {
                this.setImplInitValue(null);
                return;
            }
            case 7: {
                this.setInitializedParameter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCalibrationParameterValueSet() != null;
            }
            case 5: {
                return this.applInitValue != null;
            }
            case 6: {
                return this.implInitValue != null;
            }
            case 7: {
                return this.initializedParameter != null;
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
}

