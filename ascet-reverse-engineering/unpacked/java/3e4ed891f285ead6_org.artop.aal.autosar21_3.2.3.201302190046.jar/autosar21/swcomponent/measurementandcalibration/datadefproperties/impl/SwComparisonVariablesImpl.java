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
package autosar21.swcomponent.measurementandcalibration.datadefproperties.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwComparisonVariables;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
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
public class SwComparisonVariablesImpl
extends ARObjectImpl
implements SwComparisonVariables {
    protected EList<SwVariableRefProxy> swVariableRefs;

    protected SwComparisonVariablesImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_COMPARISON_VARIABLES;
    }

    @Override
    public EList<SwVariableRefProxy> getSwVariableRefs() {
        if (this.swVariableRefs == null) {
            this.swVariableRefs = new EObjectContainmentEList(SwVariableRefProxy.class, (InternalEObject)this, 4);
        }
        return this.swVariableRefs;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getSwVariableRefs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwVariableRefs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getSwVariableRefs().clear();
                this.getSwVariableRefs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getSwVariableRefs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swVariableRefs != null && !this.swVariableRefs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

