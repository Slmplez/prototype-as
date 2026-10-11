/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.singlelanguagedata.util;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent10;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData1;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData10;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData2;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3p;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData4;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData5;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SinglelanguagedataSwitch<T> {
    protected static SinglelanguagedataPackage modelPackage;

    public SinglelanguagedataSwitch() {
        if (modelPackage == null) {
            modelPackage = SinglelanguagedataPackage.eINSTANCE;
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
                SlData1 slData1 = (SlData1)theEObject;
                T result = this.caseSlData1(slData1);
                if (result == null) {
                    result = this.caseMixedContent1(slData1);
                }
                if (result == null) {
                    result = this.caseARObject(slData1);
                }
                if (result == null) {
                    result = this.caseGMixedContentForParagraph(slData1);
                }
                if (result == null) {
                    result = this.caseGARObject(slData1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SlData10 slData10 = (SlData10)theEObject;
                T result = this.caseSlData10(slData10);
                if (result == null) {
                    result = this.caseMixedContent10(slData10);
                }
                if (result == null) {
                    result = this.caseARObject(slData10);
                }
                if (result == null) {
                    result = this.caseGARObject(slData10);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SlData2 slData2 = (SlData2)theEObject;
                T result = this.caseSlData2(slData2);
                if (result == null) {
                    result = this.caseMixedContent2(slData2);
                }
                if (result == null) {
                    result = this.caseARObject(slData2);
                }
                if (result == null) {
                    result = this.caseGMixedContentForOverviewParagraph(slData2);
                }
                if (result == null) {
                    result = this.caseGARObject(slData2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SlData3 slData3 = (SlData3)theEObject;
                T result = this.caseSlData3(slData3);
                if (result == null) {
                    result = this.caseMixedContent3(slData3);
                }
                if (result == null) {
                    result = this.caseARObject(slData3);
                }
                if (result == null) {
                    result = this.caseGARObject(slData3);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SlData3p slData3p = (SlData3p)theEObject;
                T result = this.caseSlData3p(slData3p);
                if (result == null) {
                    result = this.caseMixedContent3(slData3p);
                }
                if (result == null) {
                    result = this.caseARObject(slData3p);
                }
                if (result == null) {
                    result = this.caseGARObject(slData3p);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SlData5 slData5 = (SlData5)theEObject;
                T result = this.caseSlData5(slData5);
                if (result == null) {
                    result = this.caseMixedContent5(slData5);
                }
                if (result == null) {
                    result = this.caseARObject(slData5);
                }
                if (result == null) {
                    result = this.caseGARObject(slData5);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SlData4 slData4 = (SlData4)theEObject;
                T result = this.caseSlData4(slData4);
                if (result == null) {
                    result = this.caseMixedContent4(slData4);
                }
                if (result == null) {
                    result = this.caseARObject(slData4);
                }
                if (result == null) {
                    result = this.caseGARObject(slData4);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSlData1(SlData1 object) {
        return null;
    }

    public T caseSlData10(SlData10 object) {
        return null;
    }

    public T caseSlData2(SlData2 object) {
        return null;
    }

    public T caseSlData3(SlData3 object) {
        return null;
    }

    public T caseSlData3p(SlData3p object) {
        return null;
    }

    public T caseSlData5(SlData5 object) {
        return null;
    }

    public T caseSlData4(SlData4 object) {
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

    public T caseMixedContent10(MixedContent10 object) {
        return null;
    }

    public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
        return null;
    }

    public T caseMixedContent2(MixedContent2 object) {
        return null;
    }

    public T caseMixedContent3(MixedContent3 object) {
        return null;
    }

    public T caseMixedContent5(MixedContent5 object) {
        return null;
    }

    public T caseMixedContent4(MixedContent4 object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

