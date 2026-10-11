/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.implementation.util;

import autosar40.commonstructure.implementation.Code;
import autosar40.commonstructure.implementation.Compiler;
import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.implementation.Implementation;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementation.ImplementationProps;
import autosar40.commonstructure.implementation.Linker;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GImplementation;
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
public class ImplementationSwitch<T> {
    protected static ImplementationPackage modelPackage;

    public ImplementationSwitch() {
        if (modelPackage == null) {
            modelPackage = ImplementationPackage.eINSTANCE;
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
                Code code = (Code)theEObject;
                T result = this.caseCode(code);
                if (result == null) {
                    result = this.caseIdentifiable(code);
                }
                if (result == null) {
                    result = this.caseGCode(code);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(code);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(code);
                }
                if (result == null) {
                    result = this.caseReferrable(code);
                }
                if (result == null) {
                    result = this.caseARObject(code);
                }
                if (result == null) {
                    result = this.caseGReferrable(code);
                }
                if (result == null) {
                    result = this.caseGARObject(code);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Compiler compiler = (Compiler)theEObject;
                T result = this.caseCompiler(compiler);
                if (result == null) {
                    result = this.caseIdentifiable(compiler);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(compiler);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(compiler);
                }
                if (result == null) {
                    result = this.caseReferrable(compiler);
                }
                if (result == null) {
                    result = this.caseARObject(compiler);
                }
                if (result == null) {
                    result = this.caseGReferrable(compiler);
                }
                if (result == null) {
                    result = this.caseGARObject(compiler);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DependencyOnArtifact dependencyOnArtifact = (DependencyOnArtifact)theEObject;
                T result = this.caseDependencyOnArtifact(dependencyOnArtifact);
                if (result == null) {
                    result = this.caseIdentifiable(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.caseReferrable(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.caseARObject(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.caseGReferrable(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.caseGARObject(dependencyOnArtifact);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Implementation implementation = (Implementation)theEObject;
                T result = this.caseImplementation(implementation);
                if (result == null) {
                    result = this.caseARElement(implementation);
                }
                if (result == null) {
                    result = this.caseGImplementation(implementation);
                }
                if (result == null) {
                    result = this.casePackageableElement(implementation);
                }
                if (result == null) {
                    result = this.caseCollectableElement(implementation);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(implementation);
                }
                if (result == null) {
                    result = this.caseIdentifiable(implementation);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(implementation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(implementation);
                }
                if (result == null) {
                    result = this.caseReferrable(implementation);
                }
                if (result == null) {
                    result = this.caseARObject(implementation);
                }
                if (result == null) {
                    result = this.caseGReferrable(implementation);
                }
                if (result == null) {
                    result = this.caseGARObject(implementation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                Linker linker = (Linker)theEObject;
                T result = this.caseLinker(linker);
                if (result == null) {
                    result = this.caseIdentifiable(linker);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linker);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linker);
                }
                if (result == null) {
                    result = this.caseReferrable(linker);
                }
                if (result == null) {
                    result = this.caseARObject(linker);
                }
                if (result == null) {
                    result = this.caseGReferrable(linker);
                }
                if (result == null) {
                    result = this.caseGARObject(linker);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ImplementationProps implementationProps = (ImplementationProps)theEObject;
                T result = this.caseImplementationProps(implementationProps);
                if (result == null) {
                    result = this.caseReferrable(implementationProps);
                }
                if (result == null) {
                    result = this.caseARObject(implementationProps);
                }
                if (result == null) {
                    result = this.caseGReferrable(implementationProps);
                }
                if (result == null) {
                    result = this.caseGARObject(implementationProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCode(Code object) {
        return null;
    }

    public T caseCompiler(Compiler object) {
        return null;
    }

    public T caseDependencyOnArtifact(DependencyOnArtifact object) {
        return null;
    }

    public T caseImplementation(Implementation object) {
        return null;
    }

    public T caseLinker(Linker object) {
        return null;
    }

    public T caseImplementationProps(ImplementationProps object) {
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

    public T caseGCode(GCode object) {
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

    public T caseGImplementation(GImplementation object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

