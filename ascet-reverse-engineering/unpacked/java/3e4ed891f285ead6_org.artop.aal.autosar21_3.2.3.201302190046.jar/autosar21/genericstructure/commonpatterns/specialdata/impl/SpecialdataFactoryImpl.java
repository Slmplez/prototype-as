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
package autosar21.genericstructure.commonpatterns.specialdata.impl;

import autosar21.genericstructure.commonpatterns.specialdata.Caption;
import autosar21.genericstructure.commonpatterns.specialdata.Sd;
import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.commonpatterns.specialdata.Sdgs;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataFactory;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.commonpatterns.specialdata.impl.CaptionImpl;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SdImpl;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SdgContentsImpl;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SdgImpl;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SdgsImpl;
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
            SpecialdataFactory theSpecialdataFactory = (SpecialdataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/sd");
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
                return this.createCaption();
            }
            case 1: {
                return this.createSd();
            }
            case 2: {
                return this.createSdgContents();
            }
            case 3: {
                return this.createSdgs();
            }
            case 4: {
                return this.createSdg();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Caption createCaption() {
        CaptionImpl caption = new CaptionImpl();
        return caption;
    }

    public Sd createSd() {
        SdImpl sd = new SdImpl();
        return sd;
    }

    public SdgContents createSdgContents() {
        SdgContentsImpl sdgContents = new SdgContentsImpl();
        return sdgContents;
    }

    public Sdgs createSdgs() {
        SdgsImpl sdgs = new SdgsImpl();
        return sdgs;
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

