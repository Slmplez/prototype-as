/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref;

import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataSendPointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public DataReadAccessDataElement createDataReadAccessDataElement();

    public DataSendPointDataElement createDataSendPointDataElement();

    public DataWriteAccessDataElement createDataWriteAccessDataElement();

    public DataReceivePointDataElement createDataReceivePointDataElement();

    public InstancerefPackage getInstancerefPackage();
}

