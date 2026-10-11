/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.resourceconsumption.memorysectionusage.util;

import autosar40.commonstructure.implementation.ImplementationProps;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MemorysectionusageSwitch<T> {
    protected static MemorysectionusagePackage modelPackage;

    public MemorysectionusageSwitch() {
        if (modelPackage == null) {
            modelPackage = MemorysectionusagePackage.eINSTANCE;
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
                MemorySection memorySection = (MemorySection)theEObject;
                T result = this.caseMemorySection(memorySection);
                if (result == null) {
                    result = this.caseIdentifiable(memorySection);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(memorySection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(memorySection);
                }
                if (result == null) {
                    result = this.caseReferrable(memorySection);
                }
                if (result == null) {
                    result = this.caseARObject(memorySection);
                }
                if (result == null) {
                    result = this.caseGReferrable(memorySection);
                }
                if (result == null) {
                    result = this.caseGARObject(memorySection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SectionNamePrefix sectionNamePrefix = (SectionNamePrefix)theEObject;
                T result = this.caseSectionNamePrefix(sectionNamePrefix);
                if (result == null) {
                    result = this.caseImplementationProps(sectionNamePrefix);
                }
                if (result == null) {
                    result = this.caseReferrable(sectionNamePrefix);
                }
                if (result == null) {
                    result = this.caseARObject(sectionNamePrefix);
                }
                if (result == null) {
                    result = this.caseGReferrable(sectionNamePrefix);
                }
                if (result == null) {
                    result = this.caseGARObject(sectionNamePrefix);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMemorySection(MemorySection object) {
        return null;
    }

    public T caseSectionNamePrefix(SectionNamePrefix object) {
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

    public T caseImplementationProps(ImplementationProps object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

