/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwBitRepresentation;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwComparisonVariables;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwPointer;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwSemaphore;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwTextProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableRef;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DatadefpropertiesSwitch<T> {
    protected static DatadefpropertiesPackage modelPackage;

    public DatadefpropertiesSwitch() {
        if (modelPackage == null) {
            modelPackage = DatadefpropertiesPackage.eINSTANCE;
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
                SwArraysize swArraysize = (SwArraysize)theEObject;
                T result = this.caseSwArraysize(swArraysize);
                if (result == null) {
                    result = this.caseARObject(swArraysize);
                }
                if (result == null) {
                    result = this.caseGARObject(swArraysize);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwBitRepresentation swBitRepresentation = (SwBitRepresentation)theEObject;
                T result = this.caseSwBitRepresentation(swBitRepresentation);
                if (result == null) {
                    result = this.caseARObject(swBitRepresentation);
                }
                if (result == null) {
                    result = this.caseGARObject(swBitRepresentation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwComparisonVariables swComparisonVariables = (SwComparisonVariables)theEObject;
                T result = this.caseSwComparisonVariables(swComparisonVariables);
                if (result == null) {
                    result = this.caseARObject(swComparisonVariables);
                }
                if (result == null) {
                    result = this.caseGARObject(swComparisonVariables);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwGenericAxisParamValue swGenericAxisParamValue = (SwGenericAxisParamValue)theEObject;
                T result = this.caseSwGenericAxisParamValue(swGenericAxisParamValue);
                if (result == null) {
                    result = this.caseARObject(swGenericAxisParamValue);
                }
                if (result == null) {
                    result = this.caseGARObject(swGenericAxisParamValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwDataDependency swDataDependency = (SwDataDependency)theEObject;
                T result = this.caseSwDataDependency(swDataDependency);
                if (result == null) {
                    result = this.caseARObject(swDataDependency);
                }
                if (result == null) {
                    result = this.caseGARObject(swDataDependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwDataDependencyArgs swDataDependencyArgs = (SwDataDependencyArgs)theEObject;
                T result = this.caseSwDataDependencyArgs(swDataDependencyArgs);
                if (result == null) {
                    result = this.caseARObject(swDataDependencyArgs);
                }
                if (result == null) {
                    result = this.caseGARObject(swDataDependencyArgs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SwPointer swPointer = (SwPointer)theEObject;
                T result = this.caseSwPointer(swPointer);
                if (result == null) {
                    result = this.caseARObject(swPointer);
                }
                if (result == null) {
                    result = this.caseGARObject(swPointer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SwSemaphore swSemaphore = (SwSemaphore)theEObject;
                T result = this.caseSwSemaphore(swSemaphore);
                if (result == null) {
                    result = this.caseARObject(swSemaphore);
                }
                if (result == null) {
                    result = this.caseGARObject(swSemaphore);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                SwTextProps swTextProps = (SwTextProps)theEObject;
                T result = this.caseSwTextProps(swTextProps);
                if (result == null) {
                    result = this.caseARObject(swTextProps);
                }
                if (result == null) {
                    result = this.caseGARObject(swTextProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SwVariableRef swVariableRef = (SwVariableRef)theEObject;
                T result = this.caseSwVariableRef(swVariableRef);
                if (result == null) {
                    result = this.caseARObject(swVariableRef);
                }
                if (result == null) {
                    result = this.caseGARObject(swVariableRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SwDataDefProps swDataDefProps = (SwDataDefProps)theEObject;
                T result = this.caseSwDataDefProps(swDataDefProps);
                if (result == null) {
                    result = this.caseARObject(swDataDefProps);
                }
                if (result == null) {
                    result = this.caseGSwDataDefPropsConditional(swDataDefProps);
                }
                if (result == null) {
                    result = this.caseGARObject(swDataDefProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwArraysize(SwArraysize object) {
        return null;
    }

    public T caseSwBitRepresentation(SwBitRepresentation object) {
        return null;
    }

    public T caseSwComparisonVariables(SwComparisonVariables object) {
        return null;
    }

    public T caseSwGenericAxisParamValue(SwGenericAxisParamValue object) {
        return null;
    }

    public T caseSwDataDependency(SwDataDependency object) {
        return null;
    }

    public T caseSwDataDependencyArgs(SwDataDependencyArgs object) {
        return null;
    }

    public T caseSwPointer(SwPointer object) {
        return null;
    }

    public T caseSwSemaphore(SwSemaphore object) {
        return null;
    }

    public T caseSwTextProps(SwTextProps object) {
        return null;
    }

    public T caseSwVariableRef(SwVariableRef object) {
        return null;
    }

    public T caseSwDataDefProps(SwDataDefProps object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGSwDataDefPropsConditional(GSwDataDefPropsConditional object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

