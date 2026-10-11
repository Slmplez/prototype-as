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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.util.SinglelanguagedataSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SinglelanguagedataAdapterFactory
extends AdapterFactoryImpl {
    protected static SinglelanguagedataPackage modelPackage;
    protected SinglelanguagedataSwitch<Adapter> modelSwitch = new SinglelanguagedataSwitch<Adapter>(){

        @Override
        public Adapter caseSingleLanguageUnitNames(SingleLanguageUnitNames object) {
            return SinglelanguagedataAdapterFactory.this.createSingleLanguageUnitNamesAdapter();
        }

        @Override
        public Adapter caseSingleLanguageLongName(SingleLanguageLongName object) {
            return SinglelanguagedataAdapterFactory.this.createSingleLanguageLongNameAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SinglelanguagedataAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SinglelanguagedataAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseMixedContentForUnitNames(MixedContentForUnitNames object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContentForUnitNamesAdapter();
        }

        @Override
        public Adapter caseMixedContentForLongName(MixedContentForLongName object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContentForLongNameAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SinglelanguagedataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SinglelanguagedataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SinglelanguagedataPackage.eINSTANCE;
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

    public Adapter createSingleLanguageUnitNamesAdapter() {
        return null;
    }

    public Adapter createSingleLanguageLongNameAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createMixedContentForUnitNamesAdapter() {
        return null;
    }

    public Adapter createMixedContentForLongNameAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

