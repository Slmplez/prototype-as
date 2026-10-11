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
package autosar40.commonstructure.timing.util;

import autosar40.commonstructure.timing.BswModuleTiming;
import autosar40.commonstructure.timing.EcuTiming;
import autosar40.commonstructure.timing.SwcTiming;
import autosar40.commonstructure.timing.SystemTiming;
import autosar40.commonstructure.timing.TimingExtension;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.VfbTiming;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
public class TimingSwitch<T> {
    protected static TimingPackage modelPackage;

    public TimingSwitch() {
        if (modelPackage == null) {
            modelPackage = TimingPackage.eINSTANCE;
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
                BswModuleTiming bswModuleTiming = (BswModuleTiming)theEObject;
                T result = this.caseBswModuleTiming(bswModuleTiming);
                if (result == null) {
                    result = this.caseTimingExtension(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseARElement(bswModuleTiming);
                }
                if (result == null) {
                    result = this.casePackageableElement(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseCollectableElement(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseARObject(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModuleTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TimingExtension timingExtension = (TimingExtension)theEObject;
                T result = this.caseTimingExtension(timingExtension);
                if (result == null) {
                    result = this.caseARElement(timingExtension);
                }
                if (result == null) {
                    result = this.casePackageableElement(timingExtension);
                }
                if (result == null) {
                    result = this.caseCollectableElement(timingExtension);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(timingExtension);
                }
                if (result == null) {
                    result = this.caseIdentifiable(timingExtension);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(timingExtension);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timingExtension);
                }
                if (result == null) {
                    result = this.caseReferrable(timingExtension);
                }
                if (result == null) {
                    result = this.caseARObject(timingExtension);
                }
                if (result == null) {
                    result = this.caseGReferrable(timingExtension);
                }
                if (result == null) {
                    result = this.caseGARObject(timingExtension);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EcuTiming ecuTiming = (EcuTiming)theEObject;
                T result = this.caseEcuTiming(ecuTiming);
                if (result == null) {
                    result = this.caseTimingExtension(ecuTiming);
                }
                if (result == null) {
                    result = this.caseARElement(ecuTiming);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuTiming);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecuTiming);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuTiming);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuTiming);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecuTiming);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuTiming);
                }
                if (result == null) {
                    result = this.caseReferrable(ecuTiming);
                }
                if (result == null) {
                    result = this.caseARObject(ecuTiming);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecuTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwcTiming swcTiming = (SwcTiming)theEObject;
                T result = this.caseSwcTiming(swcTiming);
                if (result == null) {
                    result = this.caseTimingExtension(swcTiming);
                }
                if (result == null) {
                    result = this.caseARElement(swcTiming);
                }
                if (result == null) {
                    result = this.casePackageableElement(swcTiming);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swcTiming);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swcTiming);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcTiming);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcTiming);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcTiming);
                }
                if (result == null) {
                    result = this.caseReferrable(swcTiming);
                }
                if (result == null) {
                    result = this.caseARObject(swcTiming);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(swcTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SystemTiming systemTiming = (SystemTiming)theEObject;
                T result = this.caseSystemTiming(systemTiming);
                if (result == null) {
                    result = this.caseTimingExtension(systemTiming);
                }
                if (result == null) {
                    result = this.caseARElement(systemTiming);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemTiming);
                }
                if (result == null) {
                    result = this.caseCollectableElement(systemTiming);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemTiming);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemTiming);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(systemTiming);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemTiming);
                }
                if (result == null) {
                    result = this.caseReferrable(systemTiming);
                }
                if (result == null) {
                    result = this.caseARObject(systemTiming);
                }
                if (result == null) {
                    result = this.caseGReferrable(systemTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(systemTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                VfbTiming vfbTiming = (VfbTiming)theEObject;
                T result = this.caseVfbTiming(vfbTiming);
                if (result == null) {
                    result = this.caseTimingExtension(vfbTiming);
                }
                if (result == null) {
                    result = this.caseARElement(vfbTiming);
                }
                if (result == null) {
                    result = this.casePackageableElement(vfbTiming);
                }
                if (result == null) {
                    result = this.caseCollectableElement(vfbTiming);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(vfbTiming);
                }
                if (result == null) {
                    result = this.caseIdentifiable(vfbTiming);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(vfbTiming);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(vfbTiming);
                }
                if (result == null) {
                    result = this.caseReferrable(vfbTiming);
                }
                if (result == null) {
                    result = this.caseARObject(vfbTiming);
                }
                if (result == null) {
                    result = this.caseGReferrable(vfbTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(vfbTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswModuleTiming(BswModuleTiming object) {
        return null;
    }

    public T caseTimingExtension(TimingExtension object) {
        return null;
    }

    public T caseEcuTiming(EcuTiming object) {
        return null;
    }

    public T caseSwcTiming(SwcTiming object) {
        return null;
    }

    public T caseSystemTiming(SystemTiming object) {
        return null;
    }

    public T caseVfbTiming(VfbTiming object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

