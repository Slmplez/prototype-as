/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.softwarecomponentdocumentation.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import autosar40.swcomponent.softwarecomponentdocumentation.util.SoftwarecomponentdocumentationSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SoftwarecomponentdocumentationAdapterFactory
extends AdapterFactoryImpl {
    protected static SoftwarecomponentdocumentationPackage modelPackage;
    protected SoftwarecomponentdocumentationSwitch<Adapter> modelSwitch = new SoftwarecomponentdocumentationSwitch<Adapter>(){

        @Override
        public Adapter caseSwComponentDocumentation(SwComponentDocumentation object) {
            return SoftwarecomponentdocumentationAdapterFactory.this.createSwComponentDocumentationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SoftwarecomponentdocumentationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SoftwarecomponentdocumentationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SoftwarecomponentdocumentationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SoftwarecomponentdocumentationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SoftwarecomponentdocumentationPackage.eINSTANCE;
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

    public Adapter createSwComponentDocumentationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

