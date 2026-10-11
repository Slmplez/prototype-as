/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.flatmap.util;

import autosar40.commonstructure.flatmap.AliasNameAssignment;
import autosar40.commonstructure.flatmap.AliasNameSet;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
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
public class FlatmapSwitch<T> {
    protected static FlatmapPackage modelPackage;

    public FlatmapSwitch() {
        if (modelPackage == null) {
            modelPackage = FlatmapPackage.eINSTANCE;
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
                AliasNameAssignment aliasNameAssignment = (AliasNameAssignment)theEObject;
                T result = this.caseAliasNameAssignment(aliasNameAssignment);
                if (result == null) {
                    result = this.caseARObject(aliasNameAssignment);
                }
                if (result == null) {
                    result = this.caseGARObject(aliasNameAssignment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FlatInstanceDescriptor flatInstanceDescriptor = (FlatInstanceDescriptor)theEObject;
                T result = this.caseFlatInstanceDescriptor(flatInstanceDescriptor);
                if (result == null) {
                    result = this.caseIdentifiable(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.caseReferrable(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.caseARObject(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.caseGReferrable(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.caseGARObject(flatInstanceDescriptor);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FlatMap flatMap = (FlatMap)theEObject;
                T result = this.caseFlatMap(flatMap);
                if (result == null) {
                    result = this.caseARElement(flatMap);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(flatMap);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(flatMap);
                }
                if (result == null) {
                    result = this.casePackageableElement(flatMap);
                }
                if (result == null) {
                    result = this.caseCollectableElement(flatMap);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(flatMap);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flatMap);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flatMap);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flatMap);
                }
                if (result == null) {
                    result = this.caseReferrable(flatMap);
                }
                if (result == null) {
                    result = this.caseARObject(flatMap);
                }
                if (result == null) {
                    result = this.caseGReferrable(flatMap);
                }
                if (result == null) {
                    result = this.caseGARObject(flatMap);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                AliasNameSet aliasNameSet = (AliasNameSet)theEObject;
                T result = this.caseAliasNameSet(aliasNameSet);
                if (result == null) {
                    result = this.caseARElement(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(aliasNameSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseReferrable(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseARObject(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(aliasNameSet);
                }
                if (result == null) {
                    result = this.caseGARObject(aliasNameSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAliasNameAssignment(AliasNameAssignment object) {
        return null;
    }

    public T caseFlatInstanceDescriptor(FlatInstanceDescriptor object) {
        return null;
    }

    public T caseFlatMap(FlatMap object) {
        return null;
    }

    public T caseAliasNameSet(AliasNameSet object) {
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

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

