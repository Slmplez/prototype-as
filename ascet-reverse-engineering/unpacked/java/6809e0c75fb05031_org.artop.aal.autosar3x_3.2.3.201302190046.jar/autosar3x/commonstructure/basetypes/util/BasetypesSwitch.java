/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 *  gautosar.gcommonstructure.gbasetypes.GSwBaseType
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.basetypes.util;

import autosar3x.commonstructure.basetypes.BaseType;
import autosar3x.commonstructure.basetypes.BaseTypeAbsSize;
import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeIndirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeMaxSize;
import autosar3x.commonstructure.basetypes.BaseTypeSizeDefinition;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasetypesSwitch<T> {
    protected static BasetypesPackage modelPackage;

    public BasetypesSwitch() {
        if (modelPackage == null) {
            modelPackage = BasetypesPackage.eINSTANCE;
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
                BaseType baseType = (BaseType)theEObject;
                T result = this.caseBaseType(baseType);
                if (result == null) {
                    result = this.caseARElement(baseType);
                }
                if (result == null) {
                    result = this.caseGBaseType(baseType);
                }
                if (result == null) {
                    result = this.casePackageableElement(baseType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(baseType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(baseType);
                }
                if (result == null) {
                    result = this.caseARObject(baseType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(baseType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)baseType);
                }
                if (result == null) {
                    result = this.caseGARObject(baseType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                BaseTypeDefinition baseTypeDefinition = (BaseTypeDefinition)theEObject;
                T result = this.caseBaseTypeDefinition(baseTypeDefinition);
                if (result == null) {
                    result = this.caseARObject(baseTypeDefinition);
                }
                if (result == null) {
                    result = this.caseGBaseTypeDefinition(baseTypeDefinition);
                }
                if (result == null) {
                    result = this.caseGARObject(baseTypeDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BaseTypeAbsSize baseTypeAbsSize = (BaseTypeAbsSize)theEObject;
                T result = this.caseBaseTypeAbsSize(baseTypeAbsSize);
                if (result == null) {
                    result = this.caseBaseTypeSizeDefinition(baseTypeAbsSize);
                }
                if (result == null) {
                    result = this.caseGBaseTypeAbsSize(baseTypeAbsSize);
                }
                if (result == null) {
                    result = this.caseARObject(baseTypeAbsSize);
                }
                if (result == null) {
                    result = this.caseGBaseTypeSizeDefinition(baseTypeAbsSize);
                }
                if (result == null) {
                    result = this.caseGARObject(baseTypeAbsSize);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                BaseTypeSizeDefinition baseTypeSizeDefinition = (BaseTypeSizeDefinition)theEObject;
                T result = this.caseBaseTypeSizeDefinition(baseTypeSizeDefinition);
                if (result == null) {
                    result = this.caseARObject(baseTypeSizeDefinition);
                }
                if (result == null) {
                    result = this.caseGBaseTypeSizeDefinition(baseTypeSizeDefinition);
                }
                if (result == null) {
                    result = this.caseGARObject(baseTypeSizeDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                BaseTypeDirectDefinition baseTypeDirectDefinition = (BaseTypeDirectDefinition)theEObject;
                T result = this.caseBaseTypeDirectDefinition(baseTypeDirectDefinition);
                if (result == null) {
                    result = this.caseBaseTypeDefinition(baseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.caseGBaseTypeDirectDefinition(baseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.caseARObject(baseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.caseGBaseTypeDefinition(baseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.caseGARObject(baseTypeDirectDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                BaseTypeIndirectDefinition baseTypeIndirectDefinition = (BaseTypeIndirectDefinition)theEObject;
                T result = this.caseBaseTypeIndirectDefinition(baseTypeIndirectDefinition);
                if (result == null) {
                    result = this.caseBaseTypeDefinition(baseTypeIndirectDefinition);
                }
                if (result == null) {
                    result = this.caseARObject(baseTypeIndirectDefinition);
                }
                if (result == null) {
                    result = this.caseGBaseTypeDefinition(baseTypeIndirectDefinition);
                }
                if (result == null) {
                    result = this.caseGARObject(baseTypeIndirectDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                BaseTypeMaxSize baseTypeMaxSize = (BaseTypeMaxSize)theEObject;
                T result = this.caseBaseTypeMaxSize(baseTypeMaxSize);
                if (result == null) {
                    result = this.caseBaseTypeSizeDefinition(baseTypeMaxSize);
                }
                if (result == null) {
                    result = this.caseGBaseTypeMaxSize(baseTypeMaxSize);
                }
                if (result == null) {
                    result = this.caseARObject(baseTypeMaxSize);
                }
                if (result == null) {
                    result = this.caseGBaseTypeSizeDefinition(baseTypeMaxSize);
                }
                if (result == null) {
                    result = this.caseGARObject(baseTypeMaxSize);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SwBaseType swBaseType = (SwBaseType)theEObject;
                T result = this.caseSwBaseType(swBaseType);
                if (result == null) {
                    result = this.caseBaseType(swBaseType);
                }
                if (result == null) {
                    result = this.caseGSwBaseType(swBaseType);
                }
                if (result == null) {
                    result = this.caseARElement(swBaseType);
                }
                if (result == null) {
                    result = this.caseGBaseType(swBaseType);
                }
                if (result == null) {
                    result = this.casePackageableElement(swBaseType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swBaseType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swBaseType);
                }
                if (result == null) {
                    result = this.caseARObject(swBaseType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swBaseType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swBaseType);
                }
                if (result == null) {
                    result = this.caseGARObject(swBaseType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBaseType(BaseType object) {
        return null;
    }

    public T caseBaseTypeDefinition(BaseTypeDefinition object) {
        return null;
    }

    public T caseBaseTypeAbsSize(BaseTypeAbsSize object) {
        return null;
    }

    public T caseBaseTypeSizeDefinition(BaseTypeSizeDefinition object) {
        return null;
    }

    public T caseBaseTypeDirectDefinition(BaseTypeDirectDefinition object) {
        return null;
    }

    public T caseBaseTypeIndirectDefinition(BaseTypeIndirectDefinition object) {
        return null;
    }

    public T caseBaseTypeMaxSize(BaseTypeMaxSize object) {
        return null;
    }

    public T caseSwBaseType(SwBaseType object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseGBaseType(GBaseType object) {
        return null;
    }

    public T caseGBaseTypeDefinition(GBaseTypeDefinition object) {
        return null;
    }

    public T caseGBaseTypeSizeDefinition(GBaseTypeSizeDefinition object) {
        return null;
    }

    public T caseGBaseTypeAbsSize(GBaseTypeAbsSize object) {
        return null;
    }

    public T caseGBaseTypeDirectDefinition(GBaseTypeDirectDefinition object) {
        return null;
    }

    public T caseGBaseTypeMaxSize(GBaseTypeMaxSize object) {
        return null;
    }

    public T caseGSwBaseType(GSwBaseType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

