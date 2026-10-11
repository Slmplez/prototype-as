/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Area;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.MlFigure;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.util.FigureSwitch;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FigureAdapterFactory
extends AdapterFactoryImpl {
    protected static FigurePackage modelPackage;
    protected FigureSwitch<Adapter> modelSwitch = new FigureSwitch<Adapter>(){

        @Override
        public Adapter caseGraphic(Graphic object) {
            return FigureAdapterFactory.this.createGraphicAdapter();
        }

        @Override
        public Adapter caseMap(Map object) {
            return FigureAdapterFactory.this.createMapAdapter();
        }

        @Override
        public Adapter caseArea(Area object) {
            return FigureAdapterFactory.this.createAreaAdapter();
        }

        @Override
        public Adapter caseMlFigure(MlFigure object) {
            return FigureAdapterFactory.this.createMlFigureAdapter();
        }

        @Override
        public Adapter caseLGraphic(LGraphic object) {
            return FigureAdapterFactory.this.createLGraphicAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FigureAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FigureAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGEngineeringObject(GEngineeringObject object) {
            return FigureAdapterFactory.this.createGEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseEngineeringObject(EngineeringObject object) {
            return FigureAdapterFactory.this.createEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return FigureAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return FigureAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter caseLanguageSpecific(LanguageSpecific object) {
            return FigureAdapterFactory.this.createLanguageSpecificAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FigureAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FigureAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FigurePackage.eINSTANCE;
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

    public Adapter createGraphicAdapter() {
        return null;
    }

    public Adapter createMapAdapter() {
        return null;
    }

    public Adapter createAreaAdapter() {
        return null;
    }

    public Adapter createMlFigureAdapter() {
        return null;
    }

    public Adapter createLGraphicAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createDocumentViewSelectableAdapter() {
        return null;
    }

    public Adapter createPaginateableAdapter() {
        return null;
    }

    public Adapter createLanguageSpecificAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

