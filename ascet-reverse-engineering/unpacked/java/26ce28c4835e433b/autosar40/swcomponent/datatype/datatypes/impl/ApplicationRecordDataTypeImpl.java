/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.datatype.datatypes.impl;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationCompositeDataTypeImpl;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationRecordDataTypeImpl
extends ApplicationCompositeDataTypeImpl
implements ApplicationRecordDataType {
    protected EList<ApplicationRecordElement> elements;

    protected ApplicationRecordDataTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.APPLICATION_RECORD_DATA_TYPE;
    }

    public EList<GApplicationRecordElement> gGetElements() {
        EList<ApplicationRecordElement> untypedList = this.getElements();
        return untypedList;
    }

    @Override
    public EList<ApplicationRecordElement> getElements() {
        if (this.elements == null) {
            this.elements = new EObjectContainmentWithInverseEList(ApplicationRecordElement.class, (InternalEObject)this, 24, 22);
        }
        return this.elements;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.gGetElements();
            }
            case 24: {
                return this.getElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.gGetElements().clear();
                this.gGetElements().addAll((Collection)newValue);
                return;
            }
            case 24: {
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
            case 23: {
                this.gGetElements().clear();
                return;
            }
            case 24: {
                this.getElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return !this.gGetElements().isEmpty();
            }
            case 24: {
                return this.elements != null && !this.elements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationRecordDataType.class) {
            switch (derivedFeatureID) {
                case 23: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationRecordDataType.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 23;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

