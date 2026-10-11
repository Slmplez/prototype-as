/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BlockelementsSwitch<T> {
    protected static BlockelementsPackage modelPackage;

    public BlockelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = BlockelementsPackage.eINSTANCE;
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
                Url url = (Url)theEObject;
                T result = this.caseUrl(url);
                if (result == null) {
                    result = this.caseARObject(url);
                }
                if (result == null) {
                    result = this.caseGARObject(url);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Caption caption = (Caption)theEObject;
                T result = this.caseCaption(caption);
                if (result == null) {
                    result = this.caseMultilanguageReferrable(caption);
                }
                if (result == null) {
                    result = this.caseReferrable(caption);
                }
                if (result == null) {
                    result = this.caseARObject(caption);
                }
                if (result == null) {
                    result = this.caseGReferrable(caption);
                }
                if (result == null) {
                    result = this.caseGARObject(caption);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DocumentationBlock documentationBlock = (DocumentationBlock)theEObject;
                T result = this.caseDocumentationBlock(documentationBlock);
                if (result == null) {
                    result = this.caseARObject(documentationBlock);
                }
                if (result == null) {
                    result = this.caseGRemark(documentationBlock);
                }
                if (result == null) {
                    result = this.caseGARObject(documentationBlock);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseUrl(Url object) {
        return null;
    }

    public T caseCaption(Caption object) {
        return null;
    }

    public T caseDocumentationBlock(DocumentationBlock object) {
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

    public T caseGRemark(GRemark object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

