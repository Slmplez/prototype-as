/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.portapioptions;

import autosar3x.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortapioptionsFactory
extends EFactory {
    public static final PortapioptionsFactory eINSTANCE = PortapioptionsFactoryImpl.init();

    public PortAPIOption createPortAPIOption();

    public PortapioptionsPackage getPortapioptionsPackage();
}

