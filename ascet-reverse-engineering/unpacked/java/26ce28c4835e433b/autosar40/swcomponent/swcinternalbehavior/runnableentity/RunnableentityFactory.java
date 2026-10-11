/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.runnableentity;

import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableEntityArgument;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityPackage;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.impl.RunnableentityFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface RunnableentityFactory
extends EFactory {
    public static final RunnableentityFactory eINSTANCE = RunnableentityFactoryImpl.init();

    public RunnableEntityArgument createRunnableEntityArgument();

    public RunnableentityPackage getRunnableentityPackage();
}

