/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.datadictionaryproxies;

import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatadictionaryproxiesFactory
extends EFactory {
    public static final DatadictionaryproxiesFactory eINSTANCE = DatadictionaryproxiesFactoryImpl.init();

    public SwVariableRefProxy createSwVariableRefProxy();

    public SwCalprmRefProxy createSwCalprmRefProxy();

    public DatadictionaryproxiesPackage getDatadictionaryproxiesPackage();
}

