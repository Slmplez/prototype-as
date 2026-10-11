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
package autosar40.swcomponent.datatype.recordlayout.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutV;
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
public class RecordlayoutSwitch<T> {
    protected static RecordlayoutPackage modelPackage;

    public RecordlayoutSwitch() {
        if (modelPackage == null) {
            modelPackage = RecordlayoutPackage.eINSTANCE;
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
                SwRecordLayout swRecordLayout = (SwRecordLayout)theEObject;
                T result = this.caseSwRecordLayout(swRecordLayout);
                if (result == null) {
                    result = this.caseARElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.casePackageableElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseReferrable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseARObject(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGReferrable(swRecordLayout);
                }
                if (result == null) {
                    result = this.caseGARObject(swRecordLayout);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
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
            case 2: {
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
            case 3: {
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwRecordLayout(SwRecordLayout object) {
        return null;
    }

    public T caseSwRecordLayoutGroup(SwRecordLayoutGroup object) {
        return null;
    }

    public T caseSwRecordLayoutGroupContent(SwRecordLayoutGroupContent object) {
        return null;
    }

    public T caseSwRecordLayoutV(SwRecordLayoutV object) {
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

