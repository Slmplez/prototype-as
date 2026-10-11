/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.interrunnablecommunication;

import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.impl.InterrunnablecommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InterrunnablecommunicationFactory
extends EFactory {
    public static final InterrunnablecommunicationFactory eINSTANCE = InterrunnablecommunicationFactoryImpl.init();

    public InterRunnableVariable createInterRunnableVariable();

    public InterrunnablecommunicationPackage getInterrunnablecommunicationPackage();
}

