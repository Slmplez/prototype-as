/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguagedatamodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LanguagedatamodelFactory
extends EFactory {
    public static final LanguagedatamodelFactory eINSTANCE = LanguagedatamodelFactoryImpl.init();

    public LLongName createLLongName();

    public LOverviewParagraph createLOverviewParagraph();

    public LParagraph createLParagraph();

    public LPlainText createLPlainText();

    public LVerbatim createLVerbatim();

    public LanguagedatamodelPackage getLanguagedatamodelPackage();
}

