/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.specialdata;

import autosar21.genericstructure.commonpatterns.specialdata.Caption;
import autosar21.genericstructure.commonpatterns.specialdata.Sd;
import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.commonpatterns.specialdata.Sdgs;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SpecialdataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SpecialdataFactory
extends EFactory {
    public static final SpecialdataFactory eINSTANCE = SpecialdataFactoryImpl.init();

    public Caption createCaption();

    public Sd createSd();

    public SdgContents createSdgContents();

    public Sdgs createSdgs();

    public Sdg createSdg();

    public SpecialdataPackage getSpecialdataPackage();
}

