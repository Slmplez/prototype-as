/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.applicationattributes;

import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.ClientServerAnnotation;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.ModePortAnnotation;
import autosar40.swcomponent.applicationattributes.NvDataPortAnnotation;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.SenderAnnotation;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
import autosar40.swcomponent.applicationattributes.impl.ApplicationattributesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ApplicationattributesFactory
extends EFactory {
    public static final ApplicationattributesFactory eINSTANCE = ApplicationattributesFactoryImpl.init();

    public ClientServerAnnotation createClientServerAnnotation();

    public DelegatedPortAnnotation createDelegatedPortAnnotation();

    public IoHwAbstractionServerAnnotation createIoHwAbstractionServerAnnotation();

    public ModePortAnnotation createModePortAnnotation();

    public NvDataPortAnnotation createNvDataPortAnnotation();

    public ParameterPortAnnotation createParameterPortAnnotation();

    public ReceiverAnnotation createReceiverAnnotation();

    public SenderAnnotation createSenderAnnotation();

    public TriggerPortAnnotation createTriggerPortAnnotation();

    public ApplicationattributesPackage getApplicationattributesPackage();
}

