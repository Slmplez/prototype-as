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
package autosar21.genericstructure.infrastructure.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.SplitableElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
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
public class InfrastructureSwitch<T> {
    protected static InfrastructurePackage modelPackage;

    public InfrastructureSwitch() {
        if (modelPackage == null) {
            modelPackage = InfrastructurePackage.eINSTANCE;
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
                NonSplitableElement nonSplitableElement = (NonSplitableElement)theEObject;
                T result = this.caseNonSplitableElement(nonSplitableElement);
                if (result == null) {
                    result = this.casePackageableElement(nonSplitableElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nonSplitableElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nonSplitableElement);
                }
                if (result == null) {
                    result = this.caseARObject(nonSplitableElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nonSplitableElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)nonSplitableElement);
                }
                if (result == null) {
                    result = this.caseGARObject(nonSplitableElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PackageableElement packageableElement = (PackageableElement)theEObject;
                T result = this.casePackageableElement(packageableElement);
                if (result == null) {
                    result = this.caseIdentifiable(packageableElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(packageableElement);
                }
                if (result == null) {
                    result = this.caseARObject(packageableElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(packageableElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)packageableElement);
                }
                if (result == null) {
                    result = this.caseGARObject(packageableElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ARObject arObject = (ARObject)theEObject;
                T result = this.caseARObject(arObject);
                if (result == null) {
                    result = this.caseGARObject(arObject);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SplitableElement splitableElement = (SplitableElement)theEObject;
                T result = this.caseSplitableElement(splitableElement);
                if (result == null) {
                    result = this.casePackageableElement(splitableElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(splitableElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(splitableElement);
                }
                if (result == null) {
                    result = this.caseARObject(splitableElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(splitableElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)splitableElement);
                }
                if (result == null) {
                    result = this.caseGARObject(splitableElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseSplitableElement(SplitableElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

