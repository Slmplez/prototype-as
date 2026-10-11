/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.applicationattributes.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.ClientServerAnnotation;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.ModePortAnnotation;
import autosar40.swcomponent.applicationattributes.NvDataPortAnnotation;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.SenderAnnotation;
import autosar40.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
import autosar40.swcomponent.applicationattributes.util.ApplicationattributesSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ApplicationattributesAdapterFactory
extends AdapterFactoryImpl {
    protected static ApplicationattributesPackage modelPackage;
    protected ApplicationattributesSwitch<Adapter> modelSwitch = new ApplicationattributesSwitch<Adapter>(){

        @Override
        public Adapter caseClientServerAnnotation(ClientServerAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createClientServerAnnotationAdapter();
        }

        @Override
        public Adapter caseDelegatedPortAnnotation(DelegatedPortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createDelegatedPortAnnotationAdapter();
        }

        @Override
        public Adapter caseIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createIoHwAbstractionServerAnnotationAdapter();
        }

        @Override
        public Adapter caseModePortAnnotation(ModePortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createModePortAnnotationAdapter();
        }

        @Override
        public Adapter caseNvDataPortAnnotation(NvDataPortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createNvDataPortAnnotationAdapter();
        }

        @Override
        public Adapter caseParameterPortAnnotation(ParameterPortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createParameterPortAnnotationAdapter();
        }

        @Override
        public Adapter caseReceiverAnnotation(ReceiverAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createReceiverAnnotationAdapter();
        }

        @Override
        public Adapter caseSenderAnnotation(SenderAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createSenderAnnotationAdapter();
        }

        @Override
        public Adapter caseTriggerPortAnnotation(TriggerPortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createTriggerPortAnnotationAdapter();
        }

        @Override
        public Adapter caseSenderReceiverAnnotation(SenderReceiverAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createSenderReceiverAnnotationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ApplicationattributesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ApplicationattributesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGGeneralAnnotation(GGeneralAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createGGeneralAnnotationAdapter();
        }

        @Override
        public Adapter caseGeneralAnnotation(GeneralAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createGeneralAnnotationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ApplicationattributesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ApplicationattributesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ApplicationattributesPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createClientServerAnnotationAdapter() {
        return null;
    }

    public Adapter createDelegatedPortAnnotationAdapter() {
        return null;
    }

    public Adapter createIoHwAbstractionServerAnnotationAdapter() {
        return null;
    }

    public Adapter createModePortAnnotationAdapter() {
        return null;
    }

    public Adapter createNvDataPortAnnotationAdapter() {
        return null;
    }

    public Adapter createParameterPortAnnotationAdapter() {
        return null;
    }

    public Adapter createReceiverAnnotationAdapter() {
        return null;
    }

    public Adapter createSenderAnnotationAdapter() {
        return null;
    }

    public Adapter createTriggerPortAnnotationAdapter() {
        return null;
    }

    public Adapter createSenderReceiverAnnotationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createGeneralAnnotationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

