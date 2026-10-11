/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects;

import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsPackage;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwAddrMethod;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwCodeSyntax;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayout;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroup;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutV;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRelatedConstrs;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.AuxillaryobjectsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AuxillaryobjectsFactory
extends EFactory {
    public static final AuxillaryobjectsFactory eINSTANCE = AuxillaryobjectsFactoryImpl.init();

    public SwAddrMethod createSwAddrMethod();

    public SwCodeSyntax createSwCodeSyntax();

    public SwRecordLayoutGroup createSwRecordLayoutGroup();

    public SwRecordLayoutGroupContent createSwRecordLayoutGroupContent();

    public SwRecordLayoutV createSwRecordLayoutV();

    public SwRelatedConstrs createSwRelatedConstrs();

    public SwRecordLayout createSwRecordLayout();

    public AuxillaryobjectsPackage getAuxillaryobjectsPackage();
}

