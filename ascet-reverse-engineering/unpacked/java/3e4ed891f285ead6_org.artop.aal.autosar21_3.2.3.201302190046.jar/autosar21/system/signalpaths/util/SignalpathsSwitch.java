/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.signalpaths.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.signalpaths.CommonSignalPath;
import autosar21.system.signalpaths.ForbiddenSignalPath;
import autosar21.system.signalpaths.PermissibleSignalPath;
import autosar21.system.signalpaths.SeparateSignalPath;
import autosar21.system.signalpaths.SignalPathConstraint;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.SwcToSwcOperationArguments;
import autosar21.system.signalpaths.SwcToSwcSignal;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignalpathsSwitch<T> {
    protected static SignalpathsPackage modelPackage;

    public SignalpathsSwitch() {
        if (modelPackage == null) {
            modelPackage = SignalpathsPackage.eINSTANCE;
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
                CommonSignalPath commonSignalPath = (CommonSignalPath)theEObject;
                T result = this.caseCommonSignalPath(commonSignalPath);
                if (result == null) {
                    result = this.caseSignalPathConstraint(commonSignalPath);
                }
                if (result == null) {
                    result = this.caseARObject(commonSignalPath);
                }
                if (result == null) {
                    result = this.caseGARObject(commonSignalPath);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwcToSwcOperationArguments swcToSwcOperationArguments = (SwcToSwcOperationArguments)theEObject;
                T result = this.caseSwcToSwcOperationArguments(swcToSwcOperationArguments);
                if (result == null) {
                    result = this.caseARObject(swcToSwcOperationArguments);
                }
                if (result == null) {
                    result = this.caseGARObject(swcToSwcOperationArguments);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwcToSwcSignal swcToSwcSignal = (SwcToSwcSignal)theEObject;
                T result = this.caseSwcToSwcSignal(swcToSwcSignal);
                if (result == null) {
                    result = this.caseARObject(swcToSwcSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(swcToSwcSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ForbiddenSignalPath forbiddenSignalPath = (ForbiddenSignalPath)theEObject;
                T result = this.caseForbiddenSignalPath(forbiddenSignalPath);
                if (result == null) {
                    result = this.caseSignalPathConstraint(forbiddenSignalPath);
                }
                if (result == null) {
                    result = this.caseARObject(forbiddenSignalPath);
                }
                if (result == null) {
                    result = this.caseGARObject(forbiddenSignalPath);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                PermissibleSignalPath permissibleSignalPath = (PermissibleSignalPath)theEObject;
                T result = this.casePermissibleSignalPath(permissibleSignalPath);
                if (result == null) {
                    result = this.caseSignalPathConstraint(permissibleSignalPath);
                }
                if (result == null) {
                    result = this.caseARObject(permissibleSignalPath);
                }
                if (result == null) {
                    result = this.caseGARObject(permissibleSignalPath);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SeparateSignalPath separateSignalPath = (SeparateSignalPath)theEObject;
                T result = this.caseSeparateSignalPath(separateSignalPath);
                if (result == null) {
                    result = this.caseSignalPathConstraint(separateSignalPath);
                }
                if (result == null) {
                    result = this.caseARObject(separateSignalPath);
                }
                if (result == null) {
                    result = this.caseGARObject(separateSignalPath);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SignalPathConstraint signalPathConstraint = (SignalPathConstraint)theEObject;
                T result = this.caseSignalPathConstraint(signalPathConstraint);
                if (result == null) {
                    result = this.caseARObject(signalPathConstraint);
                }
                if (result == null) {
                    result = this.caseGARObject(signalPathConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommonSignalPath(CommonSignalPath object) {
        return null;
    }

    public T caseSwcToSwcOperationArguments(SwcToSwcOperationArguments object) {
        return null;
    }

    public T caseSwcToSwcSignal(SwcToSwcSignal object) {
        return null;
    }

    public T caseForbiddenSignalPath(ForbiddenSignalPath object) {
        return null;
    }

    public T casePermissibleSignalPath(PermissibleSignalPath object) {
        return null;
    }

    public T caseSeparateSignalPath(SeparateSignalPath object) {
        return null;
    }

    public T caseSignalPathConstraint(SignalPathConstraint object) {
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

