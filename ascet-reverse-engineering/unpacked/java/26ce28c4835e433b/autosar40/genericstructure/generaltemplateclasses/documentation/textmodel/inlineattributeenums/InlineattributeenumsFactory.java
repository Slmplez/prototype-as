/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.impl.InlineattributeenumsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlineattributeenumsFactory
extends EFactory {
    public static final InlineattributeenumsFactory eINSTANCE = InlineattributeenumsFactoryImpl.init();

    public InlineattributeenumsPackage getInlineattributeenumsPackage();
}

