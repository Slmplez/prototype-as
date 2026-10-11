/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.serviceprocesstask;

import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar40.commonstructure.serviceprocesstask.SwServiceArg;
import autosar40.commonstructure.serviceprocesstask.impl.ServiceprocesstaskFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServiceprocesstaskFactory
extends EFactory {
    public static final ServiceprocesstaskFactory eINSTANCE = ServiceprocesstaskFactoryImpl.init();

    public SwServiceArg createSwServiceArg();

    public ServiceprocesstaskPackage getServiceprocesstaskPackage();
}

