/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.formulalanguage;

import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;
import autosar40.genericstructure.formulalanguage.impl.FormulalanguageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FormulalanguageFactory
extends EFactory {
    public static final FormulalanguageFactory eINSTANCE = FormulalanguageFactoryImpl.init();

    public FormulalanguagePackage getFormulalanguagePackage();
}

