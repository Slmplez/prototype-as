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
package autosar3x.genericstructure.commonpatterns.specialdata.impl;

import autosar3x.genericstructure.commonpatterns.specialdata.Sd;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdg;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgCaption;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdx;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataFactory;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SdImpl;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SdgCaptionImpl;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SdgContentsImpl;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SdgImpl;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SdxImpl;
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
            SpecialdataFactory theSpecialdataFactory = (SpecialdataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/gs/cp/sd");
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
                return this.createSdx();
            }
            case 4: {
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

    public Sdx createSdx() {
        SdxImpl sdx = new SdxImpl();
        return sdx;
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

