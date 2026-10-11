/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.impl;

import autosar21.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.PerInstanceMemoryVariable;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PerInstanceMemoryVariableImpl
extends DataPrototypeImpl
implements PerInstanceMemoryVariable {
    protected EList<Measurable> measurables;

    protected PerInstanceMemoryVariableImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MeasurementpropertyPackage.Literals.PER_INSTANCE_MEMORY_VARIABLE;
    }

    @Override
    public EList<Measurable> getMeasurables() {
        if (this.measurables == null) {
            this.measurables = new EObjectContainmentEList(Measurable.class, (InternalEObject)this, 20);
        }
        return this.measurables;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getMeasurables()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getMeasurables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.getMeasurables().clear();
                this.getMeasurables().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.getMeasurables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.measurables != null && !this.measurables.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

