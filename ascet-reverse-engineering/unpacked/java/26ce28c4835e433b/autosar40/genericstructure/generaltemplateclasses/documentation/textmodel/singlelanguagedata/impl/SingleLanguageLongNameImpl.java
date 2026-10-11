/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl.MixedContentForLongNameImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import org.eclipse.emf.ecore.EClass;

public class SingleLanguageLongNameImpl
extends MixedContentForLongNameImpl
implements SingleLanguageLongName {
    protected SingleLanguageLongNameImpl() {
    }

    protected EClass eStaticClass() {
        return SinglelanguagedataPackage.Literals.SINGLE_LANGUAGE_LONG_NAME;
    }
}

