/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.ExperimentTargetType;
import com.etas.amd620.core.ComponentProject.SimulationConfigurationType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class SimulationConfigurationTypeImpl
extends MinimalEObjectImpl.Container
implements SimulationConfigurationType {
    protected static final ExperimentTargetType EXPERIMENT_TARGET_EDEFAULT = ExperimentTargetType.EXPERIMENT_OFFLINE_PC;
    protected ExperimentTargetType experimentTarget = EXPERIMENT_TARGET_EDEFAULT;
    protected boolean experimentTargetESet;

    protected SimulationConfigurationTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.SIMULATION_CONFIGURATION_TYPE;
    }

    @Override
    public ExperimentTargetType getExperimentTarget() {
        return this.experimentTarget;
    }

    @Override
    public void setExperimentTarget(ExperimentTargetType newExperimentTarget) {
        ExperimentTargetType oldExperimentTarget = this.experimentTarget;
        this.experimentTarget = newExperimentTarget == null ? EXPERIMENT_TARGET_EDEFAULT : newExperimentTarget;
        boolean oldExperimentTargetESet = this.experimentTargetESet;
        this.experimentTargetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldExperimentTarget, (Object)this.experimentTarget, !oldExperimentTargetESet));
        }
    }

    @Override
    public void unsetExperimentTarget() {
        ExperimentTargetType oldExperimentTarget = this.experimentTarget;
        boolean oldExperimentTargetESet = this.experimentTargetESet;
        this.experimentTarget = EXPERIMENT_TARGET_EDEFAULT;
        this.experimentTargetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, (Object)oldExperimentTarget, (Object)EXPERIMENT_TARGET_EDEFAULT, oldExperimentTargetESet));
        }
    }

    @Override
    public boolean isSetExperimentTarget() {
        return this.experimentTargetESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getExperimentTarget();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setExperimentTarget((ExperimentTargetType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetExperimentTarget();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetExperimentTarget();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (experimentTarget: ");
        if (this.experimentTargetESet) {
            result.append((Object)this.experimentTarget);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

