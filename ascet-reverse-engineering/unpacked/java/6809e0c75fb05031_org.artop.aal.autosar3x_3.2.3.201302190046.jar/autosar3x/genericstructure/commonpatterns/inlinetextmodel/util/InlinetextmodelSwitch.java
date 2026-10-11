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
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.util;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent10;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
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
public class InlinetextmodelSwitch<T> {
    protected static InlinetextmodelPackage modelPackage;

    public InlinetextmodelSwitch() {
        if (modelPackage == null) {
            modelPackage = InlinetextmodelPackage.eINSTANCE;
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
                MixedContent1 mixedContent1 = (MixedContent1)theEObject;
                T result = this.caseMixedContent1(mixedContent1);
                if (result == null) {
                    result = this.caseARObject(mixedContent1);
                }
                if (result == null) {
                    result = this.caseGMixedContentForParagraph(mixedContent1);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContent1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MixedContent10 mixedContent10 = (MixedContent10)theEObject;
                T result = this.caseMixedContent10(mixedContent10);
                if (result == null) {
                    result = this.caseARObject(mixedContent10);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContent10);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MixedContent2 mixedContent2 = (MixedContent2)theEObject;
                T result = this.caseMixedContent2(mixedContent2);
                if (result == null) {
                    result = this.caseARObject(mixedContent2);
                }
                if (result == null) {
                    result = this.caseGMixedContentForOverviewParagraph(mixedContent2);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContent2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MixedContent3 mixedContent3 = (MixedContent3)theEObject;
                T result = this.caseMixedContent3(mixedContent3);
                if (result == null) {
                    result = this.caseARObject(mixedContent3);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContent3);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MixedContent5 mixedContent5 = (MixedContent5)theEObject;
                T result = this.caseMixedContent5(mixedContent5);
                if (result == null) {
                    result = this.caseARObject(mixedContent5);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContent5);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                MixedContent4 mixedContent4 = (MixedContent4)theEObject;
                T result = this.caseMixedContent4(mixedContent4);
                if (result == null) {
                    result = this.caseARObject(mixedContent4);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContent4);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMixedContent1(MixedContent1 object) {
        return null;
    }

    public T caseMixedContent10(MixedContent10 object) {
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

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGMixedContentForParagraph(GMixedContentForParagraph object) {
        return null;
    }

    public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

