/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl.SinglelanguagedataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SinglelanguagedataFactory
extends EFactory {
    public static final SinglelanguagedataFactory eINSTANCE = SinglelanguagedataFactoryImpl.init();

    public SingleLanguageUnitNames createSingleLanguageUnitNames();

    public SingleLanguageLongName createSingleLanguageLongName();

    public SinglelanguagedataPackage getSinglelanguagedataPackage();
}

