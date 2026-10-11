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
package autosar40.system.fibex.fibex4multiplatform.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.FrameMapping;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.ISignalMapping;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar40.system.fibex.fibexcore.FibexElement;
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
public class Fibex4multiplatformSwitch<T> {
    protected static Fibex4multiplatformPackage modelPackage;

    public Fibex4multiplatformSwitch() {
        if (modelPackage == null) {
            modelPackage = Fibex4multiplatformPackage.eINSTANCE;
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
                DefaultValueElement defaultValueElement = (DefaultValueElement)theEObject;
                T result = this.caseDefaultValueElement(defaultValueElement);
                if (result == null) {
                    result = this.caseARObject(defaultValueElement);
                }
                if (result == null) {
                    result = this.caseGARObject(defaultValueElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FrameMapping frameMapping = (FrameMapping)theEObject;
                T result = this.caseFrameMapping(frameMapping);
                if (result == null) {
                    result = this.caseARObject(frameMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(frameMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Gateway gateway = (Gateway)theEObject;
                T result = this.caseGateway(gateway);
                if (result == null) {
                    result = this.caseFibexElement(gateway);
                }
                if (result == null) {
                    result = this.casePackageableElement(gateway);
                }
                if (result == null) {
                    result = this.caseCollectableElement(gateway);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gateway);
                }
                if (result == null) {
                    result = this.caseIdentifiable(gateway);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(gateway);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gateway);
                }
                if (result == null) {
                    result = this.caseReferrable(gateway);
                }
                if (result == null) {
                    result = this.caseARObject(gateway);
                }
                if (result == null) {
                    result = this.caseGReferrable(gateway);
                }
                if (result == null) {
                    result = this.caseGARObject(gateway);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ISignalMapping iSignalMapping = (ISignalMapping)theEObject;
                T result = this.caseISignalMapping(iSignalMapping);
                if (result == null) {
                    result = this.caseARObject(iSignalMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                IPduMapping iPduMapping = (IPduMapping)theEObject;
                T result = this.caseIPduMapping(iPduMapping);
                if (result == null) {
                    result = this.caseARObject(iPduMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(iPduMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TargetIPduRef targetIPduRef = (TargetIPduRef)theEObject;
                T result = this.caseTargetIPduRef(targetIPduRef);
                if (result == null) {
                    result = this.caseARObject(targetIPduRef);
                }
                if (result == null) {
                    result = this.caseGARObject(targetIPduRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PduMappingDefaultValue pduMappingDefaultValue = (PduMappingDefaultValue)theEObject;
                T result = this.casePduMappingDefaultValue(pduMappingDefaultValue);
                if (result == null) {
                    result = this.caseARObject(pduMappingDefaultValue);
                }
                if (result == null) {
                    result = this.caseGARObject(pduMappingDefaultValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDefaultValueElement(DefaultValueElement object) {
        return null;
    }

    public T caseFrameMapping(FrameMapping object) {
        return null;
    }

    public T caseGateway(Gateway object) {
        return null;
    }

    public T caseISignalMapping(ISignalMapping object) {
        return null;
    }

    public T caseIPduMapping(IPduMapping object) {
        return null;
    }

    public T caseTargetIPduRef(TargetIPduRef object) {
        return null;
    }

    public T casePduMappingDefaultValue(PduMappingDefaultValue object) {
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

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

