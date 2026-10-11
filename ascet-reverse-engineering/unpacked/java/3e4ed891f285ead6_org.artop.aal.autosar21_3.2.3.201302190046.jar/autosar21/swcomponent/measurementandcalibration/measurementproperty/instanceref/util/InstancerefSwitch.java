/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.DataPrototypeRefDataPrototype;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                DataPrototypeRefDataPrototype dataPrototypeRefDataPrototype = (DataPrototypeRefDataPrototype)theEObject;
                T result = this.caseDataPrototypeRefDataPrototype(dataPrototypeRefDataPrototype);
                if (result == null) {
                    result = this.caseARObject(dataPrototypeRefDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(dataPrototypeRefDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RecordElementRefRecordElement recordElementRefRecordElement = (RecordElementRefRecordElement)theEObject;
                T result = this.caseRecordElementRefRecordElement(recordElementRefRecordElement);
                if (result == null) {
                    result = this.caseARObject(recordElementRefRecordElement);
                }
                if (result == null) {
                    result = this.caseGARObject(recordElementRefRecordElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDataPrototypeRefDataPrototype(DataPrototypeRefDataPrototype object) {
        return null;
    }

    public T caseRecordElementRefRecordElement(RecordElementRefRecordElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

