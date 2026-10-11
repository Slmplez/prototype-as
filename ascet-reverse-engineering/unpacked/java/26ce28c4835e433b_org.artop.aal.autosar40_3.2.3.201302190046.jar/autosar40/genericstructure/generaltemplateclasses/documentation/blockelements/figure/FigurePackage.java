/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigureFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.FigurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FigurePackage
extends EPackage {
    public static final String eNAME = "figure";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/figure";
    public static final String eNS_PREFIX = "";
    public static final FigurePackage eINSTANCE = FigurePackageImpl.init();
    public static final int GRAPHIC = 0;
    public static final int GRAPHIC__GCHECKSUM = 0;
    public static final int GRAPHIC__GTIMESTAMP = 1;
    public static final int GRAPHIC__CHECKSUM = 2;
    public static final int GRAPHIC__TIMESTAMP = 3;
    public static final int GRAPHIC__SHORT_LABEL = 4;
    public static final int GRAPHIC__CATEGORY = 5;
    public static final int GRAPHIC__REVISION_LABELS = 6;
    public static final int GRAPHIC__DOMAIN = 7;
    public static final int GRAPHIC__LGRAPHIC = 8;
    public static final int GRAPHIC__EDIT_HEIGHT = 9;
    public static final int GRAPHIC__EDIT_WIDTH = 10;
    public static final int GRAPHIC__EDITFIT = 11;
    public static final int GRAPHIC__EDITSCALE = 12;
    public static final int GRAPHIC__FILENAME = 13;
    public static final int GRAPHIC__FIT = 14;
    public static final int GRAPHIC__GENERATOR = 15;
    public static final int GRAPHIC__HEIGHT = 16;
    public static final int GRAPHIC__HTML_FIT = 17;
    public static final int GRAPHIC__HTML_HEIGHT = 18;
    public static final int GRAPHIC__HTML_SCALE = 19;
    public static final int GRAPHIC__HTML_WIDTH = 20;
    public static final int GRAPHIC__NOTATION = 21;
    public static final int GRAPHIC__SCALE = 22;
    public static final int GRAPHIC__WIDTH = 23;
    public static final int GRAPHIC_FEATURE_COUNT = 24;
    public static final int MAP = 1;
    public static final int MAP__GCHECKSUM = 0;
    public static final int MAP__GTIMESTAMP = 1;
    public static final int MAP__CHECKSUM = 2;
    public static final int MAP__TIMESTAMP = 3;
    public static final int MAP__LGRAPHIC = 4;
    public static final int MAP__CLASS = 5;
    public static final int MAP__NAME = 6;
    public static final int MAP__ONCLICK = 7;
    public static final int MAP__ONDBLCLICK = 8;
    public static final int MAP__ONKEYDOWN = 9;
    public static final int MAP__ONKEYPRESS = 10;
    public static final int MAP__ONKEYUP = 11;
    public static final int MAP__ONMOUSEDOWN = 12;
    public static final int MAP__ONMOUSEMOVE = 13;
    public static final int MAP__ONMOUSEOUT = 14;
    public static final int MAP__ONMOUSEOVER = 15;
    public static final int MAP__ONMOUSEUP = 16;
    public static final int MAP__STYLE = 17;
    public static final int MAP__TITLE = 18;
    public static final int MAP__AREAS = 19;
    public static final int MAP_FEATURE_COUNT = 20;
    public static final int AREA = 2;
    public static final int AREA__GCHECKSUM = 0;
    public static final int AREA__GTIMESTAMP = 1;
    public static final int AREA__CHECKSUM = 2;
    public static final int AREA__TIMESTAMP = 3;
    public static final int AREA__MAP = 4;
    public static final int AREA__ACCESSKEY = 5;
    public static final int AREA__ALT = 6;
    public static final int AREA__CLASS = 7;
    public static final int AREA__COORDS = 8;
    public static final int AREA__HREF = 9;
    public static final int AREA__NOHREF = 10;
    public static final int AREA__ONBLUR = 11;
    public static final int AREA__ONCLICK = 12;
    public static final int AREA__ONDBLCLICK = 13;
    public static final int AREA__ONFOCUS = 14;
    public static final int AREA__ONKEYDOWN = 15;
    public static final int AREA__ONKEYPRESS = 16;
    public static final int AREA__ONKEYUP = 17;
    public static final int AREA__ONMOUSEDOWN = 18;
    public static final int AREA__ONMOUSEMOVE = 19;
    public static final int AREA__ONMOUSEOUT = 20;
    public static final int AREA__ONMOUSEOVER = 21;
    public static final int AREA__ONMOUSEUP = 22;
    public static final int AREA__SHAPE = 23;
    public static final int AREA__STYLE = 24;
    public static final int AREA__TABINDEX = 25;
    public static final int AREA__TITLE = 26;
    public static final int AREA_FEATURE_COUNT = 27;
    public static final int ML_FIGURE = 3;
    public static final int ML_FIGURE__GCHECKSUM = 0;
    public static final int ML_FIGURE__GTIMESTAMP = 1;
    public static final int ML_FIGURE__CHECKSUM = 2;
    public static final int ML_FIGURE__TIMESTAMP = 3;
    public static final int ML_FIGURE__SI = 4;
    public static final int ML_FIGURE__VIEW = 5;
    public static final int ML_FIGURE__BREAK = 6;
    public static final int ML_FIGURE__KEEP_WITH_PREVIOUS = 7;
    public static final int ML_FIGURE__DOCUMENTATION_BLOCK = 8;
    public static final int ML_FIGURE__FIGURE_CAPTION = 9;
    public static final int ML_FIGURE__FRAME = 10;
    public static final int ML_FIGURE__HELP_ENTRY = 11;
    public static final int ML_FIGURE__PGWIDE = 12;
    public static final int ML_FIGURE__LGRAPHICS = 13;
    public static final int ML_FIGURE__VERBATIM = 14;
    public static final int ML_FIGURE__VARIATION_POINT = 15;
    public static final int ML_FIGURE_FEATURE_COUNT = 16;
    public static final int LGRAPHIC = 4;
    public static final int LGRAPHIC__GCHECKSUM = 0;
    public static final int LGRAPHIC__GTIMESTAMP = 1;
    public static final int LGRAPHIC__CHECKSUM = 2;
    public static final int LGRAPHIC__TIMESTAMP = 3;
    public static final int LGRAPHIC__L = 4;
    public static final int LGRAPHIC__GRAPHIC = 5;
    public static final int LGRAPHIC__MAP = 6;
    public static final int LGRAPHIC_FEATURE_COUNT = 7;
    public static final int GRAPHIC_FIT_ENUM = 5;
    public static final int GRAPHIC_NOTATION_ENUM = 6;
    public static final int AREA_ENUM_NOHREF = 7;
    public static final int AREA_ENUM_SHAPE = 8;

    public EClass getGraphic();

    public EReference getGraphic_LGraphic();

    public EAttribute getGraphic_EditHeight();

    public EAttribute getGraphic_EditWidth();

    public EAttribute getGraphic_Editfit();

    public EAttribute getGraphic_Editscale();

    public EAttribute getGraphic_Filename();

    public EAttribute getGraphic_Fit();

    public EAttribute getGraphic_Generator();

    public EAttribute getGraphic_Height();

    public EAttribute getGraphic_HtmlFit();

    public EAttribute getGraphic_HtmlHeight();

    public EAttribute getGraphic_HtmlScale();

    public EAttribute getGraphic_HtmlWidth();

    public EAttribute getGraphic_Notation();

    public EAttribute getGraphic_Scale();

    public EAttribute getGraphic_Width();

    public EClass getMap();

    public EReference getMap_LGraphic();

    public EAttribute getMap_Class();

    public EAttribute getMap_Name();

    public EAttribute getMap_Onclick();

    public EAttribute getMap_Ondblclick();

    public EAttribute getMap_Onkeydown();

    public EAttribute getMap_Onkeypress();

    public EAttribute getMap_Onkeyup();

    public EAttribute getMap_Onmousedown();

    public EAttribute getMap_Onmousemove();

    public EAttribute getMap_Onmouseout();

    public EAttribute getMap_Onmouseover();

    public EAttribute getMap_Onmouseup();

    public EAttribute getMap_Style();

    public EAttribute getMap_Title();

    public EReference getMap_Areas();

    public EClass getArea();

    public EReference getArea_Map();

    public EAttribute getArea_Accesskey();

    public EAttribute getArea_Alt();

    public EAttribute getArea_Class();

    public EAttribute getArea_Coords();

    public EAttribute getArea_Href();

    public EAttribute getArea_Nohref();

    public EAttribute getArea_Onblur();

    public EAttribute getArea_Onclick();

    public EAttribute getArea_Ondblclick();

    public EAttribute getArea_Onfocus();

    public EAttribute getArea_Onkeydown();

    public EAttribute getArea_Onkeypress();

    public EAttribute getArea_Onkeyup();

    public EAttribute getArea_Onmousedown();

    public EAttribute getArea_Onmousemove();

    public EAttribute getArea_Onmouseout();

    public EAttribute getArea_Onmouseover();

    public EAttribute getArea_Onmouseup();

    public EAttribute getArea_Shape();

    public EAttribute getArea_Style();

    public EAttribute getArea_Tabindex();

    public EAttribute getArea_Title();

    public EClass getMlFigure();

    public EReference getMlFigure_DocumentationBlock();

    public EReference getMlFigure_FigureCaption();

    public EAttribute getMlFigure_Frame();

    public EAttribute getMlFigure_HelpEntry();

    public EAttribute getMlFigure_Pgwide();

    public EReference getMlFigure_LGraphics();

    public EReference getMlFigure_Verbatim();

    public EReference getMlFigure_VariationPoint();

    public EClass getLGraphic();

    public EReference getLGraphic_Graphic();

    public EReference getLGraphic_Map();

    public EEnum getGraphicFitEnum();

    public EEnum getGraphicNotationEnum();

    public EEnum getAreaEnumNohref();

    public EEnum getAreaEnumShape();

    public FigureFactory getFigureFactory();

    public static interface Literals {
        public static final EClass GRAPHIC = eINSTANCE.getGraphic();
        public static final EReference GRAPHIC__LGRAPHIC = eINSTANCE.getGraphic_LGraphic();
        public static final EAttribute GRAPHIC__EDIT_HEIGHT = eINSTANCE.getGraphic_EditHeight();
        public static final EAttribute GRAPHIC__EDIT_WIDTH = eINSTANCE.getGraphic_EditWidth();
        public static final EAttribute GRAPHIC__EDITFIT = eINSTANCE.getGraphic_Editfit();
        public static final EAttribute GRAPHIC__EDITSCALE = eINSTANCE.getGraphic_Editscale();
        public static final EAttribute GRAPHIC__FILENAME = eINSTANCE.getGraphic_Filename();
        public static final EAttribute GRAPHIC__FIT = eINSTANCE.getGraphic_Fit();
        public static final EAttribute GRAPHIC__GENERATOR = eINSTANCE.getGraphic_Generator();
        public static final EAttribute GRAPHIC__HEIGHT = eINSTANCE.getGraphic_Height();
        public static final EAttribute GRAPHIC__HTML_FIT = eINSTANCE.getGraphic_HtmlFit();
        public static final EAttribute GRAPHIC__HTML_HEIGHT = eINSTANCE.getGraphic_HtmlHeight();
        public static final EAttribute GRAPHIC__HTML_SCALE = eINSTANCE.getGraphic_HtmlScale();
        public static final EAttribute GRAPHIC__HTML_WIDTH = eINSTANCE.getGraphic_HtmlWidth();
        public static final EAttribute GRAPHIC__NOTATION = eINSTANCE.getGraphic_Notation();
        public static final EAttribute GRAPHIC__SCALE = eINSTANCE.getGraphic_Scale();
        public static final EAttribute GRAPHIC__WIDTH = eINSTANCE.getGraphic_Width();
        public static final EClass MAP = eINSTANCE.getMap();
        public static final EReference MAP__LGRAPHIC = eINSTANCE.getMap_LGraphic();
        public static final EAttribute MAP__CLASS = eINSTANCE.getMap_Class();
        public static final EAttribute MAP__NAME = eINSTANCE.getMap_Name();
        public static final EAttribute MAP__ONCLICK = eINSTANCE.getMap_Onclick();
        public static final EAttribute MAP__ONDBLCLICK = eINSTANCE.getMap_Ondblclick();
        public static final EAttribute MAP__ONKEYDOWN = eINSTANCE.getMap_Onkeydown();
        public static final EAttribute MAP__ONKEYPRESS = eINSTANCE.getMap_Onkeypress();
        public static final EAttribute MAP__ONKEYUP = eINSTANCE.getMap_Onkeyup();
        public static final EAttribute MAP__ONMOUSEDOWN = eINSTANCE.getMap_Onmousedown();
        public static final EAttribute MAP__ONMOUSEMOVE = eINSTANCE.getMap_Onmousemove();
        public static final EAttribute MAP__ONMOUSEOUT = eINSTANCE.getMap_Onmouseout();
        public static final EAttribute MAP__ONMOUSEOVER = eINSTANCE.getMap_Onmouseover();
        public static final EAttribute MAP__ONMOUSEUP = eINSTANCE.getMap_Onmouseup();
        public static final EAttribute MAP__STYLE = eINSTANCE.getMap_Style();
        public static final EAttribute MAP__TITLE = eINSTANCE.getMap_Title();
        public static final EReference MAP__AREAS = eINSTANCE.getMap_Areas();
        public static final EClass AREA = eINSTANCE.getArea();
        public static final EReference AREA__MAP = eINSTANCE.getArea_Map();
        public static final EAttribute AREA__ACCESSKEY = eINSTANCE.getArea_Accesskey();
        public static final EAttribute AREA__ALT = eINSTANCE.getArea_Alt();
        public static final EAttribute AREA__CLASS = eINSTANCE.getArea_Class();
        public static final EAttribute AREA__COORDS = eINSTANCE.getArea_Coords();
        public static final EAttribute AREA__HREF = eINSTANCE.getArea_Href();
        public static final EAttribute AREA__NOHREF = eINSTANCE.getArea_Nohref();
        public static final EAttribute AREA__ONBLUR = eINSTANCE.getArea_Onblur();
        public static final EAttribute AREA__ONCLICK = eINSTANCE.getArea_Onclick();
        public static final EAttribute AREA__ONDBLCLICK = eINSTANCE.getArea_Ondblclick();
        public static final EAttribute AREA__ONFOCUS = eINSTANCE.getArea_Onfocus();
        public static final EAttribute AREA__ONKEYDOWN = eINSTANCE.getArea_Onkeydown();
        public static final EAttribute AREA__ONKEYPRESS = eINSTANCE.getArea_Onkeypress();
        public static final EAttribute AREA__ONKEYUP = eINSTANCE.getArea_Onkeyup();
        public static final EAttribute AREA__ONMOUSEDOWN = eINSTANCE.getArea_Onmousedown();
        public static final EAttribute AREA__ONMOUSEMOVE = eINSTANCE.getArea_Onmousemove();
        public static final EAttribute AREA__ONMOUSEOUT = eINSTANCE.getArea_Onmouseout();
        public static final EAttribute AREA__ONMOUSEOVER = eINSTANCE.getArea_Onmouseover();
        public static final EAttribute AREA__ONMOUSEUP = eINSTANCE.getArea_Onmouseup();
        public static final EAttribute AREA__SHAPE = eINSTANCE.getArea_Shape();
        public static final EAttribute AREA__STYLE = eINSTANCE.getArea_Style();
        public static final EAttribute AREA__TABINDEX = eINSTANCE.getArea_Tabindex();
        public static final EAttribute AREA__TITLE = eINSTANCE.getArea_Title();
        public static final EClass ML_FIGURE = eINSTANCE.getMlFigure();
        public static final EReference ML_FIGURE__DOCUMENTATION_BLOCK = eINSTANCE.getMlFigure_DocumentationBlock();
        public static final EReference ML_FIGURE__FIGURE_CAPTION = eINSTANCE.getMlFigure_FigureCaption();
        public static final EAttribute ML_FIGURE__FRAME = eINSTANCE.getMlFigure_Frame();
        public static final EAttribute ML_FIGURE__HELP_ENTRY = eINSTANCE.getMlFigure_HelpEntry();
        public static final EAttribute ML_FIGURE__PGWIDE = eINSTANCE.getMlFigure_Pgwide();
        public static final EReference ML_FIGURE__LGRAPHICS = eINSTANCE.getMlFigure_LGraphics();
        public static final EReference ML_FIGURE__VERBATIM = eINSTANCE.getMlFigure_Verbatim();
        public static final EReference ML_FIGURE__VARIATION_POINT = eINSTANCE.getMlFigure_VariationPoint();
        public static final EClass LGRAPHIC = eINSTANCE.getLGraphic();
        public static final EReference LGRAPHIC__GRAPHIC = eINSTANCE.getLGraphic_Graphic();
        public static final EReference LGRAPHIC__MAP = eINSTANCE.getLGraphic_Map();
        public static final EEnum GRAPHIC_FIT_ENUM = eINSTANCE.getGraphicFitEnum();
        public static final EEnum GRAPHIC_NOTATION_ENUM = eINSTANCE.getGraphicNotationEnum();
        public static final EEnum AREA_ENUM_NOHREF = eINSTANCE.getAreaEnumNohref();
        public static final EEnum AREA_ENUM_SHAPE = eINSTANCE.getAreaEnumShape();
    }
}

