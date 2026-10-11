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
package autosar3x.genericstructure.commonpatterns.documentationblock.util;

import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationBlock;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.documentationblock.util.DocumentationblockSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DocumentationblockAdapterFactory
extends AdapterFactoryImpl {
    protected static DocumentationblockPackage modelPackage;
    protected DocumentationblockSwitch<Adapter> modelSwitch = new DocumentationblockSwitch<Adapter>(){

        @Override
        public Adapter caseDocumentationBlock(DocumentationBlock object) {
            return DocumentationblockAdapterFactory.this.createDocumentationBlockAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DocumentationblockAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DocumentationblockAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DocumentationblockAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DocumentationblockAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DocumentationblockPackage.eINSTANCE;
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

    public Adapter createDocumentationBlockAdapter() {
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

