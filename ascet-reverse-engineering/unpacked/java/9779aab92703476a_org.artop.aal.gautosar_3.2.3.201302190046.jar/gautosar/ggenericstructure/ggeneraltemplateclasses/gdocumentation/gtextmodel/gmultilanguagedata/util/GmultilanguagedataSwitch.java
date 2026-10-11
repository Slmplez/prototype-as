/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.util;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GmultilanguagedataSwitch<T> {
    protected static GmultilanguagedataPackage modelPackage;

    public GmultilanguagedataSwitch() {
        if (modelPackage == null) {
            modelPackage = GmultilanguagedataPackage.eINSTANCE;
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
                GMultiLanguageParagraph gMultiLanguageParagraph = (GMultiLanguageParagraph)theEObject;
                T result = this.caseGMultiLanguageParagraph(gMultiLanguageParagraph);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GMultiLanguageOverviewParagraph gMultiLanguageOverviewParagraph = (GMultiLanguageOverviewParagraph)theEObject;
                T result = this.caseGMultiLanguageOverviewParagraph(gMultiLanguageOverviewParagraph);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGMultiLanguageParagraph(GMultiLanguageParagraph object) {
        return null;
    }

    public T caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

