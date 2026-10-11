/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.util.BlockelementsSwitch;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BlockelementsAdapterFactory
extends AdapterFactoryImpl {
    protected static BlockelementsPackage modelPackage;
    protected BlockelementsSwitch<Adapter> modelSwitch = new BlockelementsSwitch<Adapter>(){

        @Override
        public Adapter caseUrl(Url object) {
            return BlockelementsAdapterFactory.this.createUrlAdapter();
        }

        @Override
        public Adapter caseCaption(Caption object) {
            return BlockelementsAdapterFactory.this.createCaptionAdapter();
        }

        @Override
        public Adapter caseDocumentationBlock(DocumentationBlock object) {
            return BlockelementsAdapterFactory.this.createDocumentationBlockAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BlockelementsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BlockelementsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return BlockelementsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return BlockelementsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return BlockelementsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGRemark(GRemark object) {
            return BlockelementsAdapterFactory.this.createGRemarkAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BlockelementsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BlockelementsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BlockelementsPackage.eINSTANCE;
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

    public Adapter createUrlAdapter() {
        return null;
    }

    public Adapter createCaptionAdapter() {
        return null;
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

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGRemarkAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

