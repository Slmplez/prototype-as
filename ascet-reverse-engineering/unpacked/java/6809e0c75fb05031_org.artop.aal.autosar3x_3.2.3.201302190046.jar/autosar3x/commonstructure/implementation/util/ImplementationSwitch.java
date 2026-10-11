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
package autosar3x.commonstructure.implementation.util;

import autosar3x.commonstructure.implementation.Code;
import autosar3x.commonstructure.implementation.Compiler;
import autosar3x.commonstructure.implementation.Dependency;
import autosar3x.commonstructure.implementation.DependencyOnFile;
import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
                    result = this.caseARObject(code);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(code);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)code);
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
                XfileSo xfileSo = (XfileSo)theEObject;
                T result = this.caseXfileSo(xfileSo);
                if (result == null) {
                    result = this.caseIdentifiable(xfileSo);
                }
                if (result == null) {
                    result = this.caseARObject(xfileSo);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(xfileSo);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)xfileSo);
                }
                if (result == null) {
                    result = this.caseGARObject(xfileSo);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Compiler compiler = (Compiler)theEObject;
                T result = this.caseCompiler(compiler);
                if (result == null) {
                    result = this.caseIdentifiable(compiler);
                }
                if (result == null) {
                    result = this.caseARObject(compiler);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(compiler);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)compiler);
                }
                if (result == null) {
                    result = this.caseGARObject(compiler);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Dependency dependency = (Dependency)theEObject;
                T result = this.caseDependency(dependency);
                if (result == null) {
                    result = this.caseIdentifiable(dependency);
                }
                if (result == null) {
                    result = this.caseARObject(dependency);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dependency);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dependency);
                }
                if (result == null) {
                    result = this.caseGARObject(dependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DependencyOnFile dependencyOnFile = (DependencyOnFile)theEObject;
                T result = this.caseDependencyOnFile(dependencyOnFile);
                if (result == null) {
                    result = this.caseDependency(dependencyOnFile);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dependencyOnFile);
                }
                if (result == null) {
                    result = this.caseARObject(dependencyOnFile);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dependencyOnFile);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dependencyOnFile);
                }
                if (result == null) {
                    result = this.caseGARObject(dependencyOnFile);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                DependencyOnLibrary dependencyOnLibrary = (DependencyOnLibrary)theEObject;
                T result = this.caseDependencyOnLibrary(dependencyOnLibrary);
                if (result == null) {
                    result = this.caseDependencyOnFile(dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.caseDependency(dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.caseARObject(dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.caseGARObject(dependencyOnLibrary);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
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
                    result = this.caseIdentifiable(implementation);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(implementation);
                }
                if (result == null) {
                    result = this.caseARObject(implementation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(implementation);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)implementation);
                }
                if (result == null) {
                    result = this.caseGARObject(implementation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                Linker linker = (Linker)theEObject;
                T result = this.caseLinker(linker);
                if (result == null) {
                    result = this.caseIdentifiable(linker);
                }
                if (result == null) {
                    result = this.caseARObject(linker);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linker);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linker);
                }
                if (result == null) {
                    result = this.caseGARObject(linker);
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

    public T caseXfileSo(XfileSo object) {
        return null;
    }

    public T caseCompiler(Compiler object) {
        return null;
    }

    public T caseDependency(Dependency object) {
        return null;
    }

    public T caseDependencyOnFile(DependencyOnFile object) {
        return null;
    }

    public T caseDependencyOnLibrary(DependencyOnLibrary object) {
        return null;
    }

    public T caseImplementation(Implementation object) {
        return null;
    }

    public T caseLinker(Linker object) {
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

    public T caseGCode(GCode object) {
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

