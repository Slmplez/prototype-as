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
package autosar40.genericstructure.generaltemplateclasses.specialdata.impl;

import autosar40.genericstructure.generaltemplateclasses.specialdata.Sd;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgCaption;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgContents;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataFactory;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SdImpl;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SdgCaptionImpl;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SdgContentsImpl;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SdgImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SpecialdataFactoryImpl
extends EFactoryImpl
implements SpecialdataFactory {
    public static SpecialdataFactory init() {
        try {
            SpecialdataFactory theSpecialdataFactory = (SpecialdataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd");
            if (theSpecialdataFactory != null) {
                return theSpecialdataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SpecialdataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSd();
            }
            case 1: {
                return this.createSdgCaption();
            }
            case 2: {
                return this.createSdgContents();
            }
            case 3: {
                return this.createSdg();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Sd createSd() {
        SdImpl sd = new SdImpl();
        return sd;
    }

    public SdgCaption createSdgCaption() {
        SdgCaptionImpl sdgCaption = new SdgCaptionImpl();
        return sdgCaption;
    }

    public SdgContents createSdgContents() {
        SdgContentsImpl sdgContents = new SdgContentsImpl();
        return sdgContents;
    }

    public Sdg createSdg() {
        SdgImpl sdg = new SdgImpl();
        return sdg;
    }

    public SpecialdataPackage getSpecialdataPackage() {
        return (SpecialdataPackage)this.getEPackage();
    }

    @Deprecated
    public static SpecialdataPackage getPackage() {
        return SpecialdataPackage.eINSTANCE;
    }
}

