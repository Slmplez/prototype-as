/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultiLanguageOverviewParagraphImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultiLanguageParagraphImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultiLanguagePlainTextImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultiLanguageVerbatimImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultilanguageLongNameImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MultilanguagedataFactoryImpl
extends EFactoryImpl
implements MultilanguagedataFactory {
    public static MultilanguagedataFactory init() {
        try {
            MultilanguagedataFactory theMultilanguagedataFactory = (MultilanguagedataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md");
            if (theMultilanguagedataFactory != null) {
                return theMultilanguagedataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MultilanguagedataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMultilanguageLongName();
            }
            case 1: {
                return this.createMultiLanguageOverviewParagraph();
            }
            case 2: {
                return this.createMultiLanguageParagraph();
            }
            case 3: {
                return this.createMultiLanguagePlainText();
            }
            case 4: {
                return this.createMultiLanguageVerbatim();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MultilanguageLongName createMultilanguageLongName() {
        MultilanguageLongNameImpl multilanguageLongName = new MultilanguageLongNameImpl();
        return multilanguageLongName;
    }

    public MultiLanguageOverviewParagraph createMultiLanguageOverviewParagraph() {
        MultiLanguageOverviewParagraphImpl multiLanguageOverviewParagraph = new MultiLanguageOverviewParagraphImpl();
        return multiLanguageOverviewParagraph;
    }

    public MultiLanguageParagraph createMultiLanguageParagraph() {
        MultiLanguageParagraphImpl multiLanguageParagraph = new MultiLanguageParagraphImpl();
        return multiLanguageParagraph;
    }

    public MultiLanguagePlainText createMultiLanguagePlainText() {
        MultiLanguagePlainTextImpl multiLanguagePlainText = new MultiLanguagePlainTextImpl();
        return multiLanguagePlainText;
    }

    public MultiLanguageVerbatim createMultiLanguageVerbatim() {
        MultiLanguageVerbatimImpl multiLanguageVerbatim = new MultiLanguageVerbatimImpl();
        return multiLanguageVerbatim;
    }

    public MultilanguagedataPackage getMultilanguagedataPackage() {
        return (MultilanguagedataPackage)this.getEPackage();
    }

    @Deprecated
    public static MultilanguagedataPackage getPackage() {
        return MultilanguagedataPackage.eINSTANCE;
    }
}

