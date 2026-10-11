/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata.util;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel10;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel3;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel5;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData3;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData3p;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData5;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MultilanguagedataSwitch<T> {
    protected static MultilanguagedataPackage modelPackage;

    public MultilanguagedataSwitch() {
        if (modelPackage == null) {
            modelPackage = MultilanguagedataPackage.eINSTANCE;
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
                MlData1 mlData1 = (MlData1)theEObject;
                T result = this.caseMlData1(mlData1);
                if (result == null) {
                    result = this.caseMlDataModel1(mlData1);
                }
                if (result == null) {
                    result = this.caseGMultiLanguageParagraph(mlData1);
                }
                if (result == null) {
                    result = this.caseARObject(mlData1);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MlData10 mlData10 = (MlData10)theEObject;
                T result = this.caseMlData10(mlData10);
                if (result == null) {
                    result = this.caseMlDataModel10(mlData10);
                }
                if (result == null) {
                    result = this.caseARObject(mlData10);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData10);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MlData3 mlData3 = (MlData3)theEObject;
                T result = this.caseMlData3(mlData3);
                if (result == null) {
                    result = this.caseMlDataModel3(mlData3);
                }
                if (result == null) {
                    result = this.caseARObject(mlData3);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData3);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MlData3p mlData3p = (MlData3p)theEObject;
                T result = this.caseMlData3p(mlData3p);
                if (result == null) {
                    result = this.caseMlDataModel3(mlData3p);
                }
                if (result == null) {
                    result = this.caseARObject(mlData3p);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData3p);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MlData4 mlData4 = (MlData4)theEObject;
                T result = this.caseMlData4(mlData4);
                if (result == null) {
                    result = this.caseMlDataModel4(mlData4);
                }
                if (result == null) {
                    result = this.caseARObject(mlData4);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData4);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                MlData5 mlData5 = (MlData5)theEObject;
                T result = this.caseMlData5(mlData5);
                if (result == null) {
                    result = this.caseMlDataModel5(mlData5);
                }
                if (result == null) {
                    result = this.caseARObject(mlData5);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData5);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                MlData2 mlData2 = (MlData2)theEObject;
                T result = this.caseMlData2(mlData2);
                if (result == null) {
                    result = this.caseMlDataModel2(mlData2);
                }
                if (result == null) {
                    result = this.caseGMultiLanguageOverviewParagraph(mlData2);
                }
                if (result == null) {
                    result = this.caseARObject(mlData2);
                }
                if (result == null) {
                    result = this.caseGARObject(mlData2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMlData1(MlData1 object) {
        return null;
    }

    public T caseMlData10(MlData10 object) {
        return null;
    }

    public T caseMlData3(MlData3 object) {
        return null;
    }

    public T caseMlData3p(MlData3p object) {
        return null;
    }

    public T caseMlData4(MlData4 object) {
        return null;
    }

    public T caseMlData5(MlData5 object) {
        return null;
    }

    public T caseMlData2(MlData2 object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseMlDataModel1(MlDataModel1 object) {
        return null;
    }

    public T caseGMultiLanguageParagraph(GMultiLanguageParagraph object) {
        return null;
    }

    public T caseMlDataModel10(MlDataModel10 object) {
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

    public T caseMlDataModel2(MlDataModel2 object) {
        return null;
    }

    public T caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

