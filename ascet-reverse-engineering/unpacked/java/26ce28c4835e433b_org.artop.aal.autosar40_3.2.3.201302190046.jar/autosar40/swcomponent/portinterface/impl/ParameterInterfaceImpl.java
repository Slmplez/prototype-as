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
package autosar40.swcomponent.portinterface.impl;

import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.portinterface.ParameterInterface;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.DataInterfaceImpl;
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
public class ParameterInterfaceImpl
extends DataInterfaceImpl
implements ParameterInterface {
    protected EList<ParameterDataPrototype> parameters;

    protected ParameterInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.PARAMETER_INTERFACE;
    }

    public EList<GParameterDataPrototype> gGetParameters() {
        EList<ParameterDataPrototype> untypedList = this.getParameters();
        return untypedList;
    }

    @Override
    public EList<ParameterDataPrototype> getParameters() {
        if (this.parameters == null) {
            this.parameters = new EObjectContainmentEList(ParameterDataPrototype.class, (InternalEObject)this, 26);
        }
        return this.parameters;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return ((InternalEList)this.getParameters()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.gGetParameters();
            }
            case 26: {
                return this.getParameters();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.gGetParameters().clear();
                this.gGetParameters().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getParameters().clear();
                this.getParameters().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.gGetParameters().clear();
                return;
            }
            case 26: {
                this.getParameters().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return !this.gGetParameters().isEmpty();
            }
            case 26: {
                return this.parameters != null && !this.parameters.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInterface.class) {
            switch (derivedFeatureID) {
                case 25: {
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
                    return 25;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

