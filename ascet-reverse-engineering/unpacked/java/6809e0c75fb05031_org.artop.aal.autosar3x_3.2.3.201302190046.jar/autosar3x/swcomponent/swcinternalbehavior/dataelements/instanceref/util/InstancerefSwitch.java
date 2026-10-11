/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataSendPointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
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
                DataReadAccessDataElement dataReadAccessDataElement = (DataReadAccessDataElement)theEObject;
                T result = this.caseDataReadAccessDataElement(dataReadAccessDataElement);
                if (result == null) {
                    result = this.caseARObject(dataReadAccessDataElement);
                }
                if (result == null) {
                    result = this.caseGRVariableInAtomicSwcIRef(dataReadAccessDataElement);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef((GVariableInAtomicSwcIRef)dataReadAccessDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReadAccessDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DataSendPointDataElement dataSendPointDataElement = (DataSendPointDataElement)theEObject;
                T result = this.caseDataSendPointDataElement(dataSendPointDataElement);
                if (result == null) {
                    result = this.caseARObject(dataSendPointDataElement);
                }
                if (result == null) {
                    result = this.caseGPVariableInAtomicSwcIRef(dataSendPointDataElement);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef((GVariableInAtomicSwcIRef)dataSendPointDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(dataSendPointDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DataWriteAccessDataElement dataWriteAccessDataElement = (DataWriteAccessDataElement)theEObject;
                T result = this.caseDataWriteAccessDataElement(dataWriteAccessDataElement);
                if (result == null) {
                    result = this.caseARObject(dataWriteAccessDataElement);
                }
                if (result == null) {
                    result = this.caseGPVariableInAtomicSwcIRef(dataWriteAccessDataElement);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef((GVariableInAtomicSwcIRef)dataWriteAccessDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(dataWriteAccessDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DataReceivePointDataElement dataReceivePointDataElement = (DataReceivePointDataElement)theEObject;
                T result = this.caseDataReceivePointDataElement(dataReceivePointDataElement);
                if (result == null) {
                    result = this.caseARObject(dataReceivePointDataElement);
                }
                if (result == null) {
                    result = this.caseGRVariableInAtomicSwcIRef(dataReceivePointDataElement);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef((GVariableInAtomicSwcIRef)dataReceivePointDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceivePointDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDataReadAccessDataElement(DataReadAccessDataElement object) {
        return null;
    }

    public T caseDataSendPointDataElement(DataSendPointDataElement object) {
        return null;
    }

    public T caseDataWriteAccessDataElement(DataWriteAccessDataElement object) {
        return null;
    }

    public T caseDataReceivePointDataElement(DataReceivePointDataElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

