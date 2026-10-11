/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata;

import autosar40.genericstructure.generaltemplateclasses.specialdata.Sd;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgCaption;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgContents;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SpecialdataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SpecialdataFactory
extends EFactory {
    public static final SpecialdataFactory eINSTANCE = SpecialdataFactoryImpl.init();

    public Sd createSd();

    public SdgCaption createSdgCaption();

    public SdgContents createSdgContents();

    public Sdg createSdg();

    public SpecialdataPackage getSpecialdataPackage();
}

