/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.specialdata;

import autosar3x.genericstructure.commonpatterns.specialdata.Sd;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdg;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgCaption;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdx;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SpecialdataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SpecialdataFactory
extends EFactory {
    public static final SpecialdataFactory eINSTANCE = SpecialdataFactoryImpl.init();

    public Sd createSd();

    public SdgCaption createSdgCaption();

    public SdgContents createSdgContents();

    public Sdx createSdx();

    public Sdg createSdg();

    public SpecialdataPackage getSpecialdataPackage();
}

