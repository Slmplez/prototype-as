/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies;

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefMsr;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.DatadictionaryproxiesFactoryImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.swCalprmRef;
import org.eclipse.emf.ecore.EFactory;

public interface DatadictionaryproxiesFactory
extends EFactory {
    public static final DatadictionaryproxiesFactory eINSTANCE = DatadictionaryproxiesFactoryImpl.init();

    public swCalprmRef createswCalprmRef();

    public SwCalprmRefProxy createSwCalprmRefProxy();

    public SwVariableRefMsr createSwVariableRefMsr();

    public DatadictionaryproxiesPackage getDatadictionaryproxiesPackage();
}

