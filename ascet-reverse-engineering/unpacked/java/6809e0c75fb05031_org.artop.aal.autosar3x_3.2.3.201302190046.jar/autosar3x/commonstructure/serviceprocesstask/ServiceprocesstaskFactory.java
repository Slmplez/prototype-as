/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.serviceprocesstask;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImpl;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
import autosar3x.commonstructure.serviceprocesstask.impl.ServiceprocesstaskFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServiceprocesstaskFactory
extends EFactory {
    public static final ServiceprocesstaskFactory eINSTANCE = ServiceprocesstaskFactoryImpl.init();

    public SwService createSwService();

    public SwServiceArg createSwServiceArg();

    public SwServiceProps createSwServiceProps();

    public SwServiceAccessedElementSet createSwServiceAccessedElementSet();

    public SwServiceImpl createSwServiceImpl();

    public ServiceprocesstaskPackage getServiceprocesstaskPackage();
}

