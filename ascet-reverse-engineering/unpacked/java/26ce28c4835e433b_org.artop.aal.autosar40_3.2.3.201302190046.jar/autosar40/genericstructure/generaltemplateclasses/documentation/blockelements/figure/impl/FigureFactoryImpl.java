/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Area;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.AreaEnumNohref;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.AreaEnumShape;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigureFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.GraphicFitEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.GraphicNotationEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.MlFigure;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.AreaImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.GraphicImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.LGraphicImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.MapImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.MlFigureImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FigureFactoryImpl
extends EFactoryImpl
implements FigureFactory {
    public static FigureFactory init() {
        try {
            FigureFactory theFigureFactory = (FigureFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/figure");
            if (theFigureFactory != null) {
                return theFigureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FigureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createGraphic();
            }
            case 1: {
                return this.createMap();
            }
            case 2: {
                return this.createArea();
            }
            case 3: {
                return this.createMlFigure();
            }
            case 4: {
                return this.createLGraphic();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.createGraphicFitEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createGraphicNotationEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createAreaEnumNohrefFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createAreaEnumShapeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.convertGraphicFitEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertGraphicNotationEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertAreaEnumNohrefToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertAreaEnumShapeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Graphic createGraphic() {
        GraphicImpl graphic = new GraphicImpl();
        return graphic;
    }

    public Map createMap() {
        MapImpl map = new MapImpl();
        return map;
    }

    public Area createArea() {
        AreaImpl area = new AreaImpl();
        return area;
    }

    public MlFigure createMlFigure() {
        MlFigureImpl mlFigure = new MlFigureImpl();
        return mlFigure;
    }

    public LGraphic createLGraphic() {
        LGraphicImpl lGraphic = new LGraphicImpl();
        return lGraphic;
    }

    public GraphicFitEnum createGraphicFitEnumFromString(EDataType eDataType, String initialValue) {
        GraphicFitEnum result = GraphicFitEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertGraphicFitEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public GraphicNotationEnum createGraphicNotationEnumFromString(EDataType eDataType, String initialValue) {
        GraphicNotationEnum result = GraphicNotationEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertGraphicNotationEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AreaEnumNohref createAreaEnumNohrefFromString(EDataType eDataType, String initialValue) {
        AreaEnumNohref result = AreaEnumNohref.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAreaEnumNohrefToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AreaEnumShape createAreaEnumShapeFromString(EDataType eDataType, String initialValue) {
        AreaEnumShape result = AreaEnumShape.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAreaEnumShapeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public FigurePackage getFigurePackage() {
        return (FigurePackage)this.getEPackage();
    }

    @Deprecated
    public static FigurePackage getPackage() {
        return FigurePackage.eINSTANCE;
    }
}

