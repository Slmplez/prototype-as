/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.portapioptions;

import autosar21.swcomponent.internalbehavior.portapioptions.PortAPIOption;
import autosar21.swcomponent.internalbehavior.portapioptions.PortapioptionsPackage;
import autosar21.swcomponent.internalbehavior.portapioptions.impl.PortapioptionsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PortapioptionsFactory
extends EFactory {
    public static final PortapioptionsFactory eINSTANCE = PortapioptionsFactoryImpl.init();

    public PortAPIOption createPortAPIOption();

    public PortapioptionsPackage getPortapioptionsPackage();
}

