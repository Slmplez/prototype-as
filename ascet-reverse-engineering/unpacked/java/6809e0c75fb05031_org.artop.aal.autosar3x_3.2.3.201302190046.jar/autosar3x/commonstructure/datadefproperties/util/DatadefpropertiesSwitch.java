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
package autosar3x.commonstructure.datadefproperties.util;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwComparisonVariables;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar3x.commonstructure.datadefproperties.SwGenericAxisParamValue;
import autosar3x.commonstructure.datadefproperties.SwPointer;
import autosar3x.commonstructure.datadefproperties.SwSemaphore;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.commonstructure.datadefproperties.SwVariableRef;
import autosar3x.genericstructure.infrastructure.ARObject;
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
            case 1: {
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
            case 2: {
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
            case 3: {
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
            case 4: {
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
            case 5: {
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
            case 6: {
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
            case 7: {
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
            case 8: {
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
            case 9: {
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
            case 10: {
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwDataDefProps(SwDataDefProps object) {
        return null;
    }

    public T caseSwArraysize(SwArraysize object) {
        return null;
    }

    public T caseSwDataDependency(SwDataDependency object) {
        return null;
    }

    public T caseSwDataDependencyArgs(SwDataDependencyArgs object) {
        return null;
    }

    public T caseSwVariableRef(SwVariableRef object) {
        return null;
    }

    public T caseSwBitRepresentation(SwBitRepresentation object) {
        return null;
    }

    public T caseSwTextProps(SwTextProps object) {
        return null;
    }

    public T caseSwComparisonVariables(SwComparisonVariables object) {
        return null;
    }

    public T caseSwSemaphore(SwSemaphore object) {
        return null;
    }

    public T caseSwPointer(SwPointer object) {
        return null;
    }

    public T caseSwGenericAxisParamValue(SwGenericAxisParamValue object) {
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

