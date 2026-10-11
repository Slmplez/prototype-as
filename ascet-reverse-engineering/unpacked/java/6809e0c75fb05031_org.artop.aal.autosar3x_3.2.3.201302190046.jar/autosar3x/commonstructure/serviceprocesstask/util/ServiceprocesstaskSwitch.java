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
package autosar3x.commonstructure.serviceprocesstask.util;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImpl;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
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
public class ServiceprocesstaskSwitch<T> {
    protected static ServiceprocesstaskPackage modelPackage;

    public ServiceprocesstaskSwitch() {
        if (modelPackage == null) {
            modelPackage = ServiceprocesstaskPackage.eINSTANCE;
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
                SwService swService = (SwService)theEObject;
                T result = this.caseSwService(swService);
                if (result == null) {
                    result = this.caseARElement(swService);
                }
                if (result == null) {
                    result = this.casePackageableElement(swService);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swService);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swService);
                }
                if (result == null) {
                    result = this.caseARObject(swService);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swService);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swService);
                }
                if (result == null) {
                    result = this.caseGARObject(swService);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwServiceArg swServiceArg = (SwServiceArg)theEObject;
                T result = this.caseSwServiceArg(swServiceArg);
                if (result == null) {
                    result = this.caseIdentifiable(swServiceArg);
                }
                if (result == null) {
                    result = this.caseARObject(swServiceArg);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swServiceArg);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swServiceArg);
                }
                if (result == null) {
                    result = this.caseGARObject(swServiceArg);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwServiceProps swServiceProps = (SwServiceProps)theEObject;
                T result = this.caseSwServiceProps(swServiceProps);
                if (result == null) {
                    result = this.caseARObject(swServiceProps);
                }
                if (result == null) {
                    result = this.caseGARObject(swServiceProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwServiceAccessedElementSet swServiceAccessedElementSet = (SwServiceAccessedElementSet)theEObject;
                T result = this.caseSwServiceAccessedElementSet(swServiceAccessedElementSet);
                if (result == null) {
                    result = this.caseARObject(swServiceAccessedElementSet);
                }
                if (result == null) {
                    result = this.caseGARObject(swServiceAccessedElementSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwServiceImpl swServiceImpl = (SwServiceImpl)theEObject;
                T result = this.caseSwServiceImpl(swServiceImpl);
                if (result == null) {
                    result = this.caseARObject(swServiceImpl);
                }
                if (result == null) {
                    result = this.caseGARObject(swServiceImpl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwService(SwService object) {
        return null;
    }

    public T caseSwServiceArg(SwServiceArg object) {
        return null;
    }

    public T caseSwServiceProps(SwServiceProps object) {
        return null;
    }

    public T caseSwServiceAccessedElementSet(SwServiceAccessedElementSet object) {
        return null;
    }

    public T caseSwServiceImpl(SwServiceImpl object) {
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

