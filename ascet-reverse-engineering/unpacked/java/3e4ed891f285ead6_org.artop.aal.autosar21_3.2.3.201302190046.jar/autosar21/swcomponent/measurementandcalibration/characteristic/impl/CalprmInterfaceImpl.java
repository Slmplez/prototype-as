/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype
 *  gautosar.gswcomponents.gportinterface.GParameterInterface
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.impl;

import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.portinterface.impl.PortInterfaceImpl;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
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
public class CalprmInterfaceImpl
extends PortInterfaceImpl
implements CalprmInterface {
    protected EList<CalprmElementPrototype> calprmElements;

    protected CalprmInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CharacteristicPackage.Literals.CALPRM_INTERFACE;
    }

    public EList<GParameterDataPrototype> gGetParameters() {
        EList<CalprmElementPrototype> untypedList = this.getCalprmElements();
        return untypedList;
    }

    @Override
    public EList<CalprmElementPrototype> getCalprmElements() {
        if (this.calprmElements == null) {
            this.calprmElements = new EObjectContainmentEList(CalprmElementPrototype.class, (InternalEObject)this, 21);
        }
        return this.calprmElements;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getCalprmElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.gGetParameters();
            }
            case 21: {
                return this.getCalprmElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.gGetParameters().clear();
                this.gGetParameters().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getCalprmElements().clear();
                this.getCalprmElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.gGetParameters().clear();
                return;
            }
            case 21: {
                this.getCalprmElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return !this.gGetParameters().isEmpty();
            }
            case 21: {
                return this.calprmElements != null && !this.calprmElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInterface.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 8;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInterface.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 20;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

