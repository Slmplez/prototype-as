/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication;

import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.impl.InterrunnablecommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InterrunnablecommunicationFactory
extends EFactory {
    public static final InterrunnablecommunicationFactory eINSTANCE = InterrunnablecommunicationFactoryImpl.init();

    public InterRunnableVariable createInterRunnableVariable();

    public InterrunnablecommunicationPackage getInterrunnablecommunicationPackage();
}

