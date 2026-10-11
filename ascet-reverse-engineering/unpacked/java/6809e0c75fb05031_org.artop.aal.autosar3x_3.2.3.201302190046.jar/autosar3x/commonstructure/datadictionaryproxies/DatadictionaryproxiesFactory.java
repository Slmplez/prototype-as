/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.datadictionaryproxies;

import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatadictionaryproxiesFactory
extends EFactory {
    public static final DatadictionaryproxiesFactory eINSTANCE = DatadictionaryproxiesFactoryImpl.init();

    public SwCalprmRefProxy createSwCalprmRefProxy();

    public DatadictionaryproxiesPackage getDatadictionaryproxiesPackage();
}

