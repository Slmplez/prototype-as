/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements;

import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReadAccess;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReceivePoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataSendPoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataWriteAccess;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DataelementsFactory
extends EFactory {
    public static final DataelementsFactory eINSTANCE = DataelementsFactoryImpl.init();

    public DataReceivePoint createDataReceivePoint();

    public DataReadAccess createDataReadAccess();

    public DataWriteAccess createDataWriteAccess();

    public DataSendPoint createDataSendPoint();

    public DataelementsPackage getDataelementsPackage();
}

