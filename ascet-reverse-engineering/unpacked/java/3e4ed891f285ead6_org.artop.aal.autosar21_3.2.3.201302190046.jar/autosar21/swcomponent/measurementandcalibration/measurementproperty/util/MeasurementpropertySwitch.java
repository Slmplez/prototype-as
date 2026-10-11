/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.PerInstanceMemoryVariable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
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
                PerInstanceMemoryVariable perInstanceMemoryVariable = (PerInstanceMemoryVariable)theEObject;
                T result = this.casePerInstanceMemoryVariable(perInstanceMemoryVariable);
                if (result == null) {
                    result = this.caseDataPrototype(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseIdentifiable(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseARObject(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.caseGARObject(perInstanceMemoryVariable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
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
            case 3: {
                Measurable measurable = (Measurable)theEObject;
                T result = this.caseMeasurable(measurable);
                if (result == null) {
                    result = this.caseIdentifiable(measurable);
                }
                if (result == null) {
                    result = this.caseARObject(measurable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(measurable);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)measurable);
                }
                if (result == null) {
                    result = this.caseGARObject(measurable);
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

    public T casePerInstanceMemoryVariable(PerInstanceMemoryVariable object) {
        return null;
    }

    public T caseRecordElementRef(RecordElementRef object) {
        return null;
    }

    public T caseMeasurable(Measurable object) {
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

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

