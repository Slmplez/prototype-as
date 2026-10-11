/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.valuemodel.impl.ValueByFormulaImpl;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuGenericMathImpl
extends ValueByFormulaImpl
implements CompuGenericMath {
    protected EList<String> levels;

    protected CompuGenericMathImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_GENERIC_MATH;
    }

    @Override
    public EList<String> getLevels() {
        if (this.levels == null) {
            this.levels = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 5);
        }
        return this.levels;
    }

    @Override
    public void unsetLevels() {
        if (this.levels != null) {
            ((InternalEList.Unsettable)this.levels).unset();
        }
    }

    @Override
    public boolean isSetLevels() {
        return this.levels != null && ((InternalEList.Unsettable)this.levels).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getLevels();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getLevels().clear();
                this.getLevels().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetLevels();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetLevels();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (levels: ");
        result.append(this.levels);
        result.append(')');
        return result.toString();
    }
}

