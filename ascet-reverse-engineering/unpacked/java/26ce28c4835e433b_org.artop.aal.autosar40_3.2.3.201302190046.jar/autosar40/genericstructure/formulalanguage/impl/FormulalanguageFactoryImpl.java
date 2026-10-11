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
package autosar40.genericstructure.formulalanguage.impl;

import autosar40.genericstructure.formulalanguage.FormulalanguageFactory;
import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FormulalanguageFactoryImpl
extends EFactoryImpl
implements FormulalanguageFactory {
    public static FormulalanguageFactory init() {
        try {
            FormulalanguageFactory theFormulalanguageFactory = (FormulalanguageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/fl");
            if (theFormulalanguageFactory != null) {
                return theFormulalanguageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FormulalanguageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public FormulalanguagePackage getFormulalanguagePackage() {
        return (FormulalanguagePackage)this.getEPackage();
    }

    @Deprecated
    public static FormulalanguagePackage getPackage() {
        return FormulalanguagePackage.eINSTANCE;
    }
}

