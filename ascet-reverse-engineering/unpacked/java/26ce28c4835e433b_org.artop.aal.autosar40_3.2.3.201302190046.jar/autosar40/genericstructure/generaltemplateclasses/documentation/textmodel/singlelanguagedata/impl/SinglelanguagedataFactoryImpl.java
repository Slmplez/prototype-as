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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl.SingleLanguageLongNameImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl.SingleLanguageUnitNamesImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SinglelanguagedataFactoryImpl
extends EFactoryImpl
implements SinglelanguagedataFactory {
    public static SinglelanguagedataFactory init() {
        try {
            SinglelanguagedataFactory theSinglelanguagedataFactory = (SinglelanguagedataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/sld");
            if (theSinglelanguagedataFactory != null) {
                return theSinglelanguagedataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SinglelanguagedataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSingleLanguageUnitNames();
            }
            case 1: {
                return this.createSingleLanguageLongName();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SingleLanguageUnitNames createSingleLanguageUnitNames() {
        SingleLanguageUnitNamesImpl singleLanguageUnitNames = new SingleLanguageUnitNamesImpl();
        return singleLanguageUnitNames;
    }

    public SingleLanguageLongName createSingleLanguageLongName() {
        SingleLanguageLongNameImpl singleLanguageLongName = new SingleLanguageLongNameImpl();
        return singleLanguageLongName;
    }

    public SinglelanguagedataPackage getSinglelanguagedataPackage() {
        return (SinglelanguagedataPackage)this.getEPackage();
    }

    @Deprecated
    public static SinglelanguagedataPackage getPackage() {
        return SinglelanguagedataPackage.eINSTANCE;
    }
}

