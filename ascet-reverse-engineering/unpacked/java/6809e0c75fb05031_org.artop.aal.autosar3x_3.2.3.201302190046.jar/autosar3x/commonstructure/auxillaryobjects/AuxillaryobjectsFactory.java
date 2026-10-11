/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.auxillaryobjects;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.auxillaryobjects.SwCodeSyntax;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.commonstructure.auxillaryobjects.SwRelatedConstrs;
import autosar3x.commonstructure.auxillaryobjects.impl.AuxillaryobjectsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AuxillaryobjectsFactory
extends EFactory {
    public static final AuxillaryobjectsFactory eINSTANCE = AuxillaryobjectsFactoryImpl.init();

    public SwCodeSyntax createSwCodeSyntax();

    public SwRecordLayout createSwRecordLayout();

    public SwRecordLayoutGroup createSwRecordLayoutGroup();

    public SwRelatedConstrs createSwRelatedConstrs();

    public SwRecordLayoutGroupContent createSwRecordLayoutGroupContent();

    public SwRecordLayoutV createSwRecordLayoutV();

    public SwAddrMethod createSwAddrMethod();

    public AuxillaryobjectsPackage getAuxillaryobjectsPackage();
}

