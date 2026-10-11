/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.dataelements.instanceref;

import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataSendPointDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public DataReadAccessDataElement createDataReadAccessDataElement();

    public DataReceivePointDataElement createDataReceivePointDataElement();

    public DataSendPointDataElement createDataSendPointDataElement();

    public DataWriteAccessDataElement createDataWriteAccessDataElement();

    public InstancerefPackage getInstancerefPackage();
}

