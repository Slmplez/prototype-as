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
package autosar40.commonstructure.datadefproperties.util;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
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
                ValueList valueList = (ValueList)theEObject;
                T result = this.caseValueList(valueList);
                if (result == null) {
                    result = this.caseARObject(valueList);
                }
                if (result == null) {
                    result = this.caseGARObject(valueList);
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
                SwPointerTargetProps swPointerTargetProps = (SwPointerTargetProps)theEObject;
                T result = this.caseSwPointerTargetProps(swPointerTargetProps);
                if (result == null) {
                    result = this.caseARObject(swPointerTargetProps);
                }
                if (result == null) {
                    result = this.caseGARObject(swPointerTargetProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
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
            case 6: {
                SwDataDefPropsContent swDataDefPropsContent = (SwDataDefPropsContent)theEObject;
                T result = this.caseSwDataDefPropsContent(swDataDefPropsContent);
                if (result == null) {
                    result = this.caseARObject(swDataDefPropsContent);
                }
                if (result == null) {
                    result = this.caseGARObject(swDataDefPropsContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SwDataDefPropsConditional swDataDefPropsConditional = (SwDataDefPropsConditional)theEObject;
                T result = this.caseSwDataDefPropsConditional(swDataDefPropsConditional);
                if (result == null) {
                    result = this.caseSwDataDefPropsContent(swDataDefPropsConditional);
                }
                if (result == null) {
                    result = this.caseGSwDataDefPropsConditional(swDataDefPropsConditional);
                }
                if (result == null) {
                    result = this.caseARObject(swDataDefPropsConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(swDataDefPropsConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                SwDataDefProps swDataDefProps = (SwDataDefProps)theEObject;
                T result = this.caseSwDataDefProps(swDataDefProps);
                if (result == null) {
                    result = this.caseARObject(swDataDefProps);
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

    public T caseValueList(ValueList object) {
        return null;
    }

    public T caseSwBitRepresentation(SwBitRepresentation object) {
        return null;
    }

    public T caseSwDataDependency(SwDataDependency object) {
        return null;
    }

    public T caseSwDataDependencyArgs(SwDataDependencyArgs object) {
        return null;
    }

    public T caseSwPointerTargetProps(SwPointerTargetProps object) {
        return null;
    }

    public T caseSwTextProps(SwTextProps object) {
        return null;
    }

    public T caseSwDataDefPropsContent(SwDataDefPropsContent object) {
        return null;
    }

    public T caseSwDataDefPropsConditional(SwDataDefPropsConditional object) {
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

