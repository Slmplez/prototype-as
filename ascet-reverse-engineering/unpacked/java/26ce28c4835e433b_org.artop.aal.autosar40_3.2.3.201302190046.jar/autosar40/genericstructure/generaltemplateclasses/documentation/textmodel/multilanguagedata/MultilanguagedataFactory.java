/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultilanguagedataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MultilanguagedataFactory
extends EFactory {
    public static final MultilanguagedataFactory eINSTANCE = MultilanguagedataFactoryImpl.init();

    public MultilanguageLongName createMultilanguageLongName();

    public MultiLanguageOverviewParagraph createMultiLanguageOverviewParagraph();

    public MultiLanguageParagraph createMultiLanguageParagraph();

    public MultiLanguagePlainText createMultiLanguagePlainText();

    public MultiLanguageVerbatim createMultiLanguageVerbatim();

    public MultilanguagedataPackage getMultilanguagedataPackage();
}

