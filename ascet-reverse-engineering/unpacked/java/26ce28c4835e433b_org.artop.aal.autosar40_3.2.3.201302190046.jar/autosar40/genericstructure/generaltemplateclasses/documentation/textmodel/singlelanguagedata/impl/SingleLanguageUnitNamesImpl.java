/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl.MixedContentForUnitNamesImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import org.eclipse.emf.ecore.EClass;

public class SingleLanguageUnitNamesImpl
extends MixedContentForUnitNamesImpl
implements SingleLanguageUnitNames {
    protected SingleLanguageUnitNamesImpl() {
    }

    protected EClass eStaticClass() {
        return SinglelanguagedataPackage.Literals.SINGLE_LANGUAGE_UNIT_NAMES;
    }
}

