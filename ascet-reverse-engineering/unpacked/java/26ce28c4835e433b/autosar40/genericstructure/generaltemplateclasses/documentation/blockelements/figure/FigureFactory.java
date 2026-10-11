/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Area;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.MlFigure;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.FigureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FigureFactory
extends EFactory {
    public static final FigureFactory eINSTANCE = FigureFactoryImpl.init();

    public Graphic createGraphic();

    public Map createMap();

    public Area createArea();

    public MlFigure createMlFigure();

    public LGraphic createLGraphic();

    public FigurePackage getFigurePackage();
}

