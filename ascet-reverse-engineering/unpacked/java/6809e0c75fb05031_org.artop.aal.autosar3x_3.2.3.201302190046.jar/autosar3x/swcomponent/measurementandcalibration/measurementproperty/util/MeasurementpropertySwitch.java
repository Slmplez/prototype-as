/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty.util;

import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MeasurementpropertySwitch<T> {
    protected static MeasurementpropertyPackage modelPackage;

    public MeasurementpropertySwitch() {
        if (modelPackage == null) {
            modelPackage = MeasurementpropertyPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                DataPrototypeRef dataPrototypeRef = (DataPrototypeRef)theEObject;
                T result = this.caseDataPrototypeRef(dataPrototypeRef);
                if (result == null) {
                    result = this.caseSwVariableRefProxy(dataPrototypeRef);
                }
                if (result == null) {
                    result = this.caseARObject(dataPrototypeRef);
                }
                if (result == null) {
                    result = this.caseGARObject(dataPrototypeRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RecordElementRef recordElementRef = (RecordElementRef)theEObject;
                T result = this.caseRecordElementRef(recordElementRef);
                if (result == null) {
                    result = this.caseSwVariableRefProxy(recordElementRef);
                }
                if (result == null) {
                    result = this.caseARObject(recordElementRef);
                }
                if (result == null) {
                    result = this.caseGARObject(recordElementRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDataPrototypeRef(DataPrototypeRef object) {
        return null;
    }

    public T caseRecordElementRef(RecordElementRef object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseSwVariableRefProxy(SwVariableRefProxy object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

