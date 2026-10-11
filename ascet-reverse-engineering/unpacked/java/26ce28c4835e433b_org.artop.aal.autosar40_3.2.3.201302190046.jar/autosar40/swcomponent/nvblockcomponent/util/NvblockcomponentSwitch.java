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
package autosar40.swcomponent.nvblockcomponent.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NvblockcomponentSwitch<T> {
    protected static NvblockcomponentPackage modelPackage;

    public NvblockcomponentSwitch() {
        if (modelPackage == null) {
            modelPackage = NvblockcomponentPackage.eINSTANCE;
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
                NvBlockDataMapping nvBlockDataMapping = (NvBlockDataMapping)theEObject;
                T result = this.caseNvBlockDataMapping(nvBlockDataMapping);
                if (result == null) {
                    result = this.caseARObject(nvBlockDataMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(nvBlockDataMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                NvBlockDescriptor nvBlockDescriptor = (NvBlockDescriptor)theEObject;
                T result = this.caseNvBlockDescriptor(nvBlockDescriptor);
                if (result == null) {
                    result = this.caseIdentifiable(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.caseReferrable(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.caseARObject(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.caseGReferrable(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.caseGARObject(nvBlockDescriptor);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseNvBlockDataMapping(NvBlockDataMapping object) {
        return null;
    }

    public T caseNvBlockDescriptor(NvBlockDescriptor object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

