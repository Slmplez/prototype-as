/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gbasetypes.util;

import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GbasetypesSwitch<T> {
    protected static GbasetypesPackage modelPackage;

    public GbasetypesSwitch() {
        if (modelPackage == null) {
            modelPackage = GbasetypesPackage.eINSTANCE;
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
                GBaseType gBaseType = (GBaseType)theEObject;
                T result = this.caseGBaseType(gBaseType);
                if (result == null) {
                    result = this.caseGARObject(gBaseType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GBaseTypeDefinition gBaseTypeDefinition = (GBaseTypeDefinition)theEObject;
                T result = this.caseGBaseTypeDefinition(gBaseTypeDefinition);
                if (result == null) {
                    result = this.caseGARObject(gBaseTypeDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GBaseTypeDirectDefinition gBaseTypeDirectDefinition = (GBaseTypeDirectDefinition)theEObject;
                T result = this.caseGBaseTypeDirectDefinition(gBaseTypeDirectDefinition);
                if (result == null) {
                    result = this.caseGBaseTypeDefinition(gBaseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.caseGARObject(gBaseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GBaseTypeSizeDefinition gBaseTypeSizeDefinition = (GBaseTypeSizeDefinition)theEObject;
                T result = this.caseGBaseTypeSizeDefinition(gBaseTypeSizeDefinition);
                if (result == null) {
                    result = this.caseGARObject(gBaseTypeSizeDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GBaseTypeAbsSize gBaseTypeAbsSize = (GBaseTypeAbsSize)theEObject;
                T result = this.caseGBaseTypeAbsSize(gBaseTypeAbsSize);
                if (result == null) {
                    result = this.caseGBaseTypeSizeDefinition(gBaseTypeAbsSize);
                }
                if (result == null) {
                    result = this.caseGARObject(gBaseTypeAbsSize);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GBaseTypeMaxSize gBaseTypeMaxSize = (GBaseTypeMaxSize)theEObject;
                T result = this.caseGBaseTypeMaxSize(gBaseTypeMaxSize);
                if (result == null) {
                    result = this.caseGBaseTypeSizeDefinition(gBaseTypeMaxSize);
                }
                if (result == null) {
                    result = this.caseGARObject(gBaseTypeMaxSize);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GSwBaseType gSwBaseType = (GSwBaseType)theEObject;
                T result = this.caseGSwBaseType(gSwBaseType);
                if (result == null) {
                    result = this.caseGBaseType(gSwBaseType);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwBaseType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGBaseType(GBaseType object) {
        return null;
    }

    public T caseGBaseTypeDefinition(GBaseTypeDefinition object) {
        return null;
    }

    public T caseGBaseTypeDirectDefinition(GBaseTypeDirectDefinition object) {
        return null;
    }

    public T caseGBaseTypeSizeDefinition(GBaseTypeSizeDefinition object) {
        return null;
    }

    public T caseGBaseTypeAbsSize(GBaseTypeAbsSize object) {
        return null;
    }

    public T caseGBaseTypeMaxSize(GBaseTypeMaxSize object) {
        return null;
    }

    public T caseGSwBaseType(GSwBaseType object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

