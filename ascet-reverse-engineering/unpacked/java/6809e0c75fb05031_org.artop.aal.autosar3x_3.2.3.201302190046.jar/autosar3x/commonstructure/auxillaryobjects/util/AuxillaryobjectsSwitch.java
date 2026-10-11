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
package autosar3x.commonstructure.auxillaryobjects.util;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.auxillaryobjects.SwCodeSyntax;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.commonstructure.auxillaryobjects.SwRelatedConstrs;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
public class AuxillaryobjectsSwitch<T> {
    protected static AuxillaryobjectsPackage modelPackage;

    public AuxillaryobjectsSwitch() {
        if (modelPackage == null) {
            modelPackage = AuxillaryobjectsPackage.eINSTANCE;
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
                SwCodeSyntax swCodeSyntax = (SwCodeSyntax)theEObject;
                T result = this.caseSwCodeSyntax(swCodeSyntax);
                if (result == null) {
                    result = this.caseARElement(swCodeSyntax);
                }
                if (result == null) {
                    result = this.casePackageableElement(swCodeSyntax);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swCodeSyntax);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swCodeSyntax);
                }
                if (result == null) {
                    result = this.caseARObject(swCodeSyntax);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swCodeSyntax);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swCodeSyntax);
                }
                if (result == null) {
                    result = this.caseGARObject(swCodeSyntax);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwRecordLayout swRecordLayout = (SwRecordLayout)theEObject;
                T result = this.caseSwRecordLayout(swRecordLayout);
                if (result == null) {
                    result = this.caseARElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.casePackageableElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseARObject(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGARObject(swRecordLayout);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwRecordLayoutGroup swRecordLayoutGroup = (SwRecordLayoutGroup)theEObject;
                T result = this.caseSwRecordLayoutGroup(swRecordLayoutGroup);
                if (result == null) {
                    result = this.caseARObject(swRecordLayoutGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(swRecordLayoutGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwRelatedConstrs swRelatedConstrs = (SwRelatedConstrs)theEObject;
                T result = this.caseSwRelatedConstrs(swRelatedConstrs);
                if (result == null) {
                    result = this.caseARObject(swRelatedConstrs);
                }
                if (result == null) {
                    result = this.caseGARObject(swRelatedConstrs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwRecordLayoutGroupContent swRecordLayoutGroupContent = (SwRecordLayoutGroupContent)theEObject;
                T result = this.caseSwRecordLayoutGroupContent(swRecordLayoutGroupContent);
                if (result == null) {
                    result = this.caseARObject(swRecordLayoutGroupContent);
                }
                if (result == null) {
                    result = this.caseGARObject(swRecordLayoutGroupContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwRecordLayoutV swRecordLayoutV = (SwRecordLayoutV)theEObject;
                T result = this.caseSwRecordLayoutV(swRecordLayoutV);
                if (result == null) {
                    result = this.caseARObject(swRecordLayoutV);
                }
                if (result == null) {
                    result = this.caseGARObject(swRecordLayoutV);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SwAddrMethod swAddrMethod = (SwAddrMethod)theEObject;
                T result = this.caseSwAddrMethod(swAddrMethod);
                if (result == null) {
                    result = this.caseARElement(swAddrMethod);
                }
                if (result == null) {
                    result = this.casePackageableElement(swAddrMethod);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swAddrMethod);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swAddrMethod);
                }
                if (result == null) {
                    result = this.caseARObject(swAddrMethod);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swAddrMethod);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swAddrMethod);
                }
                if (result == null) {
                    result = this.caseGARObject(swAddrMethod);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwCodeSyntax(SwCodeSyntax object) {
        return null;
    }

    public T caseSwRecordLayout(SwRecordLayout object) {
        return null;
    }

    public T caseSwRecordLayoutGroup(SwRecordLayoutGroup object) {
        return null;
    }

    public T caseSwRelatedConstrs(SwRelatedConstrs object) {
        return null;
    }

    public T caseSwRecordLayoutGroupContent(SwRecordLayoutGroupContent object) {
        return null;
    }

    public T caseSwRecordLayoutV(SwRecordLayoutV object) {
        return null;
    }

    public T caseSwAddrMethod(SwAddrMethod object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

