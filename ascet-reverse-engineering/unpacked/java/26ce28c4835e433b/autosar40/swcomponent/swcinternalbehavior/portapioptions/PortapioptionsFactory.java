/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.portapioptions;

import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortapioptionsFactory
extends EFactory {
    public static final PortapioptionsFactory eINSTANCE = PortapioptionsFactoryImpl.init();

    public PortDefinedArgumentValue createPortDefinedArgumentValue();

    public PortAPIOption createPortAPIOption();

    public PortapioptionsPackage getPortapioptionsPackage();
}

