/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel.util;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent10;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L5;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel5;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LanguagedatamodelSwitch<T> {
    protected static LanguagedatamodelPackage modelPackage;

    public LanguagedatamodelSwitch() {
        if (modelPackage == null) {
            modelPackage = LanguagedatamodelPackage.eINSTANCE;
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
                L1 l1 = (L1)theEObject;
                T result = this.caseL1(l1);
                if (result == null) {
                    result = this.caseMixedContent1(l1);
                }
                if (result == null) {
                    result = this.caseGLParagraph(l1);
                }
                if (result == null) {
                    result = this.caseARObject(l1);
                }
                if (result == null) {
                    result = this.caseGMixedContentForParagraph(l1);
                }
                if (result == null) {
                    result = this.caseGARObject(l1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                L10 l10 = (L10)theEObject;
                T result = this.caseL10(l10);
                if (result == null) {
                    result = this.caseMixedContent10(l10);
                }
                if (result == null) {
                    result = this.caseARObject(l10);
                }
                if (result == null) {
                    result = this.caseGARObject(l10);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                L2 l2 = (L2)theEObject;
                T result = this.caseL2(l2);
                if (result == null) {
                    result = this.caseMixedContent2(l2);
                }
                if (result == null) {
                    result = this.caseGLOverviewParagraph(l2);
                }
                if (result == null) {
                    result = this.caseARObject(l2);
                }
                if (result == null) {
                    result = this.caseGMixedContentForOverviewParagraph(l2);
                }
                if (result == null) {
                    result = this.caseGARObject(l2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                L3 l3 = (L3)theEObject;
                T result = this.caseL3(l3);
                if (result == null) {
                    result = this.caseMixedContent3(l3);
                }
                if (result == null) {
                    result = this.caseARObject(l3);
                }
                if (result == null) {
                    result = this.caseGARObject(l3);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                L4 l4 = (L4)theEObject;
                T result = this.caseL4(l4);
                if (result == null) {
                    result = this.caseMixedContent4(l4);
                }
                if (result == null) {
                    result = this.caseARObject(l4);
                }
                if (result == null) {
                    result = this.caseGARObject(l4);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                L5 l5 = (L5)theEObject;
                T result = this.caseL5(l5);
                if (result == null) {
                    result = this.caseMixedContent5(l5);
                }
                if (result == null) {
                    result = this.caseARObject(l5);
                }
                if (result == null) {
                    result = this.caseGARObject(l5);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                MlDataModel1 mlDataModel1 = (MlDataModel1)theEObject;
                T result = this.caseMlDataModel1(mlDataModel1);
                if (result == null) {
                    result = this.caseARObject(mlDataModel1);
                }
                if (result == null) {
                    result = this.caseGARObject(mlDataModel1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                MlDataModel10 mlDataModel10 = (MlDataModel10)theEObject;
                T result = this.caseMlDataModel10(mlDataModel10);
                if (result == null) {
                    result = this.caseARObject(mlDataModel10);
                }
                if (result == null) {
                    result = this.caseGARObject(mlDataModel10);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                MlDataModel2 mlDataModel2 = (MlDataModel2)theEObject;
                T result = this.caseMlDataModel2(mlDataModel2);
                if (result == null) {
                    result = this.caseARObject(mlDataModel2);
                }
                if (result == null) {
                    result = this.caseGARObject(mlDataModel2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                MlDataModel3 mlDataModel3 = (MlDataModel3)theEObject;
                T result = this.caseMlDataModel3(mlDataModel3);
                if (result == null) {
                    result = this.caseARObject(mlDataModel3);
                }
                if (result == null) {
                    result = this.caseGARObject(mlDataModel3);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                MlDataModel4 mlDataModel4 = (MlDataModel4)theEObject;
                T result = this.caseMlDataModel4(mlDataModel4);
                if (result == null) {
                    result = this.caseARObject(mlDataModel4);
                }
                if (result == null) {
                    result = this.caseGARObject(mlDataModel4);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                MlDataModel5 mlDataModel5 = (MlDataModel5)theEObject;
                T result = this.caseMlDataModel5(mlDataModel5);
                if (result == null) {
                    result = this.caseARObject(mlDataModel5);
                }
                if (result == null) {
                    result = this.caseGARObject(mlDataModel5);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseL1(L1 object) {
        return null;
    }

    public T caseL10(L10 object) {
        return null;
    }

    public T caseL2(L2 object) {
        return null;
    }

    public T caseL3(L3 object) {
        return null;
    }

    public T caseL4(L4 object) {
        return null;
    }

    public T caseL5(L5 object) {
        return null;
    }

    public T caseMlDataModel1(MlDataModel1 object) {
        return null;
    }

    public T caseMlDataModel10(MlDataModel10 object) {
        return null;
    }

    public T caseMlDataModel2(MlDataModel2 object) {
        return null;
    }

    public T caseMlDataModel3(MlDataModel3 object) {
        return null;
    }

    public T caseMlDataModel4(MlDataModel4 object) {
        return null;
    }

    public T caseMlDataModel5(MlDataModel5 object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGMixedContentForParagraph(GMixedContentForParagraph object) {
        return null;
    }

    public T caseMixedContent1(MixedContent1 object) {
        return null;
    }

    public T caseGLParagraph(GLParagraph object) {
        return null;
    }

    public T caseMixedContent10(MixedContent10 object) {
        return null;
    }

    public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
        return null;
    }

    public T caseMixedContent2(MixedContent2 object) {
        return null;
    }

    public T caseGLOverviewParagraph(GLOverviewParagraph object) {
        return null;
    }

    public T caseMixedContent3(MixedContent3 object) {
        return null;
    }

    public T caseMixedContent4(MixedContent4 object) {
        return null;
    }

    public T caseMixedContent5(MixedContent5 object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

