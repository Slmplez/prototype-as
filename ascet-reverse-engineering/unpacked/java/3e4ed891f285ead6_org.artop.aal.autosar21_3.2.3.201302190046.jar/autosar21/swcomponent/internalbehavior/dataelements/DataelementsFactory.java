/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.dataelements;

import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataReceivePoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DataelementsFactory
extends EFactory {
    public static final DataelementsFactory eINSTANCE = DataelementsFactoryImpl.init();

    public DataReceivePoint createDataReceivePoint();

    public DataReadAccess createDataReadAccess();

    public DataSendPoint createDataSendPoint();

    public DataWriteAccess createDataWriteAccess();

    public DataelementsPackage getDataelementsPackage();
}

