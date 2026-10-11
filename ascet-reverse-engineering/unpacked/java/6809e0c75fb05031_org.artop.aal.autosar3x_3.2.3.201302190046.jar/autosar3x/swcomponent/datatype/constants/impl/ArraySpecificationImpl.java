/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.datatype.constants.impl;

import autosar3x.swcomponent.datatype.constants.ArraySpecification;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.constants.impl.ValueSpecificationImpl;
import java.util.Collection;
import java.util.Map;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArraySpecificationImpl
extends ValueSpecificationImpl
implements ArraySpecification {
    protected EList<ValueSpecification> elements;

    protected ArraySpecificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.ARRAY_SPECIFICATION;
    }

    @Override
    public EList<ValueSpecification> getElements() {
        if (this.elements == null) {
            this.elements = new EObjectContainmentEList(ValueSpecification.class, (InternalEObject)this, 21);
        }
        return this.elements;
    }

    @Override
    public boolean _roleidentifiersareindexnumbers(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getElements().clear();
                this.getElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.elements != null && !this.elements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

