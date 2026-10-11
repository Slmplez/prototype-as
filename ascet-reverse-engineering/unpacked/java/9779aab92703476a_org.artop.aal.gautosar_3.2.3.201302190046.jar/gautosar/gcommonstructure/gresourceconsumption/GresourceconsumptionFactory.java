/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gresourceconsumption;

import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gresourceconsumption.impl.GresourceconsumptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GresourceconsumptionFactory
extends EFactory {
    public static final GresourceconsumptionFactory eINSTANCE = GresourceconsumptionFactoryImpl.init();

    public GresourceconsumptionPackage getGresourceconsumptionPackage();
}

